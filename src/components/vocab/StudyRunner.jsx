import { useEffect, useMemo, useState } from 'react'
import { Link } from 'react-router-dom'
import {
  Check,
  Eye,
  Headphones,
  Keyboard,
  Layers,
  Lightbulb,
  ListChecks,
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
import FunButton from '../fun/FunButton'
import ChunkyProgress from '../fun/ChunkyProgress'
import Confetti from '../fun/Confetti'
import Mascot from '../fun/Mascot'

// Cấu hình 3 nút SRS: hồng nhạt = Khó, vàng = Tốt, xanh lá = Dễ.
// "Khó" cố ý KHÔNG tô đỏ đặc: bấm Khó là việc nên làm khi chưa nhớ, không
// phải bị phạt — màu đỏ làm người học ngại bấm và tự chấm "Tốt" cho qua.
const GRADE_BUTTONS = [
  {
    grade: 'hard', label: 'Khó',
    cls: 'bg-white border-2 border-rose-200 text-rose-700 hover:bg-rose-50 [--press-color:var(--color-rose-200)]',
  },
  {
    grade: 'good', label: 'Tốt',
    cls: 'bg-sun-400 text-ink hover:bg-sun-300 [--press-color:var(--color-sun-600)]',
  },
  {
    grade: 'easy', label: 'Dễ',
    cls: 'bg-leaf-700 text-white hover:bg-leaf-800 [--press-color:#14532d]',
  },
]

// Lời động viên ngắn. Chọn theo id của thẻ (không random mỗi lần render) để
// câu chữ không nhảy khi màn hình vẽ lại.
const CHEERS = ['Chính xác!', 'Giỏi lắm!', 'Tuyệt vời!', 'Nhớ chuẩn luôn!', 'Đúng rồi, cứ thế nhé!']
const pickFor = (id, list) =>
  list[[...String(id)].reduce((n, c) => n + c.charCodeAt(0), 0) % list.length]

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
  // Chế độ "tập trung" (StudySession): runner tự vẽ thanh trên cùng gồm nút
  // thoát + tiến độ, thay cho `header`. Ôn hôm nay vẫn dùng `header` như cũ.
  exitTo = null,
  title = null,
  titleAside = null,
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
    <div role="alert" className="rounded-2xl border-2 border-rose-200 bg-rose-50 p-3 text-sm text-rose-800">
      <p className="font-semibold">Không lưu được tiến độ lên máy chủ</p>
      <p className="mt-0.5 break-words">{saveError}</p>
      <p className="mt-1 text-xs text-rose-700">Kết quả phiên này sẽ không được ghi nhận.</p>
    </div>
  )

  const doneCount = initialCount - queue.length

  // Thanh trên cùng: nút thoát + tiến độ + số thẻ. Chỉ ở chế độ tập trung.
  const topBar = exitTo ? (
    <div className="space-y-2">
      <div className="flex items-center gap-2">
        <Link
          to={exitTo}
          aria-label="Thoát phiên học"
          className="h-11 w-11 shrink-0 grid place-items-center rounded-full text-slate-500 hover:bg-brand-100 hover:text-brand-700 transition-colors"
        >
          <X className="h-6 w-6" />
        </Link>
        {current && (
          <>
            <ChunkyProgress
              value={(doneCount / initialCount) * 100}
              label="Tiến độ phiên học"
              fill="bg-leaf-500"
            />
            <span className="shrink-0 font-display font-bold text-slate-600 tabular-nums">
              {doneCount}/{initialCount}
            </span>
          </>
        )}
      </div>
      {title && (
        <div className="flex items-center justify-between gap-2 px-1">
          <p className="font-display font-bold text-brand-800 truncate">{title}</p>
          {titleAside}
        </div>
      )}
    </div>
  ) : (
    header
  )

  // Thanh chọn kiểu ôn — dạng viên thuốc, cuộn ngang được trên màn hình hẹp
  const modeBar = (
    <div className="space-y-1">
      <div role="group" aria-label="Kiểu ôn" className="flex gap-1.5 overflow-x-auto pb-1 -mx-1 px-1 [scrollbar-width:none]">
        {MODE_BUTTONS.map(({ key, Icon }) => {
          const active = mode === key
          return (
            <button
              key={key}
              type="button"
              onClick={() => switchMode(key)}
              title={DRILL_HINTS[key]}
              aria-pressed={active}
              aria-label={DRILL_LABELS[key]}
              className={`inline-flex items-center gap-1.5 whitespace-nowrap min-h-10 text-sm font-semibold px-3 rounded-full border-2 transition-colors cursor-pointer ${
                active
                  ? 'bg-brand-600 border-brand-600 text-white'
                  : 'bg-white border-brand-100 text-slate-600 hover:border-brand-300'
              }`}
            >
              <Icon className="h-4 w-4 shrink-0" aria-hidden="true" />
              <span className={active ? '' : 'hidden sm:inline'}>{DRILL_LABELS[key]}</span>
            </button>
          )
        })}
      </div>
      <p className="text-xs text-slate-500 text-center">{DRILL_HINTS[mode]}</p>
    </div>
  )

  // ---------- Tổng kết phiên: màn chúc mừng ----------
  if (!current) {
    const totalReviews = counts.hard + counts.good + counts.easy
    return (
      <div className="space-y-6">
        {topBar}
        <div className="max-w-md mx-auto space-y-4">
          {errorBanner}
          <section className="relative overflow-hidden rounded-3xl border-2 border-brand-100 bg-white p-6 sm:p-8 text-center space-y-4 shadow-[0_6px_0_0_var(--color-brand-100)]">
            {/* Lưu lỗi thì không bắn pháo giấy — ăn mừng một kết quả chưa được
                ghi nhận là nói sai với người học. */}
            {!saveError && <Confetti />}
            <Mascot mood={saveError ? 'calm' : 'cheer'} className="relative h-28 w-28 mx-auto animate-pop-in" />
            <div className="relative space-y-1">
              <h1 className="font-display text-3xl font-bold text-ink">
                {saveError ? 'Đã xong phiên học' : 'Hoàn thành bài học!'}
              </h1>
              <p className="text-slate-600">
                Bạn vừa học <strong className="text-brand-700">{initialCount} từ</strong> với {totalReviews} lượt trả lời
              </p>
            </div>

            <dl className="grid grid-cols-3 gap-2">
              <div className="rounded-2xl bg-rose-50 py-2">
                <dt className="text-xs text-slate-600">Khó</dt>
                <dd className="font-display text-2xl font-bold text-rose-700">{counts.hard}</dd>
              </div>
              <div className="rounded-2xl bg-sun-100 py-2">
                <dt className="text-xs text-slate-600">Tốt</dt>
                <dd className="font-display text-2xl font-bold text-sun-800">{counts.good}</dd>
              </div>
              <div className="rounded-2xl bg-leaf-50 py-2">
                <dt className="text-xs text-slate-600">Dễ</dt>
                <dd className="font-display text-2xl font-bold text-leaf-700">{counts.easy}</dd>
              </div>
            </dl>

            <p className="text-sm text-slate-600">
              Các từ sẽ tự quay lại đúng lịch ôn — ghé lại mỗi ngày để nhớ lâu hơn.
            </p>

            <div className="space-y-2 pt-1">
              <p className="text-xs font-semibold uppercase tracking-wide text-brand-600">Bước tiếp theo</p>
              <div className="flex flex-col gap-2.5">
                {summaryActions}
                {onRestart && (
                  <FunButton tone="soft" onClick={onRestart}>
                    <RotateCcw className="h-4 w-4" aria-hidden="true" /> Học lại chủ đề này
                  </FunButton>
                )}
              </div>
            </div>
          </section>
        </div>
      </div>
    )
  }

  // ---------- Màn học chính ----------
  // Gợi ý nút chấm theo kết quả vừa làm: sai thì nên bấm "Khó" để gặp lại sớm
  const suggested = result ? (result.correct ? 'good' : 'hard') : null
  const answerText = drill === 'choice' ? current.meaning : current.word

  // Màu của khay phản hồi: xanh = đúng, vàng = suýt đúng, hồng nhạt = chưa đúng.
  // Chưa đúng dùng hồng nhạt chứ không đỏ đậm — sai là một phần của việc học.
  const sheetTone = !result
    ? 'bg-white border-brand-100'
    : result.correct
      ? 'bg-leaf-100 border-leaf-400'
      : result.close
        ? 'bg-sun-100 border-sun-400'
        : 'bg-rose-50 border-rose-300'

  return (
    <div className="space-y-4">
      {topBar}

      <div className="max-w-md md:max-w-lg mx-auto space-y-4">
        {errorBanner}
        {showPhase !== 'reveal' && modeBar}

        {/* Chế độ cũ (Ôn hôm nay) không có thanh trên cùng → giữ thanh tiến độ ở đây */}
        {!exitTo && (
          <div className="flex items-center gap-3">
            <ChunkyProgress value={(doneCount / initialCount) * 100} label="Tiến độ phiên học" />
            <span className="text-sm text-slate-600 whitespace-nowrap">Còn {queue.length} thẻ</span>
          </div>
        )}

        {/* ----- Từ mới: xem mặt nghĩa một lượt trước khi bị hỏi ----- */}
        {showPhase === 'intro' && (
          <div className="space-y-4 animate-rise" key={`intro-${current.id}`}>
            <p className="text-center">
              <span className="inline-flex items-center gap-1.5 rounded-full bg-sun-200 px-3 py-1 text-sm font-bold text-sun-800">
                <Sparkles className="h-4 w-4" aria-hidden="true" /> Từ mới
              </span>
              <span className="block mt-1.5 text-sm text-slate-600">Xem qua nghĩa và ví dụ trước nhé</span>
            </p>
            <Flashcard word={current} examples={examples} flipped onFlip={() => {}} />
            <FunButton
              size="lg"
              className="w-full"
              onClick={() => setIntroduced({ ...introduced, [current.id]: true })}
            >
              Đã xem — kiểm tra thử
            </FunButton>
          </div>
        )}

        {/* ----- Làm bài ----- */}
        {showPhase === 'ask' && (
          <div className="space-y-4 animate-rise" key={`ask-${current.id}-${drill}`}>
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
                <FunButton size="lg" className="w-full" onClick={() => setPhase('reveal')}>
                  <Eye className="h-5 w-5" aria-hidden="true" /> Hiện nghĩa
                </FunButton>
              </>
            )}
          </div>
        )}

        {/* ----- Đối chiếu & chấm ----- */}
        {showPhase === 'reveal' && (
          <>
            {/* Chỉ kiểu "lật thẻ" mới cho lật ngược lại; các kiểu khác đã trả
                lời rồi, lật về ô nhập chỉ làm mất kết quả vừa chấm. */}
            <Flashcard
              word={current}
              examples={examples}
              flipped
              onFlip={() => drill === 'flip' && setPhase('ask')}
            />

            {/* Khay phản hồi dính đáy màn hình: trên điện thoại thẻ cao gần
                hết màn, không dính thì phải cuộn mới thấy kết quả và nút chấm. */}
            <div
              className={`sticky bottom-0 z-10 -mx-4 sm:mx-0 rounded-t-3xl sm:rounded-3xl border-t-4 sm:border-2 px-4 pt-4 pb-[max(1rem,env(safe-area-inset-bottom))] space-y-3 animate-rise ${sheetTone}`}
            >
              <div role="status" aria-live="polite" className="flex items-start gap-3">
                {result ? (
                  result.correct ? (
                    <span className="h-10 w-10 shrink-0 grid place-items-center rounded-full bg-leaf-500 text-white">
                      <Check className="h-6 w-6" aria-hidden="true" />
                    </span>
                  ) : result.close ? (
                    <span className="h-10 w-10 shrink-0 grid place-items-center rounded-full bg-sun-400 text-ink">
                      <Lightbulb className="h-5 w-5" aria-hidden="true" />
                    </span>
                  ) : (
                    <Mascot mood="calm" className="h-11 w-11 shrink-0" />
                  )
                ) : null}

                <div className="min-w-0 flex-1">
                  {!result && (
                    <p className="font-display text-lg font-bold text-ink">Bạn nhớ từ này đến đâu?</p>
                  )}
                  {result?.correct && (
                    <p className="font-display text-xl font-bold text-leaf-800">{pickFor(current.id, CHEERS)}</p>
                  )}
                  {result && !result.correct && (
                    <>
                      <p className={`font-display text-lg font-bold ${result.close ? 'text-sun-800' : 'text-rose-800'}`}>
                        {/* Không khẳng định "sai chính tả": lệch 1 ký tự cũng có
                            thể là từ khác hẳn (fine/wine, save/safe). */}
                        {result.close ? 'Suýt đúng rồi!' : 'Chưa đúng — không sao cả!'}
                      </p>
                      <p className="text-sm text-slate-700 break-words">
                        Bạn {drill === 'choice' ? 'chọn' : 'viết'} “{result.given}” · Đáp án:{' '}
                        <strong className="text-ink">{answerText}</strong>
                      </p>
                      <p className="text-sm text-slate-600 mt-0.5">
                        {result.close
                          ? 'Đối chiếu lại từng chữ với đáp án nhé.'
                          : 'Xem lại nghĩa và ví dụ ở thẻ phía trên, rồi chọn “Khó” để gặp lại từ này sớm hơn.'}
                      </p>
                    </>
                  )}
                </div>
              </div>

              <div className="grid grid-cols-3 gap-2 sm:gap-3 pt-1">
                {GRADE_BUTTONS.map(({ grade, label, cls }) => (
                  <button
                    key={grade}
                    type="button"
                    onClick={() => handleGrade(grade)}
                    aria-describedby={suggested === grade ? 'grade-hint' : undefined}
                    className={`press relative rounded-2xl min-h-14 py-2 cursor-pointer focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-brand-500 ${cls} ${
                      suggested === grade ? 'ring-4 ring-brand-300 ring-offset-2' : ''
                    }`}
                  >
                    {suggested === grade && (
                      <span
                        id="grade-hint"
                        className="absolute -top-2.5 left-1/2 -translate-x-1/2 rounded-full bg-brand-600 px-2 py-0.5 text-[11px] font-bold text-white whitespace-nowrap"
                      >
                        Gợi ý
                      </span>
                    )}
                    <span className="block font-display font-bold text-lg leading-tight">{label}</span>
                    {/* Xem trước: bấm nút này thì bao lâu nữa gặp lại từ */}
                    <span className="block text-xs opacity-80">{previewInterval(row, grade)}</span>
                  </button>
                ))}
              </div>
            </div>
          </>
        )}
      </div>
    </div>
  )
}
