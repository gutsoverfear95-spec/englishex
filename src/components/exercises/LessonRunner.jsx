import { useEffect, useRef, useState } from 'react'
import Card from '../ui/Card'
import ProgressBar from '../ui/ProgressBar'
import MultipleChoice from './MultipleChoice'
import TrueFalse from './TrueFalse'
import FeedbackPanel from './FeedbackPanel'
import LessonResults from './LessonResults'
import { useProgress } from '../../hooks/useProgress'

// ============================================================
// KHUNG CHẠY BÀI TẬP DÙNG CHUNG CHO CẢ 4 MODULE
// Luồng: trả lời từng câu → feedback → ... → màn kết quả
//   - ghi attempts sau mỗi câu (chạy nền, không chặn UI)
//   - kết thúc: điểm = trung bình điểm các câu → completeLesson
// Mỗi module có thể:
//   - truyền `header` (đoạn văn cho Đọc, player audio cho Nghe...)
//   - đăng ký thêm exercise component qua prop `components`
// (FeedbackPanel tự hiện % chính xác cho loại dictation/pronunciation)
// ============================================================

const BASE_COMPONENTS = {
  multiple_choice: MultipleChoice,
  true_false: TrueFalse,
}

// `sidePanel` (thay cho `header`): dùng cho bài đọc dài. Máy tính chia đôi màn
// hình — bài đọc cuộn riêng bên trái, câu hỏi bên phải; điện thoại chuyển tab.
// Bài dài 2000 từ mà xếp dọc thì mỗi câu hỏi nằm dưới cả bức tường chữ, phải
// cuộn lên xuống hàng chục lần cho một lượt làm bài.
export default function LessonRunner({ lesson, exercises, header, sidePanel, components = {} }) {
  const registry = { ...BASE_COMPONENTS, ...components }
  // Mặc định mở tab bài đọc: đọc trước rồi mới trả lời mới là thứ tự tự nhiên
  const [tab, setTab] = useState('passage') // chỉ dùng ở màn hình hẹp

  const [idx, setIdx] = useState(0)          // câu hiện tại
  const [answers, setAnswers] = useState([]) // [{exercise, userAnswer, isCorrect, score}]
  const [feedback, setFeedback] = useState(null) // kết quả câu hiện tại (null = đang trả lời)
  const [finalScore, setFinalScore] = useState(null) // null = chưa xong bài

  const { startLesson, recordAttempt, completeLesson } = useProgress()

  // Đánh dấu "đang học" đúng 1 lần khi mở bài
  // (dùng ref để không gọi đôi khi StrictMode chạy effect 2 lần lúc dev)
  const startedRef = useRef(false)
  useEffect(() => {
    if (!startedRef.current) {
      startedRef.current = true
      startLesson(lesson.id)
    }
  }, [lesson.id, startLesson])

  const total = exercises.length
  const current = exercises[idx]

  if (total === 0) {
    return <Card className="p-8 text-center text-slate-500">Bài học này chưa có bài tập.</Card>
  }

  // Exercise component gọi khi user trả lời xong 1 câu
  function handleSubmit(userAnswer, isCorrect, score) {
    recordAttempt(current.id, userAnswer, isCorrect, score) // ghi nền, không await
    setFeedback({ userAnswer, isCorrect, score })
  }

  // Bấm "Câu tiếp theo" / "Xem kết quả" trên FeedbackPanel
  function handleNext() {
    const newAnswers = [...answers, { exercise: current, ...feedback }]
    setAnswers(newAnswers)
    setFeedback(null)

    if (idx + 1 < total) {
      setIdx(idx + 1)
    } else {
      const score = Math.round(newAnswers.reduce((sum, a) => sum + a.score, 0) / newAnswers.length)
      setFinalScore(score)
      completeLesson(lesson.id, score) // ghi nền
    }
  }

  function handleRetry() {
    setIdx(0)
    setAnswers([])
    setFeedback(null)
    setFinalScore(null)
  }

  if (finalScore !== null) {
    return <LessonResults score={finalScore} answers={answers} onRetry={handleRetry} />
  }

  const Exercise = registry[current.type]

  const questionBlock = (
    <>
      <div className="flex items-center gap-3">
        <ProgressBar value={(idx / total) * 100} />
        <span className="text-sm text-slate-500 whitespace-nowrap">
          Câu {idx + 1}/{total}
        </span>
      </div>

      <Card className="p-5">
        {Exercise ? (
          // key => reset state nội bộ của component khi chuyển câu
          <Exercise key={current.id} exercise={current} onSubmit={handleSubmit} disabled={!!feedback} />
        ) : (
          <p className="text-slate-500">Loại bài tập "{current.type}" sẽ được hỗ trợ ở module sau.</p>
        )}
      </Card>

      {feedback && (
        <FeedbackPanel
          result={feedback}
          exercise={current}
          isLast={idx + 1 === total}
          onNext={handleNext}
        />
      )}
    </>
  )

  // ---------- Bố cục chia đôi cho bài đọc dài ----------
  if (sidePanel) {
    return (
      <div className="space-y-4">
        <div className="lg:hidden inline-flex rounded-lg border border-slate-200 bg-white p-0.5 w-full">
          {[
            { k: 'passage', l: 'Bài đọc' },
            { k: 'questions', l: `Câu hỏi ${idx + 1}/${total}` },
          ].map((t) => (
            <button
              key={t.k}
              type="button"
              onClick={() => setTab(t.k)}
              className={`flex-1 text-sm px-3 py-1.5 rounded-md transition-colors cursor-pointer ${
                tab === t.k ? 'bg-emerald-600 text-white' : 'text-slate-600 hover:bg-slate-100'
              }`}
            >
              {t.l}
            </button>
          ))}
        </div>

        <div className="lg:grid lg:grid-cols-2 lg:gap-5 lg:items-start">
          {/* Bài đọc: máy tính thì dính trên và cuộn riêng, không kéo cả trang */}
          <div
            className={`${tab === 'passage' ? '' : 'hidden'} lg:block lg:sticky lg:top-4 lg:max-h-[calc(100vh-2rem)] lg:overflow-y-auto lg:pr-1`}
          >
            {sidePanel}
          </div>
          <div className={`${tab === 'questions' ? '' : 'hidden'} lg:block space-y-4`}>
            {questionBlock}
          </div>
        </div>
      </div>
    )
  }

  // ---------- Bố cục xếp dọc như cũ ----------
  return (
    <div className="space-y-4">
      {header}
      {questionBlock}
    </div>
  )
}
