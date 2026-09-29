import { useEffect, useState } from 'react'
import { Link } from 'react-router-dom'
import { BookMarked, BookOpen, CalendarCheck, ChevronRight, GraduationCap } from 'lucide-react'
import { supabase } from '../../lib/supabase'
import { fetchAll } from '../../lib/fetchAll'
import Card from '../../components/ui/Card'
import ProgressBar from '../../components/ui/ProgressBar'
import Spinner from '../../components/ui/Spinner'

// Map key màu (lưu trong DB) → class Tailwind viết ĐẦY ĐỦ để build quét được
const COVER_STYLES = {
  indigo: { cover: 'bg-gradient-to-br from-indigo-500 to-blue-600', bar: 'bg-indigo-500' },
  emerald: { cover: 'bg-gradient-to-br from-emerald-500 to-teal-600', bar: 'bg-emerald-500' },
  violet: { cover: 'bg-gradient-to-br from-violet-500 to-purple-600', bar: 'bg-violet-500' },
  amber: { cover: 'bg-gradient-to-br from-amber-500 to-orange-600', bar: 'bg-amber-500' },
}

// ============================================================
// CHỌN CHƯƠNG TRÌNH HỌC: lưới thẻ course, mỗi thẻ có cover,
// quy mô chương trình và thanh tiến độ số từ đã học.
// ============================================================
export default function CourseList() {
  const [courses, setCourses] = useState([])
  const [wordCourse, setWordCourse] = useState({}) // { word_id: course_id }
  const [progress, setProgress] = useState([])     // user_progress của user
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    async function load() {
      const [coursesRes, wordsRes, progressRes] = await Promise.all([
        supabase.from('courses').select('*').order('order_index'),
        // Lấy course_id của từng từ qua join lồng: words → topics → course_id
        fetchAll(() =>
          supabase.from('words').select('id, topics!inner(course_id)').order('id'),
        ),
        fetchAll(() =>
          supabase.from('user_progress').select('word_id, status, next_review_date').order('word_id'),
        ),
      ])
      const map = {}
      for (const w of wordsRes.data ?? []) map[w.id] = w.topics?.course_id
      setCourses(coursesRes.data ?? [])
      setWordCourse(map)
      setProgress(progressRes.data ?? [])
      setLoading(false)
    }
    load()
  }, [])

  if (loading) {
    return (
      <div className="py-16 grid place-items-center">
        <Spinner />
      </div>
    )
  }

  const now = new Date()
  const dueCount = progress.filter((p) => new Date(p.next_review_date) <= now).length

  return (
    <div className="space-y-6">
      <div className="flex items-center gap-3">
        <span className="p-3 rounded-xl bg-brand-50">
          <BookMarked className="h-6 w-6 text-brand-600" />
        </span>
        <div>
          <h1 className="text-2xl font-bold text-slate-800">Từ vựng</h1>
          <p className="text-slate-500 text-sm">Chọn chương trình học phù hợp với mục tiêu của bạn</p>
        </div>
      </div>

      {/* Hai lối tắt quan trọng nhất, đặt TRÊN danh sách chương trình:
          ôn đúng hạn mới là việc cần làm mỗi ngày, còn học từ mới thì tuần nào
          cũng được. Để chúng lẫn dưới danh sách là mời người học quên ôn. */}
      <div className="grid gap-3 sm:grid-cols-2">
        <Link
          to="/vocab/review"
          className={`group rounded-xl border p-4 flex items-center gap-3 transition-colors ${
            dueCount > 0
              ? 'border-amber-200 bg-amber-50 hover:bg-amber-100'
              : 'border-slate-200 bg-white hover:bg-slate-50'
          }`}
        >
          <span
            className={`h-11 w-11 shrink-0 grid place-items-center rounded-full ${
              dueCount > 0 ? 'bg-amber-100 text-amber-600' : 'bg-slate-100 text-slate-400'
            }`}
          >
            <CalendarCheck className="h-5 w-5" />
          </span>
          <span className="min-w-0">
            <span className="block font-semibold text-slate-800">Ôn hôm nay</span>
            <span className="block text-sm text-slate-500">
              {dueCount > 0
                ? `${dueCount} từ đến hạn, trộn mọi chủ đề`
                : 'Không còn từ nào đến hạn — quá tốt!'}
            </span>
          </span>
          <ChevronRight className="ml-auto h-5 w-5 text-slate-300 group-hover:text-slate-500 transition-colors shrink-0" />
        </Link>

        <Link
          to="/vocab/words"
          className="group rounded-xl border border-slate-200 bg-white p-4 flex items-center gap-3 hover:bg-slate-50 transition-colors"
        >
          <span className="h-11 w-11 shrink-0 grid place-items-center rounded-full bg-brand-100 text-brand-600">
            <BookOpen className="h-5 w-5" />
          </span>
          <span className="min-w-0">
            <span className="block font-semibold text-slate-800">Tất cả từ vựng</span>
            <span className="block text-sm text-slate-500">
              Tra {Object.keys(wordCourse).length} từ: nghĩa, phát âm, ví dụ
            </span>
          </span>
          <ChevronRight className="ml-auto h-5 w-5 text-slate-300 group-hover:text-slate-500 transition-colors shrink-0" />
        </Link>
      </div>

      {/* Lưới chương trình học — responsive 1 → 2 cột */}
      <div className="grid gap-4 sm:gap-5 grid-cols-1 sm:grid-cols-2">
        {courses.map((course) => {
          const style = COVER_STYLES[course.color] ?? COVER_STYLES.emerald
          // Số từ THỰC TẾ trong DB thuộc course này + số từ user đã học
          const courseWordIds = Object.keys(wordCourse).filter((id) => wordCourse[id] === course.id)
          const learned = progress.filter((p) => courseWordIds.includes(p.word_id)).length
          const mastered = progress.filter(
            (p) => courseWordIds.includes(p.word_id) && p.status === 'mastered',
          ).length
          const pct = courseWordIds.length > 0 ? (learned / courseWordIds.length) * 100 : 0

          return (
            <Card key={course.id} className="overflow-hidden hover:shadow-lg transition-shadow">
              <Link to={`/vocab/course/${course.id}`} className="block group">
                {/* Cover: ảnh nếu có, không thì gradient theo màu course */}
                {course.image_url ? (
                  <img src={course.image_url} alt={course.title} className="h-24 sm:h-28 w-full object-cover" />
                ) : (
                  <div className={`h-24 sm:h-28 ${style.cover} grid place-items-center relative`}>
                    <GraduationCap className="h-10 w-10 text-white/90" />
                    <span className="absolute top-3 right-3 text-xs font-semibold text-white bg-white/20 backdrop-blur px-2 py-1 rounded-full">
                      {course.total_words.toLocaleString()} từ
                    </span>
                  </div>
                )}

                <div className="p-4 sm:p-5 space-y-3">
                  <div className="flex items-start justify-between gap-2">
                    <div>
                      <h2 className="font-semibold text-slate-800 group-hover:text-brand-700 transition-colors">
                        {course.title}
                      </h2>
                      <p className="text-xs sm:text-sm text-slate-500">{course.description}</p>
                    </div>
                    <ChevronRight className="h-5 w-5 text-slate-300 group-hover:text-slate-500 transition-colors shrink-0" />
                  </div>

                  <ProgressBar value={pct} barClass={style.bar} />
                  <div className="flex justify-between text-xs sm:text-sm text-slate-500">
                    <span>
                      Đã học {learned}/{courseWordIds.length} từ
                    </span>
                    <span className="text-green-600">{mastered} đã thuộc</span>
                  </div>
                </div>
              </Link>
            </Card>
          )
        })}
      </div>

      {courses.length === 0 && (
        <Card className="p-10 text-center text-slate-500">
          Chưa có chương trình học nào — hãy chạy file supabase/vocab_v2.sql trong Supabase SQL Editor.
        </Card>
      )}
    </div>
  )
}
