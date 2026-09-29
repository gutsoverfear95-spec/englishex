import { Outlet } from 'react-router-dom'

// Khung "tập trung" cho phiên học: không có Navbar. Đang học thì chỉ cần nút
// thoát và thanh tiến độ — thêm menu điều hướng chỉ chiếm chỗ của thẻ học,
// vốn đã cao gần hết màn hình điện thoại.
export default function FocusLayout() {
  return (
    <div className="min-h-dvh bg-canvas">
      <main className="max-w-lg mx-auto px-4 pt-3 pb-6">
        <Outlet />
      </main>
    </div>
  )
}
