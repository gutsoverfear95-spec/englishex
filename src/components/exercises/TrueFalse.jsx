import { useState } from 'react'
import { checkAnswer } from '../../utils/textCompare'
import Button from '../ui/Button'

const CHOICES = [
  { value: 'true', label: 'Đúng' },
  { value: 'false', label: 'Sai' },
]

// Đúng/Sai: giá trị lưu trong DB là 'true'/'false', nhãn hiển thị tiếng Việt
export default function TrueFalse({ exercise, onSubmit, disabled }) {
  const [selected, setSelected] = useState(null)

  function handleSubmit() {
    if (selected == null) return
    const isCorrect = checkAnswer(selected, exercise.accepted_answers)
    onSubmit(selected, isCorrect, isCorrect ? 100 : 0)
  }

  return (
    <div className="space-y-4">
      <p className="font-medium text-slate-800">{exercise.prompt}</p>

      <div className="grid grid-cols-2 gap-2">
        {CHOICES.map((c) => (
          <button
            key={c.value}
            type="button"
            disabled={disabled}
            onClick={() => setSelected(c.value)}
            className={`px-4 py-3 rounded-lg border text-sm font-medium transition-colors cursor-pointer disabled:cursor-default ${
              selected === c.value
                ? 'border-indigo-500 bg-indigo-50 text-indigo-700'
                : 'border-slate-200 text-slate-700 hover:border-slate-300 hover:bg-slate-50'
            }`}
          >
            {c.label}
          </button>
        ))}
      </div>

      {!disabled && (
        <Button onClick={handleSubmit} disabled={selected == null}>
          Trả lời
        </Button>
      )}
    </div>
  )
}
