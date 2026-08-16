-- ============================================================================
-- ẢNH MINH HOẠ CHO TỪ VỰNG — thêm chỗ lưu nguồn ảnh.
--
-- Cột words.image_url đã có sẵn từ đầu; file này chỉ thêm 2 cột ghi nguồn.
-- Điều khoản Unsplash yêu cầu hiển thị tên tác giả và link về trang của họ
-- khi dùng ảnh, nên phải lưu kèm chứ không chỉ lưu mỗi URL.
--
-- Chạy trong Supabase SQL Editor. An toàn, không đụng dữ liệu đang có.
-- ============================================================================

alter table public.words add column if not exists image_credit     text;
alter table public.words add column if not exists image_credit_url text;

-- Kiểm tra: ban đầu 0 là đúng, dữ liệu do file vocab_images.sql đổ vào.
select count(*) as so_tu_co_anh from public.words where image_url is not null;
