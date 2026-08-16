// ============================================================
// Bộ so sánh văn bản — dùng chung cho cả 4 module:
//   Đọc/Nghe trắc nghiệm : checkAnswer (so khớp chính xác sau chuẩn hoá)
//   Viết (dịch/điền từ)  : checkAnswer với nhiều đáp án chấp nhận được
//   Nói/Nghe chép chính tả: bestSimilarity (Levenshtein, điểm 0-100)
// ============================================================

// Chuẩn hoá trước khi so sánh: thường hoá, bỏ dấu câu, gộp khoảng trắng.
// Nhờ đó "At six o'clock." === "at six oclock" — user không bị bắt lỗi vặt.
export function normalize(text = '') {
  return String(text)
    .toLowerCase()
    .replace(/[.,!?;:'"“”‘’\-–—()]/g, ' ')
    .replace(/\s+/g, ' ')
    .trim()
}

// Đúng/sai tuyệt đối: khớp với BẤT KỲ đáp án nào trong danh sách
export function checkAnswer(userAnswer, acceptedAnswers = []) {
  const u = normalize(userAnswer)
  return acceptedAnswers.some((a) => normalize(a) === u)
}

// Khoảng cách Levenshtein: số phép thêm/xoá/sửa ký tự tối thiểu để biến a thành b.
// Cài đặt 2 hàng (O(n) bộ nhớ) — đủ nhanh cho các câu ngắn của bài học.
function levenshtein(a, b) {
  const m = a.length
  const n = b.length
  if (m === 0) return n
  if (n === 0) return m

  let prev = Array.from({ length: n + 1 }, (_, j) => j)
  for (let i = 1; i <= m; i++) {
    const curr = [i]
    for (let j = 1; j <= n; j++) {
      curr[j] = Math.min(
        prev[j] + 1,      // xoá
        curr[j - 1] + 1,  // thêm
        prev[j - 1] + (a[i - 1] === b[j - 1] ? 0 : 1), // sửa
      )
    }
    prev = curr
  }
  return prev[n]
}

// Số ký tự sai lệch giữa 2 chuỗi (sau chuẩn hoá).
// Dùng cho từ NGẮN: 1 lỗi chính tả trong từ 4-5 chữ làm điểm % tụt rất sâu,
// nên xét thẳng số ký tự sai sẽ công bằng hơn là xét tỉ lệ phần trăm.
export function editDistance(a, b) {
  return levenshtein(normalize(a), normalize(b))
}

// Độ giống nhau 0-100 giữa 2 câu (sau chuẩn hoá)
export function similarity(a, b) {
  const na = normalize(a)
  const nb = normalize(b)
  if (!na && !nb) return 100
  if (!na || !nb) return 0
  const dist = levenshtein(na, nb)
  return Math.round((1 - dist / Math.max(na.length, nb.length)) * 100)
}

// Điểm cao nhất khi so với danh sách đáp án (dùng cho Nói/chép chính tả)
export function bestSimilarity(userAnswer, acceptedAnswers = []) {
  return Math.max(0, ...acceptedAnswers.map((a) => similarity(userAnswer, a)))
}
