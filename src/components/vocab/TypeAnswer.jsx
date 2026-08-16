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
      className="rounded-2xl border-2 border-violet-200 bg-white shadow-lg p-5 sm:p-6 space-y-4"
    >
      <div className="text-center space-y-1">
        <p className="text-xs uppercase tracking-wide text-slate-400">Viết từ tiếng Anh</p>
        <p className="text-2xl sm:text-3xl font-bold text-slate-800">{word.meaning}</p>
        {word.level && (
          <span className="inline-block text-xs font-semibold px-2 py-0.5 rounded-full bg-violet-50 text-violet-600">
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
        autoComplete="off"
        autoCorrect="off"
        autoCapitalize="off"
        spellCheck={false}
        className="w-full text-center text-xl sm:text-2xl rounded-xl border-2 border-slate-200 px-4 py-3 focus:outline-none focus:border-violet-500 transition-colors"
      />

      {showHint ? (
        <p className="text-center text-lg font-mono tracking-[0.3em] text-violet-600">{pattern}</p>
      ) : (
        <button
          type="button"
          onClick={() => setShowHint(true)}
          className="mx-auto flex items-center gap-1.5 text-sm text-slate-500 hover:text-violet-600 transition-colors cursor-pointer"
        >
          <Lightbulb className="h-4 w-4" /> Gợi ý
        </button>
      )}

      <button
        type="submit"
        disabled={!value.trim()}
        className="w-full inline-flex items-center justify-center gap-2 rounded-xl bg-violet-600 text-white py-3 font-medium hover:bg-violet-700 disabled:opacity-50 transition-colors cursor-pointer"
      >
        Kiểm tra <CornerDownLeft className="h-4 w-4" />
      </button>
    </form>
  )
}
