import { useCallback, useEffect, useState } from 'react'
import { Link } from 'react-router-dom'
import { ArrowLeft, PartyPopper } from 'lucide-react'
import { supabase } from '../../lib/supabase'
import StudyRunner from '../../components/vocab/StudyRunner'
import Card from '../../components/ui/Card'
import Button from '../../components/ui/Button'
import Spinner from '../../components/ui/Spinner'

export default function DailyReview() {
  const [words, setWords] = useState(null)
  const [pool, setPool] = useState([])
  const [examplesByWord, setExamplesByWord] = useState({})
  const [progressMap, setProgressMap] = useState({})
  const [error, setError] = useState(null)

  const loadReview = useCallback(async () => {
    setWords(null)
    setError(null)
    const [wordsRes, progressRes] = await Promise.all([
      supabase.from('words').select('*').order('word'),
      supabase.from('user_progress').select('*').lte('next_review_date', new Date().toISOString()),
    ])
    const loadError = wordsRes.error || progressRes.error
    if (loadError) {
      setError(loadError.message)
      setWords([])
      return
    }

    const allWords = wordsRes.data ?? []
    const progress = progressRes.data ?? []
    const dueIds = new Set(progress.map((row) => row.word_id))
    const dueWords = allWords.filter((word) => dueIds.has(word.id))
    const pm = Object.fromEntries(progress.map((row) => [row.word_id, row]))

    let examples = []
    if (dueWords.length) {
      const result = await supabase
        .from('word_examples')
        .select('word_id, sentence_en, sentence_vi, order_index')
        .in('word_id', dueWords.map((word) => word.id))
        .order('order_index')
      // Bảng ví dụ là phần mở rộng; phiên ôn vẫn hoạt động nếu chưa cài bảng.
      examples = result.data ?? []
    }
    const grouped = {}
    for (const example of examples) (grouped[example.word_id] ??= []).push(example)

    setPool(allWords)
    setProgressMap(pm)
    setExamplesByWord(grouped)
    setWords(dueWords)
  }, [])

  useEffect(() => {
    loadReview()
  }, [loadReview])

  if (words === null) return <div className="py-16 grid place-items-center"><Spinner /></div>

  if (error) {
    return <Card className="p-8 text-center text-red-600">Không tải được phiên ôn: {error}</Card>
  }

  const header = (
    <div>
      <Link to="/vocab" className="inline-flex items-center gap-1 text-sm text-slate-500 hover:text-slate-700">
        <ArrowLeft className="h-4 w-4" /> Từ vựng
      </Link>
      <h1 className="text-2xl font-bold text-slate-800 mt-1">Ôn hôm nay</h1>
    </div>
  )

  if (!words.length) {
    return (
      <div className="space-y-6">
        {header}
        <Card className="p-10 text-center space-y-3">
          <PartyPopper className="h-10 w-10 text-violet-500 mx-auto" />
          <p className="font-semibold text-slate-800">Bạn đã ôn xong mọi từ đến hạn.</p>
          <Link to="/vocab"><Button>Chọn chủ đề để học</Button></Link>
        </Card>
      </div>
    )
  }

  return (
    <StudyRunner
      words={words}
      pool={pool}
      examplesByWord={examplesByWord}
      initialProgress={progressMap}
      header={header}
      onRestart={loadReview}
      summaryActions={<Link to="/vocab"><Button>Về chương trình học</Button></Link>}
    />
  )
}
