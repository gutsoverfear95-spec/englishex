import { MousePointerClick } from 'lucide-react'
import LessonRunner from '../../components/exercises/LessonRunner'
import GlossedText from '../../components/reading/GlossedText'

// Bài dài hơn ngưỡng này thì chuyển sang bố cục chia đôi màn hình. Bài ngắn
// (khoảng 150–250 từ như các bài B1/B2 có sẵn) xếp dọc vẫn đọc thoải mái, chia
// đôi chỉ làm cột hẹp lại không cần thiết.
const SPLIT_THRESHOLD = 400

export default function ReadingLesson({ lesson, exercises }) {
  const content = lesson.content ?? ''
  const words = content.trim() ? content.trim().split(/\s+/).length : 0
  const isLong = words > SPLIT_THRESHOLD

  const passage = (
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
      <GlossedText text={content} glossary={lesson.glossary ?? []} />
      {isLong && <p className="mt-3 text-xs text-emerald-700/70">{words} từ</p>}
    </div>
  )

  return isLong ? (
    <LessonRunner lesson={lesson} exercises={exercises} sidePanel={passage} />
  ) : (
    <LessonRunner lesson={lesson} exercises={exercises} header={passage} />
  )
}
