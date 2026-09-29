// ============================================================
// NÚT "ĐỒ CHƠI" — bo tròn lớn, có bóng đặc ở đáy, bấm thì lún xuống.
// Cao tối thiểu 48px cho ngón tay (nhỏ hơn thì hay bấm trượt trên điện thoại).
//
// Màu chữ đi theo nền đã kiểm tương phản ở index.css: vàng luôn chữ tối,
// xanh lá dùng leaf-700 để chữ trắng đạt chuẩn.
// ============================================================
const TONES = {
  brand: 'bg-brand-600 text-white hover:bg-brand-700 [--press-color:var(--color-brand-800)]',
  sun: 'bg-sun-400 text-ink hover:bg-sun-300 [--press-color:var(--color-sun-600)]',
  leaf: 'bg-leaf-700 text-white hover:bg-leaf-800 [--press-color:#14532d]',
  soft: 'bg-white text-brand-700 border-2 border-brand-100 hover:bg-brand-50 [--press-color:var(--color-brand-100)]',
}

const SIZES = {
  md: 'min-h-12 px-5 text-base',
  lg: 'min-h-14 px-6 text-lg',
}

export default function FunButton({
  as: Tag = 'button',
  tone = 'brand',
  size = 'md',
  className = '',
  children,
  ...props
}) {
  return (
    <Tag
      className={`press inline-flex items-center justify-center gap-2 rounded-2xl font-display font-bold tracking-wide cursor-pointer select-none focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-brand-500 disabled:opacity-50 disabled:cursor-not-allowed ${TONES[tone]} ${SIZES[size]} ${className}`}
      {...(Tag === 'button' ? { type: props.type ?? 'button' } : {})}
      {...props}
    >
      {children}
    </Tag>
  )
}
