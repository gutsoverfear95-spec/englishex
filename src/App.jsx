// ============================================================
// PLACEHOLDER Giai đoạn 2 — dùng để kiểm tra cài đặt.
// Giai đoạn 3 sẽ thay toàn bộ bằng Router + Layout + Auth.
// ============================================================
export default function App() {
  // Kiểm tra nhanh biến môi trường đã được nạp chưa
  const envOk = Boolean(
    import.meta.env.VITE_SUPABASE_URL &&
    import.meta.env.VITE_SUPABASE_ANON_KEY &&
    !import.meta.env.VITE_SUPABASE_URL.includes('your-project-id')
  )

  return (
    <div className="min-h-screen flex items-center justify-center bg-slate-100">
      <div className="bg-white rounded-xl shadow-lg p-8 text-center space-y-3 max-w-md">
        <h1 className="text-2xl font-bold text-slate-800">English Learning App</h1>
        <p className="text-slate-500">Vite + React + Tailwind đã chạy thành công.</p>
        <p className={`text-sm font-medium ${envOk ? 'text-green-600' : 'text-red-500'}`}>
          {envOk
            ? 'Biến môi trường Supabase: OK'
            : 'Chưa cấu hình .env.local (VITE_SUPABASE_URL / VITE_SUPABASE_ANON_KEY)'}
        </p>
      </div>
    </div>
  )
}
