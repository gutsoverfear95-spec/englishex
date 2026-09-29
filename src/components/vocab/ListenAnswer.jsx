import { useEffect, useRef } from 'react'
import { CornerDownLeft, Volume2, Turtle } from 'lucide-react'
import { useSpeechSynthesis } from '../../hooks/useSpeechSynthesis'

// ============================================================
// NGHE & VIẾT — dạng bài cho từ đã thuộc (≥ 30 ngày).
//
// Vì sao cần: học bằng mắt lâu ngày dễ dẫn tới "biết mặt chữ nhưng nghe không
// ra". Bài này bắt não đi từ ÂM THANH về mặt chữ — đúng chiều mà tai phải làm
// việc khi nghe người khác nói.
//
// Cố ý KHÔNG hiện nghĩa tiếng Việt: hiện nghĩa thì thành bài gõ từ, tai không
// phải làm gì cả.
//
// KHÔNG tự phát âm khi sang thẻ mới (bản trước có): người học có thể đang ở
// nơi công cộng hoặc đang nghe thứ khác, âm thanh bật lên bất ngờ là khó chịu.
// Nút nghe được làm to, đặt ngay giữa để bấm một chạm là nghe.
// ============================================================
export default function ListenAnswer({ word, value, onChange, onSubmit }) {
  const { speak, supported } = useSpeechSynthesis()
  const inputRef = useRef(null)

  // Sang từ mới: chỉ đưa con trỏ vào ô nhập, không phát âm thanh
  useEffect(() => {
    inputRef.current?.focus()
  }, [word.id])

  // Có audio_url thật thì ưu tiên file đó, hỏng mới rơi về Web Speech API
  function play(rate) {
    if (word.audio_url && rate === 1) {
      new Audio(word.audio_url).play().catch(() => speak(word.word))
    } else {
      speak(word.word, { rate })
    }
  }

  return (
    <form
      onSubmit={onSubmit}
      className="rounded-3xl border-2 border-brand-100 bg-white shadow-[0_6px_0_0_var(--color-brand-100)] p-5 sm:p-6 space-y-4"
    >
      <div className="text-center space-y-1">
        <p className="text-xs font-bold uppercase tracking-wide text-brand-600">Nghe rồi viết lại từ</p>
        {supported ? (
          <p className="text-sm text-slate-600">Bấm loa để nghe — nghe bao nhiêu lần cũng được</p>
        ) : (
          <p className="text-sm text-sun-800">
            Trình duyệt này không đọc được — hãy đổi kiểu ôn khác.
          </p>
        )}
      </div>

      <div className="flex justify-center items-center gap-3">
        <button
          type="button"
          onClick={() => play(1)}
          aria-label="Nghe từ"
          className="press [--press-color:var(--color-sun-600)] h-20 w-20 grid place-items-center rounded-full bg-sun-400 text-ink hover:bg-sun-300 cursor-pointer focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-brand-500"
        >
          <Volume2 className="h-9 w-9" aria-hidden="true" />
        </button>
        <button
          type="button"
          onClick={() => play(0.6)}
          className="inline-flex items-center gap-2 min-h-12 rounded-full bg-brand-50 text-brand-700 font-semibold px-4 hover:bg-brand-100 transition-colors cursor-pointer"
        >
          <Turtle className="h-5 w-5" aria-hidden="true" /> Chậm
        </button>
      </div>

      <input
        ref={inputRef}
        type="text"
        value={value}
        onChange={(e) => onChange(e.target.value)}
        placeholder="Bạn nghe thấy từ gì?"
        aria-label="Từ bạn nghe được"
        autoComplete="off"
        autoCorrect="off"
        autoCapitalize="off"
        spellCheck={false}
        className="w-full text-center text-xl sm:text-2xl rounded-2xl border-2 border-brand-200 bg-brand-50/40 px-4 py-3 text-ink focus:outline-none focus:border-brand-500 focus:bg-white transition-colors"
      />

      <button
        type="submit"
        disabled={!value.trim()}
        className="press [--press-color:var(--color-brand-800)] w-full inline-flex items-center justify-center gap-2 rounded-2xl bg-brand-600 text-white min-h-14 font-display text-lg font-bold hover:bg-brand-700 disabled:opacity-50 disabled:cursor-not-allowed cursor-pointer focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-brand-500"
      >
        Kiểm tra <CornerDownLeft className="h-4 w-4" aria-hidden="true" />
      </button>
    </form>
  )
}
