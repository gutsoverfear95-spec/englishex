// Dịch lỗi Supabase Auth sang tiếng Việt.
// So khớp theo chuỗi con vì message có thể thay đổi nhẹ giữa các phiên bản Supabase.
const RULES = [
  ['invalid login credentials', 'Email hoặc mật khẩu không đúng.'],
  ['email not confirmed', 'Email chưa được xác nhận — hãy kiểm tra hộp thư của bạn.'],
  ['user already registered', 'Email này đã được đăng ký.'],
  ['at least 6 characters', 'Mật khẩu phải có ít nhất 6 ký tự.'],
  ['valid email', 'Email không hợp lệ.'],
  ['rate limit', 'Bạn thao tác quá nhanh, vui lòng thử lại sau ít phút.'],
]

export function translateAuthError(error) {
  if (!error) return ''
  const msg = (error.message || '').toLowerCase()
  const found = RULES.find(([en]) => msg.includes(en))
  return found ? found[1] : `Có lỗi xảy ra: ${error.message}`
}
