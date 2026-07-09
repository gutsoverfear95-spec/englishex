# English Learning App

App học tiếng Anh 4 kỹ năng (Nghe - Nói - Đọc - Viết). Stack: Vite + React + Tailwind v4 + Supabase, deploy Vercel.

## Cài đặt

### 1. Cài dependencies

```bash
npm install
```

### 2. Tạo project Supabase

1. Vào [supabase.com](https://supabase.com) → **New project** (chọn region gần VN, ví dụ Singapore).
2. Mở **SQL Editor** → New query → dán toàn bộ `supabase/schema.sql` → **Run**.
3. Chạy tiếp `supabase/seed.sql` để có dữ liệu mẫu.
4. (Khuyến nghị khi dev) **Authentication → Sign In / Providers → Email** → tắt **Confirm email** để đăng ký không cần xác nhận qua mail.

### 3. Biến môi trường

1. Mở **Project Settings → API Keys** trên Supabase Dashboard.
2. Copy **Project URL** và **anon/publishable key**.
3. Điền vào file `.env.local` (đã có sẵn, thay giá trị placeholder):

```
VITE_SUPABASE_URL=https://xxxx.supabase.co
VITE_SUPABASE_ANON_KEY=eyJhbGci...
```

> `.env.local` đã được gitignore. Không bao giờ đưa `service_role` key vào frontend.

### 4. Chạy dev

```bash
npm run dev
```

Mở http://localhost:5173 — thấy "Biến môi trường Supabase: OK" (chữ xanh) là cài đặt đúng.

## Deploy Vercel

1. Push code lên GitHub, import repo vào Vercel (framework: Vite, tự nhận).
2. Trong **Vercel → Project → Settings → Environment Variables**, thêm đúng 2 biến `VITE_SUPABASE_URL` và `VITE_SUPABASE_ANON_KEY`.
3. `vercel.json` đã có sẵn rewrite để React Router hoạt động khi refresh trang.

## Lưu ý trình duyệt (Speech API)

- Module Nói dùng `SpeechRecognition` — chỉ hoạt động tốt trên **Chrome/Edge** (Firefox chưa hỗ trợ), cần cho phép microphone và chạy trên `localhost` hoặc HTTPS.
- Module Nghe dùng `SpeechSynthesis` — hoạt động trên mọi trình duyệt hiện đại.
