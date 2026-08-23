import { useEffect, useState } from 'react'
import { Link } from 'react-router-dom'
import { BookOpen, ChevronRight, Library } from 'lucide-react'
import { supabase } from '../../lib/supabase'
import Card from '../../components/ui/Card'
import ProgressBar from '../../components/ui/ProgressBar'
import Spinner from '../../components/ui/Spinner'

// Màu theo cấp độ, viết đầy đủ để Tailwind quét được khi build
const LEVEL_STYLE = {
  B1: 'bg-emerald-100 text-emerald-700',
  B2: 'bg-amber-100 text-amber-700',
  C1: 'bg-rose-100 text-rose-700',
  C2: 'bg-rose-100 text-rose-700',
}

// ============================================================
// TỦ SÁCH: các tác phẩm kinh điển đã hết bản quyền, chia theo chương.
// Khác mục "Đọc" ở chỗ đây chỉ để đọc — không có câu hỏi, không chấm điểm,
// chỉ nhớ giúp bạn đang đọc tới chương nào.
// ============================================================
export default function BookList() {
  const [books, setBooks] = useState([])
  const [progress, setProgress] = useState({}) // { book_id: {chapter, finished} }
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    async function load() {
      const [b, p] = await Promise.all([
        supabase.from('books').select('*').order('sort_order'),
        supabase.from('book_progress').select('book_id, chapter, finished'),
      ])
      const map = {}
      for (const row of p.data ?? []) map[row.book_id] = row
      setBooks(b.data ?? [])
      setProgress(map)
      setLoading(false)
    }
    load()
  }, [])

  if (loading) {
    return (
      <div className="py-16 grid place-items-center">
        <Spinner />
      </div>
    )
  }

  return (
    <div className="space-y-6">
      <div className="flex items-center gap-3">
        <span className="p-3 rounded-xl bg-amber-50">
          <Library className="h-6 w-6 text-amber-600" />
        </span>
        <div>
          <h1 className="text-2xl font-bold text-slate-800">Tủ sách</h1>
          <p className="text-slate-500 text-sm">
            Đọc trọn tác phẩm kinh điển, chạm vào từ nào chưa biết để xem nghĩa
          </p>
        </div>
      </div>

      <div className="grid gap-4 sm:grid-cols-2">
        {books.map((book) => {
          const prog = progress[book.id]
          const at = prog?.chapter ?? 0
          const pct = book.chapter_count ? (at / book.chapter_count) * 100 : 0
          // Chương đang đọc dở vẫn tính là chưa xong, nên đọc tiếp chính nó
          const target = Math.min(Math.max(at, 1), book.chapter_count || 1)

          return (
            <Card key={book.id} className="overflow-hidden hover:shadow-lg transition-shadow">
              <Link to={`/books/${book.slug}/${target}`} className="block group p-5 space-y-3">
                <div className="flex items-start gap-3">
                  <span className="text-3xl leading-none shrink-0" aria-hidden="true">
                    {book.cover_emoji}
                  </span>
                  <div className="min-w-0 flex-1">
                    <h2 className="font-semibold text-slate-800 group-hover:text-indigo-700 transition-colors">
                      {book.title}
                    </h2>
                    <p className="text-xs text-slate-500">
                      {book.author} · {book.year}
                    </p>
                  </div>
                  <span
                    className={`shrink-0 text-xs font-semibold px-2 py-1 rounded-full ${
                      LEVEL_STYLE[book.level] ?? 'bg-slate-100 text-slate-600'
                    }`}
                  >
                    {book.level}
                  </span>
                </div>

                <p className="text-sm text-slate-600">{book.blurb}</p>

                <div className="flex items-center gap-2 text-xs text-slate-500">
                  <BookOpen className="h-3.5 w-3.5" />
                  {book.chapter_count} chương · {book.word_count.toLocaleString('vi-VN')} từ
                </div>

                {at > 0 && (
                  <>
                    <ProgressBar value={pct} barClass="bg-amber-500" />
                    <div className="flex items-center justify-between text-sm">
                      <span className="text-slate-500">
                        {prog.finished
                          ? 'Đã đọc xong'
                          : `Đang đọc chương ${at}/${book.chapter_count}`}
                      </span>
                      <span className="text-indigo-600 font-medium inline-flex items-center gap-0.5">
                        Đọc tiếp
                        <ChevronRight className="h-4 w-4" />
                      </span>
                    </div>
                  </>
                )}
                {at === 0 && (
                  <span className="inline-flex items-center gap-0.5 text-sm font-medium text-indigo-600">
                    Bắt đầu đọc
                    <ChevronRight className="h-4 w-4" />
                  </span>
                )}
              </Link>
            </Card>
          )
        })}
      </div>

      {books.length === 0 && (
        <Card className="p-10 text-center text-slate-500">
          Chưa có cuốn nào — hãy chạy supabase/books_schema.sql rồi
          supabase/books_content.sql trong Supabase SQL Editor.
        </Card>
      )}
    </div>
  )
}
