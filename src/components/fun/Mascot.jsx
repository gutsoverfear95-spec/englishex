// ============================================================
// LINH VẬT — một bạn nhỏ màu chủ đạo với mầm cây màu điểm nhấn trên đầu ("đang lớn lên"
// mỗi ngày học). Vẽ bằng SVG chứ không dùng emoji: emoji mỗi máy một kiểu,
// không đổi màu theo bộ màu của app được.
//
// mood:
//   'wave'  — vẫy tay chào (Tổng quan)
//   'cheer' — giơ hai tay, có sao vàng (màn chúc mừng)
//   'calm'  — cười hiền, dùng khi trả lời chưa đúng để không có cảm giác bị trách
//
// Chỉ để trang trí nên aria-hidden: nội dung thật luôn nằm ở chữ bên cạnh.
// ============================================================
export default function Mascot({ mood = 'wave', className = 'h-24 w-24' }) {
  const cheer = mood === 'cheer'
  const wave = mood === 'wave'

  return (
    <svg viewBox="0 0 120 120" className={className} aria-hidden="true" focusable="false">
      {/* Bóng dưới chân */}
      <ellipse cx="60" cy="110" rx="30" ry="5" fill="#1e1b2e" opacity="0.08" />

      {/* Mầm cây */}
      <path d="M60 24 C60 16 60 12 60 8" stroke="var(--color-accent-700)" strokeWidth="3" strokeLinecap="round" fill="none" />
      <path d="M60 12 C52 4 42 6 40 12 C48 16 56 16 60 12Z" fill="var(--color-accent-500)" />
      <path d="M60 10 C66 2 76 2 79 8 C72 13 64 14 60 10Z" fill="var(--color-accent-400)" />

      {/* Tay — trái */}
      <ellipse
        cx={cheer ? 20 : 20}
        cy={cheer ? 44 : 72}
        rx="8"
        ry="12"
        fill="var(--color-brand-600)"
        transform={cheer ? 'rotate(-30 20 44)' : 'rotate(20 20 72)'}
      />
      {/* Tay — phải (vẫy tay thì giơ lên) */}
      <ellipse
        cx="100"
        cy={cheer || wave ? 44 : 72}
        rx="8"
        ry="12"
        fill="var(--color-brand-600)"
        transform={cheer || wave ? 'rotate(30 100 44)' : 'rotate(-20 100 72)'}
      />

      {/* Thân */}
      <rect x="22" y="24" width="76" height="80" rx="36" fill="var(--color-brand-500)" />
      <ellipse cx="60" cy="80" rx="24" ry="17" fill="var(--color-brand-300)" opacity="0.55" />

      {/* Mắt */}
      <ellipse cx="46" cy="56" rx="8" ry="9" fill="#fff" />
      <ellipse cx="74" cy="56" rx="8" ry="9" fill="#fff" />
      <circle cx="47" cy="58" r="4.5" fill="#1e1b2e" />
      <circle cx="75" cy="58" r="4.5" fill="#1e1b2e" />
      <circle cx="48.5" cy="56" r="1.6" fill="#fff" />
      <circle cx="76.5" cy="56" r="1.6" fill="#fff" />

      {/* Má hồng */}
      <ellipse cx="36" cy="70" rx="5" ry="3" fill="#f9a8d4" opacity="0.8" />
      <ellipse cx="84" cy="70" rx="5" ry="3" fill="#f9a8d4" opacity="0.8" />

      {/* Miệng */}
      {cheer ? (
        <path d="M50 70 Q60 84 70 70 Z" fill="#1e1b2e" />
      ) : (
        <path d="M51 71 Q60 79 69 71" stroke="#1e1b2e" strokeWidth="3" strokeLinecap="round" fill="none" />
      )}

      {/* Sao vàng khi ăn mừng */}
      {cheer && (
        <>
          <path d="M14 20 l2.5 5 5.5 .8-4 3.9 1 5.5-5-2.6-5 2.6 1-5.5-4-3.9 5.5-.8z" fill="#facc15" />
          <path d="M104 14 l2 4 4.4 .6-3.2 3.1 .8 4.4-4-2.1-4 2.1 .8-4.4-3.2-3.1 4.4-.6z" fill="#facc15" />
        </>
      )}
    </svg>
  )
}
