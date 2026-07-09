import { useState } from 'react'
import { Volume2, Turtle } from 'lucide-react'
import { useSpeechSynthesis } from '../../hooks/useSpeechSynthesis'
import { checkAnswer, bestSimilarity } from '../../utils/textCompare'
import Button from '../ui/Button'

// ============================================================
// CHÉP CHÍNH TẢ (module Nghe)
// QUAN TRỌNG: exercise.prompt là câu sẽ được ĐỌC LÊN — không bao giờ
// hiển thị ra màn hình, vì nó chính là đáp án.
// Chấm điểm: khớp hoàn toàn = 100; sai = % độ giống (điểm một phần,
// gõ thiếu 1-2 từ vẫn được ghi nhận nỗ lực).
// ============================================================
export default function Dictation({ exercise, onSubmit, disabled }) {
  const { speak, speaking, supported } = useSpeechSynthesis()
  const [value, setValue] = useState('')

  function handleSubmit(e) {
    e.preventDefault()
    const answer = value.trim()
    if (!answer) return
    const isCorrect = checkAnswer(answer, exercise.accepted_answers)
    const score = isCorrect ? 100 : bestSimilarity(answer, exercise.accepted_answers)
    onSubmit(answer, isCorrect, score)
  }

  if (!supported) {
    return (
      <p className="text-slate-500">
        Trình duyệt của bạn không hỗ trợ Speech Synthesis — hãy dùng Chrome hoặc Edge.
      </p>
    )
  }

  return (
    <form onSubmit={handleSubmit} className="space-y-4">
      <p className="text-xs font-semibold text-slate-400 uppercase tracking-wide">
        Nghe và gõ lại chính xác câu bạn nghe được
      </p>

      <div className="flex flex-wrap gap-2">
        <Button
          type="button"
          variant="secondary"
          onClick={() => speak(exercise.prompt)}
          disabled={speaking}
        >
          <Volume2 className="h-4 w-4" /> {speaking ? 'Đang đọc…' : 'Nghe câu'}
        </Button>
        <Button
          type="button"
          variant="ghost"
          onClick={() => speak(exercise.prompt, { rate: 0.65 })}
          disabled={speaking}
        >
          <Turtle className="h-4 w-4" /> Nghe chậm
        </Button>
      </div>

      <input
        type="text"
        value={value}
        onChange={(e) => setValue(e.target.value)}
        disabled={disabled}
        autoComplete="off"
        spellCheck={false}
        placeholder="Gõ lại câu bạn vừa nghe…"
        className="w-full rounded-lg border border-slate-300 px-4 py-3 text-slate-800 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 disabled:bg-slate-50"
      />

      {!disabled && (
        <Button type="submit" disabled={!value.trim()}>
          Kiểm tra
        </Button>
      )}
    </form>
  )
}
