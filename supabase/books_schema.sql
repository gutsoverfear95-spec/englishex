-- ============================================================================
-- ĐỌC SÁCH: tác phẩm kinh điển chia theo chương
--
-- Vì sao tách khỏi bảng lessons?
--   - lessons gắn liền với bài tập + chấm điểm; chương truyện chỉ để ĐỌC
--   - 95 chương đổ vào danh sách bài đọc thì không còn tìm được bài nào
--   - tiến độ ở đây là "đang đọc tới đâu", không phải "được mấy điểm"
--
-- Sách lấy từ Project Gutenberg, toàn bộ đã HẾT BẢN QUYỀN (public domain).
--
-- Chạy trong Supabase SQL Editor. An toàn chạy lại nhiều lần.
-- ============================================================================

-- ---------- 1. SÁCH ----------
create table if not exists public.books (
  id            uuid primary key,
  slug          text not null unique,
  title         text not null,
  author        text not null,
  year          int,
  level         text,          -- CEFR ước lượng
  blurb         text,          -- giới thiệu ngắn bằng tiếng Việt
  cover_emoji   text not null default '📖',
  word_count    int  not null default 0,
  chapter_count int  not null default 0,
  gutenberg_id  int,           -- nguồn gốc, để đối chiếu về sau
  sort_order    int  not null default 0,
  published     boolean not null default true,
  created_at    timestamptz not null default now()
);

-- ---------- 2. CHƯƠNG ----------
create table if not exists public.book_chapters (
  id         uuid primary key,
  book_id    uuid not null references public.books(id) on delete cascade,
  number     int  not null,        -- 1..n, thứ tự đọc
  title      text,                 -- có sách không đặt tên chương
  content    text not null,
  word_count int  not null default 0,
  unique (book_id, number)
);

create index if not exists book_chapters_book_idx
  on public.book_chapters (book_id, number);

-- ---------- 3. TỪ KHÓ RIÊNG CỦA SÁCH ----------
-- Kho 1900 từ trong bảng words chỉ tra được ~78% số từ trong truyện kinh điển.
-- Phần còn lại là từ cổ / văn chương (countenance, vexation...) — để riêng ở
-- đây, không trộn vào words vì đó là giáo trình học từ vựng, không phải từ điển.
create table if not exists public.book_words (
  word     text primary key,
  meaning  text not null,
  phonetic text
);

-- ---------- 4. TIẾN ĐỘ ĐỌC ----------
-- Mỗi user × mỗi sách đúng một dòng: đang đọc chương mấy, cuộn tới đâu.
create table if not exists public.book_progress (
  user_id      uuid not null references public.profiles(id) on delete cascade,
  book_id      uuid not null references public.books(id) on delete cascade,
  chapter      int  not null default 1,
  scroll_pct   numeric(5,2) not null default 0,   -- 0..100 trong chương đó
  finished     boolean not null default false,
  updated_at   timestamptz not null default now(),
  primary key (user_id, book_id)
);

-- ---------- 5. RLS ----------
alter table public.books         enable row level security;
alter table public.book_chapters enable row level security;
alter table public.book_words    enable row level security;
alter table public.book_progress enable row level security;

-- Nội dung sách: ai đăng nhập cũng đọc được
drop policy if exists "books_read"    on public.books;
drop policy if exists "chapters_read" on public.book_chapters;
drop policy if exists "bookwords_read" on public.book_words;

create policy "books_read" on public.books
  for select to authenticated using (published);

create policy "chapters_read" on public.book_chapters
  for select to authenticated
  using (exists (select 1 from public.books b
                  where b.id = book_id and b.published));

create policy "bookwords_read" on public.book_words
  for select to authenticated using (true);

-- Tiến độ: chỉ chính chủ đọc/ghi (tách insert & update để upsert chạy được,
-- giống hệt cách lesson_progress đang làm)
drop policy if exists "bookprog_select_own" on public.book_progress;
drop policy if exists "bookprog_insert_own" on public.book_progress;
drop policy if exists "bookprog_update_own" on public.book_progress;

create policy "bookprog_select_own" on public.book_progress
  for select to authenticated
  using (user_id = (select auth.uid()));

create policy "bookprog_insert_own" on public.book_progress
  for insert to authenticated
  with check (user_id = (select auth.uid()));

create policy "bookprog_update_own" on public.book_progress
  for update to authenticated
  using (user_id = (select auth.uid()))
  with check (user_id = (select auth.uid()));

-- ---------- 6. QUYỀN GHI CHO ADMIN ----------
-- Để về sau thêm/sửa sách ngay trong app. Hàm is_admin() tạo ở reading_admin.sql;
-- nếu chưa chạy file đó thì bỏ qua phần này, không ảnh hưởng việc đọc.
do $$
begin
  if exists (select 1 from pg_proc p join pg_namespace n on n.oid = p.pronamespace
              where n.nspname = 'public' and p.proname = 'is_admin') then
    execute $p$
      drop policy if exists "books_admin_write" on public.books;
      create policy "books_admin_write" on public.books
        for all to authenticated
        using (public.is_admin()) with check (public.is_admin());
    $p$;
    execute $p$
      drop policy if exists "chapters_admin_write" on public.book_chapters;
      create policy "chapters_admin_write" on public.book_chapters
        for all to authenticated
        using (public.is_admin()) with check (public.is_admin());
    $p$;
    execute $p$
      drop policy if exists "bookwords_admin_write" on public.book_words;
      create policy "bookwords_admin_write" on public.book_words
        for all to authenticated
        using (public.is_admin()) with check (public.is_admin());
    $p$;
  end if;
end $$;
