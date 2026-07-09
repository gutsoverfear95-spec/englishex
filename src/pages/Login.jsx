import { useState } from 'react'
import { Link, Navigate, useNavigate } from 'react-router-dom'
import { GraduationCap } from 'lucide-react'
import { useAuth } from '../context/AuthContext'
import { translateAuthError } from '../utils/authErrors'
import Button from '../components/ui/Button'
import Input from '../components/ui/Input'
import Card from '../components/ui/Card'
import GoogleIcon from '../components/ui/GoogleIcon'

export default function Login() {
  const { session, signIn, signInWithGoogle } = useAuth()
  const navigate = useNavigate()
  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')
  const [error, setError] = useState('')
  const [submitting, setSubmitting] = useState(false)

  // Đã đăng nhập rồi thì không cho vào lại trang login
  if (session) return <Navigate to="/" replace />

  async function handleSubmit(e) {
    e.preventDefault()
    setError('')
    setSubmitting(true)
    const { error } = await signIn(email, password)
    setSubmitting(false)
    if (error) setError(translateAuthError(error))
    else navigate('/')
  }

  async function handleGoogle() {
    setError('')
    // Thành công thì trình duyệt tự chuyển sang trang Google → không cần navigate
    const { error } = await signInWithGoogle()
    if (error) setError(translateAuthError(error))
  }

  return (
    <div className="min-h-screen bg-slate-50 grid place-items-center px-4">
      <Card className="w-full max-w-sm p-6 space-y-5">
        <div className="text-center space-y-1">
          <GraduationCap className="h-10 w-10 text-indigo-600 mx-auto" />
          <h1 className="text-xl font-bold text-slate-800">Đăng nhập EnglishEx</h1>
          <p className="text-sm text-slate-500">Tiếp tục hành trình học tiếng Anh của bạn</p>
        </div>

        <form onSubmit={handleSubmit} className="space-y-4">
          <Input
            id="email"
            label="Email"
            type="email"
            required
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            placeholder="ban@example.com"
          />
          <Input
            id="password"
            label="Mật khẩu"
            type="password"
            required
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            placeholder="••••••••"
          />

          {error && (
            <p className="text-sm text-red-600 bg-red-50 border border-red-100 rounded-lg px-3 py-2">
              {error}
            </p>
          )}

          <Button type="submit" disabled={submitting} className="w-full">
            {submitting ? 'Đang đăng nhập…' : 'Đăng nhập'}
          </Button>
        </form>

        <div className="flex items-center gap-3">
          <div className="h-px flex-1 bg-slate-200" />
          <span className="text-xs text-slate-400">hoặc</span>
          <div className="h-px flex-1 bg-slate-200" />
        </div>

        <Button type="button" variant="secondary" className="w-full" onClick={handleGoogle}>
          <GoogleIcon /> Tiếp tục với Google
        </Button>

        <p className="text-sm text-center text-slate-500">
          Chưa có tài khoản?{' '}
          <Link to="/register" className="text-indigo-600 font-medium hover:underline">
            Đăng ký ngay
          </Link>
        </p>
      </Card>
    </div>
  )
}
