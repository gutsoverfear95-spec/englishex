import { useState } from 'react'
import { Link, Navigate, useNavigate } from 'react-router-dom'
import { ArrowRight, BookOpen, Eye, EyeOff, GraduationCap, Leaf, LockKeyhole, Mail, Sparkles, Star } from 'lucide-react'
import { useAuth } from '../context/AuthContext'
import { translateAuthError } from '../utils/authErrors'
import { applyTheme, getTheme } from '../lib/theme'
import Mascot from '../components/fun/Mascot'
import GoogleIcon from '../components/ui/GoogleIcon'
import './login.css'

export default function Login() {
  const { session, signIn, signInWithGoogle } = useAuth()
  const navigate = useNavigate()
  const [theme, setTheme] = useState(getTheme)
  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')
  const [visible, setVisible] = useState(false)
  const [passwordFocused, setPasswordFocused] = useState(false)
  const [error, setError] = useState('')
  const [pending, setPending] = useState(null)
  const green = theme === 'green'
  const covering = passwordFocused && !visible

  if (session) return <Navigate to="/" replace />

  function chooseTheme(next) {
    applyTheme(next)
    setTheme(next)
  }

  async function handleSubmit(event) {
    event.preventDefault()
    if (pending) return
    setError('')
    setPending('email')
    try {
      const result = await signIn(email.trim(), password)
      if (result.error) setError(translateAuthError(result.error))
      else navigate('/')
    } catch {
      setError('Chưa kết nối được. Bạn thử lại nhé, thông tin đã nhập vẫn ở đây.')
    } finally {
      setPending(null)
    }
  }

  async function handleGoogle() {
    if (pending) return
    setError('')
    setPending('google')
    try {
      const result = await signInWithGoogle()
      if (result.error) {
        setError(translateAuthError(result.error))
        setPending(null)
      }
      // Keep the button busy while OAuth redirects to Google.
    } catch {
      setError('Chưa kết nối được với Google. Bạn thử lại nhé.')
      setPending(null)
    }
  }

  return (
    <div className={`login-world ${green ? 'login-green' : 'login-purple'}`}>
      <div className="login-orb login-orb-one" aria-hidden="true" />
      <div className="login-orb login-orb-two" aria-hidden="true" />
      <header className="login-topbar">
        <Link to="/" className="login-logo" aria-label="EnglishEx — Trang chủ">
          <span><GraduationCap size={26} /></span> EnglishEx<span className="login-logo-dot">.</span>
        </Link>
        <div className="login-theme" role="group" aria-label="Màu giao diện">
          <button type="button" aria-pressed={!green} onClick={() => chooseTheme('purple')}>
            <span className="login-swatch-purple" /> Tím
          </button>
          <button type="button" aria-pressed={green} onClick={() => chooseTheme('green')}>
            <span className="login-swatch-green" /> Xanh
          </button>
        </div>
      </header>

      <main className="login-main">
        <section className="login-story" aria-labelledby="login-story-title">
          <span className="login-eyebrow"><Sparkles size={16} /> MỖI NGÀY MỘT CHÚT, TIẾN BỘ MỘT CHÚT</span>
          <h1 id="login-story-title">{green ? <>Gieo một từ mới.<br /><span>Lớn thêm mỗi ngày!</span></> : <>Một chút tiếng Anh.<br /><span>Cả trời khám phá!</span></>}</h1>
          <p className="login-story-description">{green ? 'Một khu vườn nhỏ cho những điều bạn sắp biết. Vào học cùng tụi mình nhé!' : 'Ba lô đã sẵn sàng. Cùng biến những từ mới thành những cuộc trò chuyện thật vui!'}</p>
          <div className="login-scene" aria-hidden="true">
            <div className="login-scene-disc" />
            <Star className="login-scene-star" size={40} fill="currentColor" />
            <span className="login-hello">{green ? 'Hello, sunshine!' : 'Hello, explorer!'}<span>✦</span></span>
            <div className="login-mascot-wrap"><Mascot mood="wave" coverEyes={covering} className="login-mascot" /></div>
            {green ? (
              <svg className="login-garden" viewBox="0 0 440 140" focusable="false">
                <ellipse cx="220" cy="114" rx="190" ry="20" fill="#166534" opacity=".12" />
                <path d="M65 101V50m0 24C25 74 24 38 27 31c27 1 39 16 38 43m0-18c-1-27 19-41 42-40-1 27-14 40-42 40" fill="#2e8b55" stroke="#166534" strokeWidth="3" strokeLinejoin="round" />
                <path d="M43 94h45l-6 32H49z" fill="#f7a87c" stroke="#854829" strokeWidth="3" />
                <path d="M368 115V75m0 17c-25-3-31-19-28-36 21 3 29 15 28 36m0-13c0-24 17-33 33-32-1 20-12 32-33 32" fill="#a3d16c" stroke="#166534" strokeWidth="3" strokeLinejoin="round" />
                <path d="M293 105l-17-26 13-5 20 21m7-23c24-4 27 23 9 27" fill="none" stroke="#854d0e" strokeWidth="8" strokeLinecap="round" />
                <path d="M296 75h31v40h-31z" fill="#facc15" stroke="#854d0e" strokeWidth="3" />
              </svg>
            ) : (
              <div className="login-books"><span>little steps,</span><span>BIG adventures.</span><span>ENGLISH EVERY DAY <Star size={17} /></span></div>
            )}
            <span className="login-sticker"><BookOpen size={22} />{green ? 'Grow with words' : 'Let’s go!'}</span>
          </div>
          <p className="login-joke">{green ? 'Não cũng thích được tưới nước. Và vài từ mới.' : 'Sai một câu? Chưa ai bị trục xuất khỏi vũ trụ cả.'}</p>
        </section>

        <section className="login-card" aria-labelledby="login-title">
          <div className="login-card-tag"><Leaf size={15} /> {green ? 'GÓC HỌC NHỎ CỦA BẠN' : 'TRẠM XUẤT PHÁT CỦA BẠN'}</div>
          <Mascot mood="wave" coverEyes={covering} className="login-mobile-mascot" />
          <h2 id="login-title">Mừng bạn quay lại!</h2>
          <p className="login-card-intro">Học thêm một chút, giỏi thêm một chút.</p>
          <form onSubmit={handleSubmit} className="login-form" aria-busy={pending === 'email'}>
            <label htmlFor="email">Email</label>
            <div className="login-field">
              <Mail size={19} aria-hidden="true" />
              <input id="email" type="email" autoComplete="username" required value={email} onChange={(event) => setEmail(event.target.value)} placeholder="ban@example.com" />
            </div>
            <label htmlFor="password">Mật khẩu</label>
            <div className="login-field">
              <LockKeyhole size={19} aria-hidden="true" />
              <input id="password" type={visible ? 'text' : 'password'} autoComplete="current-password" required value={password} onChange={(event) => setPassword(event.target.value)} onFocus={() => setPasswordFocused(true)} onBlur={() => setPasswordFocused(false)} placeholder="Mật khẩu của bạn" />
              <button type="button" onClick={() => setVisible(!visible)} aria-label={visible ? 'Ẩn mật khẩu' : 'Hiện mật khẩu'} aria-pressed={visible}>{visible ? <EyeOff size={20} /> : <Eye size={20} />}</button>
            </div>
            {error && <p className="login-error" role="alert">{error}</p>}
            <button type="submit" className="login-submit" disabled={!!pending}>{pending === 'email' ? 'Đang đăng nhập…' : 'Đăng nhập'}<ArrowRight size={21} aria-hidden="true" /></button>
          </form>
          <div className="login-divider"><span />hoặc tiếp tục với<span /></div>
          <button type="button" className="login-google" disabled={!!pending} onClick={handleGoogle}><GoogleIcon />{pending === 'google' ? 'Đang mở Google…' : 'Tiếp tục với Google'}</button>
          <p className="login-register">Lần đầu ghé chơi? <Link to="/register">Tạo tài khoản <ArrowRight size={15} /></Link></p>
          <p className="login-card-note"><Star size={14} /> Một bước nhỏ hôm nay. Một phiên bản giỏi hơn ngày mai.</p>
        </section>
      </main>
      <footer className="login-footer">Không cần hoàn hảo. Chỉ cần bắt đầu. <span>Made for your little wins.</span></footer>
    </div>
  )
}
