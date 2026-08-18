// ============================================================
// Quy một từ đã biến đổi đuôi về các dạng gốc có thể có.
// Từ điển lưu dạng nguyên thể nên "companies" phải tìm ra "company",
// "stopped" ra "stop", "running" ra "run".
//
// Tách riêng khỏi component để kiểm thử được bằng Node.
// ============================================================
export function baseForms(w) {
  const out = [w]
  const add = (x) => {
    if (x.length >= 2 && !out.includes(x)) out.push(x)
  }
  if (w.endsWith('ies')) add(w.slice(0, -3) + 'y')
  if (w.endsWith('es')) add(w.slice(0, -2))
  if (w.endsWith('s')) add(w.slice(0, -1))
  if (w.endsWith('ed')) {
    add(w.slice(0, -2))
    add(w.slice(0, -1))
    if (/([bdfglmnprt])\1ed$/.test(w)) add(w.slice(0, -3)) // stopped → stop
  }
  if (w.endsWith('ing')) {
    add(w.slice(0, -3))
    add(w.slice(0, -3) + 'e') // making → make
    if (/([bdglmnprt])\1ing$/.test(w)) add(w.slice(0, -4)) // running → run
  }
  if (w.endsWith('ly')) add(w.slice(0, -2))
  if (w.endsWith('iest')) add(w.slice(0, -4) + 'y') // easiest → easy
  if (w.endsWith('est')) {
    add(w.slice(0, -3))
    if (/([bdglmnprt])\1est$/.test(w)) add(w.slice(0, -4)) // biggest → big
  }
  if (w.endsWith('ier')) add(w.slice(0, -3) + 'y')
  if (w.endsWith('er')) {
    add(w.slice(0, -2))
    add(w.slice(0, -1))
    if (/([bdglmnprt])\1er$/.test(w)) add(w.slice(0, -3)) // bigger → big
  }
  return out
}

// dict: Map<string, {word, meaning, phonetic}> — khoá là từ viết thường
export function lookup(dict, token) {
  for (const f of baseForms(token)) {
    const hit = dict.get(f)
    if (hit) return hit
  }
  return null
}

// Cắt đoạn văn thành các mảnh, tách riêng cụm từ có trong glossary.
// Cụm dài xét trước để "video call" không bị "video" ăn mất.
export function splitByPhrases(text, terms) {
  if (!terms.length) return [{ text }]
  const sorted = [...terms].sort((a, b) => b.term.length - a.term.length)
  const esc = (s) => s.replace(/[.*+?^${}()|[\]\\]/g, '\\$&')
  const re = new RegExp(`\\b(${sorted.map((t) => esc(t.term)).join('|')})\\b`, 'gi')
  const parts = []
  let last = 0
  for (const m of text.matchAll(re)) {
    if (m.index > last) parts.push({ text: text.slice(last, m.index) })
    const entry = sorted.find((t) => t.term.toLowerCase() === m[0].toLowerCase())
    parts.push({ text: m[0], gloss: entry })
    last = m.index + m[0].length
  }
  if (last < text.length) parts.push({ text: text.slice(last) })
  return parts
}
