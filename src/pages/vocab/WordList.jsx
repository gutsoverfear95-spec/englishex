import { useEffect, useMemo, useState } from 'react'
import { Link, useSearchParams } from 'react-router-dom'
import { ArrowLeft, Search } from 'lucide-react'
import { supabase } from '../../lib/supabase'
import Card from '../../components/ui/Card'
import Spinner from '../../components/ui/Spinner'

export default function WordList() {
  const [searchParams] = useSearchParams()
  const topicId = searchParams.get('topic')
  const [words, setWords] = useState(null)
  const [query, setQuery] = useState('')
  const [error, setError] = useState(null)

  useEffect(() => {
    async function load() {
      let request = supabase
        .from('words')
        .select('*, topics(name, course_id, courses(title))')
        .order('word')
      if (topicId) request = request.eq('topic_id', topicId)
      const result = await request
      setError(result.error?.message ?? null)
      setWords(result.data ?? [])
    }
    load()
  }, [topicId])

  const filtered = useMemo(() => {
    const needle = query.trim().toLocaleLowerCase('vi')
    if (!needle) return words ?? []
    return (words ?? []).filter((item) =>
      `${item.word} ${item.meaning} ${item.phonetic ?? ''}`.toLocaleLowerCase('vi').includes(needle),
    )
  }, [query, words])

  const courseId = words?.[0]?.topics?.course_id
  const backTo = topicId && courseId ? `/vocab/course/${courseId}` : '/vocab'

  if (words === null) return <div className="py-16 grid place-items-center"><Spinner /></div>

  return (
    <div className="space-y-5">
      <div>
        <Link to={backTo} className="inline-flex items-center gap-1 text-sm text-slate-500 hover:text-slate-700">
          <ArrowLeft className="h-4 w-4" /> {topicId ? 'Chủ đề' : 'Từ vựng'}
        </Link>
        <h1 className="text-2xl font-bold text-slate-800 mt-1">
          {words[0]?.topics?.name ?? 'Danh sách từ'}
        </h1>
        <p className="text-sm text-slate-500">{words.length} từ · {words[0]?.topics?.courses?.title ?? 'Tất cả chương trình'}</p>
      </div>

      <label className="relative block">
        <Search className="absolute left-3 top-2.5 h-4 w-4 text-slate-400" />
        <input
          value={query}
          onChange={(event) => setQuery(event.target.value)}
          placeholder="Tìm theo từ, nghĩa hoặc phiên âm"
          className="w-full rounded-lg border border-slate-300 py-2 pl-9 pr-3 text-sm focus:outline-none focus:ring-2 focus:ring-indigo-500"
        />
      </label>

      {error ? (
        <Card className="p-8 text-center text-red-600">Không tải được danh sách từ: {error}</Card>
      ) : (
        <div className="grid gap-3 sm:grid-cols-2">
          {filtered.map((item) => (
            <Card key={item.id} className="p-4">
              <div className="flex items-baseline justify-between gap-3">
                <h2 className="font-semibold text-slate-800">{item.word}</h2>
                <span className="text-xs text-slate-400">{item.level}</span>
              </div>
              {item.phonetic && <p className="text-sm text-violet-600">{item.phonetic}</p>}
              <p className="text-sm text-slate-700 mt-1">{item.meaning}</p>
              {item.example_sentence && <p className="text-xs text-slate-500 mt-2 italic">{item.example_sentence}</p>}
            </Card>
          ))}
        </div>
      )}

      {!error && !filtered.length && (
        <Card className="p-8 text-center text-slate-500">Không tìm thấy từ phù hợp.</Card>
      )}
    </div>
  )
}
