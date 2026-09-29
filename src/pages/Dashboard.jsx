import { useEffect, useState } from 'react'
import { Link } from 'react-router-dom'
import {
  ArrowRight, BookMarked, CalendarCheck, CheckCircle2, ChevronRight, Library, Sparkles, Star,
} from 'lucide-react'
import { supabase } from '../lib/supabase'
import { fetchAll } from '../lib/fetchAll'
import { useAuth } from '../context/AuthContext'
import { SKILLS } from '../utils/constants'
import FunButton from '../components/fun/FunButton'
import ChunkyProgress from '../components/fun/ChunkyProgress'
import Mascot from '../components/fun/Mascot'

// Trùng với khoá ở TopicList: bật "mở khoá tất cả" thì chủ đề nào cũng học được
const UNLOCK_ALL_KEY = 'englishex_unlock_all'

// ============================================================
// TỔNG QUAN — "màn bắt đầu một ngày học".
//
// Thứ tự trên trang là thứ tự việc nên làm:
//   1. Tiếp tục học: chủ đề đang dở, một nút to duy nhất
//   2. Việc có hạn hôm nay: từ đến hạn ôn (bỏ ôn một hôm là lịch SRS lệch)
//   3. Tiến độ tổng
//   4. Các phần học khác
//
// Chỉ hiện số liệu có thật trong CSDL. Chưa có bảng nào ghi lịch sử từng ngày
// nên KHÔNG có chuỗi ngày học (streak) hay điểm XP ở đây — xem đề xuất trong PR.
// ============================================================

// Chọn chủ đề cho nút "Tiếp tục học":
//   - ưu tiên chủ đề chưa xong có lượt ôn GẦN NHẤT (đúng nghĩa "đang học dở")
//   - chưa học gì thì lấy chủ đề đầu tiên còn mở, theo thứ tự chương trình
// Luật khoá giống hệt TopicList, để nút này không bao giờ dẫn vào chủ đề bị khoá.
function pickContinueTopic(courses, topics, stats, unlockAll) {
  const candidates = []
  for (const course of courses) {
    const list = topics.filter((t) => t.course_id === course.id)
    list.forEach((topic, i) => {
      const s = stats[topic.id]
      const prev = i > 0 ? stats[list[i - 1].id] : null
      const locked = !unlockAll && i > 0 && prev.total > 0 && !prev.completed
      if (!locked && !s.completed && s.total > 0) candidates.push({ topic, course, ...s })
    })
  }
  if (candidates.length === 0) return null
  const touched = candidates.filter((c) => c.lastReviewed)
  if (touched.length > 0) {
    return touched.sort((a, b) => b.lastReviewed.localeCompare(a.lastReviewed))[0]
  }
  return candidates[0]
}

function greeting(hour) {
  if (hour < 11) return 'Chào buổi sáng'
  if (hour < 13) return 'Chào buổi trưa'
  if (hour < 18) return 'Chào buổi chiều'
  return 'Chào buổi tối'
}

function Skeleton() {
  // Giữ chỗ đúng khuôn các khối thật để trang không nhảy khi dữ liệu về
  return (
    <div className="space-y-5 animate-pulse" aria-busy="true" aria-label="Đang tải">
      <div className="h-16 w-2/3 rounded-2xl bg-brand-100" />
      <div className="h-64 rounded-3xl bg-brand-100" />
      <div className="grid grid-cols-2 gap-3">
        <div className="h-32 rounded-3xl bg-brand-50" />
        <div className="h-32 rounded-3xl bg-brand-50" />
      </div>
    </div>
  )
}

export default function Dashboard() {
  const { user } = useAuth()
  const [data, setData] = useState(null)
  const [loadError, setLoadError] = useState(null)

  useEffect(() => {
    async function load() {
      const [
        coursesRes, topicsRes, wordsRes, progRes, lessonsRes, statsRes, booksRes, bookProgRes,
      ] = await Promise.all([
        supabase.from('courses').select('id, title, order_index').order('order_index'),
        supabase.from('topics').select('id, name, course_id, order_index').order('order_index'),
        fetchAll(() => supabase.from('words').select('id, topic_id').order('id')),
        fetchAll(() =>
          supabase
            .from('user_progress')
            .select('word_id, status, next_review_date, last_reviewed_at')
            .order('word_id'),
        ),
        supabase.from('lessons').select('id, skill'),
        // view user_skill_stats có security_invoker nên RLS tự lọc theo user
        supabase.from('user_skill_stats').select('*'),
        supabase.from('books').select('id, slug, title, cover_emoji, chapter_count'),
        supabase.from('book_progress').select('book_id, chapter, finished, updated_at'),
      ])

      // Supabase gói miễn phí tự dừng project sau vài ngày không dùng — khi đó
      // mọi truy vấn đều lỗi. Báo thẳng thay vì hiện toàn số 0 như thể chưa học gì.
      const firstError = [coursesRes, topicsRes, wordsRes, progRes].find((r) => r.error)?.error
      if (firstError) {
        setLoadError(firstError.message)
        return
      }

      const now = new Date()
      const nowIso = now.toISOString()
      const startOfDay = new Date(now.getFullYear(), now.getMonth(), now.getDate()).toISOString()

      const progress = progRes.data
      const progByWord = new Map(progress.map((p) => [p.word_id, p]))

      // Gom theo chủ đề: tổng từ, đã học, đến hạn, lần ôn gần nhất
      const stats = {}
      for (const t of topicsRes.data ?? []) {
        stats[t.id] = { total: 0, learned: 0, due: 0, lastReviewed: null, completed: false }
      }
      for (const w of wordsRes.data) {
        const s = stats[w.topic_id]
        if (!s) continue
        s.total += 1
        const p = progByWord.get(w.id)
        if (!p) continue
        s.learned += 1
        if (p.next_review_date && p.next_review_date <= nowIso) s.due += 1
        if (p.last_reviewed_at && (!s.lastReviewed || p.last_reviewed_at > s.lastReviewed)) {
          s.lastReviewed = p.last_reviewed_at
        }
      }
      for (const s of Object.values(stats)) s.completed = s.total > 0 && s.learned === s.total

      const unlockAll = localStorage.getItem(UNLOCK_ALL_KEY) === '1'
      const next = pickContinueTopic(coursesRes.data ?? [], topicsRes.data ?? [], stats, unlockAll)

      const lessonTotals = {}
      for (const l of lessonsRes.data ?? []) lessonTotals[l.skill] = (lessonTotals[l.skill] ?? 0) + 1
      const skillStats = {}
      for (const row of statsRes.data ?? []) skillStats[row.skill] = row

      const bs = booksRes.data ?? []
      const bp = bookProgRes.data ?? []
      const byId = new Map(bs.map((b) => [b.id, b]))
      const latest = bp
        .filter((p) => !p.finished && byId.has(p.book_id))
        .sort((a, b) => String(b.updated_at).localeCompare(String(a.updated_at)))[0]

      setData({
        next,
        vocab: {
          total: wordsRes.data.length,
          learned: progress.length,
          mastered: progress.filter((p) => p.status === 'mastered').length,
          due: progress.filter((p) => p.next_review_date && p.next_review_date <= nowIso).length,
          // "Đã ôn hôm nay" = số TỪ có lần ôn cuối trong hôm nay. Mỗi từ chỉ lưu
          // lần ôn cuối, nên một từ ôn 3 lần vẫn tính 1 — con số này đếm từ,
          // không đếm lượt.
          reviewedToday: progress.filter((p) => p.last_reviewed_at && p.last_reviewed_at >= startOfDay).length,
        },
        lessonTotals,
        skillStats,
        books: {
          total: bs.length,
          chapters: bs.reduce((n, b) => n + (b.chapter_count ?? 0), 0),
          read: bp.reduce((n, p) => n + (p.chapter ?? 0), 0),
          reading: latest ? { ...byId.get(latest.book_id), at: latest.chapter } : null,
        },
      })
    }
    load()
  }, [])

  const displayName =
    user?.user_metadata?.display_name ||
    user?.user_metadata?.full_name ||
    user?.email?.split('@')[0]

  if (loadError) {
    return (
      <div className="rounded-3xl border-2 border-sun-300 bg-sun-100 p-6 text-center space-y-2">
        <Mascot mood="calm" className="h-20 w-20 mx-auto" />
        <p className="font-display text-xl font-bold text-ink">Chưa tải được dữ liệu học</p>
        <p className="text-sm text-slate-700">
          Máy chủ có thể đang tạm nghỉ — thử tải lại trang sau ít phút nhé.
        </p>
        <p className="text-xs text-slate-500 break-words">{loadError}</p>
      </div>
    )
  }

  if (!data) return <Skeleton />

  const { next, vocab, books, lessonTotals, skillStats } = data
  const today = new Date()
  const vocabPct = vocab.total > 0 ? (vocab.learned / vocab.total) * 100 : 0

  return (
    <div className="space-y-5 sm:space-y-6">
      {/* ---------- Lời chào ---------- */}
      <header className="flex items-center justify-between gap-3">
        <div className="min-w-0">
          <p className="text-sm font-medium text-brand-600 capitalize">
            {today.toLocaleDateString('vi-VN', { weekday: 'long', day: 'numeric', month: 'numeric' })}
          </p>
          <h1 className="font-display text-2xl sm:text-3xl font-bold text-ink leading-tight truncate">
            {greeting(today.getHours())}, {displayName}!
          </h1>
        </div>
        {/* Linh vật đặt ở lời chào thay vì trong thẻ chính: trên điện thoại
            thẻ chính không đủ chỗ, còn ở đây thì luôn hiện. */}
        <Mascot mood="wave" className="h-16 w-16 sm:h-20 sm:w-20 shrink-0" />
      </header>

      <div className="grid gap-4 lg:grid-cols-3">
        {/* ---------- 1. TIẾP TỤC HỌC ---------- */}
        <section
          aria-labelledby="continue-title"
          className="relative overflow-hidden rounded-3xl bg-gradient-to-br from-brand-600 to-brand-800 p-5 sm:p-6 text-white shadow-[0_6px_0_0_var(--color-brand-900)] lg:col-span-2 flex flex-col animate-rise"
        >
          {/* Họa tiết chấm tròn mờ phía sau, thuần trang trí */}
          <div aria-hidden="true" className="absolute -right-10 -top-10 h-40 w-40 rounded-full bg-white/10" />

          <div className="relative flex items-start gap-3">
            <div className="flex-1 min-w-0 space-y-3">
              <span className="inline-flex items-center gap-1.5 rounded-full bg-white/15 px-3 py-1 text-xs font-semibold uppercase tracking-wide">
                <Sparkles className="h-3.5 w-3.5" aria-hidden="true" /> Bài học hôm nay
              </span>

              {next ? (
                <>
                  <div>
                    <p className="text-sm text-brand-100 truncate">{next.course.title}</p>
                    <h2 id="continue-title" className="font-display text-2xl sm:text-3xl font-bold leading-tight">
                      {next.topic.name}
                    </h2>
                  </div>

                  <div className="space-y-1.5 max-w-md">
                    <ChunkyProgress
                      value={(next.learned / next.total) * 100}
                      label={`Tiến độ chủ đề ${next.topic.name}`}
                      fill="bg-sun-400"
                      track="bg-white/20"
                    />
                    <p className="text-sm text-brand-100">
                      Đã học <strong className="text-white">{next.learned}/{next.total}</strong> từ
                      {next.due > 0 && <> · <strong className="text-sun-200">{next.due}</strong> từ cần ôn</>}
                    </p>
                  </div>
                </>
              ) : (
                <div>
                  <h2 id="continue-title" className="font-display text-2xl font-bold leading-tight">
                    Bạn đã học hết các chủ đề đang mở!
                  </h2>
                  <p className="text-sm text-brand-100 mt-1">
                    Giờ là lúc ôn để giữ từ lâu trong trí nhớ.
                  </p>
                </div>
              )}
            </div>

          </div>

          <FunButton
            as={Link}
            to={next ? `/vocab/study/${next.topic.id}` : '/vocab'}
            tone="sun"
            size="lg"
            className="relative mt-5 w-full sm:w-auto sm:self-start lg:mt-auto"
          >
            {next ? (next.learned > 0 ? 'Tiếp tục học' : 'Bắt đầu học') : 'Xem chương trình học'}
            <ArrowRight className="h-5 w-5" aria-hidden="true" />
          </FunButton>
        </section>

        {/* ---------- 2. VIỆC HÔM NAY ---------- */}
        <div className="grid grid-cols-2 gap-3 lg:grid-cols-1 lg:gap-4">
          <section className="rounded-3xl border-2 border-sun-300 bg-sun-100 p-4 flex flex-col animate-rise [animation-delay:60ms]">
            <span className="h-10 w-10 grid place-items-center rounded-2xl bg-sun-400 text-ink">
              <CalendarCheck className="h-5 w-5" aria-hidden="true" />
            </span>
            <p className="mt-2 font-display text-3xl font-bold text-ink leading-none">{vocab.due}</p>
            <p className="text-sm text-slate-700">từ đến hạn ôn</p>
            {vocab.due > 0 ? (
              <Link
                to="/vocab/review"
                className="mt-auto pt-3 inline-flex items-center gap-1 text-sm font-bold text-sun-800 hover:underline min-h-11"
              >
                Ôn ngay <ChevronRight className="h-4 w-4" aria-hidden="true" />
              </Link>
            ) : (
              <p className="mt-auto pt-3 text-sm text-slate-600">Hôm nay đã ôn đủ</p>
            )}
          </section>

          <section className="rounded-3xl border-2 border-leaf-200 bg-leaf-50 p-4 flex flex-col animate-rise [animation-delay:120ms]">
            <span className="h-10 w-10 grid place-items-center rounded-2xl bg-leaf-500 text-white">
              <CheckCircle2 className="h-5 w-5" aria-hidden="true" />
            </span>
            <p className="mt-2 font-display text-3xl font-bold text-ink leading-none">{vocab.reviewedToday}</p>
            <p className="text-sm text-slate-700">từ đã ôn hôm nay</p>
            <p className="mt-auto pt-3 text-sm text-leaf-800">
              {vocab.reviewedToday > 0 ? 'Làm tốt lắm!' : 'Bắt đầu thôi nào'}
            </p>
          </section>
        </div>
      </div>

      {/* ---------- 3. TIẾN ĐỘ TỪ VỰNG ---------- */}
      <section className="rounded-3xl border-2 border-brand-100 bg-white p-5 space-y-3">
        <div className="flex items-center justify-between gap-2">
          <h2 className="font-display text-lg font-bold text-ink">Hành trình từ vựng</h2>
          <Link
            to="/vocab"
            className="inline-flex items-center gap-1 text-sm font-semibold text-brand-700 hover:underline min-h-11"
          >
            Xem lộ trình <ChevronRight className="h-4 w-4" aria-hidden="true" />
          </Link>
        </div>
        <ChunkyProgress value={vocabPct} label="Tiến độ từ vựng" fill="bg-brand-500" />
        {/* Số liệu ghi bằng chữ bên cạnh màu, không để màu một mình mang nghĩa */}
        <dl className="grid grid-cols-3 gap-2 text-center">
          <div className="rounded-2xl bg-brand-50 py-2">
            <dt className="text-xs text-slate-600">Đã học</dt>
            <dd className="font-display text-xl font-bold text-brand-700">
              {vocab.learned.toLocaleString('vi-VN')}
            </dd>
          </div>
          <div className="rounded-2xl bg-leaf-50 py-2">
            <dt className="text-xs text-slate-600 inline-flex items-center gap-1">
              <Star className="h-3 w-3 text-leaf-700" aria-hidden="true" /> Đã thuộc
            </dt>
            <dd className="font-display text-xl font-bold text-leaf-700">
              {vocab.mastered.toLocaleString('vi-VN')}
            </dd>
          </div>
          <div className="rounded-2xl bg-slate-50 py-2">
            <dt className="text-xs text-slate-600">Tổng số từ</dt>
            <dd className="font-display text-xl font-bold text-slate-700">
              {vocab.total.toLocaleString('vi-VN')}
            </dd>
          </div>
        </dl>
      </section>

      {/* ---------- Đọc tiếp cuốn sách đang dở ---------- */}
      {books.reading && (
        <Link
          to={`/books/${books.reading.slug}/${books.reading.at}`}
          className="group flex items-center gap-4 rounded-3xl border-2 border-brand-100 bg-white p-4 hover:border-brand-300 transition-colors"
        >
          <span className="h-14 w-14 shrink-0 grid place-items-center rounded-2xl bg-brand-50 text-2xl" aria-hidden="true">
            {books.reading.cover_emoji}
          </span>
          <span className="min-w-0 flex-1">
            <span className="block text-xs font-semibold uppercase tracking-wide text-brand-600">Đọc tiếp</span>
            <span className="block font-display text-lg font-bold text-ink truncate">{books.reading.title}</span>
            <span className="block text-sm text-slate-600">
              Chương {books.reading.at}/{books.reading.chapter_count}
            </span>
          </span>
          <ChevronRight className="h-5 w-5 text-brand-300 group-hover:text-brand-600 transition-colors shrink-0" aria-hidden="true" />
        </Link>
      )}

      {/* ---------- 4. CÁC PHẦN HỌC KHÁC ---------- */}
      <section className="space-y-3">
        <h2 className="font-display text-lg font-bold text-ink">Luyện thêm</h2>
        <div className="grid grid-cols-2 sm:grid-cols-3 gap-3">
          {SKILLS.map((s) => {
            const Icon = s.icon
            const total = lessonTotals[s.key] ?? 0
            const done = skillStats[s.key]?.lessons_completed ?? 0
            return (
              <Link
                key={s.key}
                to={`/skill/${s.key}`}
                className="press [--press-color:var(--color-brand-100)] rounded-3xl border-2 border-brand-100 bg-white p-4 hover:border-brand-300"
              >
                <span className={`h-10 w-10 grid place-items-center rounded-2xl ${s.bg}`}>
                  <Icon className={`h-5 w-5 ${s.text}`} aria-hidden="true" />
                </span>
                <span className="mt-2 block font-display text-lg font-bold text-ink">{s.label}</span>
                <span className="block text-sm text-slate-600">{done}/{total} bài</span>
              </Link>
            )
          })}
          <Link
            to="/vocab"
            className="press [--press-color:var(--color-brand-100)] rounded-3xl border-2 border-brand-100 bg-white p-4 hover:border-brand-300"
          >
            <span className="h-10 w-10 grid place-items-center rounded-2xl bg-brand-50">
              <BookMarked className="h-5 w-5 text-brand-600" aria-hidden="true" />
            </span>
            <span className="mt-2 block font-display text-lg font-bold text-ink">Từ vựng</span>
            {/* Con số cụ thể thay vì %: 15/1920 làm tròn thành "1%" là nói quá */}
            <span className="block text-sm text-slate-600">
              {vocab.learned.toLocaleString('vi-VN')}/{vocab.total.toLocaleString('vi-VN')} từ
            </span>
          </Link>
          <Link
            to="/books"
            className="press [--press-color:var(--color-brand-100)] rounded-3xl border-2 border-brand-100 bg-white p-4 hover:border-brand-300"
          >
            <span className="h-10 w-10 grid place-items-center rounded-2xl bg-indigo-50">
              <Library className="h-5 w-5 text-indigo-600" aria-hidden="true" />
            </span>
            <span className="mt-2 block font-display text-lg font-bold text-ink">Tủ sách</span>
            <span className="block text-sm text-slate-600">
              {books.read}/{books.chapters} chương
            </span>
          </Link>
        </div>
      </section>
    </div>
  )
}
