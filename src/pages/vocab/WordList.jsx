import { useEffect, useMemo, useState } from 'react'
import { Link, useSearchParams } from 'react-router-dom'
import {
  ArrowLeft,
  BookOpen,
  ChevronDown,
  Clock,
  Search,
  Sparkles,
  Volume2,
  X,
} from 'lucide-react'
import { supabase } from '../../lib/supabase'
import { fetchAll } from '../../lib/fetchAll'
import { useSpeechSynthesis } from '../../hooks/useSpeechSynthesis'
import { formatDays } from '../../utils/srs'
import Card from '../../components/ui/Card'
import Button from '../../components/ui/Button'
import Spinner from '../../components/ui/Spinner'

// Mỗi lần bấm "Xem thêm" nạp thêm bấy nhiêu dòng. Dựng thẳng 1000 dòng một
// lúc làm trang giật trên máy yếu, mà người tra từ cũng hiếm khi cần cuộn hết.
const PAGE_SIZE = 60

const LEVELS = ['A1', 'A2', 'B1', 'B2', 'C1', 'C2']

const STATUS_FILTERS = [
  { key: 'all', label: 'Tất cả' },
  { key: 'new', label: 'Chưa học' },
  { key: 'learning', label: 'Đang học' },
  { key: 'due', label: 'Cần ôn' },
  { key: 'mastered', label: 'Đã thuộc' },
]

// Bỏ dấu tiếng Việt để tìm kiếm dễ tính: gõ "gia dinh" vẫn ra "gia đình".
function deburr(text = '') {
  return String(text)
    .toLowerCase()
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '') // bỏ dấu thanh/dấu mũ vừa tách ra
    .replace(/đ/g, 'd')
    .trim()
}

// Nhãn + màu theo trạng thái học của một từ
function statusOf(progress, now) {
  if (!progress) return { key: 'new', label: 'Chưa học', cls: 'bg-slate-100 text-slate-500' }
  if (new Date(progress.next_review_date) <= now)
    return { key: 'due', label: 'Cần ôn', cls: 'bg-amber-100 text-amber-700' }
  if (progress.status === 'mastered')
    return { key: 'mastered', label: 'Đã thuộc', cls: 'bg-green-100 text-green-700' }
  return { key: 'learning', label: 'Đang học', cls: 'bg-brand-100 text-brand-700' }
}

// ============================================================
// TRA CỨU TOÀN BỘ TỪ VỰNG
//
// Học bằng flashcard thì mỗi lần chỉ thấy một từ — không có chỗ nào để xem
// lại "mình đã học những gì", tra nhanh một từ đã gặp, hay chọn ra những từ
// còn yếu. Trang này lấp chỗ đó: tìm kiếm (cả tiếng Anh lẫn tiếng Việt, không
// cần bỏ dấu), lọc theo chủ đề / cấp độ / trạng thái học, nghe phát âm, mở ra
// xem câu ví dụ kèm bản dịch và lịch ôn kế tiếp.
//
// Nhận query param để trang khác gọi tới có sẵn bộ lọc:
//   /vocab/words?topic=<id>   ·   /vocab/words?course=<id>   ·   ?status=due
// ============================================================
export default function WordList() {
  const [params, setParams] = useSearchParams()
  const { speak } = useSpeechSynthesis()

  const [words, setWords] = useState([])
  const [topics, setTopics] = useState([])
  const [courses, setCourses] = useState([])
  const [progressMap, setProgressMap] = useState({})
  const [examplesByWord, setExamplesByWord] = useState({}) // nạp lười khi mở dòng
  const [openId, setOpenId] = useState(null)
  const [loading, setLoading] = useState(true)
  const [visible, setVisible] = useState(PAGE_SIZE)

  const [search, setSearch] = useState('')
  const topicId = params.get('topic') ?? 'all'
  const courseId = params.get('course') ?? 'all'
  const level = params.get('level') ?? 'all'
  const status = params.get('status') ?? 'all'

  // Đổi 1 bộ lọc, giữ nguyên các bộ lọc khác trên URL (chia sẻ link được)
  function setFilter(key, value) {
    const next = new URLSearchParams(params)
    if (value === 'all') next.delete(key)
    else next.set(key, value)
    // Chọn chủ đề cụ thể thì bộ lọc chương trình học không còn ý nghĩa
    if (key === 'topic' && value !== 'all') next.delete('course')
    if (key === 'course') next.delete('topic')
    setParams(next, { replace: true })
    setVisible(PAGE_SIZE)
  }

  useEffect(() => {
    async function load() {
      const [wordsRes, topicsRes, coursesRes, progressRes] = await Promise.all([
        fetchAll(() =>
          supabase
            .from('words')
            .select('id, word, phonetic, meaning, level, topic_id, example_sentence, image_url')
            .order('topic_id')
            .order('order_index')
            .order('id'),
        ),
        supabase.from('topics').select('id, name, course_id, order_index').order('order_index'),
        supabase.from('courses').select('id, title').order('order_index'),
        fetchAll(() => supabase.from('user_progress').select('*').order('word_id')),
      ])
      const pm = {}
      for (const row of progressRes.data ?? []) pm[row.word_id] = row
      setWords(wordsRes.data ?? [])
      setTopics(topicsRes.data ?? [])
      setCourses(coursesRes.data ?? [])
      setProgressMap(pm)
      setLoading(false)
    }
    load()
  }, [])

  const topicById = useMemo(() => Object.fromEntries(topics.map((t) => [t.id, t])), [topics])

  const now = useMemo(() => new Date(), [words])

  const filtered = useMemo(() => {
    const q = deburr(search)
    return words.filter((w) => {
      const topic = topicById[w.topic_id]
      if (topicId !== 'all' && w.topic_id !== topicId) return false
      if (courseId !== 'all' && topic?.course_id !== courseId) return false
      if (level !== 'all' && w.level !== level) return false
      if (status !== 'all' && statusOf(progressMap[w.id], now).key !== status) return false
      if (q && !deburr(w.word).includes(q) && !deburr(w.meaning).includes(q)) return false
      return true
    })
  }, [words, topicById, topicId, courseId, level, status, search, progressMap, now])

  // Mở một dòng: nạp câu ví dụ của riêng từ đó (nạp sẵn cả 1000 từ thì quá nặng)
  async function toggleOpen(word) {
    if (openId === word.id) {
      setOpenId(null)
      return
    }
    setOpenId(word.id)
    if (examplesByWord[word.id]) return
    const { data } = await supabase
      .from('word_examples')
      .select('sentence_en, sentence_vi, order_index')
      .eq('word_id', word.id)
      .order('order_index')
    setExamplesByWord((prev) => ({ ...prev, [word.id]: data ?? [] }))
  }

  if (loading) {
    return (
      <div className="py-16 grid place-items-center">
        <Spinner />
      </div>
    )
  }

  const selectCls =
    'rounded-lg border border-slate-200 bg-white px-2.5 py-1.5 text-sm text-slate-600 focus:outline-none focus:border-brand-500 cursor-pointer'

  return (
    <div className="space-y-5">
      <div>
        <Link
          to="/vocab"
          className="inline-flex items-center gap-1 text-sm text-slate-500 hover:text-slate-700"
        >
          <ArrowLeft className="h-4 w-4" /> Từ vựng
        </Link>
        <h1 className="text-2xl font-bold text-slate-800 mt-1 flex items-center gap-2">
          <BookOpen className="h-6 w-6 text-brand-600" /> Tất cả từ vựng
        </h1>
        <p className="text-slate-500 text-sm">
          Tra nhanh từ đã học, xem nghĩa, phát âm, ví dụ và lịch ôn kế tiếp.
        </p>
      </div>

      {/* ---------- Bộ lọc ---------- */}
      <Card className="p-3 sm:p-4 space-y-3">
        <div className="relative">
          <Search className="h-4 w-4 text-slate-400 absolute left-3 top-1/2 -translate-y-1/2" />
          <input
            type="search"
            value={search}
            onChange={(e) => {
              setSearch(e.target.value)
              setVisible(PAGE_SIZE)
            }}
            placeholder="Tìm theo từ tiếng Anh hoặc nghĩa tiếng Việt (không cần bỏ dấu)..."
            className="w-full rounded-lg border border-slate-200 pl-9 pr-3 py-2 text-sm focus:outline-none focus:border-brand-500 transition-colors"
          />
        </div>

        <div className="flex flex-wrap gap-2">
          <select
            value={courseId}
            onChange={(e) => setFilter('course', e.target.value)}
            className={selectCls}
          >
            <option value="all">Mọi chương trình</option>
            {courses.map((c) => (
              <option key={c.id} value={c.id}>
                {c.title}
              </option>
            ))}
          </select>

          <select
            value={topicId}
            onChange={(e) => setFilter('topic', e.target.value)}
            className={selectCls}
          >
            <option value="all">Mọi chủ đề</option>
            {topics.map((t) => (
              <option key={t.id} value={t.id}>
                {t.name}
              </option>
            ))}
          </select>

          <select
            value={level}
            onChange={(e) => setFilter('level', e.target.value)}
            className={selectCls}
          >
            <option value="all">Mọi cấp độ</option>
            {LEVELS.map((l) => (
              <option key={l} value={l}>
                {l}
              </option>
            ))}
          </select>
        </div>

        {/* Trạng thái học — dạng chip cho bấm nhanh trên điện thoại */}
        <div className="flex flex-wrap gap-1.5">
          {STATUS_FILTERS.map((s) => (
            <button
              key={s.key}
              type="button"
              onClick={() => setFilter('status', s.key)}
              className={`text-xs px-2.5 py-1 rounded-full border transition-colors cursor-pointer ${
                status === s.key
                  ? 'border-brand-300 bg-brand-50 text-brand-700 font-medium'
                  : 'border-slate-200 bg-white text-slate-500 hover:bg-slate-50'
              }`}
            >
              {s.label}
            </button>
          ))}
        </div>

        <div className="flex items-center justify-between gap-2 text-sm text-slate-500">
          <span>
            <strong className="text-slate-700">{filtered.length}</strong> từ
            {filtered.length !== words.length && ` (trong tổng số ${words.length})`}
          </span>
          {(search || params.toString()) && (
            <button
              type="button"
              onClick={() => {
                setSearch('')
                setParams({}, { replace: true })
                setVisible(PAGE_SIZE)
              }}
              className="inline-flex items-center gap-1 text-slate-400 hover:text-slate-600 cursor-pointer"
            >
              <X className="h-3.5 w-3.5" /> Xoá bộ lọc
            </button>
          )}
        </div>
      </Card>

      {/* ---------- Danh sách từ ---------- */}
      {filtered.length === 0 ? (
        <Card className="p-10 text-center text-slate-500">
          Không có từ nào khớp bộ lọc. Thử xoá bớt điều kiện xem sao.
        </Card>
      ) : (
        <Card className="divide-y divide-slate-100 overflow-hidden">
          {filtered.slice(0, visible).map((w) => {
            const st = statusOf(progressMap[w.id], now)
            const open = openId === w.id
            const examples = examplesByWord[w.id]
            const progress = progressMap[w.id]

            return (
              <div key={w.id}>
                <button
                  type="button"
                  onClick={() => toggleOpen(w)}
                  className="w-full flex items-center gap-3 p-3 sm:px-4 text-left hover:bg-slate-50 transition-colors cursor-pointer"
                >
                  <span
                    onClick={(e) => {
                      e.stopPropagation()
                      speak(w.word)
                    }}
                    title="Nghe phát âm"
                    className="h-9 w-9 shrink-0 grid place-items-center rounded-full bg-brand-50 text-brand-600 hover:bg-brand-100 transition-colors"
                  >
                    <Volume2 className="h-4 w-4" />
                  </span>

                  <span className="flex-1 min-w-0">
                    <span className="flex items-baseline gap-2 flex-wrap">
                      <span className="font-semibold text-slate-800">{w.word}</span>
                      {w.phonetic && <span className="text-xs text-slate-400">{w.phonetic}</span>}
                    </span>
                    <span className="block text-sm text-slate-600 truncate">{w.meaning}</span>
                  </span>

                  <span className="flex items-center gap-1.5 shrink-0">
                    {w.level && (
                      <span className="hidden sm:inline text-[11px] font-semibold px-1.5 py-0.5 rounded bg-slate-100 text-slate-500">
                        {w.level}
                      </span>
                    )}
                    <span className={`text-[11px] px-2 py-0.5 rounded-full ${st.cls}`}>{st.label}</span>
                    <ChevronDown
                      className={`h-4 w-4 text-slate-300 transition-transform ${open ? 'rotate-180' : ''}`}
                    />
                  </span>
                </button>

                {/* ----- Chi tiết một từ ----- */}
                {open && (
                  <div className="px-3 sm:px-4 pb-4 pt-1 space-y-3 bg-slate-50/60">
                    <div className="flex flex-wrap items-center gap-2 text-xs text-slate-500">
                      <span className="px-2 py-0.5 rounded-full bg-white border border-slate-200">
                        {topicById[w.topic_id]?.name ?? 'Chủ đề khác'}
                      </span>
                      {progress ? (
                        <span className="inline-flex items-center gap-1">
                          <Clock className="h-3.5 w-3.5" />
                          Ôn lại sau {formatDays(Number(progress.repetition_interval))} · lần tới{' '}
                          {new Date(progress.next_review_date).toLocaleDateString('vi-VN')}
                        </span>
                      ) : (
                        <span className="inline-flex items-center gap-1">
                          <Sparkles className="h-3.5 w-3.5" /> Chưa đưa vào lịch ôn
                        </span>
                      )}
                    </div>

                    {examples === undefined ? (
                      <p className="text-sm text-slate-400">Đang tải ví dụ...</p>
                    ) : (
                      <ul className="space-y-1.5">
                        {(examples.length
                          ? examples
                          : w.example_sentence
                            ? [{ sentence_en: w.example_sentence, sentence_vi: null }]
                            : []
                        ).map((ex, i) => (
                          <li
                            key={i}
                            className="flex items-start gap-2 rounded-lg bg-white border border-slate-200 px-3 py-2"
                          >
                            <span className="mt-0.5 h-5 w-5 shrink-0 grid place-items-center rounded-full bg-brand-50 text-[11px] font-bold text-brand-600">
                              {i + 1}
                            </span>
                            <span className="flex-1 min-w-0">
                              <span className="block text-sm text-slate-700">{ex.sentence_en}</span>
                              {ex.sentence_vi && (
                                <span className="block text-xs text-slate-500 mt-0.5">
                                  {ex.sentence_vi}
                                </span>
                              )}
                            </span>
                            <button
                              type="button"
                              onClick={() => speak(ex.sentence_en)}
                              title="Nghe câu này"
                              className="shrink-0 p-1 rounded-lg text-slate-400 hover:text-brand-600 hover:bg-brand-50 transition-colors cursor-pointer"
                            >
                              <Volume2 className="h-3.5 w-3.5" />
                            </button>
                          </li>
                        ))}
                      </ul>
                    )}

                    <Link
                      to={`/vocab/study/${w.topic_id}`}
                      className="inline-block text-sm text-brand-600 font-medium hover:underline"
                    >
                      Học chủ đề này →
                    </Link>
                  </div>
                )}
              </div>
            )
          })}
        </Card>
      )}

      {visible < filtered.length && (
        <div className="text-center">
          <Button variant="secondary" onClick={() => setVisible(visible + PAGE_SIZE)}>
            Xem thêm {Math.min(PAGE_SIZE, filtered.length - visible)} từ
          </Button>
        </div>
      )}
    </div>
  )
}
