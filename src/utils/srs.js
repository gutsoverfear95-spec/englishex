// ============================================================
// SRS — Spaced Repetition System theo SM-2 giản lược (3 nút như Anki)
//
// Mỗi từ có 2 tham số lưu trong user_progress:
//   repetition_interval : khoảng cách ôn hiện tại (NGÀY, số thực)
//   ease_factor         : hệ số giãn 1.3–3.0 (mặc định 2.5)
//
// Công thức khi người dùng chấm 1 thẻ:
//   ┌────────┬──────────────┬─────────────────────────────────────────┐
//   │ Nút    │ ease_factor  │ interval mới                            │
//   ├────────┼──────────────┼─────────────────────────────────────────┤
//   │ Khó    │ -0.15        │ thẻ mới: 10 phút; cũ: interval × 0.5    │
//   │ Tốt    │ giữ nguyên   │ thẻ mới: 1 ngày;  cũ: interval × ease   │
//   │ Dễ     │ +0.15        │ thẻ mới: 3 ngày;  cũ: interval×ease×1.3 │
//   └────────┴──────────────┴─────────────────────────────────────────┘
//   → từ hay quên sẽ quay lại dày hơn, từ dễ nhớ giãn ra rất nhanh
//   → interval ≥ 30 ngày ⇒ status = 'mastered' (đã thuộc)
// ============================================================

export const DEFAULT_EASE = 2.5
const MIN_EASE = 1.3
const MAX_EASE = 3.0
const TEN_MINUTES = 10 / (60 * 24) // ~0.007 ngày
export const MASTERED_DAYS = 30

// Tính trạng thái SRS mới sau khi chấm 1 thẻ.
// row = dòng user_progress hiện tại (null nếu là từ hoàn toàn mới)
// grade = 'hard' | 'good' | 'easy'
export function gradeCard(row, grade, now = new Date()) {
  const interval = Number(row?.repetition_interval ?? 0)
  const ease = Number(row?.ease_factor ?? DEFAULT_EASE)
  const isNew = interval === 0

  let newInterval
  let newEase = ease

  if (grade === 'hard') {
    newEase = Math.max(MIN_EASE, ease - 0.15)
    newInterval = isNew ? TEN_MINUTES : Math.max(TEN_MINUTES, interval * 0.5)
  } else if (grade === 'easy') {
    newEase = Math.min(MAX_EASE, ease + 0.15)
    newInterval = isNew ? 3 : interval * ease * 1.3
  } else {
    // 'good'
    newInterval = isNew ? 1 : interval * ease
  }

  newInterval = Math.round(newInterval * 1000) / 1000

  return {
    repetition_interval: newInterval,
    ease_factor: Math.round(newEase * 100) / 100,
    next_review_date: new Date(now.getTime() + newInterval * 86400000).toISOString(),
    status: newInterval >= MASTERED_DAYS ? 'mastered' : 'learning',
  }
}

// Đổi số ngày thành nhãn thân thiện ("10 phút", "3 ngày", "2 tháng")
export function formatDays(d) {
  if (d < 1) return `${Math.max(1, Math.round(d * 24 * 60))} phút`
  if (d < 30) return `${Math.round(d)} ngày`
  return `${Math.round(d / 30)} tháng`
}

// Nhãn xem trước hiển thị trên nút Khó/Tốt/Dễ (giống Anki):
// cho user biết bấm nút này thì bao lâu nữa gặp lại từ
export function previewInterval(row, grade) {
  return formatDays(gradeCard(row, grade).repetition_interval)
}
