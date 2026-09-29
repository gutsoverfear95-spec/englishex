// ============================================================
// THEME MÀU: 'purple' (tím chủ đạo, mặc định) hoặc 'green' (xanh lá chủ đạo).
//
// Chỉ là một thuộc tính data-theme trên <html>; index.css đổi bộ biến màu
// theo thuộc tính đó. Lưu theo trình duyệt, không lưu lên máy chủ — đây là
// sở thích nhìn, không phải dữ liệu học.
//
// Lần mở trang đầu tiên, script nhỏ trong index.html đã gắn theme TRƯỚC khi
// vẽ; không có nó thì trang chớp màu tím rồi mới chuyển sang xanh.
// ============================================================
export const THEME_KEY = 'englishex_theme'

export const THEMES = {
  purple: { label: 'Tím', metaColor: '#7c3aed' },
  green: { label: 'Xanh lá', metaColor: '#15803d' },
}

export function getTheme() {
  const saved = localStorage.getItem(THEME_KEY)
  return saved in THEMES ? saved : 'purple'
}

export function applyTheme(theme) {
  const root = document.documentElement
  if (theme === 'purple') delete root.dataset.theme
  else root.dataset.theme = theme
  localStorage.setItem(THEME_KEY, theme)
  // Thanh địa chỉ trên điện thoại đổi màu theo luôn
  document.querySelector('meta[name="theme-color"]')?.setAttribute('content', THEMES[theme].metaColor)
}
