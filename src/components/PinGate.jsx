import { useState } from 'react'
import { Lock } from 'lucide-react'

// ============================================================
// LỚP CHẮN PIN cho toàn bộ trang web (hiện trước cả màn đăng nhập).
// LƯU Ý BẢO MẬT: PIN được kiểm tra phía client nên chỉ là lớp chắn
// "chống người lạ vô tình vào", KHÔNG phải bảo mật thực sự —
// dữ liệu thật đã được bảo vệ bằng đăng nhập + RLS ở Supabase.
// Đổi PIN: đặt biến VITE_ACCESS_PIN lúc build, hoặc sửa giá trị mặc định.
// ============================================================
const ACCESS_PIN = import.meta.env.VITE_ACCESS_PIN || '6868'
const STORAGE_KEY = 'englishex_pin_ok'

export default function PinGate({ children }) {
  // Ghi nhớ theo thiết bị — mỗi máy/trình duyệt chỉ cần nhập 1 lần
  const [unlocked, setUnlocked] = useState(() => localStorage.getItem(STORAGE_KEY) === '1')
  const [pin, setPin] = useState('')
  const [error, setError] = useState(false)

  if (unlocked) return children

  function handleSubmit(e) {
    e.preventDefault()
    if (pin === ACCESS_PIN) {
      localStorage.setItem(STORAGE_KEY, '1')
      setUnlocked(true)
    } else {
      setError(true)
      setPin('')
    }
  }

  return (
    <div className="min-h-screen bg-slate-900 grid place-items-center px-4">
      <form
        onSubmit={handleSubmit}
        className="w-full max-w-xs bg-white rounded-2xl shadow-xl p-8 text-center space-y-4"
      >
        <span className="inline-grid place-items-center h-12 w-12 rounded-full bg-indigo-50">
          <Lock className="h-6 w-6 text-indigo-600" />
        </span>
        <div>
          <h1 className="text-lg font-bold text-slate-800">EnglishEx</h1>
          <p className="text-sm text-slate-500">Nhập mã PIN để truy cập</p>
        </div>

        <input
          type="password"
          inputMode="numeric"
          maxLength={6}
          autoFocus
          value={pin}
          onChange={(e) => {
            setPin(e.target.value.replace(/\D/g, '')) // chỉ nhận chữ số
            setError(false)
          }}
          className="w-full text-center text-2xl tracking-[0.5em] rounded-lg border border-slate-300 px-3 py-2 focus:outline-none focus:ring-2 focus:ring-indigo-500"
          placeholder="••••"
        />

        {error && <p className="text-sm text-red-600">Mã PIN không đúng.</p>}

        <button
          type="submit"
          disabled={!pin}
          className="w-full rounded-lg bg-indigo-600 text-white py-2 text-sm font-medium hover:bg-indigo-700 disabled:opacity-50 cursor-pointer"
        >
          Vào trang web
        </button>
      </form>
    </div>
  )
}
