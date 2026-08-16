import { useEffect, useMemo, useState } from 'react'
import {
  Check,
  Eye,
  Headphones,
  Keyboard,
  Layers,
  ListChecks,
  PartyPopper,
  PencilLine,
  RotateCcw,
  Sparkles,
  X,
} from 'lucide-react'
import { useVocabProgress } from '../../hooks/useVocabProgress'
import { gradeCard, previewInterval } from '../../utils/srs'
import { checkAnswer, similarity, editDistance } from '../../utils/textCompare'
import { DRILL_HINTS, DRILL_LABELS, buildChoices, pickClozeSource, pickDrill } from '../../utils/drill'
import Flashcard from './Flashcard'
import TypeAnswer from './TypeAnswer'
import ChoiceAnswer from './ChoiceAnswer'
import ClozeAnswer from './ClozeAnswer'
import ListenAnswer from './ListenAnswer'
import Card from '../ui/Card'
import Button from '../ui/Button'
import ProgressBar from '../ui/ProgressBar'

// Cấu hình 3 nút SRS: đỏ = Khó, vàng = Tốt, xanh lá = Dễ
const GRADE_BUTTONS = [
  { grade: 'hard', label: 'Khó', cls: 'border-red-200 bg-red-50 text-red-600 hover:bg-red-100' },
  { grade: 'good', label: 'Tốt', cls: 'border-amber-200 bg-amber-50 text-amber-600 hover:bg-amber-100' },
  { grade: 'easy', label: 'Dễ', cls: 'border-green-200 bg-green-50 text-green-600 hover:bg-green-100' },
]

const MODE_BUTTONS = [
  { key: 'auto', Icon: Sparkles },
  { key: 'choice', Icon: ListChecks },
  { key: 'flip', Icon: Layers },
  { key: 'type', Icon: Keyboard },
  { key: 'cloze', Icon: PencilLine },
  { key: 'listen', Icon: Headphones },
]

// Số lần TỐI ĐA một thẻ được lặp lại trong CÙNG một phiên khi bấm "Khó".
// Hết hạn mức, thẻ rời hàng đợi (vẫn quay lại ở phiên sau theo lịch SRS).
// Không có mức trần thì bấm "Khó" mãi sẽ khiến phiên không bao giờ kết thúc.
const MAX_RELEARN = 2

// Kiểu ôn đang chọn — nhớ theo trình duyệt
const MODE_KEY = 'englishex_study_mode'

// Gõ sai vài ký tự (chính tả) vẫn tính là "gần đúng" thay vì sai hẳn
const CLOSE_ENOUGH = 80

// ============================================================
// ĐỘNG CƠ PHIÊN HỌC — dùng chung cho học theo chủ đề (StudySession) và ôn
// tổng hợp hằng ngày (DailyReview).
//
// Luồng mỗi thẻ: [giới thiệu nếu là từ mới] → làm bài → đối chiếu & chấm.
//   - "Khó": thẻ quay lại CUỐI hàng đợi, tối đa MAX_RELEARN lần mỗi phiên
//   - "Tốt"/"Dễ": rời hàng đợi, hẹn gặp lại theo lịch SRS
//
// Dạng bài do utils/drill.js quyết định theo mức thuộc của từng từ (kiểu ôn
// "Tự động"), hoặc do người học ép cố định một kiểu.
//
// ⚠️ Prop `words` phải ỔN ĐỊNH về tham chiếu (useMemo/useState ở component
// cha): mỗi lần đổi tham chiếu là phiên được dựng lại từ đầu.
// ============================================================
export default function StudyRunner({
  words,
  pool,               // kho từ để sinh đáp án nhiễu cho trắc nghiệm (mặc định = words)
  examplesByWord = {},
  initialProgress = {},
  header = null,
  summaryActions = null,
  onRestart = null,
}) {
  const { gradeWord } = useVocabProgress()

  const [queue, setQueue] = useState(words)
  const [initialCount, setInitialCount] = useState(words.length)
  const [progressMap, setProgressMap] = useState(initialProgress)
  const [relearnCount, setRelearnCount] = useState({})
  const [introduced, setIntroduced] = useState({}) // từ mới đã xem màn giới thiệu
  const [counts, setCounts] = useState({ hard: 0, good: 0, easy: 0 })
  const [saveError, setSaveError] = useState(null)
  const [phase, setPhase] = useState('ask')        // 'intro' | 'ask' | 'reveal'
  const [typed, setTyped] = useState('')
  const [result, setResult] = useState(null)       // { correct, close, given }
  const [mode, setMode] = useState(() => localStorage.getItem(MODE_KEY) ?? 'auto')

  // Danh sách thẻ đổi (vào phiên mới / bấm "Ôn tự do") → dựng lại phiên
  useEffect(() => {
    setQueue(words)
    setInitialCount(words.length)
    setRelearnCount({})
    setIntroduced({})
    setCounts({ hard: 0, good: 0, easy: 0 })
    setSaveError(null)
    setPhase('ask')
    setTyped('')
    setResult(null)
  }, [words])

  useEffect(() => setProgressMap(initialProgress), [initialProgress])

  const current = queue[0] ?? null
  const row = current ? (progressMap[current.id] ?? null) : null
  const examples = current ? (examplesByWord[current.id] ?? []) : []

  // Nguồn câu điền khuyết + dạng bài của thẻ hiện tại.
  // Tính lại khi đổi thẻ/kiểu ôn, và chỉ khi đó — buildChoices có random nên
  // không được chạy lại mỗi lần render, nếu không 4 phương án sẽ nhảy loạn.
  const clozeSource = useMemo(
    () => (current ? pickClozeSource(current, examples) : null),
    // eslint-disable-next-line react-hooks/exhaustive-deps
    [current?.id],
  )

  let drill = mode === 'auto' ? pickDrill(row, { canCloze: !!clozeSource }) : mode
  // Từ chưa có câu ví dụ chứa nó thì không tạo được chỗ trống → chuyển sang gõ từ
  if (drill === 'cloze' && !clozeSource) drill = 'type'

  const choices = useMemo(
    () => (current && drill === 'choice' ? buildChoices(current, pool ?? words) : []),
    // eslint-disable-next-line react-hooks/exhaustive-deps
    [current?.id, drill],
  )

  // Từ hoàn toàn mới: cho xem mặt nghĩa trước khi hỏi. Gặp lần đầu mà đã bị
  // kiểm tra ngay thì chỉ đoán bừa — xem 1 lượt rồi mới hỏi mới có gì để nhớ.
  // Riêng kiểu "lật thẻ" bỏ qua vì bản thân nó đã là xem-rồi-tự-chấm.
  const needIntro = current && !row && drill !== 'flip' && !introduced[current.id]
  const showPhase = needIntro && phase === 'ask' ? 'intro' : phase

  function switchMode(next) {
    setMode(next)
    localStorage.setItem(MODE_KEY, next)
    setTyped('')
    setResult(null)
    setPhase('ask')
  }

  // Chấm thẻ hiện tại rồi chuyển thẻ kế tiếp
  async function handleGrade(grade) {
    const card = current
    const existing = progressMap[card.id] ?? null

    // Cập nhật progress cục bộ để previewInterval của lần gặp lại chính xác
    setProgressMap({ ...progressMap, [card.id]: { ...existing, ...gradeCard(existing, grade) } })
    setCounts({ ...counts, [grade]: counts[grade] + 1 })
    setPhase('ask')
    setTyped('')
    setResult(null)

    // "Khó" → gặp lại cuối phiên, nhưng chỉ tối đa MAX_RELEARN lần để phiên
    // luôn kết thúc được. "Tốt"/"Dễ" → rời hàng đợi, hẹn theo lịch SRS.
    const seen = relearnCount[card.id] ?? 0
    const repeat = grade === 'hard' && seen < MAX_RELEARN
    if (repeat) setRelearnCount({ ...relearnCount, [card.id]: seen + 1 })

    const rest = queue.slice(1)
    setQueue(repeat ? [...rest, card] : rest)

    // Ghi DB: lỗi ở đây từng bị nuốt im lặng — tiến độ không lưu nên chủ đề
    // không bao giờ đủ điều kiện mở khoá. Giờ báo thẳng cho người học.
    const { error } = (await gradeWord(card.id, existing, grade)) ?? {}
    if (error) setSaveError(error.message)
  }

  // Chấm câu trả lời tự luận (gõ từ / điền câu / nghe & viết)
  function handleCheck(e) {
    e.preventDefault()
    const accepted = drill === 'cloze' ? clozeSource.answers : [current.word]
    const correct = checkAnswer(typed, accepted)
    // "Gần đúng" = lệch đúng 1 ký tự (công bằng cho từ ngắn) hoặc giống >= 80%
    // (cho từ/cụm dài). Lệch từ 2 ký tự trở lên coi là sai, để không nhầm lẫn
    // các từ khác nghĩa nhưng viết na ná nhau như receipt / recipe.
    const close =
      !correct &&
      accepted.some((a) => editDistance(typed, a) <= 1 || similarity(typed, a) >= CLOSE_ENOUGH)
    setResult({ correct, close, given: typed })
    setPhase('reveal')
  }

  // Trắc nghiệm: chọn xong là biết đúng/sai ngay
  function handlePick(option) {
    setResult({ correct: option.id === current.id, close: false, given: option.meaning })
    setPhase('reveal')
  }

  // Cảnh báo khi Supabase từ chối ghi tiến độ — không có nó thì người học
  // tưởng đã lưu xong, nhưng chủ đề vẫn hiện "chưa hoàn thành".
  const errorBanner = saveError && (
    <div className="rounded-xl border-2 border-red-200 bg-red-50 p-3 text-sm text-red-700">
      <p className="font-semibold">Không lưu được tiến độ lên máy chủ</p>
      <p className="mt-0.5 break-words">{saveError}</p>
      <p className="mt-1 text-xs text-red-600">Kết quả phiên này sẽ không được ghi nhận.</p>
    </div>
  )

  // Thanh chọn kiểu ôn — cuộn ngang được trên màn hình hẹp
  const modeBar = (
    <div className="space-y-1">
      <div className="flex gap-1 overflow-x-auto rounded-lg border border-slate-200 bg-white p-0.5">
        {MODE_BUTTONS.map(({ key, Icon }) => (
          <button
            key={key}
            type="button"
            onClick={() => switchMode(key)}
            title={DRILL_HINTS[key]}
            className={`inline-flex items-center gap-1.5 whitespace-nowrap text-sm px-2.5 py-1.5 rounded-md transition-colors cursor-pointer ${
              mode === key ? 'bg-violet-600 text-white' : 'text-slate-600 hover:bg-slate-100'
            }`}
          >
            <Icon className="h-4 w-4 shrink-0" />
            <span className={mode === key ? '' : 'hidden sm:inline'}>{DRILL_LABELS[key]}</span>
          </button>
        ))}
      </div>
      <p className="text-xs text-slate-400 text-center">{DRILL_HINTS[mode]}</p>
    </div>
  )

  // ---------- Tổng kết phiên ----------
  if (!current) {
    const totalReviews = counts.hard + counts.good + counts.easy
    return (
      <div className="space-y-6">
        {header}
        <div className="max-w-md mx-auto space-y-4">
          {errorBanner}
          <Card className="p-8 text-center space-y-3">
            <PartyPopper className="h-10 w-10 text-violet-500 mx-auto" />
            <p className="text-3xl font-bold text-violet-600">{initialCount} thẻ</p>
            <p className="text-slate-600">hoàn thành trong phiên này ({totalReviews} lượt xem)</p>
            <div className="flex justify-center gap-2 text-sm">
              <span className="px-3 py-1 rounded-full bg-red-50 text-red-600">Khó: {counts.hard}</span>
              <span className="px-3 py-1 rounded-full bg-amber-50 text-amber-600">Tốt: {counts.good}</span>
              <span className="px-3 py-1 rounded-full bg-green-50 text-green-600">Dễ: {counts.easy}</span>
            </div>
            <p className="text-xs text-slate-400">
              Các từ sẽ tự quay lại đúng lịch — hãy ghé mỗi ngày để ôn.
            </p>
            <div className="flex flex-wrap justify-center gap-2 pt-1">
              {summaryActions}
              {onRestart && (
                <Button variant="secondary" onClick={onRestart}>
                  <RotateCcw className="h-4 w-4" /> Học lại
                </Button>
              )}
            </div>
          </Card>
        </div>
      </div>
    )
  }

  // ---------- Màn học chính ----------
  const donePct = ((initialCount - queue.length) / initialCount) * 100
  // Gợi ý nút chấm theo kết quả vừa làm: sai thì nên bấm "Khó" để gặp lại sớm
  const suggested = result ? (result.correct ? 'good' : 'hard') : null

  return (
    <div className="space-y-5">
      {header}

      <div className="max-w-md md:max-w-lg mx-auto space-y-4">
        {errorBanner}
        {modeBar}

        <div className="flex items-center gap-3">
          <ProgressBar value={donePct} barClass="bg-violet-500" />
          <span className="text-sm text-slate-500 whitespace-nowrap">Còn {queue.length} thẻ</span>
        </div>

        {/* ----- Từ mới: xem mặt nghĩa một lượt trước khi bị hỏi ----- */}
        {showPhase === 'intro' && (
          <>
            <p className="text-center text-sm text-violet-600 font-medium">
              Từ mới — xem qua nghĩa và ví dụ trước nhé
            </p>
            <Flashcard word={current} examples={examples} flipped onFlip={() => {}} />
            <Button
              className="w-full bg-violet-600 hover:bg-violet-700"
              onClick={() => setIntroduced({ ...introduced, [current.id]: true })}
            >
              Đã xem — kiểm tra thử
            </Button>
          </>
        )}

        {/* ----- Làm bài ----- */}
        {showPhase === 'ask' && (
          <>
            {drill === 'choice' && (
              <ChoiceAnswer word={current} options={choices} onPick={handlePick} />
            )}
            {drill === 'type' && (
              <TypeAnswer word={current} value={typed} onChange={setTyped} onSubmit={handleCheck} />
            )}
            {drill === 'cloze' && (
              <ClozeAnswer
                word={current}
                cloze={clozeSource}
                value={typed}
                onChange={setTyped}
                onSubmit={handleCheck}
              />
            )}
            {drill === 'listen' && (
              <ListenAnswer word={current} value={typed} onChange={setTyped} onSubmit={handleCheck} />
            )}
            {drill === 'flip' && (
              <>
                <Flashcard word={current} examples={examples} flipped={false} onFlip={() => setPhase('reveal')} />
                <Button
                  className="w-full bg-violet-600 hover:bg-violet-700"
                  onClick={() => setPhase('reveal')}
                >
                  <Eye className="h-4 w-4" /> Hiện nghĩa
                </Button>
              </>
            )}
          </>
        )}

        {/* ----- Đối chiếu & chấm ----- */}
        {showPhase === 'reveal' && (
          <>
            {result && (
              <div
                className={`flex items-start gap-2 rounded-xl border-2 px-3 py-2 text-sm ${
                  result.correct
                    ? 'border-green-200 bg-green-50 text-green-700'
                    : result.close
                      ? 'border-amber-200 bg-amber-50 text-amber-700'
                      : 'border-red-200 bg-red-50 text-red-700'
                }`}
              >
                {result.correct ? (
                  <Check className="h-4 w-4 mt-0.5 shrink-0" />
                ) : (
                  <X className="h-4 w-4 mt-0.5 shrink-0" />
                )}
                <div className="min-w-0">
                  <p className="font-semibold">
                    {/* Không khẳng định "sai chính tả": lệch 1 ký tự cũng có thể
                        là từ khác hẳn (fine/wine, save/safe) — cứ đưa đáp án
                        ra để người học tự đối chiếu. */}
                    {result.correct
                      ? 'Chính xác!'
                      : result.close
                        ? 'Suýt đúng — đối chiếu lại từng chữ'
                        : 'Chưa đúng'}
                  </p>
                  {!result.correct && (
                    <p className="mt-0.5 break-words">
                      Bạn chọn “{result.given}” · Đáp án:{' '}
                      <strong>{drill === 'choice' ? current.meaning : current.word}</strong>
                    </p>
                  )}
                </div>
              </div>
            )}

            {/* Chỉ kiểu "lật thẻ" mới cho lật ngược lại; các kiểu khác đã trả
                lời rồi, lật về ô nhập chỉ làm mất kết quả vừa chấm. */}
            <Flashcard
              word={current}
              examples={examples}
              flipped
              onFlip={() => drill === 'flip' && setPhase('ask')}
            />

            <div className="grid grid-cols-3 gap-2 sm:gap-3">
              {GRADE_BUTTONS.map(({ grade, label, cls }) => (
                <button
                  key={grade}
                  type="button"
                  onClick={() => handleGrade(grade)}
                  className={`rounded-xl border-2 py-3 transition-all cursor-pointer active:scale-95 ${cls} ${
                    suggested === grade ? 'ring-2 ring-offset-1 ring-violet-400' : ''
                  }`}
                >
                  <span className="block font-semibold text-sm sm:text-base">{label}</span>
                  {/* Xem trước: bấm nút này thì bao lâu nữa gặp lại từ */}
                  <span className="block text-xs opacity-70 mt-0.5">{previewInterval(row, grade)}</span>
                </button>
              ))}
            </div>
          </>
        )}
      </div>
    </div>
  )
}
