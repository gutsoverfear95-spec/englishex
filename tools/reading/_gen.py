# -*- coding: utf-8 -*-
"""
Sinh SQL cho module DOC theo thang CEFR (A1-C2).

Moi file rNN_<level>.py khai bao:
    LEVEL   = "B1"
    START   = 1          # so thu tu bat dau trong cap do do
    LESSONS = [ dict(title=, desc=, passage=, questions=[...]), ... ]

questions: list cac tuple
    ("mc", cau_hoi, [4 lua chon], dap_an_dung, giai_thich)
    ("tf", nhan_dinh,  None,       "true"/"false", giai_thich)

Chay: python _gen.py
"""
import glob, importlib.util, os, re, sys

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = r"D:\CODE\english\supabase\reading_lessons.sql"

# So tu ky vong cua doan van theo cap do — de canh bao neu bai qua ngan/dai
WORD_RANGE = {
    "A1": (60, 120), "A2": (100, 170), "B1": (150, 230),
    "B2": (200, 300), "C1": (260, 380), "C2": (300, 450),
}
LEVEL_ORDER = {"A1": 1, "A2": 2, "B1": 3, "B2": 4, "C1": 5, "C2": 6}


def load():
    mods = []
    for p in sorted(glob.glob(os.path.join(HERE, "r[0-9][0-9]_*.py"))):
        spec = importlib.util.spec_from_file_location(os.path.basename(p)[:-3], p)
        m = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(m)
        mods.append(m)
    return mods


def q(s):
    if s is None:
        return "null"
    s = str(s).strip()
    return "null" if not s else "'" + s.replace("'", "''") + "'"


def jsonarr(items):
    """Mang JSON cho cot options (jsonb)."""
    inner = ", ".join('"' + i.replace('\\', '\\\\').replace('"', '\\"') + '"' for i in items)
    return q("[" + inner + "]")


def glossjson(pairs):
    """Cot glossary dang jsonb: [{"term": ..., "vi": ...}]"""
    if not pairs:
        return "null"
    esc = lambda x: x.replace("\\", "\\\\").replace('"', '\\"')
    body = ", ".join('{"term": "%s", "vi": "%s"}' % (esc(t), esc(v)) for t, v in pairs)
    return q("[" + body + "]")


def pgarr(items):
    return "array[" + ", ".join(q(i) for i in items) + "]"


def lesson_id(level, n):
    return f"b{LEVEL_ORDER[level]}000000-0000-4000-8000-{n:012d}"


def main():
    mods = load()
    if not mods:
        sys.exit("Chua co file rNN_*.py nao.")

    problems, lessons = [], []
    seen_titles = set()
    for m in mods:
        lo, hi = WORD_RANGE[m.LEVEL]
        for i, L in enumerate(m.LESSONS):
            n = m.START + i
            title = L["title"]
            if title.lower() in seen_titles:
                problems.append(f"trung tieu de: {title}")
            seen_titles.add(title.lower())

            nwords = len(L["passage"].split())
            if not (lo <= nwords <= hi):
                problems.append(f"{title}: doan van {nwords} tu, ngoai khoang {lo}-{hi} cua {m.LEVEL}")
            for term, vi in L.get("gloss", []):
                if term.lower() not in L["passage"].lower():
                    problems.append(f"{title}: cum '{term}' khong co trong doan van")
                if not vi.strip():
                    problems.append(f"{title}: cum '{term}' thieu nghia tieng Viet")
            if len(L["questions"]) < 4:
                problems.append(f"{title}: chi co {len(L['questions'])} cau hoi, can >= 4")

            for j, qu in enumerate(L["questions"], start=1):
                kind, prompt, opts, ans, expl = qu
                if kind == "mc":
                    if not opts or len(opts) != 4:
                        problems.append(f"{title} c{j}: trac nghiem phai co dung 4 lua chon")
                        continue
                    if len(set(opts)) != 4:
                        problems.append(f"{title} c{j}: co lua chon bi lap")
                    # dap an dung BUOC phai nam trong danh sach lua chon
                    if ans not in opts:
                        problems.append(f"{title} c{j}: dap an '{ans}' khong co trong lua chon")
                elif kind == "tf":
                    if ans not in ("true", "false"):
                        problems.append(f"{title} c{j}: dap an dung/sai phai la true hoac false")
                    if opts is not None:
                        problems.append(f"{title} c{j}: cau dung/sai khong duoc co lua chon")
                else:
                    problems.append(f"{title} c{j}: loai cau hoi la '{kind}'")
                if not prompt.strip() or not str(ans).strip():
                    problems.append(f"{title} c{j}: cau hoi hoac dap an bi trong")
                if not expl or not expl.strip():
                    problems.append(f"{title} c{j}: thieu giai thich")

            lessons.append((m.LEVEL, n, L, nwords))

    if problems:
        print("== VAN DE ==")
        for p in problems[:40]:
            print(" !!", p)
        sys.exit(f"\nDung lai: {len(problems)} van de.")

    out = []
    lv = sorted({l[0] for l in lessons}, key=lambda x: LEVEL_ORDER[x])
    out.append("-- ============================================================================")
    out.append(f"-- MODULE DOC theo thang CEFR — {len(lessons)} bai ({', '.join(lv)})")
    out.append("-- Chay thang file nay la du. An toan chay lai nhieu lan.")
    out.append("-- ============================================================================")
    out.append("")
    out.append("-- 1. CHO PHEP CAP DO CEFR")
    out.append("--    Bang lessons dang khoa cung level o 3 gia tri cu nen chen 'B1' se loi.")
    out.append("--    Noi long rang buoc, van giu 3 gia tri cu de cac bai da co khong hong.")
    out.append("alter table public.lessons drop constraint if exists lessons_level_check;")
    out.append("alter table public.lessons add constraint lessons_level_check")
    out.append("  check (level in ('beginner','intermediate','advanced','A1','A2','B1','B2','C1','C2'));")
    out.append("")
    out.append("-- 2. CHU THICH CUM TU RIENG CUA TUNG BAI (hover ra nghia)")
    out.append("--    Tu don da duoc tra tu dong tu kho tu vung; cot nay chi danh cho")
    out.append("--    cum tu va thuat ngu ma tu dien khong co.")
    out.append("alter table public.lessons add column if not exists glossary jsonb;")
    out.append("")
    out.append("-- 3. XOA BAI CU CUNG ID roi chen lai (de chay lai file nay luon cap nhat)")
    ids = ", ".join("'" + lesson_id(lv_, n) + "'" for lv_, n, _, _ in lessons)
    out.append(f"delete from public.lessons where id in ({ids});")
    out.append("")
    out.append("-- 4. BAI DOC")
    out.append("insert into public.lessons (id, skill, title, description, level, content, glossary, order_index) values")
    rows = []
    for lv_, n, L, _ in lessons:
        rows.append(f"('{lesson_id(lv_, n)}', 'reading', {q(L['title'])}, {q(L['desc'])}, "
                    f"'{lv_}', {q(L['passage'])}, {glossjson(L.get('gloss', []))}, "
                    f"{LEVEL_ORDER[lv_]*100 + n})")
    out.append(",\n".join(rows) + ";")
    out.append("")
    out.append("-- 5. CAU HOI")
    out.append("insert into public.exercises (lesson_id, type, prompt, options, accepted_answers, explanation, order_index) values")
    erows = []
    for lv_, n, L, _ in lessons:
        lid = lesson_id(lv_, n)
        for j, (kind, prompt, opts, ans, expl) in enumerate(L["questions"], start=1):
            etype = "multiple_choice" if kind == "mc" else "true_false"
            erows.append(f"('{lid}', '{etype}', {q(prompt)}, "
                         f"{jsonarr(opts) if opts else 'null'}, {pgarr([ans])}, {q(expl)}, {j})")
    out.append(",\n".join(erows) + ";")
    out.append("")

    open(OUT, "w", encoding="utf-8").write("\n".join(out))
    nq = sum(len(L["questions"]) for _, _, L, _ in lessons)
    avg = sum(w for *_, w in lessons) / len(lessons)
    print(f"Bai doc: {len(lessons)}  |  Cau hoi: {nq}  |  Do dai TB: {avg:.0f} tu")
    for lv_ in lv:
        c = [x for x in lessons if x[0] == lv_]
        print(f"  {lv_}: {len(c)} bai")
    print("->", OUT)


if __name__ == "__main__":
    main()
