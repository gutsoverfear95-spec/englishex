import { useState } from 'react'
import { Link, useNavigate } from 'react-router-dom'
import { ArrowLeft, Plus, Trash2, AlertTriangle, Save } from 'lucide-react'
import { supabase } from '../../lib/supabase'
import Card from '../../components/ui/Card'
import Button from '../../components/ui/Button'
import Input from '../../components/ui/Input'

// Khoảng độ dài đoạn văn theo cấp độ — dùng để nhắc, không chặn cứng
const WORD_RANGE = {
  A1: [60, 120], A2: [100, 170], B1: [150, 230],
  B2: [200, 300], C1: [260, 380], C2: [300, 450],
}
const LEVEL_ORDER = { A1: 1, A2: 2, B1: 3, B2: 4, C1: 5, C2: 6 }

// Đáp án trắc nghiệm lưu theo VỊ TRÍ, không lưu nội dung. Nếu so theo nội dung
// thì lúc đầu đáp án và ô đều là chuỗi rỗng ('' === ''), khiến ô số 1 tự động
// bị coi là đáp án ngay khi vừa gõ — người dùng chưa hề chọn.
const emptyMc = () => ({ kind: 'mc', prompt: '', options: ['', '', '', ''], answerIdx: null, explanation: '' })
const emptyTf = () => ({ kind: 'tf', prompt: '', options: null, answer: 'true', explanation: '' })

// ============================================================
// SOẠN BÀI ĐỌC MỚI ngay trong app.
// Áp đúng bộ kiểm tra đã dùng khi sinh 20 bài có sẵn, quan trọng nhất là:
//   - đáp án trắc nghiệm phải nằm trong danh sách lựa chọn
//   - cụm từ chú thích phải xuất hiện thật trong đoạn văn, nếu không thì
//     tooltip sẽ im lặng không bao giờ hiện
// ============================================================
export default function LessonEditor() {
  const navigate = useNavigate()
  const [title, setTitle] = useState('')
  const [desc, setDesc] = useState('')
  const [level, setLevel] = useState('B1')
  const [passage, setPassage] = useState('')
  const [gloss, setGloss] = useState([{ term: '', vi: '' }])
  const [questions, setQuestions] = useState([emptyMc()])
  const [saving, setSaving] = useState(false)
  const [saveError, setSaveError] = useState(null)

  const words = passage.trim() ? passage.trim().split(/\s+/).length : 0
  const [lo, hi] = WORD_RANGE[level]

  // ---------- Kiểm tra trước khi lưu ----------
  const errors = []
  const warnings = []
  if (!title.trim()) errors.push('Chưa có tiêu đề bài đọc.')
  if (!passage.trim()) errors.push('Chưa có nội dung đoạn văn.')
  if (words && (words < lo || words > hi)) {
    warnings.push(`Đoạn văn ${words} từ, ngoài khoảng ${lo}–${hi} thường thấy ở ${level}.`)
  }
  if (questions.length < 4) warnings.push(`Mới có ${questions.length} câu hỏi, nên có ít nhất 4 câu.`)

  gloss.forEach((g, i) => {
    if (!g.term.trim() && !g.vi.trim()) return // dòng trống thì bỏ qua khi lưu
    if (!g.term.trim()) errors.push(`Chú thích ${i + 1}: chưa nhập cụm từ tiếng Anh.`)
    else if (!passage.toLowerCase().includes(g.term.trim().toLowerCase()))
      errors.push(`Chú thích ${i + 1}: cụm “${g.term.trim()}” không có trong đoạn văn nên sẽ không bao giờ hiện.`)
    if (!g.vi.trim()) errors.push(`Chú thích ${i + 1}: chưa nhập nghĩa tiếng Việt.`)
  })

  questions.forEach((q, i) => {
    const n = i + 1
    if (!q.prompt.trim()) errors.push(`Câu ${n}: chưa nhập câu hỏi.`)
    if (q.kind === 'mc') {
      const opts = q.options.map((o) => o.trim())
      if (opts.some((o) => !o)) errors.push(`Câu ${n}: phải điền đủ 4 lựa chọn.`)
      else if (new Set(opts).size !== 4) errors.push(`Câu ${n}: có lựa chọn bị trùng nhau.`)
      else if (q.answerIdx === null || !opts[q.answerIdx])
        errors.push(`Câu ${n}: chưa chọn đáp án đúng trong 4 lựa chọn.`)
    }
    if (!q.explanation.trim()) warnings.push(`Câu ${n}: chưa có giải thích cho người học.`)
  })

  function patchQ(i, patch) {
    setQuestions((qs) => qs.map((q, k) => (k === i ? { ...q, ...patch } : q)))
  }

  async function handleSave() {
    setSaving(true)
    setSaveError(null)
    const cleanGloss = gloss
      .filter((g) => g.term.trim() && g.vi.trim())
      .map((g) => ({ term: g.term.trim(), vi: g.vi.trim() }))

    // Xếp bài mới xuống cuối nhóm cấp độ của nó
    const { data: last } = await supabase
      .from('lessons')
      .select('order_index')
      .eq('skill', 'reading')
      .eq('level', level)
      .order('order_index', { ascending: false })
      .limit(1)
    const nextOrder = (last?.[0]?.order_index ?? LEVEL_ORDER[level] * 100) + 1

    const { data: lesson, error: le } = await supabase
      .from('lessons')
      .insert({
        skill: 'reading',
        title: title.trim(),
        description: desc.trim() || null,
        level,
        content: passage.trim(),
        glossary: cleanGloss.length ? cleanGloss : null,
        order_index: nextOrder,
      })
      .select('id')
      .single()

    if (le) {
      setSaveError(le.message)
      setSaving(false)
      return
    }

    const rows = questions.map((q, i) => ({
      lesson_id: lesson.id,
      type: q.kind === 'mc' ? 'multiple_choice' : 'true_false',
      prompt: q.prompt.trim(),
      options: q.kind === 'mc' ? q.options.map((o) => o.trim()) : null,
      accepted_answers: [q.kind === 'mc' ? q.options[q.answerIdx].trim() : q.answer],
      explanation: q.explanation.trim() || null,
      order_index: i + 1,
    }))
    const { error: ee } = await supabase.from('exercises').insert(rows)

    if (ee) {
      // Bài đã tạo nhưng câu hỏi lỗi → xoá bài để không để lại bài rỗng
      await supabase.from('lessons').delete().eq('id', lesson.id)
      setSaveError(`Lưu câu hỏi thất bại nên đã huỷ cả bài: ${ee.message}`)
      setSaving(false)
      return
    }
    navigate('/skill/reading')
  }

  return (
    <div className="space-y-5">
      <div>
        <Link
          to="/skill/reading"
          className="inline-flex items-center gap-1 text-sm text-slate-500 hover:text-slate-700"
        >
          <ArrowLeft className="h-4 w-4" /> Bài đọc
        </Link>
        <h1 className="text-2xl font-bold text-slate-800 mt-1">Soạn bài đọc mới</h1>
      </div>

      {/* ---------- Thông tin chung ---------- */}
      <Card className="p-5 space-y-4">
        <div className="grid sm:grid-cols-2 gap-4">
          <div>
            <label className="block text-sm font-medium text-slate-700 mb-1">Tiêu đề</label>
            <Input value={title} onChange={(e) => setTitle(e.target.value)} placeholder="Working from Home" />
          </div>
          <div>
            <label className="block text-sm font-medium text-slate-700 mb-1">Cấp độ</label>
            <select
              value={level}
              onChange={(e) => setLevel(e.target.value)}
              className="w-full rounded-lg border border-slate-300 px-3 py-2 focus:outline-none focus:ring-2 focus:ring-emerald-500"
            >
              {Object.keys(WORD_RANGE).map((l) => (
                <option key={l} value={l}>
                  {l} ({WORD_RANGE[l][0]}–{WORD_RANGE[l][1]} từ)
                </option>
              ))}
            </select>
          </div>
        </div>
        <div>
          <label className="block text-sm font-medium text-slate-700 mb-1">Mô tả ngắn</label>
          <Input value={desc} onChange={(e) => setDesc(e.target.value)} placeholder="Lợi ích và mặt trái của việc làm việc tại nhà" />
        </div>
        <div>
          <div className="flex items-center justify-between mb-1">
            <label className="block text-sm font-medium text-slate-700">Đoạn văn</label>
            <span className={`text-xs ${words && (words < lo || words > hi) ? 'text-amber-600' : 'text-slate-400'}`}>
              {words} từ · gợi ý {lo}–{hi}
            </span>
          </div>
          <textarea
            value={passage}
            onChange={(e) => setPassage(e.target.value)}
            rows={12}
            placeholder={'Cách đoạn bằng một dòng trống.\n\nMỗi đoạn một khối như thế này.'}
            className="w-full rounded-lg border border-slate-300 px-3 py-2 leading-relaxed focus:outline-none focus:ring-2 focus:ring-emerald-500"
          />
        </div>
      </Card>

      {/* ---------- Chú thích cụm từ ---------- */}
      <Card className="p-5 space-y-3">
        <div>
          <h2 className="font-semibold text-slate-800">Chú thích cụm từ</h2>
          <p className="text-sm text-slate-500">
            Từ đơn đã được tra tự động từ kho từ vựng. Ở đây chỉ cần thêm cụm từ, thành ngữ hay
            thuật ngữ mà từ điển không có.
          </p>
        </div>
        {gloss.map((g, i) => (
          <div key={i} className="flex gap-2">
            <div className="flex-1">
              <Input
                value={g.term}
                onChange={(e) => setGloss((s) => s.map((x, k) => (k === i ? { ...x, term: e.target.value } : x)))}
                placeholder="cụm tiếng Anh (đúng như trong bài)"
              />
            </div>
            <div className="flex-1">
              <Input
                value={g.vi}
                onChange={(e) => setGloss((s) => s.map((x, k) => (k === i ? { ...x, vi: e.target.value } : x)))}
                placeholder="nghĩa tiếng Việt"
              />
            </div>
            <button
              type="button"
              onClick={() => setGloss((s) => s.filter((_, k) => k !== i))}
              className="p-2 rounded-lg text-slate-400 hover:text-red-600 hover:bg-red-50 cursor-pointer"
            >
              <Trash2 className="h-4 w-4" />
            </button>
          </div>
        ))}
        <Button variant="secondary" onClick={() => setGloss((s) => [...s, { term: '', vi: '' }])}>
          <Plus className="h-4 w-4" /> Thêm chú thích
        </Button>
      </Card>

      {/* ---------- Câu hỏi ---------- */}
      <Card className="p-5 space-y-4">
        <h2 className="font-semibold text-slate-800">Câu hỏi ({questions.length})</h2>

        {questions.map((q, i) => (
          <div key={i} className="rounded-xl border border-slate-200 p-4 space-y-3">
            <div className="flex items-center gap-2">
              <span className="font-semibold text-slate-700">Câu {i + 1}</span>
              <select
                value={q.kind}
                onChange={(e) =>
                  setQuestions((qs) =>
                    qs.map((x, k) => (k === i ? (e.target.value === 'mc' ? emptyMc() : emptyTf()) : x)),
                  )
                }
                className="text-sm rounded-lg border border-slate-300 px-2 py-1"
              >
                <option value="mc">Trắc nghiệm</option>
                <option value="tf">Đúng / Sai</option>
              </select>
              <button
                type="button"
                onClick={() => setQuestions((qs) => qs.filter((_, k) => k !== i))}
                className="ml-auto p-1.5 rounded-lg text-slate-400 hover:text-red-600 hover:bg-red-50 cursor-pointer"
              >
                <Trash2 className="h-4 w-4" />
              </button>
            </div>

            <Input
              value={q.prompt}
              onChange={(e) => patchQ(i, { prompt: e.target.value })}
              placeholder={q.kind === 'mc' ? 'Câu hỏi...' : 'Nhận định để người học phán đoán đúng/sai...'}
            />

            {q.kind === 'mc' ? (
              <div className="space-y-2">
                <p className="text-xs text-slate-500">Bấm vào ô tròn để đánh dấu đáp án đúng</p>
                {q.options.map((opt, oi) => (
                  <div key={oi} className="flex items-center gap-2">
                    <input
                      type="radio"
                      name={`ans-${i}`}
                      checked={q.answerIdx === oi}
                      onChange={() => patchQ(i, { answerIdx: oi })}
                      className="h-4 w-4 accent-emerald-600 cursor-pointer"
                    />
                    <div className="flex-1">
                      <Input
                        value={opt}
                        onChange={(e) =>
                          patchQ(i, {
                            options: q.options.map((o, k) => (k === oi ? e.target.value : o)),
                          })
                        }
                        placeholder={`Lựa chọn ${oi + 1}`}
                      />
                    </div>
                  </div>
                ))}
              </div>
            ) : (
              <div className="flex gap-4">
                {[
                  { v: 'true', l: 'Đúng' },
                  { v: 'false', l: 'Sai' },
                ].map((o) => (
                  <label key={o.v} className="flex items-center gap-2 text-sm cursor-pointer">
                    <input
                      type="radio"
                      name={`ans-${i}`}
                      checked={q.answer === o.v}
                      onChange={() => patchQ(i, { answer: o.v })}
                      className="h-4 w-4 accent-emerald-600"
                    />
                    {o.l}
                  </label>
                ))}
              </div>
            )}

            <Input
              value={q.explanation}
              onChange={(e) => patchQ(i, { explanation: e.target.value })}
              placeholder="Giải thích (hiện sau khi trả lời)"
            />
          </div>
        ))}

        <div className="flex gap-2">
          <Button variant="secondary" onClick={() => setQuestions((qs) => [...qs, emptyMc()])}>
            <Plus className="h-4 w-4" /> Trắc nghiệm
          </Button>
          <Button variant="secondary" onClick={() => setQuestions((qs) => [...qs, emptyTf()])}>
            <Plus className="h-4 w-4" /> Đúng / Sai
          </Button>
        </div>
      </Card>

      {/* ---------- Lỗi & cảnh báo ---------- */}
      {errors.length > 0 && (
        <div className="rounded-xl border-2 border-red-200 bg-red-50 p-4 text-sm text-red-700">
          <p className="font-semibold mb-1">Cần sửa trước khi lưu</p>
          <ul className="list-disc pl-5 space-y-0.5">
            {errors.map((e, i) => (
              <li key={i}>{e}</li>
            ))}
          </ul>
        </div>
      )}
      {warnings.length > 0 && errors.length === 0 && (
        <div className="rounded-xl border-2 border-amber-200 bg-amber-50 p-4 text-sm text-amber-700">
          <p className="font-semibold mb-1 flex items-center gap-1.5">
            <AlertTriangle className="h-4 w-4" /> Vẫn lưu được, nhưng nên xem lại
          </p>
          <ul className="list-disc pl-5 space-y-0.5">
            {warnings.map((w, i) => (
              <li key={i}>{w}</li>
            ))}
          </ul>
        </div>
      )}
      {saveError && (
        <div className="rounded-xl border-2 border-red-200 bg-red-50 p-4 text-sm text-red-700">
          <p className="font-semibold">Không lưu được</p>
          <p className="mt-0.5 break-words">{saveError}</p>
          <p className="mt-1 text-xs">
            Nếu báo lỗi quyền, hãy chạy file supabase/reading_admin.sql để bật quyền soạn bài.
          </p>
        </div>
      )}

      <div className="flex gap-2 pb-8">
        <Button
          onClick={handleSave}
          disabled={errors.length > 0 || saving}
          className="bg-emerald-600 hover:bg-emerald-700"
        >
          <Save className="h-4 w-4" /> {saving ? 'Đang lưu...' : 'Lưu bài đọc'}
        </Button>
        <Link to="/skill/reading">
          <Button variant="secondary">Huỷ</Button>
        </Link>
      </div>
    </div>
  )
}
