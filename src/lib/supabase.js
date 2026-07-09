import { createClient } from '@supabase/supabase-js'

// Đọc config từ .env.local — Vite chỉ expose biến có tiền tố VITE_
const supabaseUrl = import.meta.env.VITE_SUPABASE_URL
const supabaseAnonKey = import.meta.env.VITE_SUPABASE_ANON_KEY

if (!supabaseUrl || !supabaseAnonKey) {
  // Không throw để app vẫn render được màn hình báo lỗi thân thiện
  console.warn('[supabase] Thiếu VITE_SUPABASE_URL hoặc VITE_SUPABASE_ANON_KEY trong .env.local')
}

// Singleton client dùng chung toàn app (import { supabase } from '@/lib/supabase')
export const supabase = createClient(supabaseUrl, supabaseAnonKey)
