# -*- coding: utf-8 -*-
"""
Nhap mot tac pham tu Project Gutenberg thanh cac chuong, xuat ra file SQL.

Chi lay sach DA HET BAN QUYEN (public domain).

Quy trinh:  tai -> bo giay phep -> tach chuong -> cat chuong qua dai
            -> KIEM TRA -> xuat SQL

Phan kiem tra la quan trong nhat: neu bieu thuc tim tieu de chuong hong
(chuyen xay ra, moi sach danh so mot kieu) thi ket qua se la "mot chuong
100k tu" hoac "300 chuong vun". Script phai bao loi chu khong duoc lang le
xuat ra SQL sai.

Chay:  python tools/books/import_book.py
"""
import hashlib
import os
import re
import statistics

from analyze import fetch, strip_license, WORD_NUM

OUT_DIR = os.path.join(os.path.dirname(__file__), "..", "..", "supabase")

# Chuong dai hon nguong nay se bi cat lam nhieu phan tai ranh gioi doan van.
# 3500 tu la khoang doc mot mach duoc; tren nua thi vua met vua nang trinh duyet.
MAX_WORDS = 3500
MIN_WORDS = 150

BOOKS = [
    dict(gid=11, slug="alice-in-wonderland", title="Alice's Adventures in Wonderland",
         author="Lewis Carroll", year=1865, level="B1", emoji="🐰", order=1,
         blurb="Cô bé Alice rơi xuống hang thỏ và lạc vào một thế giới phi lý. "
               "Câu ngắn, lời thoại nhiều, dễ đọc nhất trong bốn cuốn."),
    dict(gid=1661, slug="sherlock-holmes", title="The Adventures of Sherlock Holmes",
         author="Arthur Conan Doyle", year=1892, level="B2", emoji="🔍", order=2,
         blurb="Mười hai vụ án độc lập của thám tử Sherlock Holmes. "
               "Đọc lẻ từng truyện được, không cần nhớ cốt truyện dài."),
    dict(gid=64317, slug="the-great-gatsby", title="The Great Gatsby",
         author="F. Scott Fitzgerald", year=1925, level="B2", emoji="🥂", order=3,
         blurb="Nước Mỹ những năm 1920 nhìn qua mắt một người hàng xóm của Gatsby. "
               "Tiếng Anh hiện đại, câu ngắn, nhưng nhiều ẩn dụ."),
    dict(gid=1342, slug="pride-and-prejudice", title="Pride and Prejudice",
         author="Jane Austen", year=1813, level="C1", emoji="💐", order=4,
         blurb="Elizabeth Bennet và ông Darcy. Văn 1813, câu dài và trang trọng — "
               "khó nhất trong bốn cuốn, nên để dành."),
]


def uid(*parts):
    """UUID tat dinh tu chuoi -> chay lai file SQL khong tao ban trung."""
    h = hashlib.sha1("|".join(str(p) for p in parts).encode()).hexdigest()
    return f"{h[:8]}-{h[8:12]}-4{h[13:16]}-a{h[17:20]}-{h[20:32]}"


ROMAN = re.compile(r"^[IVXLCDM]+$", re.I)
# "Chapter I", "II", "Stave 3" — tuc la tieu de MOI CHI CO SO, chua co ten
ONLY_NUMBER = re.compile(r"(?:Chapter|Stave|Letter|Part|Book|Adventure)?\s*[IVXLCDM\d]+",
                         re.I)
SMALL = {"a", "an", "the", "of", "in", "on", "at", "to", "and", "or", "for",
         "with", "from", "by", "as", "but", "nor"}


def smart_title(s):
    """Viet hoa dau tu, NHUNG giu nguyen so La Ma.

    str.title() bien "CHAPTER II" thanh "Chapter Ii" va
    "XII. THE ADVENTURE OF THE COPPER BEECHES" thanh "Xii. The Adventure Of The
    Copper Beeches" — sai ca so La Ma lan gioi tu.
    """
    s = re.sub(r"[\[\]]", "", s).strip()          # sot ngoac vuong
    s = re.sub(r"\s+", " ", s).rstrip(". ")
    out = []
    start = True          # dau tieu de, hoac ngay sau mot dau cham
    for w in s.split(" "):
        core = w.rstrip(".,:;")
        tail = w[len(core):]
        if ROMAN.match(core):
            out.append(core.upper() + tail)
        elif not start and core.lower() in SMALL:
            out.append(core.lower() + tail)
        else:
            out.append(core[:1].upper() + core[1:].lower() + tail)
        # "XII. The Adventure..." — chu sau dau cham la chu dau cua ten truyen,
        # khong duoc ha thanh chu thuong du no nam trong nhom gioi tu.
        start = tail.startswith(".")
    return " ".join(out)


# Ban in cu hay dinh thong tin nha in o cuoi sach, viet HOA TOAN BO.
COLOPHON = re.compile(r"\n[^\n]*\b(?:PRINTED BY|CHISWICK PRESS|WHITTINGHAM|"
                      r"TRANSCRIBER|ETEXT|E-TEXT)\b[\s\S]*$", re.I)


def clean(t):
    """Bo chu thich cua nguoi so hoa, gom dong trong lien tiep."""
    # Dung [^\]]* thi hong khi trong ngoac lai co ngoac long nhau; lap den het.
    for _ in range(3):
        t2 = re.sub(r"\[(?:Illustration|Sidenote)[^\[\]]*\]", "", t)
        if t2 == t:
            break
        t = t2
    t = re.sub(r"\[(?:Illustration|Sidenote)[\s\S]{0,400}?\]", "", t)
    t = COLOPHON.sub("", t)
    t = re.sub(r"^[ \t]*[\[\]][ \t]*$", "", t, flags=re.M)   # dong chi co ngoac
    t = re.sub(r"\n{3,}", "\n\n", t)
    return t.strip().strip("[] \n")


def split_long(text, cap=MAX_WORDS):
    """Cat mot chuong qua dai thanh nhieu phan, luon cat o ranh gioi DOAN VAN
    de khong dut giua chung mot cau."""
    paras = [p for p in text.split("\n\n") if p.strip()]
    total = sum(len(p.split()) for p in paras)
    if total <= cap:
        return [text]

    n_parts = -(-total // cap)          # lam tron len
    target = total / n_parts            # chia deu, tranh phan cuoi te nhat
    out, cur, cur_w = [], [], 0
    for p in paras:
        pw = len(p.split())
        if cur and cur_w + pw > target and len(out) < n_parts - 1:
            out.append("\n\n".join(cur))
            cur, cur_w = [], 0
        cur.append(p)
        cur_w += pw
    if cur:
        out.append("\n\n".join(cur))
    return out


# Ba kieu danh dau chuong, xet theo thu tu uu tien. Khong the dung chung mot
# bieu thuc cho ca ba: trong Sherlock Holmes, moi truyen la mot dong VIET HOA
# ("II. THE RED-HEADED LEAGUE"), nhung rieng truyen dau lai chia phan bang
# "I." "II." "III." tron. Neu gom lam mot thi ba phan cua truyen dau bi tinh
# thanh ba truyen rieng, va bieu thuc con nuot mat truyen IX.
_KEYWORD = re.compile(
    rf"^[ \t]*(?:CHAPTER|Chapter|STAVE|Stave|LETTER|Letter|PART|Part|BOOK|Book)"
    rf"\s+{WORD_NUM}\b[^\n]*$", re.M)
_TITLED = re.compile(r"^[ \t]*[IVXLCDM]{1,7}\.[ \t]+[A-Z][A-Z0-9 \-'’,\.]{4,}$", re.M)
_BARE = re.compile(r"^[ \t]*[IVXLCDM]{1,7}\.?[ \t]*$", re.M)


def pick_pattern(body):
    """Chon kieu tieu de ma sach nay thuc su dung."""
    for pat in (_KEYWORD, _TITLED, _BARE):
        if len(pat.findall(body)) >= 3:
            return pat
    return None


def extract(body):
    """Tra ve [(tieu_de, noi_dung), ...] theo dung thu tu trong sach."""
    pat = pick_pattern(body)
    if not pat:
        return []
    # Cat theo tieu de nhung GIU lai tieu de: dung finditer chu khong dung split
    marks = list(pat.finditer(body))
    if not marks:
        return []

    chunks = []
    for i, m in enumerate(marks):
        end = marks[i + 1].start() if i + 1 < len(marks) else len(body)
        head = smart_title(m.group(0))
        text = clean(body[m.end():end])

        # Alice de so chuong mot dong, TEN chuong o dong ke tiep. Khong boc ra
        # thi ten chuong bi doc thanh cau dau tien cua bai.
        #
        # Nguong phai RAT chat. Ban nong tay truoc day nuot mat cau mo dau cua
        # P&P ("It is a truth universally acknowledged, that a single man in
        # possession" — 71 ky tu, 12 tu, khong ket thuc bang dau cham) vi no
        # trong y het mot tieu de. Gio chan bang do dai + so tu + dau phay.
        if ONLY_NUMBER.fullmatch(head):
            # Ten chuong co the cach phan than bang mot dong trong HOAC chi mot
            # lan xuong dong, tuy sach — nen xet dong dau tien, khong phai doan
            # dau tien.
            first, _, rest = text.partition("\n")
            first = " ".join(first.split())
            if (first and len(first) <= 60 and len(first.split()) <= 8
                    and "," not in first
                    # Cho phep ? va ! vi ten chuong hay dat kieu "Who Stole the
                    # Tarts?"; nhung dau cham va dau dong ngoac kep thi chac
                    # chan la cau van, khong phai tieu de.
                    and not first.endswith((".", "”", '"', "’"))):
                head = f"{head}. {smart_title(first)}"
                text = rest.strip()

        if len(text.split()) >= MIN_WORDS:
            chunks.append((head, text))
    return chunks


def check(slug, chapters, source_words=None):
    """Chan nhung kieu hong hay gap. Tra ve danh sach loi."""
    errs = []

    # Chot chan MAT CHU. Da tung co bug lang le cat cau dau moi chuong ma moi
    # kiem tra khac van xanh — chi doc tan mat moi thay. Gio thi dem.
    if source_words:
        got = sum(len(c["content"].split()) for c in chapters)
        keep = 100.0 * got / source_words
        if keep < 90:
            errs.append(f"chi giu lai {keep:.1f}% so tu goc — dang mat noi dung")

    if len(chapters) < 3:
        errs.append(f"chi tach duoc {len(chapters)} chuong — bieu thuc tieu de hong")

    ws = [len(c["content"].split()) for c in chapters]
    if not ws:
        return ["khong co chuong nao"]

    if max(ws) > MAX_WORDS * 1.35:
        errs.append(f"co chuong {max(ws)} tu, vuot nguong {MAX_WORDS} — chua cat")
    if min(ws) < MIN_WORDS:
        errs.append(f"co chuong chi {min(ws)} tu — co the la rac")

    # So thu tu phai lien tuc 1..n
    nums = [c["number"] for c in chapters]
    if nums != list(range(1, len(nums) + 1)):
        errs.append("so thu tu chuong khong lien tuc")

    # Con sot chu ky Gutenberg trong noi dung?
    for c in chapters:
        if "PROJECT GUTENBERG" in c["content"].upper():
            errs.append(f"chuong {c['number']} con sot van ban giay phep")
            break

    # Noi dung trung nhau => tach sai
    if len({c["content"][:200] for c in chapters}) < len(chapters):
        errs.append("co chuong trung noi dung")
    return errs


def sql_str(s):
    return "'" + s.replace("'", "''") + "'"


def build(book):
    raw = fetch(book["gid"])
    if not raw:
        raise SystemExit(f"khong tai duoc sach {book['gid']}")
    body = strip_license(raw)

    chapters, n = [], 0
    for head, text in extract(body):
        parts = split_long(text)
        for i, part in enumerate(parts):
            n += 1
            title = head if len(parts) == 1 else f"{head} ({i + 1}/{len(parts)})"
            chapters.append(dict(
                number=n, title=title[:200], content=part,
                word_count=len(part.split()),
            ))
    return chapters


def main():
    all_sql = []
    print(f"{'Sach':<36}{'Chuong':>8}{'Tong tu':>10}{'Tu/chuong':>11}{'Dai nhat':>10}")
    print("-" * 75)

    failed = False
    for b in BOOKS:
        ch = build(b)
        src = len(strip_license(fetch(b["gid"])).split())
        errs = check(b["slug"], ch, src)
        ws = [c["word_count"] for c in ch]
        print(f"{b['slug']:<36}{len(ch):>8}{sum(ws):>10,}"
              f"{int(statistics.median(ws)):>11,}{max(ws):>10,}")
        if errs:
            failed = True
            for e in errs:
                print(f"    LOI: {e}")
            continue

        bid = uid("book", b["slug"])
        rows = [
            f"insert into public.books "
            f"(id, slug, title, author, year, level, blurb, cover_emoji, "
            f"word_count, chapter_count, gutenberg_id, sort_order) values\n"
            f"  ('{bid}', {sql_str(b['slug'])}, {sql_str(b['title'])}, "
            f"{sql_str(b['author'])}, {b['year']}, {sql_str(b['level'])}, "
            f"{sql_str(b['blurb'])}, {sql_str(b['emoji'])}, "
            f"{sum(ws)}, {len(ch)}, {b['gid']}, {b['order']})\n"
            f"on conflict (id) do update set "
            f"word_count = excluded.word_count, "
            f"chapter_count = excluded.chapter_count, "
            f"blurb = excluded.blurb;"
        ]
        for c in ch:
            cid = uid("chap", b["slug"], c["number"])
            rows.append(
                f"insert into public.book_chapters "
                f"(id, book_id, number, title, content, word_count) values\n"
                f"  ('{cid}', '{bid}', {c['number']}, {sql_str(c['title'])}, "
                f"{sql_str(c['content'])}, {c['word_count']})\n"
                f"on conflict (book_id, number) do update set "
                f"title = excluded.title, content = excluded.content, "
                f"word_count = excluded.word_count;"
            )
        all_sql.append(f"-- ===== {b['title']} — {b['author']} ({b['year']}) =====\n"
                       f"-- Nguon: Project Gutenberg #{b['gid']} (public domain)\n"
                       + "\n".join(rows))

    if failed:
        raise SystemExit("\nCO LOI — khong xuat SQL.")

    head = (
        "-- ============================================================\n"
        "-- NOI DUNG SACH — sinh tu tools/books/import_book.py, dung sua tay\n"
        "--\n"
        "-- Tat ca tac pham deu DA HET BAN QUYEN (public domain), lay tu\n"
        "-- Project Gutenberg. Chay books_schema.sql TRUOC file nay.\n"
        "-- An toan chay lai nhieu lan (uuid tat dinh + on conflict).\n"
        "-- ============================================================\n\n"
    )
    out = os.path.join(OUT_DIR, "books_content.sql")
    with open(out, "w", encoding="utf-8") as f:
        f.write(head + "\n\n".join(all_sql) + "\n")
    print(f"\n-> {out}  ({os.path.getsize(out) / 1e6:.1f} MB)")


if __name__ == "__main__":
    main()
