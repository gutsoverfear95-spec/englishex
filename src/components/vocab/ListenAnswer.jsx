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
// ============================================================
export default function ListenAnswer({ word, value, onChange, onSubmit }) {
  const { speak, supported } = useSpeechSynthesis()
  const inputRef = useRef(null)

  // Sang từ mới: đọc luôn 1 lần rồi đưa con trỏ vào ô nhập.
  // Có audio_url thật thì ưu tiên file đó, hỏng mới rơi về Web Speech API.
  useEffect(() => {
    inputRef.current?.focus()
    if (word.audio_url) {
      new Audio(word.audio_url).play().catch(() => speak(word.word))
    } else {
      speak(word.word)
    }
  }, [word.id, word.audio_url, word.word, speak])

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
      className="rounded-2xl border-2 border-violet-200 bg-white shadow-lg p-5 sm:p-6 space-y-4"
    >
      <div className="text-center space-y-1">
        <p className="text-xs uppercase tracking-wide text-slate-400">Nghe rồi viết lại từ</p>
        {!supported && (
          <p className="text-sm text-amber-600">
            Trình duyệt này không đọc được — hãy đổi kiểu ôn khác.
          </p>
        )}
      </div>

      <div className="flex justify-center gap-2">
        <button
          type="button"
          onClick={() => play(1)}
          className="inline-flex items-center gap-2 rounded-full bg-violet-600 text-white px-5 py-3 font-medium hover:bg-violet-700 transition-colors cursor-pointer"
        >
          <Volume2 className="h-5 w-5" /> Nghe lại
        </button>
        <button
          type="button"
          onClick={() => play(0.6)}
          title="Đọc chậm"
          className="inline-flex items-center gap-2 rounded-full bg-violet-50 text-violet-600 px-4 py-3 hover:bg-violet-100 transition-colors cursor-pointer"
        >
          <Turtle className="h-5 w-5" /> Chậm
        </button>
      </div>

      <input
        ref={inputRef}
        type="text"
        value={value}
        onChange={(e) => onChange(e.target.value)}
        placeholder="Bạn nghe thấy từ gì?"
        autoComplete="off"
        autoCorrect="off"
        autoCapitalize="off"
        spellCheck={false}
        className="w-full text-center text-xl sm:text-2xl rounded-xl border-2 border-slate-200 px-4 py-3 focus:outline-none focus:border-violet-500 transition-colors"
      />

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
