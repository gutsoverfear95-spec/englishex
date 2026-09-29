import { useCallback, useEffect, useState } from 'react'
import { Link, useParams } from 'react-router-dom'
import { ArrowRight, List, RotateCcw, X } from 'lucide-react'
import { supabase } from '../../lib/supabase'
import { fetchAll } from '../../lib/fetchAll'
import StudyRunner from '../../components/vocab/StudyRunner'
import FunButton from '../../components/fun/FunButton'
import Mascot from '../../components/fun/Mascot'
import Spinner from '../../components/ui/Spinner'

// Nút "chủ đề tiếp theo": nhãn nhỏ ở trên, tên chủ đề ở dưới. Viết liền một
// dòng thì tên dài ("Nhóm 2 · từ thứ 51–100") bị ngắt giữa chừng trên điện thoại.
function NextTopicButton({ topic }) {
  return (
    <FunButton as={Link} to={`/vocab/study/${topic.id}`} tone="sun" size="lg" className="py-2">
      <span className="flex-1 min-w-0 text-left leading-tight">
        <span className="block font-sans text-xs font-semibold uppercase tracking-wide opacity-75">
          Chủ đề tiếp theo
        </span>
        <span className="block truncate">{topic.name}</span>
      </span>
      <ArrowRight className="h-5 w-5 shrink-0" aria-hidden="true" />
    </FunButton>
  )
}

// ============================================================
// PHIÊN HỌC của 1 CHỦ ĐỀ.
// Hàng đợi = từ MỚI (chưa có progress) + từ ĐẾN HẠN ôn (SRS), giữ nguyên thứ
// tự trong chủ đề để các từ liên quan nằm gần nhau.
// Toàn bộ phần hỏi/đáp/chấm nằm trong StudyRunner (dùng chung với Ôn hôm nay).
// ============================================================
export default function StudySession() {
  const { topicId } = useParams()

  const [topic, setTopic] = useState(null)
  const [allWords, setAllWords] = useState([])
  const [sessionWords, setSessionWords] = useState(null) // tham chiếu ổn định cho StudyRunner
  const [examplesByWord, setExamplesByWord] = useState({})
  const [progressMap, setProgressMap] = useState({})
  const [nextTopic, setNextTopic] = useState(null) // chủ đề kế tiếp để gợi ý ở màn chúc mừng
  const [loading, setLoading] = useState(true)

  const loadSession = useCallback(async () => {
    setLoading(true)
    const [topicRes, wordsRes, progressRes] = await Promise.all([
      supabase.from('topics').select('*, courses(title)').eq('id', topicId).maybeSingle(),
      supabase.from('words').select('*').eq('topic_id', topicId).order('order_index'),
      fetchAll(() => supabase.from('user_progress').select('*').order('word_id')),
    ])
    const words = wordsRes.data ?? []
    const pm = {}
    for (const row of progressRes.data ?? []) pm[row.word_id] = row

    // Câu ví dụ kèm bản dịch (bảng word_examples). Từ nào chưa có thì Flashcard
    // tự dùng lại words.example_sentence nên không cần xử lý gì thêm ở đây.
    const wordIds = words.map((w) => w.id)
    const examplesRes = wordIds.length
      ? await supabase
          .from('word_examples')
          .select('word_id, sentence_en, sentence_vi, order_index')
          .in('word_id', wordIds)
          .order('order_index')
      : { data: [] }
    const exByWord = {}
    for (const ex of examplesRes.data ?? []) (exByWord[ex.word_id] ??= []).push(ex)

    // Chủ đề kế tiếp trong cùng chương trình — gợi ý "bước tiếp theo" khi học xong
    const t = topicRes.data
    const nextRes = t
      ? await supabase
          .from('topics')
          .select('id, name')
          .eq('course_id', t.course_id)
          .gt('order_index', t.order_index)
          .order('order_index')
          .limit(1)
      : { data: [] }

    const now = new Date()
    setNextTopic(nextRes.data?.[0] ?? null)
    setTopic(topicRes.data)
    setAllWords(words)
    setExamplesByWord(exByWord)
    setProgressMap(pm)
    setSessionWords(words.filter((w) => !pm[w.id] || new Date(pm[w.id].next_review_date) <= now))
    setLoading(false)
  }, [topicId])

  useEffect(() => {
    loadSession()
  }, [loadSession])

  if (loading || sessionWords === null) {
    return (
      <div className="py-16 grid place-items-center">
        <Spinner className="h-8 w-8 text-brand-600" />
      </div>
    )
  }

  if (!topic) {
    return (
      <div className="rounded-3xl border-2 border-brand-100 bg-white p-8 text-center space-y-3">
        <Mascot mood="calm" className="h-20 w-20 mx-auto" />
        <p className="text-slate-700">Không tìm thấy chủ đề.</p>
        <FunButton as={Link} to="/vocab" tone="soft">Về trang Từ vựng</FunButton>
      </div>
    )
  }

  const backLink = `/vocab/course/${topic.course_id}`

  const wordListLink = (
    <Link
      to={`/vocab/words?topic=${topic.id}`}
      className="inline-flex items-center gap-1.5 min-h-11 px-2 text-sm font-semibold text-brand-700 hover:underline shrink-0"
    >
      <List className="h-4 w-4" aria-hidden="true" /> Danh sách từ
    </Link>
  )

  // ---------- Không có thẻ nào cần học ----------
  if (sessionWords.length === 0) {
    return (
      <div className="space-y-5">
        <Link
          to={backLink}
          aria-label="Thoát"
          className="h-11 w-11 grid place-items-center rounded-full text-slate-500 hover:bg-brand-100 hover:text-brand-700 transition-colors"
        >
          <X className="h-6 w-6" />
        </Link>
        <section className="rounded-3xl border-2 border-brand-100 bg-white p-6 sm:p-8 text-center space-y-4 shadow-[0_6px_0_0_var(--color-brand-100)]">
          <Mascot mood="cheer" className="h-24 w-24 mx-auto" />
          <div className="space-y-1">
            <h1 className="font-display text-2xl font-bold text-ink">{topic.name}</h1>
            <p className="text-slate-700">Chủ đề này không có từ mới hay từ đến hạn ôn!</p>
            <p className="text-sm text-slate-600">
              Bạn vẫn có thể ôn tự do cả {allWords.length} từ — kết quả vẫn được tính vào lịch ôn.
            </p>
          </div>
          <div className="flex flex-col gap-2.5">
            {nextTopic && (
              <NextTopicButton topic={nextTopic} />
            )}
            <FunButton onClick={() => setSessionWords(allWords)}>
              <RotateCcw className="h-4 w-4" aria-hidden="true" /> Ôn tự do
            </FunButton>
            <FunButton as={Link} to={backLink} tone="soft">Chọn chủ đề khác</FunButton>
          </div>
        </section>
      </div>
    )
  }

  return (
    <StudyRunner
      words={sessionWords}
      pool={allWords}
      examplesByWord={examplesByWord}
      initialProgress={progressMap}
      exitTo={backLink}
      title={topic.name}
      titleAside={wordListLink}
      onRestart={loadSession}
      summaryActions={
        <>
          {nextTopic && (
            <NextTopicButton topic={nextTopic} />
          )}
          <FunButton as={Link} to={backLink} tone={nextTopic ? 'soft' : 'brand'}>
            Về danh sách chủ đề
          </FunButton>
        </>
      }
    />
  )
}
