import { MousePointerClick } from 'lucide-react'
import LessonRunner from '../../components/exercises/LessonRunner'
import GlossedText from '../../components/reading/GlossedText'

// ============================================================
// MODULE ĐỌC: đoạn văn hiển thị cố định phía trên,
// bên dưới là chuỗi câu hỏi đọc hiểu (trắc nghiệm / đúng-sai).
// Toàn bộ luồng chấm điểm do LessonRunner đảm nhiệm.
//
// Từ nào có trong kho từ vựng (hoặc trong glossary riêng của bài) sẽ được
// gạch chân — rê chuột hoặc chạm vào là hiện nghĩa, xem GlossedText.
// ============================================================
export default function ReadingLesson({ lesson, exercises }) {
  return (
    <LessonRunner
      lesson={lesson}
      exercises={exercises}
      header={
        <div className="rounded-xl border border-emerald-200 bg-emerald-50 p-5">
          <div className="flex items-center justify-between gap-2 mb-3 flex-wrap">
            <h2 className="text-xs font-semibold text-emerald-700 uppercase tracking-wide">
              Đọc đoạn văn sau
            </h2>
            <span className="inline-flex items-center gap-1 text-xs text-emerald-700/80">
              <MousePointerClick className="h-3.5 w-3.5" />
              Chạm vào từ gạch chân để xem nghĩa
            </span>
          </div>
          <GlossedText text={lesson.content ?? ''} glossary={lesson.glossary ?? []} />
        </div>
      }
    />
  )
}
