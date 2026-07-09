import LessonRunner from '../../components/exercises/LessonRunner'
import Pronunciation from '../../components/exercises/Pronunciation'

// ============================================================
// MODULE NÓI: hiển thị câu mẫu, ghi âm giọng user bằng
// SpeechRecognition, so khớp văn bản nhận dạng được với câu mẫu
// (Levenshtein) để ra % độ chính xác phát âm.
// ============================================================
export default function SpeakingLesson({ lesson, exercises }) {
  return (
    <LessonRunner
      lesson={lesson}
      exercises={exercises}
      components={{ pronunciation: Pronunciation }}
    />
  )
}
