-- ============================================================================
-- MODULE TỪ VỰNG — chạy trong Supabase SQL Editor (sau schema.sql)
-- Gồm: 3 bảng + RLS + dữ liệu mẫu 3 chủ đề × 8 từ.
-- Phương pháp: Spaced Repetition bậc thang — level 0..6, mỗi lần trả lời đúng
-- lên 1 bậc và giãn lịch ôn (1→3→7→14→30→90 ngày), sai tụt 2 bậc + ôn lại ngay.
-- ============================================================================

-- ---------- 1. BẢNG ----------
create table public.vocab_topics (
  id           uuid primary key default gen_random_uuid(),
  title        text not null,
  description  text,
  order_index  int not null default 0,
  is_published boolean not null default true,
  created_at   timestamptz not null default now()
);

create table public.vocab_words (
  id          uuid primary key default gen_random_uuid(),
  topic_id    uuid not null references public.vocab_topics(id) on delete cascade,
  english     text not null,
  vietnamese  text not null,
  phonetic    text,   -- phiên âm IPA, ví dụ /ˈfæm.əl.i/
  example     text,   -- câu ví dụ tiếng Anh
  order_index int not null default 0
);

create index vocab_words_topic_idx on public.vocab_words (topic_id, order_index);

-- Tiến độ SRS của mỗi user với mỗi từ
create table public.vocab_progress (
  user_id          uuid not null references public.profiles(id) on delete cascade,
  word_id          uuid not null references public.vocab_words(id) on delete cascade,
  level            int not null default 0,            -- 0..6, >=5 = thành thạo
  due_at           timestamptz not null default now(), -- thời điểm đến hạn ôn
  correct_count    int not null default 0,
  wrong_count      int not null default 0,
  last_reviewed_at timestamptz,
  updated_at       timestamptz not null default now(),
  primary key (user_id, word_id)
);

create index vocab_progress_due_idx on public.vocab_progress (user_id, due_at);

-- Tự cập nhật updated_at (dùng lại hàm touch_updated_at có sẵn trong schema.sql)
create trigger vocab_progress_touch
  before update on public.vocab_progress
  for each row execute function public.touch_updated_at();

-- ---------- 2. RLS ----------
alter table public.vocab_topics   enable row level security;
alter table public.vocab_words    enable row level security;
alter table public.vocab_progress enable row level security;

create policy "vocab_topics_read" on public.vocab_topics
  for select to authenticated using (is_published);

create policy "vocab_words_read" on public.vocab_words
  for select to authenticated
  using (exists (
    select 1 from public.vocab_topics t
    where t.id = topic_id and t.is_published
  ));

create policy "vocab_progress_select_own" on public.vocab_progress
  for select to authenticated using (user_id = (select auth.uid()));

create policy "vocab_progress_insert_own" on public.vocab_progress
  for insert to authenticated with check (user_id = (select auth.uid()));

create policy "vocab_progress_update_own" on public.vocab_progress
  for update to authenticated
  using (user_id = (select auth.uid()))
  with check (user_id = (select auth.uid()));

-- ---------- 3. SEED: 3 chủ đề × 8 từ ----------
insert into public.vocab_topics (id, title, description, order_index) values
('a1111111-1111-4111-8111-111111111111', 'Gia đình & Bạn bè', 'Từ vựng về người thân và các mối quan hệ', 1),
('a2222222-2222-4222-8222-222222222222', 'Đồ ăn & Đồ uống', 'Từ vựng về ẩm thực hằng ngày', 2),
('a3333333-3333-4333-8333-333333333333', 'Công việc & Học tập', 'Từ vựng văn phòng và trường học', 3);

insert into public.vocab_words (topic_id, english, vietnamese, phonetic, example, order_index) values
-- Gia đình & Bạn bè
('a1111111-1111-4111-8111-111111111111', 'family', 'gia đình', '/ˈfæm.əl.i/', 'My family has five people.', 1),
('a1111111-1111-4111-8111-111111111111', 'parents', 'bố mẹ', '/ˈpeə.rənts/', 'My parents work in a hospital.', 2),
('a1111111-1111-4111-8111-111111111111', 'sibling', 'anh chị em ruột', '/ˈsɪb.lɪŋ/', 'I have two siblings: a brother and a sister.', 3),
('a1111111-1111-4111-8111-111111111111', 'cousin', 'anh chị em họ', '/ˈkʌz.ən/', 'My cousin lives in Da Nang.', 4),
('a1111111-1111-4111-8111-111111111111', 'aunt', 'cô, dì', '/ɑːnt/', 'My aunt makes delicious cakes.', 5),
('a1111111-1111-4111-8111-111111111111', 'uncle', 'chú, bác, cậu', '/ˈʌŋ.kəl/', 'My uncle taught me how to swim.', 6),
('a1111111-1111-4111-8111-111111111111', 'neighbor', 'hàng xóm', '/ˈneɪ.bər/', 'Our neighbor has a friendly dog.', 7),
('a1111111-1111-4111-8111-111111111111', 'friendship', 'tình bạn', '/ˈfrend.ʃɪp/', 'Their friendship began in primary school.', 8),
-- Đồ ăn & Đồ uống
('a2222222-2222-4222-8222-222222222222', 'breakfast', 'bữa sáng', '/ˈbrek.fəst/', 'I usually have breakfast at seven.', 1),
('a2222222-2222-4222-8222-222222222222', 'vegetable', 'rau củ', '/ˈvedʒ.tə.bəl/', 'You should eat more vegetables.', 2),
('a2222222-2222-4222-8222-222222222222', 'seafood', 'hải sản', '/ˈsiː.fuːd/', 'This restaurant is famous for its seafood.', 3),
('a2222222-2222-4222-8222-222222222222', 'dessert', 'món tráng miệng', '/dɪˈzɜːt/', 'We had ice cream for dessert.', 4),
('a2222222-2222-4222-8222-222222222222', 'delicious', 'ngon', '/dɪˈlɪʃ.əs/', 'The soup smells delicious.', 5),
('a2222222-2222-4222-8222-222222222222', 'hungry', 'đói', '/ˈhʌŋ.ɡri/', 'I am always hungry after school.', 6),
('a2222222-2222-4222-8222-222222222222', 'thirsty', 'khát nước', '/ˈθɜː.sti/', 'Running makes me thirsty.', 7),
('a2222222-2222-4222-8222-222222222222', 'flavor', 'hương vị', '/ˈfleɪ.vər/', 'This tea has a strong flavor.', 8),
-- Công việc & Học tập
('a3333333-3333-4333-8333-333333333333', 'colleague', 'đồng nghiệp', '/ˈkɒl.iːɡ/', 'My colleagues are very helpful.', 1),
('a3333333-3333-4333-8333-333333333333', 'deadline', 'hạn chót', '/ˈded.laɪn/', 'The deadline for this report is Friday.', 2),
('a3333333-3333-4333-8333-333333333333', 'meeting', 'cuộc họp', '/ˈmiː.tɪŋ/', 'We have a meeting every Monday morning.', 3),
('a3333333-3333-4333-8333-333333333333', 'salary', 'lương', '/ˈsæl.ər.i/', 'She earns a good salary.', 4),
('a3333333-3333-4333-8333-333333333333', 'homework', 'bài tập về nhà', '/ˈhəʊm.wɜːk/', 'I finish my homework before dinner.', 5),
('a3333333-3333-4333-8333-333333333333', 'knowledge', 'kiến thức', '/ˈnɒl.ɪdʒ/', 'Reading books gives you knowledge.', 6),
('a3333333-3333-4333-8333-333333333333', 'experience', 'kinh nghiệm', '/ɪkˈspɪə.ri.əns/', 'He has five years of experience in IT.', 7),
('a3333333-3333-4333-8333-333333333333', 'schedule', 'lịch trình', '/ˈʃedʒ.uːl/', 'My schedule is very busy this week.', 8);
