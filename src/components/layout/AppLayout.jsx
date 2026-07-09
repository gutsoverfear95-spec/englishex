import { Outlet } from 'react-router-dom'
import Navbar from './Navbar'

// Khung chung cho mọi trang sau đăng nhập: Navbar cố định + nội dung ở giữa
export default function AppLayout() {
  return (
    <div className="min-h-screen bg-slate-50">
      <Navbar />
      <main className="max-w-5xl mx-auto px-4 py-8">
        <Outlet />
      </main>
    </div>
  )
}
