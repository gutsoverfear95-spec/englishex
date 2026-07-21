-- ============================================================================
-- MODULE TỪ VỰNG v2 — CHƯƠNG TRÌNH HỌC → CHỦ ĐỀ → TỪ VỰNG + SRS (SM-2)
-- Chạy trong Supabase SQL Editor.
-- ⚠️ CẢNH BÁO: khối DROP bên dưới xoá module từ vựng v1 (vocab_topics,
-- vocab_words, vocab_progress) cùng toàn bộ tiến độ từ vựng cũ.
-- ============================================================================

-- ---------- 0. GỠ MODULE V1 (nếu có) ----------
drop table if exists public.vocab_progress cascade;
drop table if exists public.vocab_words cascade;
drop table if exists public.vocab_topics cascade;

-- ---------- 1. BẢNG ----------

-- 1.1 COURSES: chương trình học ("1000 từ cơ bản", "IELTS"...)
create table public.courses (
  id           uuid primary key default gen_random_uuid(),
  title        text not null,
  description  text,
  total_words  int not null default 0,  -- quy mô mục tiêu của chương trình (hiển thị badge)
  color        text not null default 'indigo', -- key màu cover: indigo|emerald|violet|amber
  image_url    text,                    -- ảnh cover tuỳ chọn; null → dùng gradient theo color
  order_index  int not null default 0,
  is_published boolean not null default true,
  created_at   timestamptz not null default now()
);

-- 1.2 TOPICS: chủ đề thuộc 1 chương trình
create table public.topics (
  id          uuid primary key default gen_random_uuid(),
  course_id   uuid not null references public.courses(id) on delete cascade,
  name        text not null,
  order_index int not null default 0,   -- thứ tự — dùng cho logic mở khoá tuần tự
  created_at  timestamptz not null default now()
);

create index topics_course_idx on public.topics (course_id, order_index);

-- 1.3 WORDS: từ vựng thuộc 1 chủ đề
create table public.words (
  id               uuid primary key default gen_random_uuid(),
  topic_id         uuid not null references public.topics(id) on delete cascade,
  word             text not null,
  phonetic         text,               -- IPA: /ˈfæm.əl.i/
  meaning          text not null,      -- nghĩa tiếng Việt
  example_sentence text,               -- câu ví dụ (chứa chính từ đó để UI bôi đậm)
  image_url        text,               -- ảnh minh hoạ (tuỳ chọn)
  audio_url        text,               -- file phát âm (tuỳ chọn; null → app dùng Web Speech API)
  level            text check (level in ('A1','A2','B1','B2','C1','C2')),
  order_index      int not null default 0
);

create index words_topic_idx on public.words (topic_id, order_index);

-- 1.4 USER_PROGRESS: tiến độ SRS của mỗi user với mỗi từ
-- PK (user_id, word_id) thay cho id đơn: chặn trùng lặp + upsert tiện lợi
create table public.user_progress (
  user_id             uuid not null references public.profiles(id) on delete cascade,
  word_id             uuid not null references public.words(id) on delete cascade,
  status              text not null default 'learning'
                      check (status in ('learning', 'mastered')),
  -- SRS theo SM-2 giản lược:
  --   repetition_interval: khoảng cách ôn hiện tại, tính bằng NGÀY (số thực,
  --                        0.007 ≈ 10 phút cho thẻ vừa trả lời "Khó")
  --   ease_factor        : hệ số giãn 1.3–3.0, Dễ → tăng, Khó → giảm
  repetition_interval numeric(8,3) not null default 0,
  ease_factor         numeric(4,2) not null default 2.5,
  next_review_date    timestamptz not null default now(),
  last_reviewed_at    timestamptz,
  updated_at          timestamptz not null default now(),
  primary key (user_id, word_id)
);

create index user_progress_due_idx on public.user_progress (user_id, next_review_date);

-- Tự cập nhật updated_at (dùng lại hàm touch_updated_at trong schema.sql)
create trigger user_progress_touch
  before update on public.user_progress
  for each row execute function public.touch_updated_at();

-- ---------- 2. RLS ----------
alter table public.courses       enable row level security;
alter table public.topics        enable row level security;
alter table public.words         enable row level security;
alter table public.user_progress enable row level security;

create policy "courses_read" on public.courses
  for select to authenticated using (is_published);

create policy "topics_read" on public.topics
  for select to authenticated
  using (exists (select 1 from public.courses c where c.id = course_id and c.is_published));

create policy "words_read" on public.words
  for select to authenticated
  using (exists (
    select 1 from public.topics t
    join public.courses c on c.id = t.course_id
    where t.id = topic_id and c.is_published
  ));

create policy "user_progress_select_own" on public.user_progress
  for select to authenticated using (user_id = (select auth.uid()));

create policy "user_progress_insert_own" on public.user_progress
  for insert to authenticated with check (user_id = (select auth.uid()));

create policy "user_progress_update_own" on public.user_progress
  for update to authenticated
  using (user_id = (select auth.uid()))
  with check (user_id = (select auth.uid()));

-- ---------- 3. SEED ----------
-- 4 chương trình học
insert into public.courses (id, title, description, total_words, color, order_index) values
('c1111111-1111-4111-8111-111111111111', '1000 Từ vựng cơ bản', 'Nền tảng giao tiếp hằng ngày cho người mới bắt đầu', 1000, 'indigo', 1),
('c2222222-2222-4222-8222-222222222222', '3000 Từ thông dụng', 'Bao phủ 95% văn bản tiếng Anh phổ thông', 3000, 'emerald', 2),
('c3333333-3333-4333-8333-333333333333', 'IELTS Academic', 'Từ vựng học thuật trọng tâm cho band 6.5+', 570, 'violet', 3),
('c4444444-4444-4444-8444-444444444444', 'TOEIC', 'Từ vựng văn phòng & thương mại cho bài thi TOEIC', 600, 'amber', 4);

-- Chủ đề
insert into public.topics (id, course_id, name, order_index) values
('d1111111-1111-4111-8111-111111111101', 'c1111111-1111-4111-8111-111111111111', 'Family & Friends', 1),
('d1111111-1111-4111-8111-111111111102', 'c1111111-1111-4111-8111-111111111111', 'Food & Drinks', 2),
('d1111111-1111-4111-8111-111111111103', 'c1111111-1111-4111-8111-111111111111', 'Travel', 3),
('d2222222-2222-4222-8222-222222222201', 'c2222222-2222-4222-8222-222222222222', 'Work & Office', 1),
('d3333333-3333-4333-8333-333333333301', 'c3333333-3333-4333-8333-333333333333', 'Education & Research', 1),
('d4444444-4444-4444-8444-444444444401', 'c4444444-4444-4444-8444-444444444444', 'Business Basics', 1);

-- Từ vựng (word, phonetic, meaning, example — câu ví dụ luôn chứa từ mục tiêu)
insert into public.words (topic_id, word, phonetic, meaning, example_sentence, level, order_index) values
-- Family & Friends (A1-A2)
('d1111111-1111-4111-8111-111111111101', 'family', '/ˈfæm.əl.i/', 'gia đình', 'My family has five people.', 'A1', 1),
('d1111111-1111-4111-8111-111111111101', 'parents', '/ˈpeə.rənts/', 'bố mẹ', 'My parents work in a hospital.', 'A1', 2),
('d1111111-1111-4111-8111-111111111101', 'sibling', '/ˈsɪb.lɪŋ/', 'anh chị em ruột', 'I have two siblings: a brother and a sister.', 'A2', 3),
('d1111111-1111-4111-8111-111111111101', 'cousin', '/ˈkʌz.ən/', 'anh chị em họ', 'My cousin lives in Da Nang.', 'A1', 4),
('d1111111-1111-4111-8111-111111111101', 'aunt', '/ɑːnt/', 'cô, dì', 'My aunt makes delicious cakes.', 'A1', 5),
('d1111111-1111-4111-8111-111111111101', 'uncle', '/ˈʌŋ.kəl/', 'chú, bác, cậu', 'My uncle taught me how to swim.', 'A1', 6),
('d1111111-1111-4111-8111-111111111101', 'neighbor', '/ˈneɪ.bər/', 'hàng xóm', 'Our neighbor has a friendly dog.', 'A2', 7),
('d1111111-1111-4111-8111-111111111101', 'friendship', '/ˈfrend.ʃɪp/', 'tình bạn', 'Their friendship began in primary school.', 'A2', 8),
-- Food & Drinks (A1-A2)
('d1111111-1111-4111-8111-111111111102', 'breakfast', '/ˈbrek.fəst/', 'bữa sáng', 'I usually have breakfast at seven.', 'A1', 1),
('d1111111-1111-4111-8111-111111111102', 'vegetable', '/ˈvedʒ.tə.bəl/', 'rau củ', 'You should eat more vegetables.', 'A1', 2),
('d1111111-1111-4111-8111-111111111102', 'seafood', '/ˈsiː.fuːd/', 'hải sản', 'This restaurant is famous for its seafood.', 'A2', 3),
('d1111111-1111-4111-8111-111111111102', 'dessert', '/dɪˈzɜːt/', 'món tráng miệng', 'We had ice cream for dessert.', 'A2', 4),
('d1111111-1111-4111-8111-111111111102', 'delicious', '/dɪˈlɪʃ.əs/', 'ngon', 'The soup smells delicious.', 'A1', 5),
('d1111111-1111-4111-8111-111111111102', 'hungry', '/ˈhʌŋ.ɡri/', 'đói', 'I am always hungry after school.', 'A1', 6),
('d1111111-1111-4111-8111-111111111102', 'thirsty', '/ˈθɜː.sti/', 'khát nước', 'Running makes me thirsty.', 'A1', 7),
('d1111111-1111-4111-8111-111111111102', 'flavor', '/ˈfleɪ.vər/', 'hương vị', 'This tea has a strong flavor.', 'A2', 8),
-- Travel (A1-A2)
('d1111111-1111-4111-8111-111111111103', 'airport', '/ˈeə.pɔːt/', 'sân bay', 'We arrived at the airport two hours early.', 'A1', 1),
('d1111111-1111-4111-8111-111111111103', 'luggage', '/ˈlʌɡ.ɪdʒ/', 'hành lý', 'My luggage is too heavy.', 'A2', 2),
('d1111111-1111-4111-8111-111111111103', 'passport', '/ˈpɑːs.pɔːt/', 'hộ chiếu', 'Do not forget your passport!', 'A1', 3),
('d1111111-1111-4111-8111-111111111103', 'ticket', '/ˈtɪk.ɪt/', 'vé', 'I bought a ticket to Ha Noi.', 'A1', 4),
('d1111111-1111-4111-8111-111111111103', 'journey', '/ˈdʒɜː.ni/', 'chuyến đi, hành trình', 'The journey took about six hours.', 'A2', 5),
('d1111111-1111-4111-8111-111111111103', 'tourist', '/ˈtʊə.rɪst/', 'khách du lịch', 'Many tourists visit Ha Long Bay every year.', 'A2', 6),
('d1111111-1111-4111-8111-111111111103', 'hotel', '/həʊˈtel/', 'khách sạn', 'We stayed at a small hotel near the beach.', 'A1', 7),
('d1111111-1111-4111-8111-111111111103', 'map', '/mæp/', 'bản đồ', 'Can you read this map for me?', 'A1', 8),
-- Work & Office (B1)
('d2222222-2222-4222-8222-222222222201', 'colleague', '/ˈkɒl.iːɡ/', 'đồng nghiệp', 'My colleagues are very helpful.', 'B1', 1),
('d2222222-2222-4222-8222-222222222201', 'deadline', '/ˈded.laɪn/', 'hạn chót', 'The deadline for this report is Friday.', 'B1', 2),
('d2222222-2222-4222-8222-222222222201', 'meeting', '/ˈmiː.tɪŋ/', 'cuộc họp', 'We have a meeting every Monday morning.', 'A2', 3),
('d2222222-2222-4222-8222-222222222201', 'salary', '/ˈsæl.ər.i/', 'lương', 'She earns a good salary.', 'B1', 4),
('d2222222-2222-4222-8222-222222222201', 'schedule', '/ˈʃedʒ.uːl/', 'lịch trình', 'My schedule is very busy this week.', 'B1', 5),
('d2222222-2222-4222-8222-222222222201', 'experience', '/ɪkˈspɪə.ri.əns/', 'kinh nghiệm', 'He has five years of experience in IT.', 'B1', 6),
('d2222222-2222-4222-8222-222222222201', 'manager', '/ˈmæn.ɪ.dʒər/', 'quản lý', 'Our manager is very supportive.', 'A2', 7),
('d2222222-2222-4222-8222-222222222201', 'report', '/rɪˈpɔːt/', 'báo cáo', 'Please finish the report before lunch.', 'B1', 8),
-- IELTS: Education & Research (B2-C1)
('d3333333-3333-4333-8333-333333333301', 'analyze', '/ˈæn.əl.aɪz/', 'phân tích', 'Students must analyze the data carefully.', 'B2', 1),
('d3333333-3333-4333-8333-333333333301', 'research', '/rɪˈsɜːtʃ/', 'nghiên cứu', 'Her research focuses on climate change.', 'B2', 2),
('d3333333-3333-4333-8333-333333333301', 'academic', '/ˌæk.əˈdem.ɪk/', 'thuộc về học thuật', 'The university has high academic standards.', 'B2', 3),
('d3333333-3333-4333-8333-333333333301', 'assignment', '/əˈsaɪn.mənt/', 'bài tập lớn', 'The assignment is due next Monday.', 'B1', 4),
('d3333333-3333-4333-8333-333333333301', 'lecture', '/ˈlek.tʃər/', 'bài giảng', 'The lecture on economics was fascinating.', 'B2', 5),
('d3333333-3333-4333-8333-333333333301', 'theory', '/ˈθɪə.ri/', 'lý thuyết', 'This theory explains how memory works.', 'B2', 6),
-- TOEIC: Business Basics (B1-B2)
('d4444444-4444-4444-8444-444444444401', 'invoice', '/ˈɪn.vɔɪs/', 'hoá đơn', 'Please send the invoice by email.', 'B1', 1),
('d4444444-4444-4444-8444-444444444401', 'contract', '/ˈkɒn.trækt/', 'hợp đồng', 'Both companies signed the contract yesterday.', 'B1', 2),
('d4444444-4444-4444-8444-444444444401', 'shipment', '/ˈʃɪp.mənt/', 'lô hàng, sự vận chuyển', 'The shipment will arrive on Thursday.', 'B2', 3),
('d4444444-4444-4444-8444-444444444401', 'customer', '/ˈkʌs.tə.mər/', 'khách hàng', 'The customer asked for a discount.', 'A2', 4),
('d4444444-4444-4444-8444-444444444401', 'refund', '/ˈriː.fʌnd/', 'hoàn tiền', 'You can request a refund within 30 days.', 'B1', 5),
('d4444444-4444-4444-8444-444444444401', 'warehouse', '/ˈweə.haʊs/', 'nhà kho', 'The goods are stored in a warehouse near the port.', 'B2', 6);
