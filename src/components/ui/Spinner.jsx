import { Loader2 } from 'lucide-react'

export default function Spinner({ className = 'h-8 w-8 text-brand-600' }) {
  return <Loader2 className={`animate-spin ${className}`} />
}
