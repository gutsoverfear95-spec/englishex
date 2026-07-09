export default function ProgressBar({ value = 0, barClass = 'bg-indigo-500' }) {
  const pct = Math.min(100, Math.max(0, value))
  return (
    <div className="h-2 w-full rounded-full bg-slate-100 overflow-hidden">
      <div
        className={`h-full rounded-full transition-all duration-500 ${barClass}`}
        style={{ width: `${pct}%` }}
      />
    </div>
  )
}
