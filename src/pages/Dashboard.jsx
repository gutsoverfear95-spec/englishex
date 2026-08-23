import { useEffect, useState } from 'react'
import { Link } from 'react-router-dom'
import {
  BookMarked, CalendarCheck, ChevronRight, Flame, Library, Sparkles, Trophy,
} from 'lucide-react'
import { supabase } from '../lib/supabase'
import { useAuth } from '../context/AuthContext'
import { SKILLS } from '../utils/constants'
import Card from '../components/ui/Card'
import ProgressBar from '../components/ui/ProgressBar'
import Spinner from '../components/ui/Spinner'

// ============================================================
// TỔNG QUAN
//
// Trang này phải liệt kê ĐỦ mọi mục có trong Navbar. Bản trước chỉ có 4 kỹ
// năng, còn Từ vựng bị rút thành một dải băng mỏng và Tủ sách thì không xuất
// hiện — người học không có đường vào, và nửa dưới trang bỏ trống.
//
// Giờ cả 6 mục đều là thẻ cùng một dạng: biểu tượng, mô tả, thanh tiến độ,
// hai con số. Nhờ vậy nhìn lướt là so sánh được mục nào đang bỏ bê.
// ============================================================

export function StatTile({ icon: Icon, value, label, tone }) {
  return (
    <Card className="p-3 sm:p-4 flex items-center gap-3">
      <span className={`p-2 rounded-lg shrink-0 ${tone}`}>
        <Icon className="h-4 w-4" />
      </span>
      <span className="min-w-0">
        <span className="block text-lg font-bold text-slate-800 leading-tight">{value}</span>
        <span className="block text-xs text-slate-500 truncate">{label}</span>
      </span>
    </Card>
  )
}

export function ModuleCard({ to, icon: Icon, label, desc, bg, text, bar, pct, left, right }) {
  return (
    <Card className="hover:shadow-md transition-shadow">
      <Link to={to} className="block p-5 space-y-3 group">
        <div className="flex items-center justify-between gap-2">
          <div className="flex items-center gap-3 min-w-0">
            <span className={`p-2.5 rounded-lg shrink-0 ${bg}`}>
              <Icon className={`h-5 w-5 ${text}`} />
            </span>
            <div className="min-w-0">
              <h2 className="font-semibold text-slate-800">{label}</h2>
              <p className="text-xs text-slate-500">{desc}</p>
            </div>
          </div>
          <ChevronRight className="h-5 w-5 text-slate-300 group-hover:text-slate-500 transition-colors shrink-0" />
        </div>

        <ProgressBar value={pct} barClass={bar} />

        <div className="flex justify-between text-sm text-slate-500 gap-2">
          <span className="truncate">{left}</span>
          <span className="shrink-0">{right}</span>
        </div>
      </Link>
    </Card>
  )
}

export default function Dashboard() {
  const { user } = useAuth()
  const [totals, setTotals] = useState({})   // { reading: 3, ... } tổng số bài mỗi kỹ năng
  const [stats, setStats] = useState({})     // { reading: {lessons_completed, avg_score} }
  const [vocab, setVocab] = useState({ total: 0, learned: 0, mastered: 0, due: 0 })
  const [books, setBooks] = useState({ total: 0, chapters: 0, read: 0, reading: null })
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    async function load() {
      const now = new Date().toISOString()
      const [lessonsRes, statsRes, wordsRes, progRes, booksRes, bookProgRes] =
        await Promise.all([
          supabase.from('lessons').select('id, skill'),
          // view user_skill_stats co security_invoker nen RLS tu loc theo user
          supabase.from('user_skill_stats').select('*'),
          supabase.from('words').select('id', { count: 'exact', head: true }),
          supabase.from('user_progress').select('status, next_review_date'),
          supabase.from('books').select('id, slug, title, cover_emoji, chapter_count'),
          supabase.from('book_progress').select('book_id, chapter, finished, updated_at'),
        ])

      const t = {}
      for (const l of lessonsRes.data ?? []) t[l.skill] = (t[l.skill] ?? 0) + 1
      const s = {}
      for (const row of statsRes.data ?? []) s[row.skill] = row

      const prog = progRes.data ?? []
      setVocab({
        total: wordsRes.count ?? 0,
        learned: prog.length,
        mastered: prog.filter((p) => p.status === 'mastered').length,
        due: prog.filter((p) => p.next_review_date && p.next_review_date <= now).length,
      })

      const bs = booksRes.data ?? []
      const bp = bookProgRes.data ?? []
      const byId = new Map(bs.map((b) => [b.id, b]))
      // Cuốn đang đọc dở gần đây nhất — để đưa lên lối tắt "Đọc tiếp"
      const latest = bp
        .filter((p) => !p.finished && byId.has(p.book_id))
        .sort((a, b) => String(b.updated_at).localeCompare(String(a.updated_at)))[0]
      setBooks({
        total: bs.length,
        chapters: bs.reduce((n, b) => n + (b.chapter_count ?? 0), 0),
        read: bp.reduce((n, p) => n + (p.chapter ?? 0), 0),
        reading: latest ? { ...byId.get(latest.book_id), at: latest.chapter } : null,
      })

      setTotals(t)
      setStats(s)
      setLoading(false)
    }
    load()
  }, [])

  const displayName =
    user?.user_metadata?.display_name ||
    user?.user_metadata?.full_name ||
    user?.email?.split('@')[0]

  if (loading) {
    return (
      <div className="py-20 grid place-items-center">
        <Spinner />
      </div>
    )
  }

  const lessonsDone = Object.values(stats).reduce(
    (n, r) => n + (r.lessons_completed ?? 0), 0,
  )

  return (
    <div className="space-y-6">
      <div>
        <h1 className="text-2xl font-bold text-slate-800">Xin chào, {displayName}!</h1>
        <p className="text-slate-500 mt-1">
          Chọn một mục để bắt đầu luyện tập hôm nay.
        </p>
      </div>

      {/* Bốn con số quan trọng nhất, xem lướt là biết mình đang ở đâu */}
      <div className="grid grid-cols-2 lg:grid-cols-4 gap-3">
        <StatTile
          icon={Flame} tone="bg-amber-50 text-amber-600"
          value={vocab.due} label="từ đến hạn ôn"
        />
        <StatTile
          icon={Sparkles} tone="bg-violet-50 text-violet-600"
          value={vocab.learned.toLocaleString('vi-VN')} label="từ đã học"
        />
        <StatTile
          icon={Trophy} tone="bg-emerald-50 text-emerald-600"
          value={lessonsDone} label="bài đã hoàn thành"
        />
        <StatTile
          icon={Library} tone="bg-indigo-50 text-indigo-600"
          value={books.read} label="chương sách đã đọc"
        />
      </div>

      {/* Việc nên làm ngay: ôn từ đến hạn, và đọc tiếp cuốn đang dở.
          Đặt trên danh sách mục vì đây là hai việc có thời hạn — bỏ ôn một
          hôm là lịch lặp lại ngắt quãng lệch cả tuần. */}
      {(vocab.due > 0 || books.reading) && (
        <div className="grid gap-3 sm:grid-cols-2">
          {vocab.due > 0 && (
            <Link
              to="/vocab/review"
              className="group rounded-xl border border-amber-200 bg-amber-50 hover:bg-amber-100 transition-colors p-4 flex items-center gap-3"
            >
              <span className="h-11 w-11 shrink-0 grid place-items-center rounded-full bg-amber-100 text-amber-600">
                <CalendarCheck className="h-5 w-5" />
              </span>
              <span className="min-w-0">
                <span className="block font-semibold text-slate-800">Ôn hôm nay</span>
                <span className="block text-sm text-slate-500">
                  {vocab.due} từ đến hạn, trộn mọi chủ đề
                </span>
              </span>
              <ChevronRight className="ml-auto h-5 w-5 text-slate-300 group-hover:text-slate-500 transition-colors shrink-0" />
            </Link>
          )}

          {books.reading && (
            <Link
              to={`/books/${books.reading.slug}/${books.reading.at}`}
              className="group rounded-xl border border-indigo-200 bg-indigo-50 hover:bg-indigo-100 transition-colors p-4 flex items-center gap-3"
            >
              <span className="h-11 w-11 shrink-0 grid place-items-center rounded-full bg-indigo-100 text-xl">
                {books.reading.cover_emoji}
              </span>
              <span className="min-w-0">
                <span className="block font-semibold text-slate-800 truncate">
                  {books.reading.title}
                </span>
                <span className="block text-sm text-slate-500">
                  Đọc tiếp chương {books.reading.at}/{books.reading.chapter_count}
                </span>
              </span>
              <ChevronRight className="ml-auto h-5 w-5 text-slate-300 group-hover:text-slate-500 transition-colors shrink-0" />
            </Link>
          )}
        </div>
      )}

      {/* Toàn bộ 6 mục, cùng một dạng thẻ */}
      <div>
        <h2 className="text-sm font-semibold text-slate-400 uppercase tracking-wide mb-3">
          Các phần học
        </h2>
        <div className="grid gap-4 sm:grid-cols-2">
          {SKILLS.map((s) => {
            const total = totals[s.key] ?? 0
            const done = stats[s.key]?.lessons_completed ?? 0
            const avg = stats[s.key]?.avg_score
            return (
              <ModuleCard
                key={s.key}
                to={`/skill/${s.key}`}
                icon={s.icon} label={s.label} desc={s.desc}
                bg={s.bg} text={s.text} bar={s.bar}
                pct={total > 0 ? (done / total) * 100 : 0}
                left={`${done}/${total} bài hoàn thành`}
                right={avg != null ? `Điểm TB: ${avg}` : 'Chưa có điểm'}
              />
            )
          })}

          <ModuleCard
            to="/vocab"
            icon={BookMarked} label="Từ vựng"
            desc="Flashcard, gõ lại từ, lặp lại ngắt quãng"
            bg="bg-violet-50" text="text-violet-600" bar="bg-violet-500"
            pct={vocab.total > 0 ? (vocab.learned / vocab.total) * 100 : 0}
            left={`${vocab.learned.toLocaleString('vi-VN')}/${vocab.total.toLocaleString('vi-VN')} từ đã học`}
            right={`${vocab.mastered} đã thuộc`}
          />

          <ModuleCard
            to="/books"
            icon={Library} label="Tủ sách"
            desc="Đọc trọn tác phẩm kinh điển, chạm vào từ để xem nghĩa"
            bg="bg-indigo-50" text="text-indigo-600" bar="bg-indigo-500"
            pct={books.chapters > 0 ? (books.read / books.chapters) * 100 : 0}
            left={`${books.read}/${books.chapters} chương đã đọc`}
            right={`${books.total} cuốn`}
          />
        </div>
      </div>
    </div>
  )
}
