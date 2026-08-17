# -*- coding: utf-8 -*-
"""
Sinh SQL cho khoa "1000 Tu vung co ban" = 1000 tu tieng Anh thong dung nhat,
xep theo tan suat, chia 20 nhom x 50 tu. Moi tu co 3 cau vi du kem ban dich.

Moi file g NN.py khai bao:
    GROUP = <so nhom 1..20>
    DATA  = [ (word, phonetic, meaning_vi, level, [(en,vi) x3]), ... ]

Chay:  python _gen.py
"""
import glob, importlib.util, os, sys

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = r"D:\CODE\english\supabase\vocab_1000_core.sql"

COURSE_ID = "c1111111-1111-4111-8111-111111111111"   # khoa "1000 Tu vung co ban" co san
def topic_id(i): return f"e2000000-0000-4000-8000-{i:012d}"
def word_id(n):  return f"10000{n:03d}-0000-4000-8000-{n:012d}"


def load():
    mods = []
    for p in sorted(glob.glob(os.path.join(HERE, "g[0-9][0-9].py"))):
        spec = importlib.util.spec_from_file_location(os.path.basename(p)[:-3], p)
        m = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(m)
        mods.append(m)
    return sorted(mods, key=lambda m: m.GROUP)


def q(s):
    s = (s or "").strip()
    return "null" if not s else "'" + s.replace("'", "''") + "'"


def main():
    mods = load()
    if not mods:
        sys.exit("Chua co file gNN.py nao.")

    problems, seen = [], {}
    for m in mods:
        if len(m.DATA) != 50:
            problems.append(f"nhom {m.GROUP}: co {len(m.DATA)} tu, can dung 50")
        for w, ph, mean, lv, exs in m.DATA:
            k = w.lower()
            if k in seen:
                problems.append(f"tu '{w}' lap o nhom {m.GROUP} va {seen[k]}")
            seen[k] = m.GROUP
            if lv not in ("A1", "A2", "B1", "B2", "C1", "C2"):
                problems.append(f"{w}: level la '{lv}'")
            if len(exs) != 3:
                problems.append(f"{w}: co {len(exs)} vi du, can 3")
                continue
            for j, (en, vi) in enumerate(exs, start=1):
                if not en.strip() or not vi.strip():
                    problems.append(f"{w}: cau {j} bi trong")
                # cau vi du phai chua tu dang hoc (de app boi dam dung cho)
                if k not in en.lower():
                    problems.append(f"{w}: cau {j} khong chua tu -> {en[:45]}")
    if problems:
        print("== VAN DE ==")
        for p in problems[:40]:
            print(" !!", p)
        sys.exit(f"\nDung lai: {len(problems)} van de.")

    trows, wrows, exrows = [], [], []
    n = 0
    for m in mods:
        gi = m.GROUP
        lo, hi = (gi - 1) * 50 + 1, gi * 50
        trows.append(f"('{topic_id(gi)}', '{COURSE_ID}', "
                     f"{q(f'Nhóm {gi} · từ thứ {lo}–{hi}')}, {gi})")
        for k, (w, ph, mean, lv, exs) in enumerate(m.DATA, start=1):
            n += 1
            wrows.append(f"('{word_id(n)}', '{topic_id(gi)}', {q(w)}, {q(ph)}, "
                         f"{q(mean)}, {q(exs[0][0])}, '{lv}', {k})")
            for j, (en, vi) in enumerate(exs, start=1):
                exrows.append(f"('{word_id(n)}', {j}, {q(en)}, {q(vi)})")

    out = []
    out.append("-- ============================================================================")
    out.append(f"-- KHOA '1000 TU VUNG CO BAN' = {len(wrows)} tu tieng Anh thong dung nhat")
    out.append(f"-- Xep theo tan suat, chia {len(mods)} nhom x 50 tu. Moi tu 3 cau vi du co dich.")
    out.append("-- Khoa nay DOC LAP voi khoa 'Tu vung theo chu de' — trung tu la binh thuong.")
    out.append("-- Chay thang file nay la du. An toan chay lai nhieu lan.")
    out.append("-- ============================================================================")
    out.append("")
    out.append("-- Bang cau vi du (tao neu chua co)")
    out.append("create table if not exists public.word_examples (")
    out.append("  word_id     uuid not null references public.words(id) on delete cascade,")
    out.append("  order_index int  not null,")
    out.append("  sentence_en text not null,")
    out.append("  sentence_vi text,")
    out.append("  primary key (word_id, order_index)")
    out.append(");")
    out.append("alter table public.word_examples enable row level security;")
    out.append('drop policy if exists "word_examples_read" on public.word_examples;')
    out.append('create policy "word_examples_read" on public.word_examples')
    out.append("  for select to authenticated using (exists (")
    out.append("    select 1 from public.words w")
    out.append("    join public.topics t  on t.id = w.topic_id")
    out.append("    join public.courses c on c.id = t.course_id")
    out.append("    where w.id = word_id and c.is_published));")
    out.append("")
    out.append("-- ⚠️ XOA 3 chu de mau ban dau cua khoa nay (Family & Friends, Food & Drinks,")
    out.append("--    Travel — tong 24 tu demo) de thay bang cac nhom theo tan suat.")
    out.append("--    Tien do hoc cua 24 tu do (neu co) se mat theo. Cac khoa khac khong bi anh huong.")
    # Chi xoa chu de KHONG mang tien to e2000000 (tuc la chu de demo ban dau).
    # Dung "not in <danh sach nhom>" thi neu chay lai ban file cu it nhom hon
    # se xoa nham cac nhom da tao — cach nay khong bao gio dinh vao nhom cua ta.
    out.append("delete from public.topics")
    out.append(f" where course_id = '{COURSE_ID}'")
    out.append("   and id::text not like 'e2000000-%';")
    out.append("")
    out.append("-- 1. NHOM TU (dong vai tro 'chu de')")
    out.append("insert into public.topics (id, course_id, name, order_index) values")
    out.append(",\n".join(trows))
    out.append("on conflict (id) do nothing;")
    out.append("")
    out.append("-- 2. TU VUNG")
    out.append("insert into public.words (id, topic_id, word, phonetic, meaning, example_sentence, level, order_index) values")
    out.append(",\n".join(wrows))
    out.append("on conflict (id) do nothing;")
    out.append("")
    out.append("-- 3. CAU VI DU + BAN DICH")
    out.append("insert into public.word_examples (word_id, order_index, sentence_en, sentence_vi) values")
    out.append(",\n".join(exrows))
    out.append("on conflict (word_id, order_index) do nothing;")
    out.append("")
    out.append("-- 4. Cap nhat mo ta khoa hoc")
    out.append(f"update public.courses set total_words = 1000,")
    out.append(f"       description = '1000 từ xuất hiện nhiều nhất trong tiếng Anh, xếp theo tần suất'")
    out.append(f"where id = '{COURSE_ID}';")
    out.append("")

    open(OUT, "w", encoding="utf-8").write("\n".join(out))
    print(f"Nhom: {len(mods)}/20  |  Tu: {len(wrows)}/1000  |  Cau vi du: {len(exrows)}")
    print("->", OUT)


if __name__ == "__main__":
    main()
