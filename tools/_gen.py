# -*- coding: utf-8 -*-
"""
Sinh SQL cho bang word_examples tu cac file du lieu ex_tNN.py trong cung thu muc.

Moi file ex_tNN.py khai bao:
    TOPIC = <so thu tu chu de 1..14>
    DATA  = { "word": [(en1, vi1), (en2, vi2), (en3, vi3)], ... }

Chay:  python _gen.py
Ket qua: file vocab_examples_old.sql trong thu muc supabase
"""
import glob, importlib.util, json, os, sys

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = r"D:\CODE\english\supabase\vocab_examples_old.sql"
WORDS = json.load(open(r"C:\Users\Admin\old_words.json", encoding="utf-8"))


def load_modules():
    mods = []
    for path in sorted(glob.glob(os.path.join(HERE, "ex_t*.py"))):
        spec = importlib.util.spec_from_file_location(
            os.path.basename(path)[:-3], path)
        m = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(m)
        mods.append(m)
    return mods


def q(s):
    s = (s or "").strip()
    return "null" if not s else "'" + s.replace("'", "''") + "'"


def main():
    mods = load_modules()
    if not mods:
        sys.exit("Chua co file ex_tNN.py nao.")

    problems, rows, done_topics = [], [], []
    for m in mods:
        ti = str(m.TOPIC)
        if ti not in WORDS:
            problems.append(f"chu de {ti} khong ton tai")
            continue
        info = WORDS[ti]
        by_word = {r["word"]: r["id"] for r in info["rows"]}
        data = m.DATA

        thieu = [w for w in by_word if w not in data]
        thua = [w for w in data if w not in by_word]
        if thieu:
            problems.append(f"chu de {ti} thieu {len(thieu)} tu: {', '.join(thieu[:8])}")
        if thua:
            problems.append(f"chu de {ti} co tu la: {', '.join(thua[:8])}")

        for w, exs in data.items():
            if w not in by_word:
                continue
            if len(exs) != 3:
                problems.append(f"{w}: co {len(exs)} vi du, can 3")
                continue
            for j, pair in enumerate(exs, start=1):
                en, vi = pair
                if not en.strip() or not vi.strip():
                    problems.append(f"{w}: cau {j} bi trong")
                if w.lower() not in en.lower():
                    problems.append(f"{w}: cau {j} khong chua tu can hoc -> {en[:45]}")
                rows.append(f"('{by_word[w]}', {j}, {q(en)}, {q(vi)})")
        done_topics.append(f"{ti}. {info['name']} ({len(data)} tu)")

    if problems:
        print("== VAN DE ==")
        for p in problems[:40]:
            print(" !!", p)
        sys.exit(f"\nDung lai: {len(problems)} van de.")

    head = [
        "-- ============================================================================",
        f"-- 3 CAU VI DU + BAN DICH cho {len(rows)//3} tu vung",
        "-- " + " | ".join(done_topics),
        "-- Chay thang file nay la du. An toan chay lai nhieu lan.",
        "-- ============================================================================",
        "",
        "-- Tao san bang neu chua co, de khong phu thuoc thu tu chay file.",
        "create table if not exists public.word_examples (",
        "  word_id     uuid not null references public.words(id) on delete cascade,",
        "  order_index int  not null,",
        "  sentence_en text not null,",
        "  sentence_vi text,",
        "  primary key (word_id, order_index)",
        ");",
        "create index if not exists word_examples_word_idx",
        "  on public.word_examples (word_id, order_index);",
        "alter table public.word_examples enable row level security;",
        'drop policy if exists "word_examples_read" on public.word_examples;',
        'create policy "word_examples_read" on public.word_examples',
        "  for select to authenticated",
        "  using (exists (",
        "    select 1 from public.words w",
        "    join public.topics t  on t.id = w.topic_id",
        "    join public.courses c on c.id = t.course_id",
        "    where w.id = word_id and c.is_published",
        "  ));",
        "",
        "insert into public.word_examples (word_id, order_index, sentence_en, sentence_vi) values",
    ]
    open(OUT, "w", encoding="utf-8").write(
        "\n".join(head) + "\n" + ",\n".join(rows)
        + "\non conflict (word_id, order_index) do nothing;\n")

    print("Chu de da lam:")
    for t in done_topics:
        print("  -", t)
    print(f"\nTong: {len(rows)//3} tu, {len(rows)} cau vi du -> {OUT}")


if __name__ == "__main__":
    main()
