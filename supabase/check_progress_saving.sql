-- ============================================================================
-- CHẨN ĐOÁN: "học xong chủ đề nhưng chủ đề sau không mở khoá"
--
-- App coi 1 chủ đề là HOÀN THÀNH khi mọi từ trong chủ đề đó đã có dòng trong
-- bảng user_progress. Nếu việc ghi user_progress thất bại thì tiến độ luôn = 0
-- và chủ đề kế tiếp không bao giờ mở.
--
-- Nguyên nhân hay gặp nhất: user_progress.user_id tham chiếu public.profiles,
-- mà tài khoản lại CHƯA có dòng profiles (trigger on_auth_user_created không
-- chạy — ví dụ tài khoản tạo trước khi chạy schema.sql, hoặc login Google).
-- Khi đó mọi lần ghi đều bị lỗi khoá ngoại 23503.
--
-- Chạy từng phần trong Supabase SQL Editor.
-- ============================================================================

-- ---------- 1. NHÌN TỔNG QUAN ----------
-- so_profile < so_tai_khoan  → thiếu profile, chạy phần 3.
-- so_dong_tien_do = 0 dù đã học → tiến độ đang không được lưu.
select
  (select count(*) from auth.users)           as so_tai_khoan,
  (select count(*) from public.profiles)      as so_profile,
  (select count(*) from public.user_progress) as so_dong_tien_do;

-- ---------- 2. TÀI KHOẢN NÀO ĐANG THIẾU PROFILE ----------
select u.id, u.email, u.created_at
from auth.users u
left join public.profiles p on p.id = u.id
where p.id is null;

-- ---------- 3. SỬA: TẠO BÙ PROFILE CÒN THIẾU ----------
-- An toàn, chạy lại nhiều lần được. Không đụng tới tài khoản đã có profile.
insert into public.profiles (id, display_name)
select
  u.id,
  coalesce(
    u.raw_user_meta_data->>'display_name',
    u.raw_user_meta_data->>'full_name',
    u.raw_user_meta_data->>'name',
    split_part(u.email, '@', 1)
  )
from auth.users u
left join public.profiles p on p.id = u.id
where p.id is null;

-- ---------- 4. KIỂM TRA LẠI SAU KHI SỬA ----------
-- Học lại 1 chủ đề trong app rồi chạy câu này: số dòng phải > 0.
select count(*) as so_dong_tien_do from public.user_progress;

-- ---------- 5. XEM TIẾN ĐỘ THEO CHỦ ĐỀ ----------
-- da_hoc = số từ đã có tiến độ. Chủ đề mở khoá cho chủ đề sau khi da_hoc = tong_tu.
select
  c.title                                    as chuong_trinh,
  t.order_index                              as thu_tu,
  t.name                                     as chu_de,
  count(w.id)                                as tong_tu,
  count(up.word_id)                          as da_hoc
from public.topics t
join public.courses c on c.id = t.course_id
left join public.words w on w.topic_id = t.id
left join public.user_progress up on up.word_id = w.id
group by c.title, c.order_index, t.order_index, t.name
order by c.order_index, t.order_index;
