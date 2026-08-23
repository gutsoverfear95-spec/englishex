# -*- coding: utf-8 -*-
"""
Do do kho cua cac tac pham kinh dien (Project Gutenberg) doi voi nguoi hoc.

Ba con so quan trong:
  - do phu:  % tu trong sach nam trong kho 1920 tu cua app (tra chuot ra nghia)
  - cau dai: so tu trung binh moi cau  (van co dai -> cau rat dai)
  - chuong:  so chuong va so tu moi chuong -> co vua mot bai doc khong

Chay:  python tools/books/analyze.py
"""
import json
import os
import re
import statistics
import time
import urllib.request

ENV = os.path.join(os.path.dirname(__file__), "..", "..", ".env.local")

# Chi lay sach da het ban quyen (public domain) tren Project Gutenberg.
BOOKS = [
    (11339, "Aesop's Fables",            "Aesop",          -600),
    (215,   "The Call of the Wild",      "Jack London",    1903),
    (11,    "Alice in Wonderland",       "Lewis Carroll",  1865),
    (46,    "A Christmas Carol",         "Charles Dickens",1843),
    (1661,  "The Adventures of Sherlock Holmes", "Conan Doyle", 1892),
    (64317, "The Great Gatsby",          "F. Scott Fitzgerald", 1925),
    (1342,  "Pride and Prejudice",       "Jane Austen",    1813),
    (84,    "Frankenstein",              "Mary Shelley",   1818),
]


CACHE = os.path.join(os.path.dirname(__file__), "dict_cache.txt")


def load_dictionary():
    """Doc kho tu tu file cache.

    KHONG keo duoc bang anon key: RLS cua bang words chi mo cho vai tro
    `authenticated`, nen PostgREST tra ve mang rong (HTTP 200, body []).
    Trong app thi van chay vi luc do nguoi dung da dang nhap.
    Cache tao bang:  select string_agg(distinct lower(word), ' ') from words;
    """
    return set(open(CACHE, encoding="utf-8").read().split())


# Rut ve dang goc, giong utils/glossLookup.js: companies -> company, running -> run
def base_forms(w):
    out = [w]
    if w.endswith("ies") and len(w) > 4:
        out.append(w[:-3] + "y")
    if w.endswith("es") and len(w) > 3:
        out.append(w[:-2])
    if w.endswith("s") and not w.endswith("ss"):
        out.append(w[:-1])
    if w.endswith("ed") and len(w) > 3:
        out += [w[:-2], w[:-1], w[:-3]]
    if w.endswith("ing") and len(w) > 4:
        out += [w[:-3], w[:-3] + "e", w[:-4]]
    if w.endswith("ly") and len(w) > 3:
        out.append(w[:-2])
    if w.endswith("er") and len(w) > 3:
        out += [w[:-2], w[:-1]]
    if w.endswith("est") and len(w) > 4:
        out += [w[:-3], w[:-2]]
    if w.endswith("y") and len(w) > 3:
        out.append(w[:-1] + "ie")
    return out


CACHE_DIR = os.path.join(os.path.dirname(__file__), "cache")


def fetch(gid):
    """Tai sach, luu ra dia. Gutenberg chan bot khi tai don nhieu cuon lien
    tiep, nen phai co cache + thu lai, khong thi vai cuon se rot giua chung."""
    path = os.path.join(CACHE_DIR, f"{gid}.txt")
    if os.path.exists(path):
        return open(path, encoding="utf-8").read()

    os.makedirs(CACHE_DIR, exist_ok=True)
    urls = [f"https://www.gutenberg.org/cache/epub/{gid}/pg{gid}.txt",
            f"https://www.gutenberg.org/files/{gid}/{gid}-0.txt",
            f"https://www.gutenberg.org/ebooks/{gid}.txt.utf-8"]
    for attempt in range(3):
        for u in urls:
            try:
                req = urllib.request.Request(u, headers={"User-Agent": "Mozilla/5.0"})
                t = urllib.request.urlopen(req, timeout=120).read().decode("utf-8", "replace")
                open(path, "w", encoding="utf-8").write(t)
                return t
            except Exception:
                continue
        time.sleep(5 * (attempt + 1))
    return None


def strip_license(t):
    """Bo phan giay phep dau/cuoi, chi giu than sach."""
    # Cac ban tai ve tu Gutenberg tron ca CRLF lan LF. Neu con \r thi bieu thuc
    # tim tieu de chuong (ket thuc bang `[ \t]*$`) khong khop -> ca cuon bi coi
    # la MOT chuong. Chuan hoa truoc moi viec khac.
    t = t.replace("\r\n", "\n").replace("\r", "\n")
    a = re.search(r"\*\*\*\s*START OF TH[EI]S? PROJECT GUTENBERG.*?\*\*\*", t, re.S)
    b = re.search(r"\*\*\*\s*END OF TH[EI]S? PROJECT GUTENBERG.*?\*\*\*", t, re.S)
    return t[a.end():b.start()] if a and b else t


# Moi sach danh so chuong mot kieu: "CHAPTER I", "STAVE ONE" (A Christmas
# Carol), "I. A SCANDAL IN BOHEMIA" (Holmes), hay chi moi so La Ma dung mot
# minh (The Great Gatsby). Gom het vao mot bieu thuc, khop CA DONG.
WORD_NUM = r"(?:[IVXLCDM]+|\d+|ONE|TWO|THREE|FOUR|FIVE|SIX|SEVEN|EIGHT|NINE|TEN|ELEVEN|TWELVE)"
HEADING = re.compile(
    r"^[ \t]*(?:"
    rf"(?:CHAPTER|Chapter|STAVE|Stave|LETTER|Letter|PART|Part|BOOK|Book|ADVENTURE|Adventure)\s+{WORD_NUM}\b[^\n]*"
    rf"|{WORD_NUM}\.[ \t]+[A-Z][A-Z0-9 \-',\.]{{4,}}"   # I. A SCANDAL IN BOHEMIA
    rf"|[IVXLCDM]{{1,7}}\.?[ \t]*"                       # so La Ma dung mot minh
    r")[ \t]*$",
    re.M,
)


def split_chapters(body):
    parts = HEADING.split(body)
    return [p for p in parts if len(p.split()) > 200]


def analyse(body, dic):
    tokens = re.findall(r"[A-Za-z][A-Za-z']*", body)
    known = sum(1 for w in tokens
                if any(b in dic for b in base_forms(w.lower())))
    sents = [s for s in re.split(r"[.!?]+", body) if len(s.split()) > 2]
    chaps = split_chapters(body)
    cw = [len(c.split()) for c in chaps]
    return {
        "words": len(tokens),
        "coverage": 100.0 * known / len(tokens) if tokens else 0,
        "sent_len": statistics.mean(len(s.split()) for s in sents) if sents else 0,
        "chapters": len(chaps),
        "chap_median": int(statistics.median(cw)) if cw else 0,
        "chap_max": max(cw) if cw else 0,
    }


def main():
    print("Dang tai kho tu vung tu Supabase...")
    dic = load_dictionary()
    print(f"  -> {len(dic)} tu\n")

    hdr = f"{'Tac pham':<38}{'Nam':>6}{'So tu':>9}{'Phu':>7}{'Cau':>6}{'Chuong':>8}{'Tu/chuong':>11}"
    print(hdr)
    print("-" * len(hdr))

    rows = []
    for gid, title, author, year in BOOKS:
        raw = fetch(gid)
        if not raw:
            print(f"{title:<38}  KHONG TAI DUOC")
            continue
        r = analyse(strip_license(raw), dic)
        rows.append((title, author, year, r))
        print(f"{title[:37]:<38}{year:>6}{r['words']:>9,}"
              f"{r['coverage']:>6.1f}%{r['sent_len']:>6.0f}"
              f"{r['chapters']:>8}{r['chap_median']:>11,}")

    print("\nPhu     = % tu trong sach tra duoc nghia trong app")
    print("Cau     = so tu trung binh moi cau (cang cao cang kho theo)")
    print("Tu/chuong = trung vi; ~2000 la vua mot bai doc chia doi man hinh")


if __name__ == "__main__":
    main()
