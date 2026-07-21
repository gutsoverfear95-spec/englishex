import { Link, NavLink } from 'react-router-dom'
import { GraduationCap, LayoutDashboard, LogOut, BookMarked } from 'lucide-react'
import { useAuth } from '../../context/AuthContext'
import { SKILLS } from '../../utils/constants'

const navLinkClass = ({ isActive }) =>
  `flex items-center gap-1.5 px-3 py-1.5 rounded-lg text-sm font-medium transition-colors whitespace-nowrap ${
    isActive ? 'bg-indigo-50 text-indigo-700' : 'text-slate-600 hover:bg-slate-100'
  }`

export default function Navbar() {
  const { user, signOut } = useAuth()
  // display_name (đăng ký email) hoặc full_name (đăng nhập Google)
  const displayName =
    user?.user_metadata?.display_name || user?.user_metadata?.full_name || user?.email

  return (
    <header className="bg-white border-b border-slate-200 sticky top-0 z-10">
      <nav className="max-w-5xl mx-auto px-4 h-14 flex items-center justify-between gap-3">
        <Link to="/" className="flex items-center gap-2 font-bold text-indigo-600 shrink-0">
          <GraduationCap className="h-6 w-6" />
          <span className="hidden sm:inline">EnglishEx</span>
        </Link>

        {/* Trên mobile chỉ hiện icon, từ md trở lên hiện thêm nhãn */}
        <div className="flex items-center gap-1 overflow-x-auto">
          <NavLink to="/" end className={navLinkClass}>
            <LayoutDashboard className="h-4 w-4" />
            <span className="hidden md:inline">Tổng quan</span>
          </NavLink>
          {SKILLS.map((s) => {
            const Icon = s.icon
            return (
              <NavLink key={s.key} to={`/skill/${s.key}`} className={navLinkClass}>
                <Icon className="h-4 w-4" />
                <span className="hidden md:inline">{s.label}</span>
              </NavLink>
            )
          })}
          <NavLink to="/vocab" className={navLinkClass}>
            <BookMarked className="h-4 w-4" />
            <span className="hidden md:inline">Từ vựng</span>
          </NavLink>
        </div>

        <div className="flex items-center gap-2 shrink-0">
          <span className="hidden sm:inline text-sm text-slate-500 max-w-32 truncate">
            {displayName}
          </span>
          <button
            onClick={signOut}
            title="Đăng xuất"
            className="p-2 rounded-lg text-slate-500 hover:bg-slate-100 hover:text-slate-700 transition-colors cursor-pointer"
          >
            <LogOut className="h-4 w-4" />
          </button>
        </div>
      </nav>
    </header>
  )
}
