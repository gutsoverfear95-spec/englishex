import { createContext, useContext, useEffect, useState } from 'react'
import { supabase } from '../lib/supabase'

const AuthContext = createContext(null)

export function AuthProvider({ children }) {
  const [session, setSession] = useState(null)
  // loading = true khi đang khôi phục session từ localStorage lúc mở app,
  // tránh việc ProtectedRoute đá user về /login trước khi biết họ đã đăng nhập
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    // 1. Lấy session hiện tại (nếu user đã đăng nhập từ trước)
    supabase.auth.getSession().then(({ data: { session } }) => {
      setSession(session)
      setLoading(false)
    })

    // 2. Lắng nghe mọi thay đổi: đăng nhập, đăng xuất, tự refresh token
    const { data: { subscription } } = supabase.auth.onAuthStateChange((_event, session) => {
      setSession(session)
    })

    return () => subscription.unsubscribe()
  }, [])

  const value = {
    session,
    user: session?.user ?? null,
    loading,
    // display_name được lưu vào user_metadata; trigger handle_new_user trong DB
    // đọc field này để tạo dòng tương ứng trong bảng profiles
    signUp: (email, password, displayName) =>
      supabase.auth.signUp({
        email,
        password,
        options: { data: { display_name: displayName } },
      }),
    signIn: (email, password) =>
      supabase.auth.signInWithPassword({ email, password }),
    // Đăng nhập Google (OAuth): chuyển hướng sang Google rồi quay về app.
    // Yêu cầu: bật provider Google trong Supabase Dashboard + origin hiện tại
    // nằm trong Redirect URLs (Authentication → URL Configuration).
    signInWithGoogle: () =>
      supabase.auth.signInWithOAuth({
        provider: 'google',
        options: { redirectTo: window.location.origin },
      }),
    signOut: () => supabase.auth.signOut(),
  }

  return <AuthContext.Provider value={value}>{children}</AuthContext.Provider>
}

export function useAuth() {
  const ctx = useContext(AuthContext)
  if (!ctx) throw new Error('useAuth phải được dùng bên trong <AuthProvider>')
  return ctx
}
