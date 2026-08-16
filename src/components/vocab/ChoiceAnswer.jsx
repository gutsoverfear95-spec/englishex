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
    <div className="rounded-2xl border-2 border-violet-200 bg-white shadow-lg p-5 sm:p-6 space-y-4">
      <div className="text-center space-y-1">
        <p className="text-xs uppercase tracking-wide text-slate-400">Chọn nghĩa đúng</p>
        <p className="text-3xl sm:text-4xl font-bold text-slate-800">{word.word}</p>
        {word.phonetic && <p className="text-slate-400">{word.phonetic}</p>}
        <button
          type="button"
          onClick={() => speak(word.word)}
          className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-full bg-violet-50 text-sm text-violet-600 hover:bg-violet-100 transition-colors cursor-pointer"
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
            className="flex items-center gap-3 rounded-xl border-2 border-slate-200 px-3 py-3 text-left hover:border-violet-400 hover:bg-violet-50 active:scale-[0.99] transition-all cursor-pointer"
          >
            <span className="h-7 w-7 shrink-0 grid place-items-center rounded-lg bg-slate-100 text-sm font-bold text-slate-500">
              {'ABCD'[i]}
            </span>
            <span className="text-slate-700">{opt.meaning}</span>
          </button>
        ))}
      </div>
    </div>
  )
}
