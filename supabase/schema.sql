-- ============================================================================
-- ENGLISH LEARNING APP — SUPABASE SCHEMA (Giai đoạn 1)
-- Chạy trong: Supabase Dashboard > SQL Editor > New query > Run
-- Thứ tự: 1.Enums → 2.Bảng → 3.Trigger → 4.View → 5.RLS
-- ============================================================================

-- ----------------------------------------------------------------------------
-- 1. ENUMS
-- ----------------------------------------------------------------------------
create type public.skill_type as enum ('listening', 'speaking', 'reading', 'writing');

create type public.exercise_type as enum (
  'dictation',        -- Nghe: app đọc câu (SpeechSynthesis), user gõ lại
  'multiple_choice',  -- Nghe/Đọc: trắc nghiệm 4 đáp án
  'true_false',       -- Đọc: đúng/sai
  'pronunciation',    -- Nói: hiển thị câu mẫu, so khớp kết quả SpeechRecognition
  'translation',      -- Viết: dịch câu Việt → Anh
  'fill_blank'        -- Viết: điền từ vào chỗ trống (___)
);

create type public.progress_status as enum ('in_progress', 'completed');

-- ----------------------------------------------------------------------------
-- 2. BẢNG
-- ----------------------------------------------------------------------------

-- 2.1 PROFILES: hồ sơ người dùng, quan hệ 1-1 với auth.users
create table public.profiles (
  id           uuid primary key references auth.users(id) on delete cascade,
  display_name text,
  created_at   timestamptz not null default now()
);

-- 2.2 LESSONS: bài học cho cả 4 kỹ năng (phân biệt bằng cột skill)
create table public.lessons (
  id          uuid primary key default gen_random_uuid(),
  skill       public.skill_type not null,
  title       text not null,
  description text,
  level       text not null default 'beginner'
              check (level in ('beginner', 'intermediate', 'advanced')),
  -- content dùng theo kỹ năng:
  --   reading  : đoạn văn hiển thị để đọc hiểu
  --   listening: transcript được đọc bằng SpeechSynthesis (không hiển thị)
  --   speaking / writing: null (nội dung nằm ở từng exercise)
  content     text,
  order_index int not null default 0,     -- thứ tự hiển thị trong danh sách
  is_published boolean not null default true,
  created_at  timestamptz not null default now()
);

create index lessons_skill_idx on public.lessons (skill, order_index);

-- 2.3 EXERCISES: bài tập thuộc bài học
create table public.exercises (
  id        uuid primary key default gen_random_uuid(),
  lesson_id uuid not null references public.lessons(id) on delete cascade,
  type      public.exercise_type not null,
  -- prompt dùng theo type:
  --   dictation     : câu tiếng Anh app sẽ đọc (UI KHÔNG hiển thị prompt)
  --   pronunciation : câu mẫu hiển thị cho user đọc theo
  --   multiple_choice / true_false: câu hỏi
  --   translation   : câu tiếng Việt cần dịch
  --   fill_blank    : câu chứa ___ cần điền
  prompt    text not null,
  options   jsonb,                        -- MCQ: ["A","B","C","D"]; loại khác: null
  -- Danh sách đáp án được chấp nhận. Client chuẩn hoá (lowercase, bỏ dấu câu)
  -- rồi so sánh. dictation/pronunciation: chứa chính câu prompt.
  accepted_answers text[] not null,
  explanation text,                       -- giải thích hiện sau khi trả lời
  order_index int not null default 0
);

create index exercises_lesson_idx on public.exercises (lesson_id, order_index);

-- 2.4 ATTEMPTS: log MỖI lần trả lời (lịch sử chi tiết, phục vụ thống kê)
create table public.attempts (
  id          uuid primary key default gen_random_uuid(),
  user_id     uuid not null default auth.uid()
              references public.profiles(id) on delete cascade,
  exercise_id uuid not null references public.exercises(id) on delete cascade,
  user_answer text,
  is_correct  boolean not null,
  score       numeric(5,2) not null default 0,  -- % chính xác (quan trọng với Speaking)
  created_at  timestamptz not null default now()
);

create index attempts_user_idx on public.attempts (user_id, created_at desc);

-- 2.5 LESSON_PROGRESS: trạng thái + điểm mỗi bài của mỗi user (nguồn cho Dashboard)
--     Client upsert sau khi hoàn thành bài (onConflict: user_id,lesson_id)
create table public.lesson_progress (
  user_id      uuid not null references public.profiles(id) on delete cascade,
  lesson_id    uuid not null references public.lessons(id) on delete cascade,
  status       public.progress_status not null default 'in_progress',
  best_score   numeric(5,2) not null default 0,   -- 0..100, điểm cao nhất
  last_score   numeric(5,2) not null default 0,
  completed_at timestamptz,
  updated_at   timestamptz not null default now(),
  primary key (user_id, lesson_id)
);

-- ----------------------------------------------------------------------------
-- 3. TRIGGERS
-- ----------------------------------------------------------------------------

-- 3.1 Tự tạo profile khi user đăng ký (chạy với quyền definer vì bảng
--     auth.users nằm ngoài schema public)
create or replace function public.handle_new_user()
returns trigger
language plpgsql
security definer set search_path = ''
as $$
begin
  insert into public.profiles (id, display_name)
  values (
    new.id,
    coalesce(new.raw_user_meta_data->>'display_name', split_part(new.email, '@', 1))
  );
  return new;
end;
$$;

create trigger on_auth_user_created
  after insert on auth.users
  for each row execute function public.handle_new_user();

-- 3.2 Tự cập nhật updated_at của lesson_progress
create or replace function public.touch_updated_at()
returns trigger language plpgsql as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

create trigger lesson_progress_touch
  before update on public.lesson_progress
  for each row execute function public.touch_updated_at();

-- ----------------------------------------------------------------------------
-- 4. VIEW CHO DASHBOARD
-- ----------------------------------------------------------------------------
-- Tổng hợp theo kỹ năng. security_invoker = on => RLS của bảng gốc vẫn áp dụng,
-- mỗi user chỉ thấy số liệu của mình.
-- (Tổng số bài mỗi kỹ năng thì query thẳng bảng lessons ở client.)
create view public.user_skill_stats
with (security_invoker = on) as
select
  lp.user_id,
  l.skill,
  count(*)                                          as lessons_started,
  count(*) filter (where lp.status = 'completed')   as lessons_completed,
  round(avg(lp.best_score), 1)                      as avg_score
from public.lesson_progress lp
join public.lessons l on l.id = lp.lesson_id
group by lp.user_id, l.skill;

-- ----------------------------------------------------------------------------
-- 5. ROW LEVEL SECURITY
-- ----------------------------------------------------------------------------
alter table public.profiles        enable row level security;
alter table public.lessons         enable row level security;
alter table public.exercises       enable row level security;
alter table public.attempts        enable row level security;
alter table public.lesson_progress enable row level security;

-- PROFILES: chỉ xem / sửa hồ sơ của chính mình (insert do trigger đảm nhiệm)
create policy "profiles_select_own" on public.profiles
  for select to authenticated
  using (id = (select auth.uid()));

create policy "profiles_update_own" on public.profiles
  for update to authenticated
  using (id = (select auth.uid()))
  with check (id = (select auth.uid()));

-- LESSONS / EXERCISES: user đăng nhập chỉ ĐỌC bài đã publish.
-- Không có policy insert/update/delete => client không thể sửa nội dung học.
-- Quản trị nội dung: Supabase Dashboard (Table Editor) hoặc service_role key.
create policy "lessons_read_published" on public.lessons
  for select to authenticated
  using (is_published);

create policy "exercises_read_published" on public.exercises
  for select to authenticated
  using (exists (
    select 1 from public.lessons l
    where l.id = lesson_id and l.is_published
  ));

-- ATTEMPTS: chỉ ghi & xem attempt của mình; không cho update/delete
-- để giữ lịch sử làm bài trung thực.
create policy "attempts_insert_own" on public.attempts
  for insert to authenticated
  with check (user_id = (select auth.uid()));

create policy "attempts_select_own" on public.attempts
  for select to authenticated
  using (user_id = (select auth.uid()));

-- LESSON_PROGRESS: user tự đọc/ghi tiến độ của mình (hỗ trợ upsert)
create policy "progress_select_own" on public.lesson_progress
  for select to authenticated
  using (user_id = (select auth.uid()));

create policy "progress_insert_own" on public.lesson_progress
  for insert to authenticated
  with check (user_id = (select auth.uid()));

create policy "progress_update_own" on public.lesson_progress
  for update to authenticated
  using (user_id = (select auth.uid()))
  with check (user_id = (select auth.uid()));
