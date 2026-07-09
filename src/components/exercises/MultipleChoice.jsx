import { useState } from 'react'
import { checkAnswer } from '../../utils/textCompare'
import Button from '../ui/Button'

// Trắc nghiệm: chọn 1 đáp án → bấm "Trả lời"
// Contract chung của mọi exercise component:
//   props { exercise, onSubmit(userAnswer, isCorrect, score), disabled }
export default function MultipleChoice({ exercise, onSubmit, disabled }) {
  const [selected, setSelected] = useState(null)
  const options = Array.isArray(exercise.options) ? exercise.options : []

  function handleSubmit() {
    if (selected == null) return
    const isCorrect = checkAnswer(selected, exercise.accepted_answers)
    onSubmit(selected, isCorrect, isCorrect ? 100 : 0)
  }

  return (
    <div className="space-y-4">
      <p className="font-medium text-slate-800">{exercise.prompt}</p>

      <div className="grid gap-2">
        {options.map((opt) => (
          <button
            key={opt}
            type="button"
            disabled={disabled}
            onClick={() => setSelected(opt)}
            className={`text-left px-4 py-3 rounded-lg border text-sm transition-colors cursor-pointer disabled:cursor-default ${
              selected === opt
                ? 'border-indigo-500 bg-indigo-50 text-indigo-700 font-medium'
                : 'border-slate-200 text-slate-700 hover:border-slate-300 hover:bg-slate-50'
            }`}
          >
            {opt}
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
