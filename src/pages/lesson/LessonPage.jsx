import { useEffect, useState } from 'react'
import { Link, useParams } from 'react-router-dom'
import { ArrowLeft, Construction } from 'lucide-react'
import { supabase } from '../../lib/supabase'
import { skillByKey } from '../../utils/constants'
import Card from '../../components/ui/Card'
import Spinner from '../../components/ui/Spinner'
import ReadingLesson from './ReadingLesson'

// ============================================================
// DISPATCHER: fetch bài học + bài tập 1 lần duy nhất tại đây,
// rồi render module tương ứng với kỹ năng trong URL.
// Các module còn lại sẽ được thêm dần: writing → listening → speaking
// ============================================================
const MODULES = {
  reading: ReadingLesson,
}

export default function LessonPage() {
  const { skill, lessonId } = useParams()
  const meta = skillByKey(skill)
  const [lesson, setLesson] = useState(null)
  const [exercises, setExercises] = useState([])
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    async function load() {
      setLoading(true)
      const [lessonRes, exercisesRes] = await Promise.all([
        supabase.from('lessons').select('*').eq('id', lessonId).maybeSingle(),
        supabase.from('exercises').select('*').eq('lesson_id', lessonId).order('order_index'),
      ])
      setLesson(lessonRes.data)
      setExercises(exercisesRes.data ?? [])
      setLoading(false)
    }
    load()
  }, [lessonId])

  if (loading) {
    return (
      <div className="py-16 grid place-items-center">
        <Spinner />
      </div>
    )
  }

  if (!lesson || !meta) {
    return (
      <Card className="p-10 text-center space-y-2">
        <p className="text-slate-600">Không tìm thấy bài học.</p>
        <Link to="/" className="text-indigo-600 font-medium hover:underline">
          Về trang chủ
        </Link>
      </Card>
    )
  }

  const Module = MODULES[skill]

  return (
    <div className="space-y-5">
      <div>
        <Link
          to={`/skill/${skill}`}
          className="inline-flex items-center gap-1 text-sm text-slate-500 hover:text-slate-700"
        >
          <ArrowLeft className="h-4 w-4" /> Luyện {meta.label}
        </Link>
        <h1 className="text-2xl font-bold text-slate-800 mt-1">{lesson.title}</h1>
        {lesson.description && <p className="text-slate-500">{lesson.description}</p>}
      </div>

      {Module ? (
        <Module lesson={lesson} exercises={exercises} />
      ) : (
        <Card className="p-10 text-center space-y-2">
          <Construction className="h-10 w-10 text-amber-500 mx-auto" />
          <p className="text-slate-600">Module {meta.label} sẽ được xây dựng ngay sau module Đọc.</p>
        </Card>
      )}
    </div>
  )
}
