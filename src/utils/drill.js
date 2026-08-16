// ============================================================
// CHỌN DẠNG BÀI THEO MỨC THUỘC (learning ladder)
//
// Một từ không nên luôn được hỏi theo cùng một kiểu: lật thẻ mãi thì não chỉ
// NHẬN DIỆN (nhìn đáp án là thấy quen), còn bắt gõ ngay từ đầu thì nản. Cách
// hiệu quả nhất là tăng dần độ khó theo đúng mức thuộc của từng từ:
//
//   ┌──────────────────────┬──────────────┬────────────────────────────────┐
//   │ interval hiện tại    │ Dạng bài     │ Kỹ năng rèn                    │
//   ├──────────────────────┼──────────────┼────────────────────────────────┤
//   │ 0 (từ mới)           │ trắc nghiệm  │ nhận diện — vừa gặp, đừng ép   │
//   │ < 1 ngày (đang học)  │ lật thẻ      │ hồi tưởng có tự chấm           │
//   │ 1 – 7 ngày           │ gõ từ        │ sản sinh (nhớ được mặt chữ)    │
//   │ 7 – 30 ngày          │ điền vào câu │ nhớ trong NGỮ CẢNH, không rời  │
//   │ ≥ 30 ngày (đã thuộc) │ nghe & viết  │ nối âm thanh với mặt chữ       │
//   └──────────────────────┴──────────────┴────────────────────────────────┘
//
// Người học vẫn có thể tự chọn cố định một kiểu trong thanh "Kiểu ôn".
// ============================================================

export const DRILL_TYPES = ['choice', 'flip', 'type', 'cloze', 'listen']

export const DRILL_LABELS = {
  auto: 'Tự động',
  choice: 'Trắc nghiệm',
  flip: 'Lật thẻ',
  type: 'Gõ từ',
  cloze: 'Điền câu',
  listen: 'Nghe & viết',
}

// Mô tả ngắn hiện trên thanh chọn kiểu ôn
export const DRILL_HINTS = {
  auto: 'Tự tăng độ khó theo mức thuộc của từng từ',
  choice: 'Chọn nghĩa đúng trong 4 phương án',
  flip: 'Lật thẻ rồi tự chấm Khó / Tốt / Dễ',
  type: 'Nhìn nghĩa tiếng Việt, viết ra từ tiếng Anh',
  cloze: 'Điền từ còn thiếu vào câu ví dụ',
  listen: 'Nghe phát âm rồi viết lại từ',
}

// Escape ký tự đặc biệt để nhét từ vào regex an toàn
function escapeRegex(str) {
  return str.replace(/[.*+?^${}()|[\]\\]/g, '\\$&')
}

// Khoét từ mục tiêu khỏi câu ví dụ để làm bài điền khuyết.
//
// Regex `từ + \w*` bắt cả dạng biến thể (vegetable → vegetables, commute →
// commutes) — giống cách Flashcard bôi đậm từ, nên chỗ trống luôn trùng với
// chỗ người học đã quen nhìn thấy in đậm.
//
// Trả về null khi câu KHÔNG chứa từ (ví dụ động từ bất quy tắc: go → went).
// Nơi gọi thấy null thì đổi sang dạng bài khác thay vì hiện câu không có chỗ trống.
export function makeCloze(sentence, target) {
  if (!sentence || !target) return null
  const re = new RegExp(`(${escapeRegex(target)}\\w*)`, 'gi')
  const found = sentence.match(re)
  if (!found) return null

  return {
    // "I eat vegetables." → "I eat ______."
    masked: sentence.replace(re, '______'),
    // Chấp nhận cả dạng gốc lẫn dạng biến thể xuất hiện trong câu:
    // người học điền "vegetable" hay "vegetables" đều tính đúng.
    answers: [...new Set([target, ...found.map((f) => f.toLowerCase())])],
    blanks: found.length,
  }
}

// Câu ví dụ dùng cho bài điền khuyết: ưu tiên câu đầu tiên thực sự CHỨA từ,
// không có thì quay về câu ví dụ cũ trong bảng words.
export function pickClozeSource(word, examples = []) {
  const candidates = [
    ...examples.map((ex) => ({ sentence_en: ex.sentence_en, sentence_vi: ex.sentence_vi })),
    ...(word.example_sentence
      ? [{ sentence_en: word.example_sentence, sentence_vi: null }]
      : []),
  ]
  for (const c of candidates) {
    const cloze = makeCloze(c.sentence_en, word.word)
    if (cloze) return { ...c, ...cloze }
  }
  return null
}

// Dạng bài cho thẻ hiện tại.
//   row      : dòng user_progress của từ (null = từ hoàn toàn mới)
//   canCloze : câu ví dụ có khoét được chỗ trống hay không
export function pickDrill(row, { canCloze = false } = {}) {
  const interval = Number(row?.repetition_interval ?? 0)
  if (!row || interval === 0) return 'choice'
  if (interval < 1) return 'flip'
  if (interval < 7) return 'type'
  if (interval < 30) return canCloze ? 'cloze' : 'type'
  return 'listen'
}

// Sinh 4 phương án cho bài trắc nghiệm: 1 nghĩa đúng + 3 nghĩa nhiễu.
//
// Nhiễu lấy từ CÙNG chủ đề trước (khó hơn, buộc phải phân biệt thật) rồi mới
// tới các từ khác. Loại bỏ nghĩa trùng để không có 2 phương án cùng đúng.
export function buildChoices(word, pool, count = 4) {
  const seen = new Set([word.meaning.trim().toLowerCase()])
  const sameTopic = []
  const others = []

  for (const w of pool) {
    if (w.id === word.id) continue
    const key = w.meaning.trim().toLowerCase()
    if (seen.has(key)) continue
    seen.add(key)
    ;(w.topic_id === word.topic_id ? sameTopic : others).push(w)
  }

  const distractors = [...shuffle(sameTopic), ...shuffle(others)].slice(0, count - 1)
  return shuffle([word, ...distractors])
}

// Fisher–Yates — trộn bản sao, không đụng mảng gốc
export function shuffle(arr) {
  const a = [...arr]
  for (let i = a.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1))
    ;[a[i], a[j]] = [a[j], a[i]]
  }
  return a
}
