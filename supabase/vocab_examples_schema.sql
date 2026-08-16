-- ============================================================================
-- MỞ RỘNG: mỗi từ vựng có NHIỀU câu ví dụ, mỗi câu kèm bản dịch tiếng Việt.
--
-- Vì sao tách bảng riêng thay vì thêm cột vào `words`:
--   - số câu ví dụ có thể thay đổi (2, 3, 5...) mà không phải đổi schema
--   - khoá chính (word_id, order_index) => chạy lại file seed nhiều lần
--     cũng không tạo bản ghi trùng
--
-- App vẫn chạy bình thường khi một từ CHƯA có dòng nào ở đây: giao diện tự
-- quay về dùng cột words.example_sentence như trước.
--
-- Chạy trong Supabase SQL Editor. An toàn, không đụng dữ liệu đang có.
-- ============================================================================

create table if not exists public.word_examples (
  word_id     uuid not null references public.words(id) on delete cascade,
  order_index int  not null,              -- 1, 2, 3...
  sentence_en text not null,              -- câu ví dụ tiếng Anh (chứa từ mục tiêu)
  sentence_vi text,                       -- bản dịch tiếng Việt
  primary key (word_id, order_index)
);

create index if not exists word_examples_word_idx
  on public.word_examples (word_id, order_index);

-- ---------- RLS: đọc được nếu chương trình học đang publish ----------
alter table public.word_examples enable row level security;

drop policy if exists "word_examples_read" on public.word_examples;
create policy "word_examples_read" on public.word_examples
  for select to authenticated
  using (exists (
    select 1
    from public.words w
    join public.topics t  on t.id = w.topic_id
    join public.courses c on c.id = t.course_id
    where w.id = word_id and c.is_published
  ));

-- ---------- Kiểm tra sau khi chạy ----------
-- Ban đầu bảng rỗng là đúng; dữ liệu do các file vocab_examples_*.sql đổ vào.
select count(*) as so_cau_vi_du from public.word_examples;
