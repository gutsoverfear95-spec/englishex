import { useCallback, useEffect, useState } from 'react'
import { Link } from 'react-router-dom'
import { ArrowLeft, CalendarCheck, Coffee, List } from 'lucide-react'
import { supabase } from '../../lib/supabase'
import { shuffle } from '../../utils/drill'
import StudyRunner from '../../components/vocab/StudyRunner'
import Card from '../../components/ui/Card'
import Button from '../../components/ui/Button'
import Spinner from '../../components/ui/Spinner'

// Số thẻ tối đa mỗi phiên ôn. Có 200 từ đến hạn mà đổ hết vào một phiên thì
// người học bỏ dở giữa chừng; chia thành nhiều phiên ngắn dễ đi tới cuối hơn
// (và cũng giữ cho truy vấn không bị quá dài).
const SESSION_LIMIT = 50

// ============================================================
// ÔN HÔM NAY — phiên ôn tổng hợp MỌI chủ đề, không bó trong một chủ đề.
//
// Vì sao quan trọng: lịch SRS chỉ phát huy tác dụng khi từ được ôn ĐÚNG NGÀY
// đến hạn. Nếu chỉ ôn được bằng cách vào lại từng chủ đề thì các từ nằm rải
// rác ở 20 chủ đề sẽ trôi qua hạn mà không ai ôn.
//
// Thứ tự thẻ được TRỘN NGẪU NHIÊN (interleaving): học lẫn lộn nhiều chủ đề
// khó hơn học từng cụm cùng chủ đề, nhưng chính vì khó mà nhớ lâu hơn — và
// giống lúc dùng thật, khi từ không bao giờ đến theo nhóm gọn gàng.
// ============================================================
export default function DailyReview() {
  const [sessionWords, setSessionWords] = useState(null)
  const [pool, setPool] = useState([])
  const [examplesByWord, setExamplesByWord] = useState({})
  const [progressMap, setProgressMap] = useState({})
  const [totalDue, setTotalDue] = useState(0)
  const [loading, setLoading] = useState(true)

  const load = useCallback(async () => {
    setLoading(true)
    const nowIso = new Date().toISOString()

    // Lấy thẳng progress kèm từ (join lồng) — tránh phải gửi hàng trăm id lên
    // URL như khi query 2 lượt. Ưu tiên từ quá hạn lâu nhất.
    const [dueRes, countRes] = await Promise.all([
      supabase
        .from('user_progress')
        .select('*, words!inner(*)')
        .lte('next_review_date', nowIso)
        .order('next_review_date')
        .limit(SESSION_LIMIT),
      supabase
        .from('user_progress')
        .select('word_id', { count: 'exact', head: true })
        .lte('next_review_date', nowIso),
    ])

    const rows = dueRes.data ?? []
    const words = rows.map((r) => r.words)
    const pm = {}
    for (const r of rows) {
      const { words: _w, ...progress } = r
      pm[progress.word_id] = progress
    }

    // Kho từ để sinh đáp án nhiễu: các từ CÙNG CHỦ ĐỀ với thẻ trong phiên
    const topicIds = [...new Set(words.map((w) => w.topic_id))]
    const wordIds = words.map((w) => w.id)
    const [poolRes, examplesRes] = await Promise.all([
      topicIds.length
        ? supabase.from('words').select('id, word, meaning, topic_id').in('topic_id', topicIds)
        : { data: [] },
      wordIds.length
        ? supabase
            .from('word_examples')
            .select('word_id, sentence_en, sentence_vi, order_index')
            .in('word_id', wordIds)
            .order('order_index')
        : { data: [] },
    ])

    const exByWord = {}
    for (const ex of examplesRes.data ?? []) (exByWord[ex.word_id] ??= []).push(ex)

    setSessionWords(shuffle(words))
    setPool(poolRes.data ?? [])
    setExamplesByWord(exByWord)
    setProgressMap(pm)
    setTotalDue(countRes.count ?? rows.length)
    setLoading(false)
  }, [])

  useEffect(() => {
    load()
  }, [load])

  if (loading || sessionWords === null) {
    return (
      <div className="py-16 grid place-items-center">
        <Spinner />
      </div>
    )
  }

  const header = (
    <div className="flex items-start justify-between gap-3 flex-wrap">
      <div>
        <Link
          to="/vocab"
          className="inline-flex items-center gap-1 text-sm text-slate-500 hover:text-slate-700"
        >
          <ArrowLeft className="h-4 w-4" /> Từ vựng
        </Link>
        <h1 className="text-xl sm:text-2xl font-bold text-slate-800 mt-1 flex items-center gap-2">
          <CalendarCheck className="h-6 w-6 text-brand-600" /> Ôn hôm nay
        </h1>
        <p className="text-sm text-slate-500">
          {totalDue > sessionWords.length
            ? `${sessionWords.length}/${totalDue} từ đến hạn — hết phiên này bấm "Học lại" để ôn tiếp`
            : `${totalDue} từ đến hạn, trộn từ mọi chủ đề`}
        </p>
      </div>
      <Link
        to="/vocab/words"
        className="inline-flex items-center gap-1.5 text-sm px-3 py-1.5 rounded-lg border border-slate-200 bg-white text-slate-600 hover:bg-slate-50 transition-colors shrink-0"
      >
        <List className="h-4 w-4" /> Tra từ vựng
      </Link>
    </div>
  )

  // ---------- Không còn từ nào đến hạn ----------
  if (sessionWords.length === 0) {
    return (
      <div className="space-y-6">
        {header}
        <Card className="p-8 sm:p-10 text-center space-y-3">
          <Coffee className="h-10 w-10 text-brand-500 mx-auto" />
          <p className="font-semibold text-slate-800">Hôm nay không còn từ nào đến hạn ôn!</p>
          <p className="text-sm text-slate-500">
            Nghỉ ngơi, hoặc vào một chủ đề để học thêm từ mới — từ mới học hôm nay sẽ quay lại
            đúng lịch ở đây.
          </p>
          <div className="flex flex-wrap justify-center gap-2 pt-1">
            <Link to="/vocab">
              <Button>Học từ mới</Button>
            </Link>
            <Link to="/vocab/words">
              <Button variant="secondary">
                <List className="h-4 w-4" /> Xem toàn bộ từ vựng
              </Button>
            </Link>
          </div>
        </Card>
      </div>
    )
  }

  return (
    <StudyRunner
      words={sessionWords}
      pool={pool}
      examplesByWord={examplesByWord}
      initialProgress={progressMap}
      header={header}
      onRestart={load}
      summaryActions={
        <Link to="/vocab">
          <Button>Về Từ vựng</Button>
        </Link>
      }
    />
  )
}
