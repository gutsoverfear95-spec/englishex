// Thanh tiến độ dày, bo tròn — to hơn ProgressBar cũ để nhìn thấy ngay trên
// điện thoại. Có role="progressbar" để trình đọc màn hình đọc được con số.
export default function ChunkyProgress({
  value = 0,
  label,
  fill = 'bg-accent-500',
  track = 'bg-brand-100',
  className = '',
}) {
  const pct = Math.min(100, Math.max(0, value))
  return (
    <div
      role="progressbar"
      aria-valuemin={0}
      aria-valuemax={100}
      aria-valuenow={Math.round(pct)}
      aria-label={label}
      className={`h-3.5 w-full rounded-full overflow-hidden ${track} ${className}`}
    >
      <div
        className={`h-full rounded-full transition-[width] duration-500 ease-out ${fill}`}
        style={{ width: `${pct}%` }}
      >
        {/* Vệt sáng trên đầu thanh cho cảm giác "khối", không mang thông tin */}
        <div className="mx-2 mt-0.5 h-1 rounded-full bg-white/35" />
      </div>
    </div>
  )
}
