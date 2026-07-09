-- ============================================================================
-- CẬP NHẬT trigger tạo profile để hỗ trợ đăng nhập Google.
-- Google trả về tên trong metadata dưới key full_name / name,
-- còn đăng ký email thì app dùng display_name → coalesce cả 3.
-- Chạy trong Supabase SQL Editor (an toàn, chỉ thay hàm, không mất dữ liệu).
-- ============================================================================
create or replace function public.handle_new_user()
returns trigger
language plpgsql
security definer set search_path = ''
as $$
begin
  insert into public.profiles (id, display_name)
  values (
    new.id,
    coalesce(
      new.raw_user_meta_data->>'display_name',
      new.raw_user_meta_data->>'full_name',
      new.raw_user_meta_data->>'name',
      split_part(new.email, '@', 1)
    )
  );
  return new;
end;
$$;
