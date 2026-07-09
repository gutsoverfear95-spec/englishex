import LessonRunner from '../../components/exercises/LessonRunner'

// ============================================================
// MODULE ĐỌC: đoạn văn hiển thị cố định phía trên,
// bên dưới là chuỗi câu hỏi đọc hiểu (trắc nghiệm / đúng-sai).
// Toàn bộ luồng chấm điểm do LessonRunner đảm nhiệm.
// ============================================================
export default function ReadingLesson({ lesson, exercises }) {
  return (
    <LessonRunner
      lesson={lesson}
      exercises={exercises}
      header={
        <div className="rounded-xl border border-emerald-200 bg-emerald-50 p-5">
          <h2 className="text-xs font-semibold text-emerald-700 uppercase tracking-wide mb-2">
            Đọc đoạn văn sau
          </h2>
          <p className="text-slate-700 leading-relaxed">{lesson.content}</p>
        </div>
      }
    />
  )
}
