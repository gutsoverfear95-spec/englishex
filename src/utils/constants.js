import { Headphones, Mic, BookOpen, PenLine } from 'lucide-react'

// Cấu hình hiển thị cho 4 kỹ năng — dùng chung ở Navbar, Dashboard, LessonList.
// Các class Tailwind viết đầy đủ dạng chuỗi để Tailwind quét được khi build.
export const SKILLS = [
  {
    key: 'listening',
    label: 'Nghe',
    icon: Headphones,
    text: 'text-sky-600',
    bg: 'bg-sky-50',
    bar: 'bg-sky-500',
    desc: 'Nghe audio, gõ lại câu hoặc trả lời trắc nghiệm',
  },
  {
    key: 'speaking',
    label: 'Nói',
    icon: Mic,
    text: 'text-rose-600',
    bg: 'bg-rose-50',
    bar: 'bg-rose-500',
    desc: 'Luyện phát âm câu mẫu, chấm điểm bằng nhận dạng giọng nói',
  },
  {
    key: 'reading',
    label: 'Đọc',
    icon: BookOpen,
    text: 'text-emerald-600',
    bg: 'bg-emerald-50',
    bar: 'bg-emerald-500',
    desc: 'Đọc đoạn văn và trả lời câu hỏi đọc hiểu',
  },
  {
    key: 'writing',
    label: 'Viết',
    icon: PenLine,
    text: 'text-amber-600',
    bg: 'bg-amber-50',
    bar: 'bg-amber-500',
    desc: 'Dịch câu và điền từ vào chỗ trống',
  },
]

export const skillByKey = (key) => SKILLS.find((s) => s.key === key)

// Bài học cũ dùng 3 mức beginner/intermediate/advanced; bài mới dùng thang
// CEFR A1–C2 cho khớp với cấp độ của từ vựng. Giữ cả hai để bài cũ không vỡ.
export const LEVEL_LABELS = {
  beginner: 'Cơ bản',
  intermediate: 'Trung cấp',
  advanced: 'Nâng cao',
  A1: 'A1 · Mới bắt đầu',
  A2: 'A2 · Sơ cấp',
  B1: 'B1 · Trung cấp',
  B2: 'B2 · Trung cấp trên',
  C1: 'C1 · Cao cấp',
  C2: 'C2 · Thành thạo',
}
