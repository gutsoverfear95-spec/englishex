import { Navigate, Outlet } from 'react-router-dom'
import { useAuth } from '../../context/AuthContext'
import Spinner from '../ui/Spinner'

// Chặn mọi route con phía sau nếu chưa đăng nhập.
// Dùng dạng layout-route: <Route element={<ProtectedRoute/>}> ...routes con... </Route>
export default function ProtectedRoute() {
  const { session, loading } = useAuth()

  // Đang khôi phục session (lúc mới mở app) → hiện spinner thay vì đá về /login oan
  if (loading) {
    return (
      <div className="min-h-screen grid place-items-center bg-slate-50">
        <Spinner />
      </div>
    )
  }

  if (!session) return <Navigate to="/login" replace />

  return <Outlet />
}
