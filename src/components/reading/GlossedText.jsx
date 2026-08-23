import { memo, useCallback, useEffect, useMemo, useRef, useState } from 'react'
import { Volume2 } from 'lucide-react'
import { supabase } from '../../lib/supabase'
import { useSpeechSynthesis } from '../../hooks/useSpeechSynthesis'
import { lookup, splitByPhrases } from '../../utils/glossLookup'

// ============================================================
// ĐOẠN VĂN CÓ TRA TỪ: di chuột (hoặc chạm trên điện thoại) vào một từ được
// gạch chân là hiện nghĩa tiếng Việt + phiên âm.
//
// Hai nguồn nghĩa, glossary được ưu tiên:
//   1. glossary của riêng bài  — cụm từ, thành ngữ, thuật ngữ mà từ điển
//      không có ("survivorship bias", "rebound effect"...)
//   2. kho 1900 từ trong bảng words — tự động, không cần chú thích tay
// ============================================================

// Tải cả từ điển đúng MỘT lần cho toàn phiên. Cách này gọn hơn nhiều so với
// việc dò từng từ trong bài rồi query theo danh sách: chuỗi IN quá dài dễ vượt
// giới hạn độ dài URL của PostgREST.
let dictPromise = null
function loadDictionary() {
  if (!dictPromise) {
    dictPromise = Promise.all([
      supabase.from('words').select('word, meaning, phonetic'),
      // Từ cổ / văn chương chỉ gặp trong truyện kinh điển (countenance,
      // vexation...). Để riêng bảng vì words là giáo trình học từ vựng, thêm
      // vào đó sẽ làm loãng các khoá học.
      supabase.from('book_words').select('word, meaning, phonetic'),
    ]).then(([base, extra]) => {
      const map = new Map()
      for (const w of base.data ?? []) {
        const k = w.word.toLowerCase()
        // Từ trùng nhau giữa hai khoá học: giữ bản gặp đầu tiên
        if (!map.has(k)) map.set(k, w)
      }
      // Kho chính luôn thắng: nghĩa ở đó hợp với trình độ người học hơn
      for (const w of extra.data ?? []) {
        const k = w.word.toLowerCase()
        if (!map.has(k)) map.set(k, w)
      }
      return map
    })
  }
  return dictPromise
}

// Định nghĩa NGOÀI GlossedText. Nếu đặt bên trong, mỗi lần state đổi (tức mỗi
// lần rê chuột) React sẽ coi đây là một loại component mới và tháo/gắn lại toàn
// bộ span trong đoạn văn — gây nháy và làm mất trạng thái hover.
const SPLIT_PARA = /\n\s*\n/
const SPLIT_WORD = /([A-Za-z][A-Za-z'-]*)/
const IS_WORD = /^[A-Za-z]/

function Word({ children, term, vi, phonetic, onShow, onHide }) {
  const fire = (e) => onShow(e, term, vi, phonetic)
  return (
    <span
      role="button"
      tabIndex={0}
      onMouseEnter={fire}
      onMouseLeave={onHide}
      onClick={fire}
      onFocus={fire}
      onBlur={onHide}
      className="cursor-help underline decoration-dotted decoration-emerald-500 underline-offset-4 hover:bg-emerald-100 rounded-sm transition-colors"
    >
      {children}
    </span>
  )
}

// Bọc memo: hover chỉ đổi state của tooltip, còn hàng nghìn thẻ span của đoạn
// văn thì giữ nguyên. Nếu không có lớp này thì mỗi lần rê chuột React phải dựng
// lại toàn bộ phần tử của bài đọc — đo được ~37ms/lần với bài 2500 từ.
const Passage = memo(function Passage({ rendered, onShow, onHide }) {
  return rendered.map((chunks, pi) => (
    <p key={pi} className="text-slate-700 leading-loose">
      {chunks.map((c, ci) =>
        c.vi ? (
          <Word key={ci} term={c.text} vi={c.vi} phonetic={c.phonetic} onShow={onShow} onHide={onHide}>
            {c.text}
          </Word>
        ) : (
          <span key={ci}>{c.text}</span>
        ),
      )}
    </p>
  ))
})

export default function GlossedText({ text, glossary = [] }) {
  const [dict, setDict] = useState(null)
  const [active, setActive] = useState(null) // { term, vi, phonetic, x, y }
  const { speak } = useSpeechSynthesis()
  const holderRef = useRef(null)

  useEffect(() => {
    let alive = true
    loadDictionary().then((d) => alive && setDict(d))
    return () => {
      alive = false
    }
  }, [])

  // Bấm ra ngoài hoặc cuộn trang thì đóng chú thích
  useEffect(() => {
    if (!active) return
    const close = () => setActive(null)
    window.addEventListener('scroll', close, true)
    document.addEventListener('click', close)
    return () => {
      window.removeEventListener('scroll', close, true)
      document.removeEventListener('click', close)
    }
  }, [active])

  // Phải ổn định qua các lần render, nếu không memo của Passage vô tác dụng
  const hide = useCallback(() => setActive(null), [])
  const show = useCallback((e, term, vi, phonetic) => {
    e.stopPropagation()
    const r = e.currentTarget.getBoundingClientRect()
    setActive({ term, vi, phonetic, x: r.left + r.width / 2, y: r.top })
  }, [])

  // Tách đoạn, tách cụm rồi tra từ điển là việc nặng: bài 2000 từ phải duyệt
  // hàng nghìn từ. Nếu để trong thân render thì MỖI lần rê chuột (state đổi)
  // đều làm lại toàn bộ — đo được ~40ms/lần và còn tăng theo độ dài bài.
  // Ghi nhớ theo [text, glossary, dict] để hover chỉ vẽ lại mỗi cái tooltip.
  const rendered = useMemo(() => {
    return text.split(SPLIT_PARA).map((para) =>
      splitByPhrases(para, glossary).flatMap((chunk) => {
        if (chunk.gloss) return [{ text: chunk.text, vi: chunk.gloss.vi }]
        return chunk.text.split(SPLIT_WORD).map((piece) => {
          if (!IS_WORD.test(piece)) return { text: piece }
          const hit = dict && lookup(dict, piece.toLowerCase())
          if (!hit) return { text: piece }
          return { text: piece, vi: hit.meaning, phonetic: hit.phonetic }
        })
      }),
    )
  }, [text, glossary, dict])

  return (
    <div ref={holderRef} className="space-y-3">
      <Passage rendered={rendered} onShow={show} onHide={hide} />

      {active && (
        <div
          className="fixed z-50 -translate-x-1/2 -translate-y-full pointer-events-auto"
          style={{ left: active.x, top: active.y - 8 }}
        >
          <div className="max-w-xs rounded-xl bg-slate-800 text-white px-3 py-2 shadow-xl">
            <div className="flex items-center gap-2">
              <span className="font-semibold">{active.term}</span>
              {active.phonetic && (
                <span className="text-xs text-slate-300">{active.phonetic}</span>
              )}
              <button
                type="button"
                onClick={(e) => {
                  e.stopPropagation()
                  speak(active.term)
                }}
                title="Nghe phát âm"
                className="ml-auto p-0.5 rounded text-slate-300 hover:text-white cursor-pointer"
              >
                <Volume2 className="h-3.5 w-3.5" />
              </button>
            </div>
            <p className="text-sm text-emerald-200 mt-0.5">{active.vi}</p>
          </div>
          <div className="mx-auto h-2 w-2 rotate-45 bg-slate-800 -mt-1" />
        </div>
      )}
    </div>
  )
}
