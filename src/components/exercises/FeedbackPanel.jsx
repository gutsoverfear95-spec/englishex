import { CheckCircle2, XCircle } from 'lucide-react'
import Button from '../ui/Button'

// Đổi giá trị lưu trong DB thành nhãn hiển thị thân thiện
export function answerLabel(exercise, value) {
  if (exercise.type === 'true_false') return value === 'true' ? 'Đúng' : 'Sai'
  return value
}

// Panel hiện ngay sau khi trả lời: đúng/sai + đáp án + giải thích + nút đi tiếp
export default function FeedbackPanel({ result, exercise, isLast, onNext, showScore = false }) {
  const { isCorrect, score } = result

  return (
    <div
      className={`rounded-xl border p-4 space-y-2 ${
        isCorrect ? 'bg-green-50 border-green-200' : 'bg-red-50 border-red-200'
      }`}
    >
      <p
        className={`flex items-center gap-2 font-semibold ${
          isCorrect ? 'text-green-700' : 'text-red-700'
        }`}
      >
        {isCorrect ? <CheckCircle2 className="h-5 w-5" /> : <XCircle className="h-5 w-5" />}
        {isCorrect ? 'Chính xác!' : 'Chưa đúng'}
        {showScore && <span className="font-normal text-sm">— độ chính xác {score}%</span>}
      </p>

      {!isCorrect && (
        <p className="text-sm text-slate-700">
          Đáp án đúng:{' '}
          <span className="font-medium">{answerLabel(exercise, exercise.accepted_answers?.[0])}</span>
        </p>
      )}

      {exercise.explanation && <p className="text-sm text-slate-600">{exercise.explanation}</p>}

      <Button onClick={onNext} variant="secondary" className="mt-1">
        {isLast ? 'Xem kết quả' : 'Câu tiếp theo'}
      </Button>
    </div>
  )
}
