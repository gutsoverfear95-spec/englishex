import LessonRunner from '../../components/exercises/LessonRunner'
import TextAnswer from '../../components/exercises/TextAnswer'

// ============================================================
// MODULE VIẾT: dịch câu Việt → Anh và điền từ vào chỗ trống.
// User gõ đáp án, hệ thống chuẩn hoá rồi đối chiếu với danh sách
// accepted_answers trong DB (một câu có thể có nhiều cách dịch đúng).
// ============================================================
export default function WritingLesson({ lesson, exercises }) {
  return (
    <LessonRunner
      lesson={lesson}
      exercises={exercises}
      components={{
        translation: TextAnswer,
        fill_blank: TextAnswer,
      }}
    />
  )
}
