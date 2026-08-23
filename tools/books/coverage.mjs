// Do do phu tu vung cua sach, dung DUNG ham tra tu ma app dang chay.
// Ban Python song song truoc day de bi lech voi app; goi thang glossLookup.js
// thi con so do duoc chinh la con so nguoi hoc nhin thay.
//
// Chay:  node tools/books/coverage.mjs
import fs from 'node:fs'
import path from 'node:path'
import { lookup } from '../../src/utils/glossLookup.js'

const HERE = path.dirname(new URL(import.meta.url).pathname.replace(/^\/([A-Za-z]:)/, '$1'))
const CACHE = path.join(HERE, 'cache')

const words = fs.readFileSync(path.join(HERE, 'dict_cache.txt'), 'utf8').split(/\s+/).filter(Boolean)
const dict = new Map(words.map((w) => [w, { word: w }]))

const BOOKS = [
  [11, 'Alice in Wonderland'],
  [1342, 'Pride and Prejudice'],
  [84, 'Frankenstein'],
  [46, 'A Christmas Carol'],
  [64317, 'The Great Gatsby'],
  [1661, 'Sherlock Holmes'],
  [215, 'The Call of the Wild'],
  [11339, "Aesop's Fables"],
]

function body(gid) {
  const t = fs.readFileSync(path.join(CACHE, `${gid}.txt`), 'utf8').replace(/\r\n?/g, '\n')
  const a = t.match(/\*\*\*\s*START OF TH[EI]S? PROJECT GUTENBERG[\s\S]*?\*\*\*/)
  const b = t.match(/\*\*\*\s*END OF TH[EI]S? PROJECT GUTENBERG[\s\S]*?\*\*\*/)
  return a && b ? t.slice(a.index + a[0].length, b.index) : t
}

console.log('Tac pham                       So tu    Phu   Ten rieng   Con thieu')
console.log('-'.repeat(70))

for (const [gid, name] of BOOKS) {
  if (!fs.existsSync(path.join(CACHE, `${gid}.txt`))) continue
  // Tach y het GlossedText: giu dau nhay trong tu ("don't" la MOT token)
  const toks = body(gid).match(/[A-Za-z][A-Za-z'-]*/g) ?? []
  const lowerSeen = new Set(toks.filter((w) => w === w.toLowerCase()).map((w) => w.toLowerCase()))

  let hit = 0, names = 0, miss = 0
  for (const w of toks) {
    if (lookup(dict, w.toLowerCase())) hit++
    else if (w[0] === w[0].toUpperCase() && !lowerSeen.has(w.toLowerCase())) names++
    else miss++
  }
  const p = (n) => ((100 * n) / toks.length).toFixed(1).padStart(5) + '%'
  console.log(name.padEnd(28) + String(toks.length).padStart(8) + p(hit) + p(names).padStart(11) + p(miss).padStart(11))
}

console.log('\nPhu       = tra chuot ra nghia')
console.log('Ten rieng = ten nhan vat, khong can dich')
console.log('Con thieu = re chuot vao khong hien gi')
