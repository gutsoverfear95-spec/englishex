-- ============================================================================
-- MỞ QUYỀN SOẠN BÀI HỌC TỪ TRONG APP
--
-- Mặc định schema.sql chỉ cho phép ĐỌC bảng lessons/exercises — không có
-- policy insert/update/delete nào, nên form soạn bài sẽ không ghi được.
--
-- File này mở quyền ghi, NHƯNG chỉ cho tài khoản được đánh dấu admin.
-- Nếu mở cho mọi tài khoản đăng nhập thì bất kỳ ai đăng ký được cũng có thể
-- thêm/xoá bài học của bạn.
--
-- Chạy trong Supabase SQL Editor. An toàn chạy lại nhiều lần.
-- ============================================================================

-- ---------- 1. CỜ ADMIN ----------
alter table public.profiles add column if not exists is_admin boolean not null default false;

-- ⚠️ ĐỔI EMAIL BÊN DƯỚI THÀNH EMAIL BẠN DÙNG ĐỂ ĐĂNG NHẬP APP, rồi chạy.
update public.profiles p
   set is_admin = true
  from auth.users u
 where u.id = p.id
   and u.email = 'minareminie@gmail.com';

-- Kiểm tra: phải thấy đúng tài khoản của bạn với is_admin = true
select u.email, p.is_admin
  from public.profiles p join auth.users u on u.id = p.id;

-- ---------- 2. HÀM KIỂM TRA ADMIN ----------
-- security definer để đọc được profiles mà không vướng RLS của chính bảng đó.
create or replace function public.is_admin()
returns boolean
language sql
security definer
set search_path = ''
stable
as $$
  select coalesce(
    (select p.is_admin from public.profiles p where p.id = (select auth.uid())),
    false
  );
$$;

-- ---------- 3. QUYỀN GHI CHO ADMIN ----------
drop policy if exists "lessons_admin_write"  on public.lessons;
drop policy if exists "lessons_admin_read"   on public.lessons;
drop policy if exists "exercises_admin_write" on public.exercises;

-- Admin xem được cả bài chưa publish (bài nháp)
create policy "lessons_admin_read" on public.lessons
  for select to authenticated
  using (public.is_admin());

create policy "lessons_admin_write" on public.lessons
  for all to authenticated
  using (public.is_admin())
  with check (public.is_admin());

create policy "exercises_admin_write" on public.exercises
  for all to authenticated
  using (public.is_admin())
  with check (public.is_admin());

-- ---------- 4. CỘT GLOSSARY (nếu chưa chạy reading_lessons.sql) ----------
alter table public.lessons add column if not exists glossary jsonb;

-- ---------- 5. CHO PHÉP CẤP ĐỘ CEFR ----------
alter table public.lessons drop constraint if exists lessons_level_check;
alter table public.lessons add constraint lessons_level_check
  check (level in ('beginner','intermediate','advanced','A1','A2','B1','B2','C1','C2'));
