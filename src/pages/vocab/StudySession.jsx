import { useCallback, useEffect, useState } from 'react'
import { Link, useParams } from 'react-router-dom'
import { ArrowLeft, Eye, PartyPopper, RotateCcw } from 'lucide-react'
import { supabase } from '../../lib/supabase'
import { useVocabProgress } from '../../hooks/useVocabProgress'
import { gradeCard, previewInterval } from '../../utils/srs'
import Flashcard from '../../components/vocab/Flashcard'
import Card from '../../components/ui/Card'
import Button from '../../components/ui/Button'
import ProgressBar from '../../components/ui/ProgressBar'
import Spinner from '../../components/ui/Spinner'

// Cấu hình 3 nút SRS: đỏ = Khó, vàng = Tốt, xanh lá = Dễ
const GRADE_BUTTONS = [
  {
    grade: 'hard',
    label: 'Khó',
    cls: 'border-red-200 bg-red-50 text-red-600 hover:bg-red-100 active:scale-95',
  },
  {
    grade: 'good',
    label: 'Tốt',
    cls: 'border-amber-200 bg-amber-50 text-amber-600 hover:bg-amber-100 active:scale-95',
  },
  {
    grade: 'easy',
    label: 'Dễ',
    cls: 'border-green-200 bg-green-50 text-green-600 hover:bg-green-100 active:scale-95',
  },
]

// Số lần TỐI ĐA một thẻ được lặp lại trong CÙNG một phiên khi bấm "Khó".
// Hết hạn mức, thẻ rời hàng đợi (vẫn quay lại ở phiên sau theo lịch SRS).
// Không có mức trần thì bấm "Khó" mãi sẽ khiến phiên không bao giờ kết thúc.
const MAX_RELEARN = 2

// ============================================================
// PHIÊN HỌC (Study Session) của 1 chủ đề:
//   Hàng đợi = từ MỚI (chưa có progress) + từ ĐẾN HẠN ôn (SRS).
//   Luồng mỗi thẻ: xem mặt trước → lật thẻ → chấm Khó/Tốt/Dễ.
//   - "Khó": từ quay lại CUỐI hàng đợi, tối đa MAX_RELEARN lần mỗi phiên
//   - "Tốt"/"Dễ": rời hàng đợi, hẹn gặp lại theo lịch SRS
// ============================================================
export default function StudySession() {
  const { topicId } = useParams()
  const { gradeWord } = useVocabProgress()

  const [topic, setTopic] = useState(null)
  const [queue, setQueue] = useState(null)          // hàng đợi thẻ của phiên
  const [initialCount, setInitialCount] = useState(0)
  const [progressMap, setProgressMap] = useState({}) // { word_id: row } — cập nhật cục bộ khi chấm
  const [relearnCount, setRelearnCount] = useState({}) // { word_id: số lần đã lặp trong phiên }
  const [saveError, setSaveError] = useState(null)   // lỗi ghi tiến độ xuống Supabase
  const [allWords, setAllWords] = useState([])
  const [flipped, setFlipped] = useState(false)
  const [counts, setCounts] = useState({ hard: 0, good: 0, easy: 0 })
  const [loading, setLoading] = useState(true)

  // Nạp dữ liệu + dựng hàng đợi (tách hàm để nút "Học lại" dùng lại được)
  const loadSession = useCallback(async () => {
    setLoading(true)
    const [topicRes, wordsRes, progressRes] = await Promise.all([
      supabase.from('topics').select('*, courses(title)').eq('id', topicId).maybeSingle(),
      supabase.from('words').select('*').eq('topic_id', topicId).order('order_index'),
      supabase.from('user_progress').select('*'),
    ])
    const words = wordsRes.data ?? []
    const pm = {}
    for (const row of progressRes.data ?? []) pm[row.word_id] = row

    // Hàng đợi = từ mới + từ đến hạn (giữ nguyên thứ tự trong chủ đề)
    const now = new Date()
    const sessionQueue = words.filter(
      (w) => !pm[w.id] || new Date(pm[w.id].next_review_date) <= now,
    )

    setTopic(topicRes.data)
    setAllWords(words)
    setProgressMap(pm)
    setQueue(sessionQueue)
    setInitialCount(sessionQueue.length)
    setCounts({ hard: 0, good: 0, easy: 0 })
    setRelearnCount({})
    setSaveError(null)
    setFlipped(false)
    setLoading(false)
  }, [topicId])

  useEffect(() => {
    loadSession()
  }, [loadSession])

  if (loading || queue === null) {
    return (
      <div className="py-16 grid place-items-center">
        <Spinner />
      </div>
    )
  }

  if (!topic) {
    return (
      <Card className="p-10 text-center space-y-2">
        <p className="text-slate-600">Không tìm thấy chủ đề.</p>
        <Link to="/vocab" className="text-indigo-600 font-medium hover:underline">
          Về trang Từ vựng
        </Link>
      </Card>
    )
  }

  const backLink = `/vocab/course/${topic.course_id}`
  const current = queue[0]

  // Chấm thẻ hiện tại rồi chuyển thẻ kế tiếp
  async function handleGrade(grade) {
    const card = current
    const row = progressMap[card.id] ?? null

    // Cập nhật progress cục bộ để previewInterval của lần gặp lại chính xác
    setProgressMap({ ...progressMap, [card.id]: { ...row, ...gradeCard(row, grade) } })
    setCounts({ ...counts, [grade]: counts[grade] + 1 })
    setFlipped(false)

    // "Khó" → gặp lại cuối phiên, nhưng chỉ tối đa MAX_RELEARN lần để phiên
    // luôn kết thúc được. "Tốt"/"Dễ" → rời hàng đợi, hẹn theo lịch SRS.
    const seen = relearnCount[card.id] ?? 0
    const repeat = grade === 'hard' && seen < MAX_RELEARN
    if (repeat) setRelearnCount({ ...relearnCount, [card.id]: seen + 1 })

    const rest = queue.slice(1)
    setQueue(repeat ? [...rest, card] : rest)

    // Ghi DB: lỗi ở đây từng bị nuốt im lặng — tiến độ không lưu nên chủ đề
    // không bao giờ đủ điều kiện mở khoá. Giờ báo thẳng cho người học.
    const { error } = (await gradeWord(card.id, row, grade)) ?? {}
    if (error) setSaveError(error.message)
  }

  // Header dùng chung cho các màn bên dưới
  const header = (
    <div>
      <Link
        to={backLink}
        className="inline-flex items-center gap-1 text-sm text-slate-500 hover:text-slate-700"
      >
        <ArrowLeft className="h-4 w-4" /> {topic.courses?.title ?? 'Chủ đề'}
      </Link>
      <h1 className="text-xl sm:text-2xl font-bold text-slate-800 mt-1">{topic.name}</h1>
    </div>
  )

  // Cảnh báo khi Supabase từ chối ghi tiến độ — không có nó thì người học
  // tưởng đã lưu xong, nhưng chủ đề vẫn hiện "chưa hoàn thành".
  const errorBanner = saveError && (
    <div className="rounded-xl border-2 border-red-200 bg-red-50 p-3 text-sm text-red-700">
      <p className="font-semibold">Không lưu được tiến độ lên máy chủ</p>
      <p className="mt-0.5 break-words">{saveError}</p>
      <p className="mt-1 text-xs text-red-600">
        Kết quả phiên này sẽ không được ghi nhận và chủ đề sẽ không mở khoá.
      </p>
    </div>
  )

  // ---------- Không có thẻ nào cần học ----------
  if (initialCount === 0) {
    return (
      <div className="space-y-6">
        {header}
        <Card className="p-8 sm:p-10 text-center space-y-3">
          <PartyPopper className="h-10 w-10 text-violet-500 mx-auto" />
          <p className="font-semibold text-slate-800">
            Không có từ mới hay từ đến hạn ôn trong chủ đề này!
          </p>
          <p className="text-sm text-slate-500">
            Bạn có thể ôn tự do toàn bộ {allWords.length} từ (kết quả vẫn được tính vào lịch SRS).
          </p>
          <div className="flex flex-wrap justify-center gap-2 pt-1">
            <Button
              className="bg-violet-600 hover:bg-violet-700"
              onClick={() => {
                setQueue(allWords)
                setInitialCount(allWords.length)
              }}
            >
              <RotateCcw className="h-4 w-4" /> Ôn tự do
            </Button>
            <Link to={backLink}>
              <Button variant="secondary">Chọn chủ đề khác</Button>
            </Link>
          </div>
        </Card>
      </div>
    )
  }

  // ---------- Tổng kết phiên ----------
  if (queue.length === 0) {
    const totalReviews = counts.hard + counts.good + counts.easy
    return (
      <div className="space-y-6">
        {header}
        <div className="max-w-md mx-auto space-y-4">
          {errorBanner}
          <Card className="p-8 text-center space-y-3">
            <PartyPopper className="h-10 w-10 text-violet-500 mx-auto" />
            <p className="text-3xl font-bold text-violet-600">{initialCount} thẻ</p>
            <p className="text-slate-600">
              hoàn thành trong phiên này ({totalReviews} lượt xem)
            </p>
            <div className="flex justify-center gap-2 text-sm">
              <span className="px-3 py-1 rounded-full bg-red-50 text-red-600">Khó: {counts.hard}</span>
              <span className="px-3 py-1 rounded-full bg-amber-50 text-amber-600">Tốt: {counts.good}</span>
              <span className="px-3 py-1 rounded-full bg-green-50 text-green-600">Dễ: {counts.easy}</span>
            </div>
            <p className="text-xs text-slate-400">
              Các từ sẽ tự quay lại đúng lịch — hãy ghé mỗi ngày để ôn.
            </p>
            <div className="flex flex-wrap justify-center gap-2 pt-1">
              <Link to={backLink}>
                <Button className="bg-violet-600 hover:bg-violet-700">Chọn chủ đề khác</Button>
              </Link>
              <Button variant="secondary" onClick={loadSession}>
                <RotateCcw className="h-4 w-4" /> Học lại
              </Button>
            </div>
          </Card>
        </div>
      </div>
    )
  }

  // ---------- Màn học chính ----------
  const row = progressMap[current.id] ?? null
  const donePct = ((initialCount - queue.length) / initialCount) * 100

  return (
    <div className="space-y-5">
      {header}

      <div className="max-w-md md:max-w-lg mx-auto space-y-4">
        {errorBanner}
        <div className="flex items-center gap-3">
          <ProgressBar value={donePct} barClass="bg-violet-500" />
          <span className="text-sm text-slate-500 whitespace-nowrap">Còn {queue.length} thẻ</span>
        </div>

        <Flashcard word={current} flipped={flipped} onFlip={() => setFlipped(!flipped)} />

        {/* Chưa lật: nút hiện nghĩa. Đã lật: 3 nút chấm SRS */}
        {!flipped ? (
          <Button className="w-full bg-violet-600 hover:bg-violet-700" onClick={() => setFlipped(true)}>
            <Eye className="h-4 w-4" /> Hiện nghĩa
          </Button>
        ) : (
          <div className="grid grid-cols-3 gap-2 sm:gap-3">
            {GRADE_BUTTONS.map(({ grade, label, cls }) => (
              <button
                key={grade}
                type="button"
                onClick={() => handleGrade(grade)}
                className={`rounded-xl border-2 py-3 transition-all cursor-pointer ${cls}`}
              >
                <span className="block font-semibold text-sm sm:text-base">{label}</span>
                {/* Xem trước: bấm nút này thì bao lâu nữa gặp lại từ */}
                <span className="block text-xs opacity-70 mt-0.5">
                  {previewInterval(row, grade)}
                </span>
              </button>
            ))}
          </div>
        )}
      </div>
    </div>
  )
}
