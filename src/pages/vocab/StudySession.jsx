import { useCallback, useEffect, useState } from 'react'
import { Link, useParams } from 'react-router-dom'
import { ArrowLeft, List, PartyPopper, RotateCcw } from 'lucide-react'
import { supabase } from '../../lib/supabase'
import StudyRunner from '../../components/vocab/StudyRunner'
import Card from '../../components/ui/Card'
import Button from '../../components/ui/Button'
import Spinner from '../../components/ui/Spinner'

// ============================================================
// PHIÊN HỌC của 1 CHỦ ĐỀ.
// Hàng đợi = từ MỚI (chưa có progress) + từ ĐẾN HẠN ôn (SRS), giữ nguyên thứ
// tự trong chủ đề để các từ liên quan nằm gần nhau.
// Toàn bộ phần hỏi/đáp/chấm nằm trong StudyRunner (dùng chung với Ôn hôm nay).
// ============================================================
export default function StudySession() {
  const { topicId } = useParams()

  const [topic, setTopic] = useState(null)
  const [allWords, setAllWords] = useState([])
  const [sessionWords, setSessionWords] = useState(null) // tham chiếu ổn định cho StudyRunner
  const [examplesByWord, setExamplesByWord] = useState({})
  const [progressMap, setProgressMap] = useState({})
  const [loading, setLoading] = useState(true)

  const loadSession = useCallback(async () => {
    setLoading(true)
    const [topicRes, wordsRes, progressRes] = await Promise.all([
      supabase.from('topics').select('*, courses(title)').eq('id', topicId).maybeSingle(),
      supabase.from('words').select('*').eq('topic_id', topicId).order('order_index'),
      supabase.from('user_progress').select('*'),
    ])
    const words = wordsRes.data ?? []
    const pm = {}
    for (const row of progressRes.data ?? []) pm[row.word_id] = row

    // Câu ví dụ kèm bản dịch (bảng word_examples). Từ nào chưa có thì Flashcard
    // tự dùng lại words.example_sentence nên không cần xử lý gì thêm ở đây.
    const wordIds = words.map((w) => w.id)
    const examplesRes = wordIds.length
      ? await supabase
          .from('word_examples')
          .select('word_id, sentence_en, sentence_vi, order_index')
          .in('word_id', wordIds)
          .order('order_index')
      : { data: [] }
    const exByWord = {}
    for (const ex of examplesRes.data ?? []) (exByWord[ex.word_id] ??= []).push(ex)

    const now = new Date()
    setTopic(topicRes.data)
    setAllWords(words)
    setExamplesByWord(exByWord)
    setProgressMap(pm)
    setSessionWords(words.filter((w) => !pm[w.id] || new Date(pm[w.id].next_review_date) <= now))
    setLoading(false)
  }, [topicId])

  useEffect(() => {
    loadSession()
  }, [loadSession])

  if (loading || sessionWords === null) {
    return (
      <div className="py-16 grid place-items-center">
        <Spinner />
      </div>
    )
  }

  if (!topic) {
    return (
      <Card className="p-10 text-center space-y-2">
        <p className="text-slate-600">Không tìm thấy chủ đề.</p>
        <Link to="/vocab" className="text-indigo-600 font-medium hover:underline">
          Về trang Từ vựng
        </Link>
      </Card>
    )
  }

  const backLink = `/vocab/course/${topic.course_id}`

  const header = (
    <div className="flex items-start justify-between gap-3 flex-wrap">
      <div>
        <Link
          to={backLink}
          className="inline-flex items-center gap-1 text-sm text-slate-500 hover:text-slate-700"
        >
          <ArrowLeft className="h-4 w-4" /> {topic.courses?.title ?? 'Chủ đề'}
        </Link>
        <h1 className="text-xl sm:text-2xl font-bold text-slate-800 mt-1">{topic.name}</h1>
      </div>
      <Link
        to={`/vocab/words?topic=${topic.id}`}
        className="inline-flex items-center gap-1.5 text-sm px-3 py-1.5 rounded-lg border border-slate-200 bg-white text-slate-600 hover:bg-slate-50 transition-colors shrink-0"
      >
        <List className="h-4 w-4" /> Danh sách từ
      </Link>
    </div>
  )

  // ---------- Không có thẻ nào cần học ----------
  if (sessionWords.length === 0) {
    return (
      <div className="space-y-6">
        {header}
        <Card className="p-8 sm:p-10 text-center space-y-3">
          <PartyPopper className="h-10 w-10 text-violet-500 mx-auto" />
          <p className="font-semibold text-slate-800">
            Không có từ mới hay từ đến hạn ôn trong chủ đề này!
          </p>
          <p className="text-sm text-slate-500">
            Bạn có thể ôn tự do toàn bộ {allWords.length} từ (kết quả vẫn được tính vào lịch SRS).
          </p>
          <div className="flex flex-wrap justify-center gap-2 pt-1">
            <Button
              className="bg-violet-600 hover:bg-violet-700"
              onClick={() => setSessionWords(allWords)}
            >
              <RotateCcw className="h-4 w-4" /> Ôn tự do
            </Button>
            <Link to={backLink}>
              <Button variant="secondary">Chọn chủ đề khác</Button>
            </Link>
          </div>
        </Card>
      </div>
    )
  }

  return (
    <StudyRunner
      words={sessionWords}
      pool={allWords}
      examplesByWord={examplesByWord}
      initialProgress={progressMap}
      header={header}
      onRestart={loadSession}
      summaryActions={
        <Link to={backLink}>
          <Button className="bg-violet-600 hover:bg-violet-700">Chọn chủ đề khác</Button>
        </Link>
      }
    />
  )
}
