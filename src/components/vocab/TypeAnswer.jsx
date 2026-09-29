import { useEffect, useRef, useState } from 'react'
import { Lightbulb, CornerDownLeft } from 'lucide-react'

// ============================================================
// CHẾ ĐỘ GÕ TỪ — hiện nghĩa tiếng Việt, người học tự viết ra từ tiếng Anh.
//
// Vì sao cần: lật thẻ rồi tự chấm chỉ là NHẬN DIỆN — nhìn thấy đáp án là
// não báo "quen rồi", rất dễ tự đánh lừa. Bắt tự viết ra là SẢN SINH, khó
// hơn nên trí nhớ bền hơn.
//
// Gợi ý (bấm mới hiện) chỉ cho chữ cái đầu + số ký tự, không lộ đáp án.
// ============================================================
export default function TypeAnswer({ word, value, onChange, onSubmit }) {
  const [showHint, setShowHint] = useState(false)
  const inputRef = useRef(null)

  // Sang từ mới: ẩn gợi ý và đưa con trỏ vào ô nhập để gõ liên tục
  useEffect(() => {
    setShowHint(false)
    inputRef.current?.focus()
  }, [word.id])

  // "wake up" → "w___ u_" : giữ nguyên khoảng trắng để biết là mấy từ
  const pattern = word.word
    .split(' ')
    .map((part) => part[0] + '_'.repeat(Math.max(0, part.length - 1)))
    .join(' ')

  return (
    <form
      onSubmit={onSubmit}
      className="rounded-3xl border-2 border-brand-100 bg-white shadow-[0_6px_0_0_var(--color-brand-100)] p-5 sm:p-6 space-y-4"
    >
      <div className="text-center space-y-1">
        <p className="text-xs font-bold uppercase tracking-wide text-brand-600">Viết từ tiếng Anh</p>
        <p className="font-display text-2xl sm:text-3xl font-bold text-ink leading-snug">{word.meaning}</p>
        {word.level && (
          <span className="inline-block text-xs font-semibold px-2 py-0.5 rounded-full bg-sun-200 text-sun-800">
            {word.level}
          </span>
        )}
      </div>

      <input
        ref={inputRef}
        type="text"
        value={value}
        onChange={(e) => onChange(e.target.value)}
        placeholder="Gõ từ tiếng Anh..."
        aria-label="Từ tiếng Anh"
        autoComplete="off"
        autoCorrect="off"
        autoCapitalize="off"
        spellCheck={false}
        className="w-full text-center text-xl sm:text-2xl rounded-2xl border-2 border-brand-200 bg-brand-50/40 px-4 py-3 text-ink focus:outline-none focus:border-brand-500 focus:bg-white transition-colors"
      />

      {showHint ? (
        <p className="text-center text-lg font-mono tracking-[0.3em] text-brand-700">{pattern}</p>
      ) : (
        <button
          type="button"
          onClick={() => setShowHint(true)}
          className="mx-auto flex items-center gap-1.5 min-h-11 px-2 text-sm font-medium text-slate-600 hover:text-brand-700 transition-colors cursor-pointer"
        >
          <Lightbulb className="h-4 w-4" /> Gợi ý
        </button>
      )}

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
