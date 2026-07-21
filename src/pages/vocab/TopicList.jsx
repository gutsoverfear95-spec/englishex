import { useEffect, useState } from 'react'
import { Link, useParams } from 'react-router-dom'
import { ArrowLeft, Lock, CheckCircle2, PlayCircle, Clock, ChevronRight } from 'lucide-react'
import { supabase } from '../../lib/supabase'
import Card from '../../components/ui/Card'
import ProgressBar from '../../components/ui/ProgressBar'
import Spinner from '../../components/ui/Spinner'

// ============================================================
// DANH SÁCH CHỦ ĐỀ của 1 chương trình học.
// Trạng thái từng chủ đề:
//   - completed : đã học 100% số từ (icon ✓ xanh)
//   - learning  : đã học >0 từ (icon ▶ vàng)
//   - unlocked  : chưa học nhưng được mở (chủ đề đầu, hoặc chủ đề trước
//                 đã completed)
//   - locked    : bị khoá — phải hoàn thành chủ đề trước đó
// Badge "N cần ôn" hiện khi chủ đề có từ đến hạn SRS.
// ============================================================
export default function TopicList() {
  const { courseId } = useParams()
  const [course, setCourse] = useState(null)
  const [topics, setTopics] = useState([])
  const [wordsByTopic, setWordsByTopic] = useState({}) // { topic_id: [word_id,...] }
  const [progressMap, setProgressMap] = useState({})   // { word_id: row }
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    async function load() {
      setLoading(true)
      // Bước 1: course + topics + progress (song song)
      const [courseRes, topicsRes, progressRes] = await Promise.all([
        supabase.from('courses').select('*').eq('id', courseId).maybeSingle(),
        supabase.from('topics').select('*').eq('course_id', courseId).order('order_index'),
        supabase.from('user_progress').select('*'),
      ])
      const topicList = topicsRes.data ?? []

      // Bước 2: từ của các chủ đề này (cần danh sách topic id từ bước 1)
      const topicIds = topicList.map((t) => t.id)
      const wordsRes = topicIds.length
        ? await supabase.from('words').select('id, topic_id').in('topic_id', topicIds)
        : { data: [] }

      const byTopic = {}
      for (const w of wordsRes.data ?? []) {
        ;(byTopic[w.topic_id] ??= []).push(w.id)
      }
      const pm = {}
      for (const row of progressRes.data ?? []) pm[row.word_id] = row

      setCourse(courseRes.data)
      setTopics(topicList)
      setWordsByTopic(byTopic)
      setProgressMap(pm)
      setLoading(false)
    }
    load()
  }, [courseId])

  if (loading) {
    return (
      <div className="py-16 grid place-items-center">
        <Spinner />
      </div>
    )
  }

  if (!course) {
    return (
      <Card className="p-10 text-center space-y-2">
        <p className="text-slate-600">Không tìm thấy chương trình học.</p>
        <Link to="/vocab" className="text-indigo-600 font-medium hover:underline">
          Về trang Từ vựng
        </Link>
      </Card>
    )
  }

  const now = new Date()

  // Tính trạng thái từng topic (dựa vào topic TRƯỚC NÓ để xét khoá)
  const topicStats = topics.map((topic) => {
    const wordIds = wordsByTopic[topic.id] ?? []
    const learned = wordIds.filter((id) => progressMap[id]).length
    const due = wordIds.filter(
      (id) => progressMap[id] && new Date(progressMap[id].next_review_date) <= now,
    ).length
    const completed = wordIds.length > 0 && learned === wordIds.length
    return { topic, total: wordIds.length, learned, due, completed }
  })

  return (
    <div className="space-y-6">
      <div>
        <Link
          to="/vocab"
          className="inline-flex items-center gap-1 text-sm text-slate-500 hover:text-slate-700"
        >
          <ArrowLeft className="h-4 w-4" /> Chương trình học
        </Link>
        <h1 className="text-2xl font-bold text-slate-800 mt-1">{course.title}</h1>
        <p className="text-slate-500 text-sm sm:text-base">{course.description}</p>
      </div>

      <div className="space-y-3">
        {topicStats.map((stat, i) => {
          const { topic, total, learned, due, completed } = stat
          // Khoá nếu không phải chủ đề đầu và chủ đề trước chưa completed
          const locked = i > 0 && !topicStats[i - 1].completed
          const learning = !completed && learned > 0
          const pct = total > 0 ? (learned / total) * 100 : 0

          const inner = (
            <div className="flex items-center gap-3 sm:gap-4 p-4">
              {/* Icon trạng thái */}
              <span
                className={`h-10 w-10 sm:h-11 sm:w-11 shrink-0 grid place-items-center rounded-full ${
                  locked
                    ? 'bg-slate-100 text-slate-400'
                    : completed
                      ? 'bg-green-100 text-green-600'
                      : learning
                        ? 'bg-amber-100 text-amber-600'
                        : 'bg-violet-100 text-violet-600'
                }`}
              >
                {locked ? (
                  <Lock className="h-5 w-5" />
                ) : completed ? (
                  <CheckCircle2 className="h-5 w-5" />
                ) : (
                  <PlayCircle className="h-5 w-5" />
                )}
              </span>

              <div className="flex-1 min-w-0 space-y-1.5">
                <div className="flex items-center gap-2 flex-wrap">
                  <h2 className={`font-semibold ${locked ? 'text-slate-400' : 'text-slate-800'}`}>
                    {i + 1}. {topic.name}
                  </h2>
                  {due > 0 && !locked && (
                    <span className="inline-flex items-center gap-1 text-xs px-2 py-0.5 rounded-full bg-amber-100 text-amber-700">
                      <Clock className="h-3 w-3" /> {due} cần ôn
                    </span>
                  )}
                  {completed && (
                    <span className="text-xs px-2 py-0.5 rounded-full bg-green-100 text-green-700">
                      Hoàn thành
                    </span>
                  )}
                </div>
                <ProgressBar value={pct} barClass={locked ? 'bg-slate-300' : 'bg-violet-500'} />
                <p className={`text-xs sm:text-sm ${locked ? 'text-slate-400' : 'text-slate-500'}`}>
                  {locked ? 'Hoàn thành chủ đề trước để mở khoá' : `${learned}/${total} từ đã học`}
                </p>
              </div>

              {!locked && (
                <ChevronRight className="h-5 w-5 text-slate-300 group-hover:text-slate-500 transition-colors shrink-0" />
              )}
            </div>
          )

          return locked ? (
            <Card key={topic.id} className="opacity-70 cursor-not-allowed">
              {inner}
            </Card>
          ) : (
            <Card key={topic.id} className="hover:shadow-md transition-shadow">
              <Link to={`/vocab/study/${topic.id}`} className="block group">
                {inner}
              </Link>
            </Card>
          )
        })}
      </div>

      {topics.length === 0 && (
        <Card className="p-10 text-center text-slate-500">Chương trình này chưa có chủ đề nào.</Card>
      )}
    </div>
  )
}
