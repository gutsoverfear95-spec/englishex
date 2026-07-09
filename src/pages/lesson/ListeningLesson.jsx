import { Volume2, Square, Turtle } from 'lucide-react'
import LessonRunner from '../../components/exercises/LessonRunner'
import Dictation from '../../components/exercises/Dictation'
import { useSpeechSynthesis } from '../../hooks/useSpeechSynthesis'
import Button from '../../components/ui/Button'

// Player đọc transcript của bài (lesson.content) bằng SpeechSynthesis.
// Transcript KHÔNG hiển thị chữ — user phải nghe để trả lời câu hỏi.
function AudioPlayer({ text }) {
  const { speak, cancel, speaking, supported } = useSpeechSynthesis()

  if (!supported) {
    return (
      <div className="rounded-xl border border-amber-200 bg-amber-50 p-4 text-sm text-amber-800">
        Trình duyệt của bạn không hỗ trợ Speech Synthesis — hãy dùng Chrome hoặc Edge để nghe audio.
      </div>
    )
  }

  return (
    <div className="rounded-xl border border-sky-200 bg-sky-50 p-5 space-y-3">
      <h2 className="text-xs font-semibold text-sky-700 uppercase tracking-wide">
        Nghe đoạn hội thoại
      </h2>
      <div className="flex flex-wrap gap-2">
        {speaking ? (
          <Button variant="secondary" onClick={cancel}>
            <Square className="h-4 w-4" /> Dừng
          </Button>
        ) : (
          <>
            <Button onClick={() => speak(text)}>
              <Volume2 className="h-4 w-4" /> Phát audio
            </Button>
            <Button variant="secondary" onClick={() => speak(text, { rate: 0.7 })}>
              <Turtle className="h-4 w-4" /> Nghe chậm
            </Button>
          </>
        )}
      </div>
      <p className="text-xs text-sky-600">
        Bạn có thể nghe lại bao nhiêu lần tuỳ thích trước khi trả lời.
      </p>
    </div>
  )
}

// ============================================================
// MODULE NGHE:
//   - lesson.content (nếu có) = transcript → player phía trên
//   - Bài tập: trắc nghiệm về nội dung (MCQ có sẵn trong LessonRunner)
//     + chép chính tả từng câu (Dictation đăng ký thêm ở đây)
// ============================================================
export default function ListeningLesson({ lesson, exercises }) {
  return (
    <LessonRunner
      lesson={lesson}
      exercises={exercises}
      header={lesson.content ? <AudioPlayer text={lesson.content} /> : null}
      components={{ dictation: Dictation }}
    />
  )
}
