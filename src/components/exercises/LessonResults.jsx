import { Link, useParams } from 'react-router-dom'
import { CheckCircle2, XCircle, RotateCcw, List } from 'lucide-react'
import Card from '../ui/Card'
import Button from '../ui/Button'
import { answerLabel } from './FeedbackPanel'

// Màu điểm tổng theo mức độ
function scoreColor(score) {
  if (score >= 80) return 'text-green-600'
  if (score >= 50) return 'text-amber-600'
  return 'text-red-500'
}

// Màn hình kết quả cuối bài: điểm tổng + xem lại từng câu + làm lại
export default function LessonResults({ score, answers, onRetry }) {
  const { skill } = useParams()
  const correctCount = answers.filter((a) => a.isCorrect).length

  return (
    <div className="space-y-4">
      <Card className="p-8 text-center space-y-2">
        <p className="text-sm text-slate-500 uppercase tracking-wide">Kết quả</p>
        <p className={`text-5xl font-bold ${scoreColor(score)}`}>{score}</p>
        <p className="text-slate-600">
          Trả lời đúng {correctCount}/{answers.length} câu
        </p>
        <div className="flex justify-center gap-2 pt-2">
          <Button onClick={onRetry} variant="secondary">
            <RotateCcw className="h-4 w-4" /> Làm lại bài
          </Button>
          <Link to={`/skill/${skill}`}>
            <Button>
              <List className="h-4 w-4" /> Danh sách bài
            </Button>
          </Link>
        </div>
      </Card>

      <Card className="divide-y divide-slate-100">
        {answers.map(({ exercise, userAnswer, isCorrect }, i) => (
          <div key={exercise.id} className="p-4 flex gap-3">
            {isCorrect ? (
              <CheckCircle2 className="h-5 w-5 text-green-500 shrink-0 mt-0.5" />
            ) : (
              <XCircle className="h-5 w-5 text-red-400 shrink-0 mt-0.5" />
            )}
            <div className="min-w-0 space-y-0.5">
              <p className="text-sm font-medium text-slate-800">
                Câu {i + 1}: {exercise.prompt}
              </p>
              <p className="text-sm text-slate-500">
                Bạn trả lời: {answerLabel(exercise, userAnswer) || '(bỏ trống)'}
              </p>
              {!isCorrect && (
                <p className="text-sm text-green-700">
                  Đáp án: {answerLabel(exercise, exercise.accepted_answers?.[0])}
                </p>
              )}
            </div>
          </div>
        ))}
      </Card>
    </div>
  )
}
