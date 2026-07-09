import { useState } from 'react'
import { Link, Navigate, useNavigate } from 'react-router-dom'
import { GraduationCap } from 'lucide-react'
import { useAuth } from '../context/AuthContext'
import { translateAuthError } from '../utils/authErrors'
import Button from '../components/ui/Button'
import Input from '../components/ui/Input'
import Card from '../components/ui/Card'
import GoogleIcon from '../components/ui/GoogleIcon'

export default function Register() {
  const { session, signUp, signInWithGoogle } = useAuth()
  const navigate = useNavigate()
  const [form, setForm] = useState({ displayName: '', email: '', password: '', confirm: '' })
  const [error, setError] = useState('')
  const [info, setInfo] = useState('')
  const [submitting, setSubmitting] = useState(false)

  if (session) return <Navigate to="/" replace />

  const set = (key) => (e) => setForm({ ...form, [key]: e.target.value })

  async function handleSubmit(e) {
    e.preventDefault()
    setError('')
    setInfo('')

    // Validate phía client trước khi gọi API
    if (form.password.length < 6) return setError('Mật khẩu phải có ít nhất 6 ký tự.')
    if (form.password !== form.confirm) return setError('Mật khẩu nhập lại không khớp.')

    setSubmitting(true)
    const { data, error } = await signUp(form.email, form.password, form.displayName.trim())
    setSubmitting(false)

    if (error) return setError(translateAuthError(error))
    // Quirk của Supabase: email đã tồn tại thì trả về user với identities rỗng
    if (data.user?.identities?.length === 0) return setError('Email này đã được đăng ký.')

    if (data.session) {
      navigate('/') // Confirm email đang TẮT → có session ngay, vào app luôn
    } else {
      setInfo('Đăng ký thành công! Hãy kiểm tra email để xác nhận tài khoản, sau đó đăng nhập.')
    }
  }

  async function handleGoogle() {
    setError('')
    // Google vừa là đăng ký vừa là đăng nhập — tài khoản tự tạo lần đầu
    const { error } = await signInWithGoogle()
    if (error) setError(translateAuthError(error))
  }

  return (
    <div className="min-h-screen bg-slate-50 grid place-items-center px-4">
      <Card className="w-full max-w-sm p-6 space-y-5">
        <div className="text-center space-y-1">
          <GraduationCap className="h-10 w-10 text-indigo-600 mx-auto" />
          <h1 className="text-xl font-bold text-slate-800">Tạo tài khoản EnglishEx</h1>
          <p className="text-sm text-slate-500">Luyện Nghe - Nói - Đọc - Viết mỗi ngày</p>
        </div>

        <form onSubmit={handleSubmit} className="space-y-4">
          <Input
            id="displayName"
            label="Tên hiển thị"
            type="text"
            required
            value={form.displayName}
            onChange={set('displayName')}
            placeholder="Yim"
          />
          <Input
            id="email"
            label="Email"
            type="email"
            required
            value={form.email}
            onChange={set('email')}
            placeholder="ban@example.com"
          />
          <Input
            id="password"
            label="Mật khẩu (tối thiểu 6 ký tự)"
            type="password"
            required
            value={form.password}
            onChange={set('password')}
            placeholder="••••••••"
          />
          <Input
            id="confirm"
            label="Nhập lại mật khẩu"
            type="password"
            required
            value={form.confirm}
            onChange={set('confirm')}
            placeholder="••••••••"
          />

          {error && (
            <p className="text-sm text-red-600 bg-red-50 border border-red-100 rounded-lg px-3 py-2">
              {error}
            </p>
          )}
          {info && (
            <p className="text-sm text-green-700 bg-green-50 border border-green-100 rounded-lg px-3 py-2">
              {info}
            </p>
          )}

          <Button type="submit" disabled={submitting} className="w-full">
            {submitting ? 'Đang tạo tài khoản…' : 'Đăng ký'}
          </Button>
        </form>

        <div className="flex items-center gap-3">
          <div className="h-px flex-1 bg-slate-200" />
          <span className="text-xs text-slate-400">hoặc</span>
          <div className="h-px flex-1 bg-slate-200" />
        </div>

        <Button type="button" variant="secondary" className="w-full" onClick={handleGoogle}>
          <GoogleIcon /> Đăng ký với Google
        </Button>

        <p className="text-sm text-center text-slate-500">
          Đã có tài khoản?{' '}
          <Link to="/login" className="text-indigo-600 font-medium hover:underline">
            Đăng nhập
          </Link>
        </p>
      </Card>
    </div>
  )
}
