import { Volume2 } from 'lucide-react'
import { useSpeechSynthesis } from '../../hooks/useSpeechSynthesis'

// ============================================================
// TRẮC NGHIỆM 4 PHƯƠNG ÁN — dạng bài dành cho TỪ MỚI.
//
// Vì sao không bắt gõ ngay: từ vừa gặp lần đầu mà đã phải viết ra thì gần như
// chắc chắn sai, sai nhiều lần đầu làm nản và không giúp nhớ thêm. Chọn giữa
// 4 nghĩa vẫn là hồi tưởng thật (phải phân biệt với 3 nghĩa gần giống, lấy từ
// cùng chủ đề) nhưng vừa sức cho lần gặp đầu tiên.
// ============================================================
export default function ChoiceAnswer({ word, options, onPick }) {
  const { speak } = useSpeechSynthesis()

  return (
    <div className="rounded-3xl border-2 border-brand-100 bg-white shadow-[0_6px_0_0_var(--color-brand-100)] p-5 sm:p-6 space-y-4">
      <div className="text-center space-y-1">
        <p className="text-xs font-bold uppercase tracking-wide text-brand-600">Chọn nghĩa đúng</p>
        <p className="font-display text-4xl sm:text-5xl font-bold text-ink">{word.word}</p>
        {word.phonetic && <p className="text-slate-500">{word.phonetic}</p>}
        <button
          type="button"
          onClick={() => speak(word.word)}
          className="inline-flex items-center gap-1.5 min-h-11 px-4 rounded-full bg-brand-50 text-sm font-semibold text-brand-700 hover:bg-brand-100 transition-colors cursor-pointer"
        >
          <Volume2 className="h-4 w-4" /> Phát âm
        </button>
      </div>

      <div className="grid gap-2">
        {options.map((opt, i) => (
          <button
            key={opt.id}
            type="button"
            onClick={() => onPick(opt)}
            className="press [--press-color:var(--color-brand-100)] flex items-center gap-3 rounded-2xl border-2 border-brand-100 bg-white min-h-14 px-3 py-2.5 text-left hover:border-brand-400 hover:bg-brand-50 cursor-pointer focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-brand-500"
          >
            <span className="h-7 w-7 shrink-0 grid place-items-center rounded-xl bg-brand-100 text-sm font-bold text-brand-700">
              {'ABCD'[i]}
            </span>
            <span className="font-medium text-ink">{opt.meaning}</span>
          </button>
        ))}
      </div>
    </div>
  )
}
