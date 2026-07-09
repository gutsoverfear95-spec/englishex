import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import tailwindcss from '@tailwindcss/vite'

// Tailwind v4 dùng plugin Vite chính thức — KHÔNG cần tailwind.config.js
// và postcss.config.js như v3 (đơn giản hoá so với đề xuất ban đầu).
export default defineConfig({
  plugins: [react(), tailwindcss()],
})
