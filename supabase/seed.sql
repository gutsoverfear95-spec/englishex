-- ============================================================================
-- SEED DATA (tuỳ chọn) — chạy SAU schema.sql
-- 1 bài học + bài tập mẫu cho mỗi kỹ năng để test app ngay từ Giai đoạn 3-4.
-- Dùng UUID cố định để dễ tham chiếu / chạy lại (xoá bảng trước nếu chạy lại).
-- ============================================================================

-- ---------- READING ----------
insert into public.lessons (id, skill, title, description, level, content, order_index) values
('11111111-1111-4111-8111-111111111111', 'reading', 'My Daily Routine',
 'Đọc hiểu về thói quen hằng ngày', 'beginner',
 'Anna wakes up at six o''clock every morning. She eats breakfast with her family, then rides her bike to school. After school, she does her homework and helps her mother cook dinner. She goes to bed at ten o''clock.',
 1);

insert into public.exercises (lesson_id, type, prompt, options, accepted_answers, explanation, order_index) values
('11111111-1111-4111-8111-111111111111', 'multiple_choice',
 'What time does Anna wake up?',
 '["At five o''clock", "At six o''clock", "At seven o''clock", "At ten o''clock"]',
 array['At six o''clock'],
 'Câu đầu tiên: "Anna wakes up at six o''clock every morning."', 1),
('11111111-1111-4111-8111-111111111111', 'true_false',
 'Anna walks to school every day.',
 null,
 array['false'],
 'Cô ấy đạp xe đến trường ("rides her bike"), không đi bộ.', 2);

-- ---------- WRITING ----------
insert into public.lessons (id, skill, title, description, level, order_index) values
('22222222-2222-4222-8222-222222222222', 'writing', 'Basic Sentences',
 'Dịch câu và điền từ cơ bản', 'beginner', 1);

insert into public.exercises (lesson_id, type, prompt, options, accepted_answers, explanation, order_index) values
('22222222-2222-4222-8222-222222222222', 'translation',
 'Tôi thích học tiếng Anh mỗi ngày.',
 null,
 array['I like learning English every day', 'I like to learn English every day', 'I love learning English every day'],
 '"thích + động từ" = like + V-ing hoặc like to + V.', 1),
('22222222-2222-4222-8222-222222222222', 'fill_blank',
 'She ___ to school every morning. (go)',
 null,
 array['goes'],
 'Chủ ngữ ngôi thứ 3 số ít ở thì hiện tại đơn: go → goes.', 2);

-- ---------- LISTENING ----------
-- content = transcript, app đọc bằng SpeechSynthesis (không hiển thị cho user)
insert into public.lessons (id, skill, title, description, level, content, order_index) values
('33333333-3333-4333-8333-333333333333', 'listening', 'A Short Conversation',
 'Nghe hội thoại và trả lời', 'beginner',
 'Tom: What time is the meeting tomorrow? Lisa: It starts at half past nine. Tom: Thank you. I will be there early.',
 1);

insert into public.exercises (lesson_id, type, prompt, options, accepted_answers, explanation, order_index) values
('33333333-3333-4333-8333-333333333333', 'multiple_choice',
 'What time does the meeting start?',
 '["At nine o''clock", "At half past nine", "At half past eight", "At ten o''clock"]',
 array['At half past nine'],
 'Lisa nói: "It starts at half past nine" (9:30).', 1),
('33333333-3333-4333-8333-333333333333', 'dictation',
 'She goes to work by bus every day.',
 null,
 array['She goes to work by bus every day'],
 null, 2);

-- ---------- SPEAKING ----------
insert into public.lessons (id, skill, title, description, level, order_index) values
('44444444-4444-4444-8444-444444444444', 'speaking', 'Everyday Phrases',
 'Luyện phát âm các câu giao tiếp cơ bản', 'beginner', 1);

insert into public.exercises (lesson_id, type, prompt, options, accepted_answers, order_index) values
('44444444-4444-4444-8444-444444444444', 'pronunciation',
 'Hello, nice to meet you.',
 null, array['Hello, nice to meet you'], 1),
('44444444-4444-4444-8444-444444444444', 'pronunciation',
 'I would like a cup of coffee, please.',
 null, array['I would like a cup of coffee, please'], 2);
