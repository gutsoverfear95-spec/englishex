// ============================================================
// Quy một từ đã biến đổi đuôi về các dạng gốc có thể có.
// Từ điển lưu dạng nguyên thể nên "companies" phải tìm ra "company",
// "stopped" ra "stop", "running" ra "run".
//
// Tách riêng khỏi component để kiểm thử được bằng Node.
// ============================================================
// Dạng bất quy tắc → dạng gốc. Cắt đuôi không giải quyết được nhóm này:
// "was" không có đuôi nào để cắt ra "be". Mà đây lại toàn từ hay gặp nhất
// tiếng Anh — thiếu bảng này thì rê chuột vào was/said/went/children đều câm,
// dù be/say/go/child đều nằm sẵn trong kho từ.
const IRREGULAR = {
  // be, have, do
  am: 'be', is: 'be', are: 'be', was: 'be', were: 'be', been: 'be', being: 'be',
  has: 'have', had: 'have', having: 'have',
  does: 'do', did: 'do', done: 'do', doing: 'do',
  // động từ thường gặp
  said: 'say', went: 'go', gone: 'go', got: 'get', gotten: 'get', made: 'make',
  knew: 'know', known: 'know', thought: 'think', took: 'take', taken: 'take',
  saw: 'see', seen: 'see', came: 'come', gave: 'give', given: 'give',
  found: 'find', told: 'tell', became: 'become', left: 'leave', felt: 'feel',
  brought: 'bring', began: 'begin', begun: 'begin', kept: 'keep', held: 'hold',
  wrote: 'write', written: 'write', stood: 'stand', heard: 'hear', meant: 'mean',
  met: 'meet', ran: 'run', paid: 'pay', sat: 'sit', spoke: 'speak', spoken: 'speak',
  led: 'lead', grew: 'grow', grown: 'grow', lost: 'lose', fell: 'fall', fallen: 'fall',
  sent: 'send', built: 'build', understood: 'understand', drew: 'draw', drawn: 'draw',
  broke: 'break', broken: 'break', spent: 'spend', rose: 'rise', risen: 'rise',
  drove: 'drive', driven: 'drive', bought: 'buy', wore: 'wear', worn: 'wear',
  chose: 'choose', chosen: 'choose', threw: 'throw', thrown: 'throw',
  caught: 'catch', won: 'win', forgot: 'forget', forgotten: 'forget',
  ate: 'eat', eaten: 'eat', taught: 'teach', sold: 'sell', fought: 'fight',
  slept: 'sleep', drank: 'drink', drunk: 'drink', sang: 'sing', sung: 'sing',
  rang: 'ring', rung: 'ring', woke: 'wake', woken: 'wake', stole: 'steal',
  stolen: 'steal', rode: 'ride', ridden: 'ride', flew: 'fly', flown: 'fly',
  blew: 'blow', blown: 'blow', shone: 'shine', hid: 'hide', hidden: 'hide',
  bit: 'bite', bitten: 'bite', froze: 'freeze', frozen: 'freeze', hung: 'hang',
  shook: 'shake', shaken: 'shake', swept: 'sweep', fed: 'feed', lent: 'lend',
  swam: 'swim', swum: 'swim', laid: 'lay', lay: 'lie', lain: 'lie',
  // danh từ số nhiều bất quy tắc
  children: 'child', men: 'man', women: 'woman', feet: 'foot', teeth: 'tooth',
  mice: 'mouse', geese: 'goose', lives: 'life', knives: 'knife', leaves: 'leaf',
  wolves: 'wolf', wives: 'wife', shelves: 'shelf', halves: 'half',
  // so sánh bất quy tắc
  better: 'good', best: 'good', worse: 'bad', worst: 'bad',
  more: 'much', most: 'much', further: 'far', farther: 'far',
  // đại từ phản thân
  myself: 'i', yourself: 'you', yourselves: 'you', himself: 'he', herself: 'she',
  itself: 'it', ourselves: 'we', themselves: 'they',
  // viết tắt mà cắt đuôi không ra: "won't" không chứa chữ nào của "will"
  "won't": 'will', "shan't": 'shall', "ain't": 'be',
}

export function baseForms(w) {
  const out = [w]
  const add = (x) => {
    if (x.length >= 2 && !out.includes(x)) out.push(x)
  }

  // Quy dấu nháy cong ’ về nháy thẳng ' NGAY TỪ ĐẦU. Sách và văn bản đã qua
  // dàn trang gần như luôn dùng nháy cong, nên nếu không quy về một mối thì
  // "don’t" tra trượt. Phải làm trước khi tra IRREGULAR: bảng đó lưu khoá
  // nháy thẳng, bỏ bước này thì "won’t" rơi xuống lấy gốc "won" và ra "win".
  const nw = w.replace(/’/g, "'")
  if (nw !== w) add(nw)

  if (IRREGULAR[nw]) add(IRREGULAR[nw])

  // Dạng viết tắt: "don't" → do, "I'll" → i, "we're" → we.
  // GlossedText giữ nguyên dấu nháy trong một token nên nếu không bóc ở đây
  // thì mọi từ viết tắt đều tra trượt.
  const apos = nw.indexOf("'")
  if (apos > 0) {
    // Thử cả hai cách cắt vì chữ n có khi thuộc về đuôi phủ định, có khi thuộc
    // về chính từ gốc:  don't → do  nhưng  can't → can.
    const stems = [nw.slice(0, apos)]
    if (nw.endsWith("n't")) stems.push(nw.slice(0, -3))
    for (const s of stems) {
      // Bỏ qua chốt chặn độ dài: gốc của "I'll" là "i" — từ có thật trong kho,
      // chốt >= 2 sẽ loại oan.
      if (s && !out.includes(s)) out.push(s)
      if (IRREGULAR[s]) add(IRREGULAR[s])
    }
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
