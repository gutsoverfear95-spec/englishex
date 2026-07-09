import { useState } from 'react'
import { checkAnswer } from '../../utils/textCompare'
import Button from '../ui/Button'

// Nhãn hướng dẫn theo loại bài tập
const TYPE_HINTS = {
  translation: 'Dịch câu sau sang tiếng Anh',
  fill_blank: 'Điền từ còn thiếu vào chỗ trống',
  dictation: 'Nghe và gõ lại câu bạn nghe được',
}

// ============================================================
// Ô nhập câu trả lời dạng text — dùng chung cho:
//   Viết : translation, fill_blank (hiển thị prompt)
//   Nghe : dictation (showPrompt=false vì prompt chính là đáp án!)
// Chấm điểm: chuẩn hoá rồi so với danh sách accepted_answers.
// ============================================================
export default function TextAnswer({ exercise, onSubmit, disabled, showPrompt = true }) {
  const [value, setValue] = useState('')

  function handleSubmit(e) {
    e.preventDefault()
    const answer = value.trim()
    if (!answer) return
    const isCorrect = checkAnswer(answer, exercise.accepted_answers)
    onSubmit(answer, isCorrect, isCorrect ? 100 : 0)
  }

  return (
    <form onSubmit={handleSubmit} className="space-y-4">
      <div className="space-y-1">
        <p className="text-xs font-semibold text-slate-400 uppercase tracking-wide">
          {TYPE_HINTS[exercise.type] ?? 'Trả lời câu hỏi'}
        </p>
        {showPrompt && <p className="text-lg font-medium text-slate-800">{exercise.prompt}</p>}
      </div>

      <input
        type="text"
        value={value}
        onChange={(e) => setValue(e.target.value)}
        disabled={disabled}
        autoFocus
        autoComplete="off"
        spellCheck={false}
        placeholder="Nhập câu trả lời bằng tiếng Anh…"
        className="w-full rounded-lg border border-slate-300 px-4 py-3 text-slate-800 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 disabled:bg-slate-50"
      />

      {/* Enter hoặc bấm nút đều submit được */}
      {!disabled && (
        <Button type="submit" disabled={!value.trim()}>
          Kiểm tra
        </Button>
      )}
    </form>
  )
}
