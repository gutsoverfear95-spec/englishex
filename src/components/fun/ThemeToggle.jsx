import { useState } from 'react'
import { THEMES, applyTheme, getTheme } from '../../lib/theme'

// Một nút đổi qua lại giữa 2 theme. Bản đầu có 2 ô màu cạnh nhau nhưng trên
// điện thoại Navbar vốn đã chật — thêm 88px nữa đẩy các mục điều hướng ra
// ngoài màn hình. Một nút 44×44 là đủ vì chỉ có hai lựa chọn.
//
// Chấm tròn hiện màu của theme ĐANG dùng (nửa màu chủ đạo, nửa màu điểm nhấn);
// nhãn cho trình đọc màn hình nói rõ bấm vào sẽ đổi sang theme nào.
const SWATCH = {
  purple: 'from-[#7c3aed] from-50% to-[#22c55e] to-50%',
  green: 'from-[#15803d] from-50% to-[#8b5cf6] to-50%',
}

export default function ThemeToggle() {
  const [theme, setTheme] = useState(getTheme)
  const next = theme === 'purple' ? 'green' : 'purple'
  const label = `Đổi sang giao diện ${THEMES[next].label.toLowerCase()} chủ đạo`

  function toggle() {
    applyTheme(next)
    setTheme(next)
  }

  return (
    <button
      type="button"
      onClick={toggle}
      aria-label={label}
      title={label}
      className="h-11 w-11 shrink-0 grid place-items-center cursor-pointer rounded-full hover:bg-slate-100 transition-colors focus-visible:outline-3 focus-visible:outline-brand-500"
    >
      <span
        aria-hidden="true"
        className={`h-5 w-5 rounded-full bg-gradient-to-br ${SWATCH[theme]} ring-2 ring-white shadow-[0_0_0_1px_rgb(0_0_0_/_0.15)]`}
      />
    </button>
  )
}
