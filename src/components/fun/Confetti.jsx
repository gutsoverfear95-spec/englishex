// Pháo giấy nhẹ cho màn chúc mừng — thuần CSS, 18 mảnh, chạy 1 lần rồi thôi.
// Bật "giảm chuyển động" thì index.css tắt animation → không hiện gì cả.
const COLORS = ['bg-brand-500', 'bg-sun-400', 'bg-leaf-500', 'bg-brand-300', 'bg-sun-300']

export default function Confetti() {
  return (
    <div aria-hidden="true" className="pointer-events-none absolute inset-x-0 top-0 h-40 overflow-hidden motion-reduce:hidden">
      {Array.from({ length: 18 }, (_, i) => (
        <span
          key={i}
          className={`absolute top-0 block h-2.5 w-1.5 rounded-sm opacity-0 animate-confetti ${COLORS[i % COLORS.length]}`}
          style={{
            left: `${(i * 53) % 100}%`,
            animationDelay: `${(i % 6) * 70}ms`,
          }}
        />
      ))}
    </div>
  )
}
