import { Volume2, RefreshCw } from 'lucide-react'
import { useSpeechSynthesis } from '../../hooks/useSpeechSynthesis'

// Escape ký tự đặc biệt để nhét từ vào regex an toàn
function escapeRegex(str) {
  return str.replace(/[.*+?^${}()|[\]\\]/g, '\\$&')
}

// Bôi đậm từ mục tiêu trong câu ví dụ.
// Regex `từ + \w*` bắt được cả dạng biến thể (vegetable → vegetables).
function HighlightedExample({ sentence, target }) {
  const parts = sentence.split(new RegExp(`(${escapeRegex(target)}\\w*)`, 'gi'))
  const matcher = new RegExp(`^${escapeRegex(target)}`, 'i')
  return (
    <p className="text-sm sm:text-base text-violet-100 italic leading-relaxed">
      “
      {parts.map((part, i) =>
        matcher.test(part) ? (
          <strong key={i} className="font-bold text-white underline decoration-amber-300 decoration-2 not-italic">
            {part}
          </strong>
        ) : (
          part
        ),
      )}
      ”
    </p>
  )
}

// ============================================================
// FLASHCARD 3D — controlled component (cha giữ state flipped)
// để StudySession chỉ hiện nút Khó/Tốt/Dễ SAU khi user đã lật thẻ.
//
// Hiệu ứng lật 3D thuần CSS qua arbitrary properties của Tailwind:
//   [perspective:1200px]          → chiều sâu 3D cho khung ngoài
//   [transform-style:preserve-3d] → 2 mặt con giữ vị trí 3D khi xoay
//   [backface-visibility:hidden]  → ẩn mặt đang quay lưng về người xem
//   mặt sau đặt sẵn rotateY(180deg), cả cụm xoay 180deg khi flipped
// ============================================================
export default function Flashcard({ word, examples = [], flipped, onFlip }) {
  const { speak } = useSpeechSynthesis()

  // Ưu tiên file audio thật (audio_url); không có → đọc bằng Web Speech API
  function playAudio(e) {
    e.stopPropagation() // không làm lật thẻ khi bấm loa
    if (word.audio_url) {
      new Audio(word.audio_url).play().catch(() => speak(word.word))
    } else {
      speak(word.word)
    }
  }

  function playSentence(e, sentence) {
    e.stopPropagation()
    speak(sentence)
  }

  // Từ chưa được bổ sung ví dụ mới thì quay về câu ví dụ cũ trong bảng words,
  // nhờ vậy thẻ không bao giờ trống dù dữ liệu đang nạp dở.
  const exampleList = examples.length
    ? examples
    : word.example_sentence
      ? [{ sentence_en: word.example_sentence, sentence_vi: null }]
      : []

  return (
    <div
      className="[perspective:1200px] cursor-pointer select-none"
      onClick={onFlip}
      title="Bấm để lật thẻ"
    >
      <div
        className={`relative h-[26rem] sm:h-[28rem] md:h-[30rem] transition-transform duration-500 [transform-style:preserve-3d] ${
          flipped ? '[transform:rotateY(180deg)]' : ''
        }`}
      >
        {/* ---------- MẶT TRƯỚC: từ + phát âm ---------- */}
        <div className="absolute inset-0 [backface-visibility:hidden] rounded-2xl border-2 border-violet-200 bg-white shadow-lg grid place-items-center p-4 sm:p-6">
          {word.level && (
            <span className="absolute top-3 right-3 text-xs font-semibold px-2 py-1 rounded-full bg-violet-50 text-violet-600">
              {word.level}
            </span>
          )}
          <div className="text-center space-y-2 sm:space-y-3">
            <p className="text-3xl sm:text-4xl md:text-5xl font-bold text-slate-800">{word.word}</p>
            {word.phonetic && (
              <p className="text-base sm:text-lg text-slate-400">{word.phonetic}</p>
            )}
            <button
              type="button"
              onClick={playAudio}
              className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-full bg-violet-50 text-sm text-violet-600 hover:bg-violet-100 transition-colors cursor-pointer"
            >
              <Volume2 className="h-4 w-4" /> Phát âm
            </button>
          </div>
          <p className="absolute bottom-3 inset-x-0 text-center text-xs text-slate-300 flex items-center justify-center gap-1">
            <RefreshCw className="h-3 w-3" /> Bấm để xem nghĩa
          </p>
        </div>

        {/* ---------- MẶT SAU: nghĩa + các câu ví dụ kèm bản dịch ---------- */}
        <div className="absolute inset-0 [backface-visibility:hidden] [transform:rotateY(180deg)] rounded-2xl bg-gradient-to-br from-violet-600 to-indigo-700 text-white shadow-lg overflow-y-auto">
          <div className="min-h-full p-4 sm:p-5 flex flex-col gap-3">
            <div className="text-center space-y-0.5 shrink-0">
              {word.phonetic && <p className="text-violet-200 text-sm">{word.phonetic}</p>}
              <p className="text-2xl sm:text-3xl font-bold">{word.meaning}</p>
            </div>

            {/* Mỗi ví dụ: câu tiếng Anh (bôi đậm từ đang học) + nghĩa tiếng Việt */}
            {exampleList.length > 0 && (
              <ul className="space-y-2 text-left">
                {exampleList.map((ex, i) => (
                  <li key={i} className="rounded-xl bg-white/10 px-3 py-2 flex items-start gap-2">
                    <span className="mt-0.5 h-5 w-5 shrink-0 grid place-items-center rounded-full bg-white/20 text-[11px] font-bold">
                      {i + 1}
                    </span>
                    <div className="flex-1 min-w-0">
                      <HighlightedExample sentence={ex.sentence_en} target={word.word} />
                      {ex.sentence_vi && (
                        <p className="text-xs sm:text-sm text-violet-200 mt-0.5">{ex.sentence_vi}</p>
                      )}
                    </div>
                    <button
                      type="button"
                      onClick={(e) => playSentence(e, ex.sentence_en)}
                      title="Nghe câu này"
                      className="mt-0.5 shrink-0 p-1 rounded-lg text-violet-200 hover:text-white hover:bg-white/10 transition-colors cursor-pointer"
                    >
                      <Volume2 className="h-3.5 w-3.5" />
                    </button>
                  </li>
                ))}
              </ul>
            )}

            {/* Khung ảnh minh hoạ — chỉ hiện khi có image_url */}
            {word.image_url && (
              <img
                src={word.image_url}
                alt={word.word}
                className="mx-auto max-h-24 sm:max-h-28 rounded-xl object-cover shadow-md"
                onError={(e) => (e.target.style.display = 'none')}
              />
            )}

            <button
              type="button"
              onClick={playAudio}
              className="mx-auto mt-auto inline-flex items-center gap-1.5 text-sm text-violet-200 hover:text-white transition-colors cursor-pointer"
            >
              <Volume2 className="h-4 w-4" /> Nghe lại từ
            </button>
          </div>
        </div>
      </div>
    </div>
  )
}
