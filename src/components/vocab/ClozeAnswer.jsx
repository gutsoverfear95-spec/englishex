import { useEffect, useRef, useState } from 'react'
import { CornerDownLeft, Lightbulb, Volume2 } from 'lucide-react'
import { useSpeechSynthesis } from '../../hooks/useSpeechSynthesis'

// ============================================================
// ĐIỀN VÀO CHỖ TRỐNG — dạng bài cho từ đã khá thuộc (7–30 ngày).
//
// Vì sao cần: nhớ từ rời rạc ("apply = nộp đơn") không đủ để DÙNG được từ.
// Bắt điền vào đúng câu ví dụ buộc người học nhớ cả ngữ cảnh và dạng đúng của
// từ — đây là kiểu bài gần với lúc thật sự nói/viết nhất.
//
// Bản dịch tiếng Việt của câu hiện sẵn làm điểm tựa: người học biết câu đang
// nói gì, chỉ phải nhớ đúng TỪ tiếng Anh cần điền.
// ============================================================
export default function ClozeAnswer({ word, cloze, value, onChange, onSubmit }) {
  const [showHint, setShowHint] = useState(false)
  const { speak } = useSpeechSynthesis()
  const inputRef = useRef(null)

  useEffect(() => {
    setShowHint(false)
    inputRef.current?.focus()
  }, [word.id])

  // "commutes" → "c_______" : lộ chữ cái đầu + độ dài, không lộ đáp án
  const hintPattern = word.word
    .split(' ')
    .map((part) => part[0] + '_'.repeat(Math.max(0, part.length - 1)))
    .join(' ')

  return (
    <form
      onSubmit={onSubmit}
      className="rounded-3xl border-2 border-brand-100 bg-white shadow-[0_6px_0_0_var(--color-brand-100)] p-5 sm:p-6 space-y-4"
    >
      <div className="text-center space-y-1">
        <p className="text-xs font-bold uppercase tracking-wide text-brand-600">Điền từ còn thiếu</p>
        <p className="text-lg sm:text-xl text-ink leading-relaxed">{cloze.masked}</p>
        {cloze.sentence_vi && <p className="text-sm text-slate-600 italic">{cloze.sentence_vi}</p>}
      </div>

      {/* Nghĩa tiếng Việt của TỪ cần điền — gợi ý chính, luôn hiện */}
      <p className="text-center">
        <span className="inline-block rounded-full bg-sun-200 px-3 py-1 text-sm font-semibold text-sun-800">
          {word.meaning}
        </span>
      </p>

      <input
        ref={inputRef}
        type="text"
        value={value}
        onChange={(e) => onChange(e.target.value)}
        placeholder="Từ còn thiếu..."
        aria-label="Từ còn thiếu trong câu"
        autoComplete="off"
        autoCorrect="off"
        autoCapitalize="off"
        spellCheck={false}
        className="w-full text-center text-xl sm:text-2xl rounded-2xl border-2 border-brand-200 bg-brand-50/40 px-4 py-3 text-ink focus:outline-none focus:border-brand-500 focus:bg-white transition-colors"
      />

      <div className="flex items-center justify-center gap-4">
        {showHint ? (
          <p className="text-lg font-mono tracking-[0.3em] text-brand-700">{hintPattern}</p>
        ) : (
          <button
            type="button"
            onClick={() => setShowHint(true)}
            className="flex items-center gap-1.5 min-h-11 px-2 text-sm font-medium text-slate-600 hover:text-brand-700 transition-colors cursor-pointer"
          >
            <Lightbulb className="h-4 w-4" /> Gợi ý
          </button>
        )}
        <button
          type="button"
          onClick={() => speak(cloze.sentence_en)}
          title="Nghe cả câu (có đọc luôn từ cần điền)"
          className="flex items-center gap-1.5 min-h-11 px-2 text-sm font-medium text-slate-600 hover:text-brand-700 transition-colors cursor-pointer"
        >
          <Volume2 className="h-4 w-4" /> Nghe câu
        </button>
      </div>

      <button
        type="submit"
        disabled={!value.trim()}
        className="press [--press-color:var(--color-brand-800)] w-full inline-flex items-center justify-center gap-2 rounded-2xl bg-brand-600 text-white min-h-14 font-display text-lg font-bold hover:bg-brand-700 disabled:opacity-50 disabled:cursor-not-allowed cursor-pointer focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-brand-500"
      >
        Kiểm tra <CornerDownLeft className="h-4 w-4" />
      </button>
    </form>
  )
}
