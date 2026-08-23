# -*- coding: utf-8 -*-
"""
Gop cac dot gloss_XX.py thanh supabase/books_words.sql.

Kiem tra truoc khi xuat — moi loi duoi day deu tung xay ra that o cac dot
sinh du lieu truoc:
  - tu trung nhau giua cac dot
  - tu DA CO trong bang words (them vao chi lam thua, khong bao gio duoc dung
    vi loadDictionary uu tien bang words)
  - tu khong he xuat hien trong sach nao (dich nham, phi cong)
  - nghia bo trong hoac dai qua muc doc luot

Chay:  python tools/books/gen_gloss.py
"""
import importlib
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
OUT = os.path.join(HERE, "..", "..", "supabase", "books_words.sql")

BATCHES = ["gloss_01"]
BOOK_IDS = [11, 1661, 64317, 1342]


def load_batches():
    """Tra ve (tu -> nghia, danh sach loi trung lap)."""
    words, dupes = {}, []
    for name in BATCHES:
        mod = importlib.import_module(name)
        for w, m in mod.WORDS.items():
            if w in words:
                dupes.append(w)
            words[w] = m
    return words, dupes


def book_vocabulary():
    """Tap hop moi tu xuat hien trong 4 cuon sach."""
    seen = set()
    for gid in BOOK_IDS:
        path = os.path.join(HERE, "cache", f"{gid}.txt")
        if not os.path.exists(path):
            continue
        t = open(path, encoding="utf-8").read()
        seen.update(m.lower() for m in re.findall(r"[A-Za-z][A-Za-z']*", t))
    return seen


def main():
    words, dupes = load_batches()
    base = set(open(os.path.join(HERE, "dict_cache.txt"), encoding="utf-8").read().split())
    in_books = book_vocabulary()

    errs = []
    if dupes:
        errs.append(f"tu trung giua cac dot: {', '.join(sorted(set(dupes))[:10])}")

    overlap = sorted(w for w in words if w in base)
    if overlap:
        errs.append(f"{len(overlap)} tu DA CO trong bang words, them vao la thua: "
                    f"{', '.join(overlap[:10])}")

    if in_books:
        absent = sorted(w for w in words if w not in in_books)
        if absent:
            errs.append(f"{len(absent)} tu khong xuat hien trong sach nao: "
                        f"{', '.join(absent[:10])}")

    bad_shape = [w for w in words if not re.fullmatch(r"[a-z][a-z-]*", w)]
    if bad_shape:
        errs.append(f"tu sai dinh dang (phai viet thuong): {bad_shape[:10]}")

    empty = [w for w, m in words.items() if not m.strip()]
    if empty:
        errs.append(f"nghia bo trong: {empty[:10]}")

    too_long = [w for w, m in words.items() if len(m) > 90]
    if too_long:
        errs.append(f"nghia dai qua, doc luot khong kip: {too_long[:10]}")

    print(f"Tong: {len(words)} tu")
    if errs:
        for e in errs:
            print("  LOI:", e)
        raise SystemExit("\nCO LOI — khong xuat SQL.")
    print("Kiem tra: OK")

    rows = ",\n".join(
        "  ('{}', '{}')".format(w, m.replace("'", "''"))
        for w, m in sorted(words.items())
    )
    sql = (
        "-- ============================================================\n"
        "-- TU KHO TRONG TRUYEN KINH DIEN — sinh tu tools/books/gen_gloss.py\n"
        "--\n"
        "-- Nhung tu KHONG co trong bang words (giao trinh hoc tu vung) nhung\n"
        "-- gap lien tuc khi doc truyen. Tach bang rieng de khong lam loang\n"
        "-- cac khoa hoc tu vung.\n"
        "--\n"
        "-- Chay books_schema.sql TRUOC file nay. An toan chay lai nhieu lan.\n"
        "-- ============================================================\n\n"
        "insert into public.book_words (word, meaning) values\n"
        f"{rows}\n"
        "on conflict (word) do update set meaning = excluded.meaning;\n"
    )
    with open(OUT, "w", encoding="utf-8") as f:
        f.write(sql)
    print(f"-> {os.path.normpath(OUT)}")


if __name__ == "__main__":
    main()
