import { Mic, Square, Volume2, RotateCcw } from 'lucide-react'
import { useSpeechRecognition } from '../../hooks/useSpeechRecognition'
import { useSpeechSynthesis } from '../../hooks/useSpeechSynthesis'
import { bestSimilarity } from '../../utils/textCompare'
import Button from '../ui/Button'

// Đạt từ bao nhiêu % trở lên thì tính là phát âm đúng
const PASS_THRESHOLD = 80

// ============================================================
// LUYỆN PHÁT ÂM (module Nói)
// Luồng: hiện câu mẫu → user bấm mic đọc câu → SpeechRecognition
// chuyển thành text → so với câu mẫu bằng Levenshtein → % chính xác.
// User được nghe giọng mẫu và nói lại thoải mái TRƯỚC khi bấm chấm điểm.
// ============================================================
export default function Pronunciation({ exercise, onSubmit, disabled }) {
  const { speak, speaking } = useSpeechSynthesis()
  const { supported, listening, transcript, interim, error, start, stop, reset } =
    useSpeechRecognition()

  // Firefox và một số trình duyệt chưa có SpeechRecognition
  if (!supported) {
    return (
      <div className="rounded-xl border border-amber-200 bg-amber-50 p-4 text-sm text-amber-800">
        Trình duyệt của bạn chưa hỗ trợ nhận dạng giọng nói (SpeechRecognition). Hãy mở app bằng
        <span className="font-semibold"> Chrome hoặc Edge</span> để luyện Nói.
      </div>
    )
  }

  function handleGrade() {
    const score = bestSimilarity(transcript, exercise.accepted_answers)
    onSubmit(transcript, score >= PASS_THRESHOLD, score)
  }

  return (
    <div className="space-y-5">
      {/* Câu mẫu + nút nghe giọng đọc chuẩn */}
      <div className="space-y-2">
        <p className="text-xs font-semibold text-slate-400 uppercase tracking-wide">
          Đọc to câu sau
        </p>
        <p className="text-xl font-semibold text-slate-800">{exercise.prompt}</p>
        <Button type="button" variant="ghost" onClick={() => speak(exercise.prompt)} disabled={speaking}>
          <Volume2 className="h-4 w-4" /> Nghe giọng mẫu
        </Button>
      </div>

      {/* Khu vực ghi âm */}
      {!disabled && (
        <div className="flex flex-col items-center gap-3 py-2">
          {!transcript ? (
            <>
              <button
                type="button"
                onClick={listening ? stop : start}
                className={`h-16 w-16 rounded-full grid place-items-center text-white transition-colors cursor-pointer ${
                  listening ? 'bg-red-500 animate-pulse' : 'bg-indigo-600 hover:bg-indigo-700'
                }`}
                title={listening ? 'Dừng ghi âm' : 'Bắt đầu nói'}
              >
                {listening ? <Square className="h-6 w-6" /> : <Mic className="h-6 w-6" />}
              </button>
              <p className="text-sm text-slate-500">
                {listening ? 'Đang nghe… bấm để dừng' : 'Bấm micro rồi đọc câu trên'}
              </p>
              {/* Chữ "nháp" hiện realtime khi đang nói */}
              {interim && <p className="text-slate-400 italic">“{interim}”</p>}
            </>
          ) : (
            <>
              <p className="text-slate-700">
                Máy nghe được: <span className="font-medium">“{transcript}”</span>
              </p>
              <div className="flex gap-2">
                <Button onClick={handleGrade}>Chấm điểm</Button>
                <Button
                  variant="secondary"
                  onClick={() => {
                    reset()
                    start()
                  }}
                >
                  <RotateCcw className="h-4 w-4" /> Nói lại
                </Button>
              </div>
            </>
          )}

          {error && (
            <p className="text-sm text-red-600 bg-red-50 border border-red-100 rounded-lg px-3 py-2">
              {error}
            </p>
          )}
        </div>
      )}

      {/* Sau khi chấm: khoá tương tác, chỉ hiện lại câu máy nghe được */}
      {disabled && transcript && (
        <p className="text-slate-500 text-sm text-center">
          Máy nghe được: <span className="font-medium">“{transcript}”</span>
        </p>
      )}
    </div>
  )
}
