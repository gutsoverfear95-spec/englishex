import { Link, useParams } from 'react-router-dom'
import { Construction, ArrowLeft } from 'lucide-react'
import { skillByKey } from '../../utils/constants'
import Card from '../../components/ui/Card'

// PLACEHOLDER Giai đoạn 3.
// Giai đoạn 4 sẽ biến file này thành "dispatcher": đọc :skill từ URL và render
// đúng module (ReadingLesson / WritingLesson / ListeningLesson / SpeakingLesson).
export default function LessonPage() {
  const { skill } = useParams()
  const meta = skillByKey(skill)

  return (
    <Card className="p-10 text-center space-y-3">
      <Construction className="h-10 w-10 text-amber-500 mx-auto" />
      <h1 className="text-xl font-semibold text-slate-800">
        Module {meta?.label ?? ''} đang được xây dựng
      </h1>
      <p className="text-slate-500">Nội dung bài học sẽ xuất hiện ở Giai đoạn 4.</p>
      <Link
        to={`/skill/${skill}`}
        className="inline-flex items-center gap-1 text-indigo-600 font-medium hover:underline"
      >
        <ArrowLeft className="h-4 w-4" /> Quay lại danh sách bài
      </Link>
    </Card>
  )
}
