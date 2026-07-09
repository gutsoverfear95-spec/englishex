import { useEffect, useState } from 'react'
import { Link, Navigate, useParams } from 'react-router-dom'
import { ChevronRight } from 'lucide-react'
import { supabase } from '../lib/supabase'
import { skillByKey, LEVEL_LABELS } from '../utils/constants'
import Card from '../components/ui/Card'
import Spinner from '../components/ui/Spinner'

// Chip trạng thái của từng bài dựa trên lesson_progress
function StatusChip({ row }) {
  if (!row) {
    return <span className="text-xs px-2 py-1 rounded-full bg-slate-100 text-slate-500">Chưa học</span>
  }
  if (row.status === 'completed') {
    return (
      <span className="text-xs px-2 py-1 rounded-full bg-green-100 text-green-700">
        Hoàn thành · {Number(row.best_score)}đ
      </span>
    )
  }
  return <span className="text-xs px-2 py-1 rounded-full bg-amber-100 text-amber-700">Đang học</span>
}

export default function LessonList() {
  const { skill } = useParams()
  const meta = skillByKey(skill)
  const [lessons, setLessons] = useState([])
  const [progress, setProgress] = useState({}) // { [lesson_id]: {status, best_score} }
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    if (!meta) return // skill không hợp lệ → phía dưới sẽ redirect
    setLoading(true)

    async function load() {
      const [lessonsRes, progressRes] = await Promise.all([
        supabase
          .from('lessons')
          .select('id, title, description, level, order_index')
          .eq('skill', skill)
          .order('order_index'),
        // RLS đảm bảo chỉ trả về progress của chính user này
        supabase.from('lesson_progress').select('lesson_id, status, best_score'),
      ])

      setLessons(lessonsRes.data ?? [])
      const p = {}
      for (const row of progressRes.data ?? []) p[row.lesson_id] = row
      setProgress(p)
      setLoading(false)
    }
    load()
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [skill])

  if (!meta) return <Navigate to="/" replace />
  const Icon = meta.icon

  return (
    <div className="space-y-6">
      <div className="flex items-center gap-3">
        <span className={`p-3 rounded-xl ${meta.bg}`}>
          <Icon className={`h-6 w-6 ${meta.text}`} />
        </span>
        <div>
          <h1 className="text-2xl font-bold text-slate-800">Luyện {meta.label}</h1>
          <p className="text-slate-500 text-sm">{meta.desc}</p>
        </div>
      </div>

      {loading ? (
        <div className="py-16 grid place-items-center">
          <Spinner />
        </div>
      ) : lessons.length === 0 ? (
        <Card className="p-10 text-center text-slate-500">
          Chưa có bài học nào cho kỹ năng này.
        </Card>
      ) : (
        <div className="space-y-3">
          {lessons.map((lesson, i) => (
            <Card key={lesson.id} className="hover:shadow-md transition-shadow">
              <Link
                to={`/skill/${skill}/lesson/${lesson.id}`}
                className="flex items-center gap-4 p-4 group"
              >
                <span
                  className={`h-9 w-9 shrink-0 grid place-items-center rounded-full font-semibold text-sm ${meta.bg} ${meta.text}`}
                >
                  {i + 1}
                </span>
                <div className="flex-1 min-w-0">
                  <div className="flex items-center gap-2 flex-wrap">
                    <h2 className="font-semibold text-slate-800">{lesson.title}</h2>
                    <span className="text-xs px-2 py-0.5 rounded-full bg-indigo-50 text-indigo-600">
                      {LEVEL_LABELS[lesson.level] ?? lesson.level}
                    </span>
                  </div>
                  {lesson.description && (
                    <p className="text-sm text-slate-500 truncate">{lesson.description}</p>
                  )}
                </div>
                <StatusChip row={progress[lesson.id]} />
                <ChevronRight className="h-5 w-5 text-slate-300 group-hover:text-slate-500 transition-colors shrink-0" />
              </Link>
            </Card>
          ))}
        </div>
      )}
    </div>
  )
}
