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

export const LEVEL_LABELS = {
  beginner: 'Cơ bản',
  intermediate: 'Trung cấp',
  advanced: 'Nâng cao',
}
