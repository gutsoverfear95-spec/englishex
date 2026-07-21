import { useEffect, useState } from 'react'
import { Link } from 'react-router-dom'
import { ChevronRight, BookMarked, Zap } from 'lucide-react'
import { supabase } from '../lib/supabase'
import { useAuth } from '../context/AuthContext'
import { SKILLS } from '../utils/constants'
import Card from '../components/ui/Card'
import ProgressBar from '../components/ui/ProgressBar'
import Spinner from '../components/ui/Spinner'

export default function Dashboard() {
  const { user } = useAuth()
  const [totals, setTotals] = useState({}) // { reading: 3, ... } — tổng số bài mỗi kỹ năng
  const [stats, setStats] = useState({})   // { reading: {lessons_completed, avg_score}, ... }
  const [dueVocab, setDueVocab] = useState(0) // số từ vựng đến hạn ôn
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    async function load() {
      // Chạy song song: tổng số bài (bảng lessons) + thống kê của user
      // (view user_skill_stats có security_invoker nên RLS tự lọc theo user)
      const [lessonsRes, statsRes, dueRes] = await Promise.all([
        supabase.from('lessons').select('id, skill'),
        supabase.from('user_skill_stats').select('*'),
        // Đếm số từ vựng đến hạn ôn (head:true → chỉ lấy count, không lấy data)
        supabase
          .from('user_progress')
          .select('word_id', { count: 'exact', head: true })
          .lte('next_review_date', new Date().toISOString()),
      ])

      const t = {}
      for (const l of lessonsRes.data ?? []) t[l.skill] = (t[l.skill] ?? 0) + 1
      const s = {}
      for (const row of statsRes.data ?? []) s[row.skill] = row

      setTotals(t)
      setStats(s)
      setDueVocab(dueRes.count ?? 0)
      setLoading(false)
    }
    load()
  }, [])

  // display_name (đăng ký email) hoặc full_name (đăng nhập Google)
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

  return (
    <div className="space-y-6">
      <div>
        <h1 className="text-2xl font-bold text-slate-800">Xin chào, {displayName}!</h1>
        <p className="text-slate-500 mt-1">Chọn một kỹ năng để bắt đầu luyện tập hôm nay.</p>
      </div>

      {/* Banner từ vựng: nhắc ôn SRS mỗi ngày */}
      <Link to="/vocab" className="block">
        <div className="rounded-xl bg-violet-600 hover:bg-violet-700 transition-colors text-white p-4 flex items-center justify-between">
          <div className="flex items-center gap-3">
            {dueVocab > 0 ? <Zap className="h-5 w-5" /> : <BookMarked className="h-5 w-5" />}
            <p className="font-medium text-sm">
              {dueVocab > 0
                ? `Từ vựng: ${dueVocab} từ đến hạn ôn hôm nay`
                : 'Từ vựng: học từ mới theo chủ đề với flashcard'}
            </p>
          </div>
          <ChevronRight className="h-5 w-5" />
        </div>
      </Link>

      <div className="grid gap-4 sm:grid-cols-2">
        {SKILLS.map((s) => {
          const total = totals[s.key] ?? 0
          const done = stats[s.key]?.lessons_completed ?? 0
          const avg = stats[s.key]?.avg_score
          const pct = total > 0 ? (done / total) * 100 : 0
          const Icon = s.icon

          return (
            <Card key={s.key} className="p-5 hover:shadow-md transition-shadow">
              <Link to={`/skill/${s.key}`} className="block space-y-3 group">
                <div className="flex items-center justify-between">
                  <div className="flex items-center gap-3">
                    <span className={`p-2.5 rounded-lg ${s.bg}`}>
                      <Icon className={`h-5 w-5 ${s.text}`} />
                    </span>
                    <div>
                      <h2 className="font-semibold text-slate-800">{s.label}</h2>
                      <p className="text-xs text-slate-500">{s.desc}</p>
                    </div>
                  </div>
                  <ChevronRight className="h-5 w-5 text-slate-300 group-hover:text-slate-500 transition-colors shrink-0" />
                </div>

                <ProgressBar value={pct} barClass={s.bar} />

                <div className="flex justify-between text-sm text-slate-500">
                  <span>
                    {done}/{total} bài hoàn thành
                  </span>
                  <span>{avg != null ? `Điểm TB: ${avg}` : 'Chưa có điểm'}</span>
                </div>
              </Link>
            </Card>
          )
        })}
      </div>
    </div>
  )
}
