import { useCallback, useEffect, useRef, useState } from 'react'
import { Link, useNavigate, useParams } from 'react-router-dom'
import { ArrowLeft, ArrowRight, Check, List, MousePointerClick } from 'lucide-react'
import { supabase } from '../../lib/supabase'
import { useAuth } from '../../context/AuthContext'
import Card from '../../components/ui/Card'
import Spinner from '../../components/ui/Spinner'
import GlossedText from '../../components/reading/GlossedText'

// ============================================================
// ĐỌC SÁCH: mỗi lần hiển thị đúng MỘT chương.
//
// Vì sao không đổ cả cuốn vào một trang: đo được 2.490 từ sinh 4.934 phần tử
// DOM, nên Pride and Prejudice (127 nghìn từ) sẽ là ~252.000 phần tử — trình
// duyệt đứng hình. Một chương ~2.000 từ thì nhẹ nhàng.
// ============================================================

// Ghi tiến độ thưa tay: cuộn trang bắn sự kiện liên tục, ghi thẳng lên mạng
// mỗi lần thì vừa tốn vừa dễ bị giới hạn tần suất.
const SAVE_DELAY = 1500

export default function BookReader() {
  const { slug, num } = useParams()
  const navigate = useNavigate()
  const { user } = useAuth()

  const [book, setBook] = useState(null)
  const [chapter, setChapter] = useState(null)
  const [toc, setToc] = useState([])
  const [showToc, setShowToc] = useState(false)
  const [loading, setLoading] = useState(true)
  const [notFound, setNotFound] = useState(false)

  const current = Number(num) || 1
  const scrollBox = useRef(null)
  const saveTimer = useRef(null)
  const restoreTo = useRef(0) // % cần cuộn lại sau khi nội dung hiện ra

  // ---------- tải sách + chương ----------
  useEffect(() => {
    let alive = true
    setLoading(true)

    async function load() {
      const { data: b } = await supabase
        .from('books')
        .select('*')
        .eq('slug', slug)
        .maybeSingle()

      if (!alive) return
      if (!b) {
        setNotFound(true)
        setLoading(false)
        return
      }

      const [chapRes, tocRes, progRes] = await Promise.all([
        supabase
          .from('book_chapters')
          .select('*')
          .eq('book_id', b.id)
          .eq('number', current)
          .maybeSingle(),
        supabase
          .from('book_chapters')
          .select('number, title, word_count')
          .eq('book_id', b.id)
          .order('number'),
        supabase
          .from('book_progress')
          .select('chapter, scroll_pct')
          .eq('book_id', b.id)
          .maybeSingle(),
      ])

      if (!alive) return
      // Chỉ khôi phục vị trí cuộn khi quay lại ĐÚNG chương đang đọc dở.
      // Không có điều kiện này thì bấm sang chương mới cũng bị nhảy xuống giữa
      // bài theo % của chương trước.
      restoreTo.current =
        progRes.data?.chapter === current ? Number(progRes.data.scroll_pct) || 0 : 0

      setBook(b)
      setChapter(chapRes.data ?? null)
      setToc(tocRes.data ?? [])
      setNotFound(!chapRes.data)
      setLoading(false)
    }

    load()
    return () => {
      alive = false
    }
  }, [slug, current])

  // ---------- ghi tiến độ ----------
  const save = useCallback(
    (pct, finished = false) => {
      if (!user || !book) return
      supabase.from('book_progress').upsert(
        {
          user_id: user.id,
          book_id: book.id,
          chapter: current,
          scroll_pct: Math.min(100, Math.max(0, Math.round(pct))),
          finished,
          updated_at: new Date().toISOString(),
        },
        { onConflict: 'user_id,book_id' },
      ).then(() => {})
    },
    [user, book, current],
  )

  // Mở chương nào là ghi ngay chương đó, không đợi cuộn: mở rồi đóng tab luôn
  // thì vẫn phải nhớ được là đã sang chương mới.
  useEffect(() => {
    if (book && chapter) save(restoreTo.current)
  }, [book, chapter, save])

  // Khôi phục vị trí cuộn sau khi chương đã hiện ra
  useEffect(() => {
    if (!chapter || !restoreTo.current) return
    const id = requestAnimationFrame(() => {
      const el = scrollBox.current
      if (!el) return
      const max = el.scrollHeight - el.clientHeight
      if (max > 0) el.scrollTop = (restoreTo.current / 100) * max
    })
    return () => cancelAnimationFrame(id)
  }, [chapter])

  function handleScroll(e) {
    const el = e.currentTarget
    const max = el.scrollHeight - el.clientHeight
    const pct = max > 0 ? (el.scrollTop / max) * 100 : 0
    clearTimeout(saveTimer.current)
    saveTimer.current = setTimeout(() => save(pct), SAVE_DELAY)
  }

  useEffect(() => () => clearTimeout(saveTimer.current), [])

  // ---------- hiển thị ----------
  if (loading) {
    return (
      <div className="py-16 grid place-items-center">
        <Spinner />
      </div>
    )
  }

  if (notFound || !book || !chapter) {
    return (
      <Card className="p-10 text-center space-y-3">
        <p className="text-slate-600">Không tìm thấy chương này.</p>
        <Link to="/books" className="text-indigo-600 hover:underline">
          ← Về tủ sách
        </Link>
      </Card>
    )
  }

  return (
    <ReaderShell
      book={book}
      chapter={chapter}
      toc={toc}
      current={current}
      showToc={showToc}
      onToggleToc={() => setShowToc((v) => !v)}
      onGo={(n) => navigate(`/books/${slug}/${n}`)}
      onFinish={() => {
        save(100, true)
        navigate('/books')
      }}
      scrollRef={scrollBox}
      onScroll={handleScroll}
    />
  )
}

// Tách riêng phần hiển thị khỏi phần tải dữ liệu: kiểm thử được bằng dữ liệu
// giả mà không cần đăng nhập, và cũng dễ đọc hơn một hàm ôm cả hai việc.
export function ReaderShell({
  book, chapter, toc, current, showToc, onToggleToc, onGo, onFinish,
  scrollRef, onScroll,
}) {
  const total = book.chapter_count || toc.length
  const isLast = current >= total
  const go = onGo

  return (
    <div className="space-y-4">
      {/* Thanh đầu trang: tên sách, tiến độ, mục lục */}
      <div className="flex items-center gap-3 flex-wrap">
        <Link
          to="/books"
          className="p-2 rounded-lg text-slate-500 hover:bg-slate-100 transition-colors shrink-0"
          title="Về tủ sách"
        >
          <ArrowLeft className="h-4 w-4" />
        </Link>
        <div className="min-w-0 flex-1">
          <h1 className="font-semibold text-slate-800 truncate">{book.title}</h1>
          <p className="text-xs text-slate-500">
            Chương {current}/{total} · {chapter.word_count.toLocaleString('vi-VN')} từ
          </p>
        </div>
        <button
          type="button"
          onClick={onToggleToc}
          className="inline-flex items-center gap-1.5 text-sm px-3 py-1.5 rounded-lg border border-slate-200 text-slate-600 hover:bg-slate-100 transition-colors cursor-pointer shrink-0"
        >
          <List className="h-4 w-4" />
          Mục lục
        </button>
      </div>

      {showToc && (
        <Card className="p-2 max-h-80 overflow-y-auto">
          {toc.map((c) => (
            <button
              key={c.number}
              type="button"
              onClick={() => {
                onToggleToc()
                go(c.number)
              }}
              className={`w-full text-left px-3 py-2 rounded-lg text-sm transition-colors cursor-pointer flex items-center gap-2 ${
                c.number === current
                  ? 'bg-indigo-50 text-indigo-700 font-medium'
                  : 'text-slate-600 hover:bg-slate-100'
              }`}
            >
              <span className="w-8 shrink-0 tabular-nums text-slate-400">{c.number}</span>
              <span className="truncate">{c.title || `Chương ${c.number}`}</span>
            </button>
          ))}
        </Card>
      )}

      {/* Khung đọc: cuộn TRONG khung để phần trăm đã đọc tính được chính xác
          và hai nút chuyển chương luôn nằm trong tầm tay */}
      <Card className="overflow-hidden">
        <div className="px-5 py-3 border-b border-slate-100 flex items-center justify-between gap-2 flex-wrap">
          <h2 className="font-semibold text-slate-700">
            {chapter.title || `Chương ${current}`}
          </h2>
          <span className="inline-flex items-center gap-1 text-xs text-slate-400">
            <MousePointerClick className="h-3.5 w-3.5" />
            Chạm vào từ gạch chân để xem nghĩa
          </span>
        </div>

        <div
          ref={scrollRef}
          onScroll={onScroll}
          className="px-5 py-4 max-h-[calc(100vh-16rem)] overflow-y-auto text-[17px]"
        >
          <GlossedText text={chapter.content} glossary={[]} />
        </div>
      </Card>

      {/* Chuyển chương */}
      <div className="flex items-center justify-between gap-3">
        <button
          type="button"
          disabled={current <= 1}
          onClick={() => go(current - 1)}
          className="inline-flex items-center gap-1.5 px-4 py-2 rounded-lg border border-slate-200 text-slate-600 hover:bg-slate-100 transition-colors cursor-pointer disabled:opacity-40 disabled:cursor-not-allowed"
        >
          <ArrowLeft className="h-4 w-4" />
          Chương trước
        </button>

        {isLast ? (
          <button
            type="button"
            onClick={onFinish}
            className="inline-flex items-center gap-1.5 px-4 py-2 rounded-lg bg-emerald-600 text-white hover:bg-emerald-700 transition-colors cursor-pointer"
          >
            <Check className="h-4 w-4" />
            Đọc xong cuốn này
          </button>
        ) : (
          <button
            type="button"
            onClick={() => go(current + 1)}
            className="inline-flex items-center gap-1.5 px-4 py-2 rounded-lg bg-indigo-600 text-white hover:bg-indigo-700 transition-colors cursor-pointer"
          >
            Chương sau
            <ArrowRight className="h-4 w-4" />
          </button>
        )}
      </div>
    </div>
  )
}
