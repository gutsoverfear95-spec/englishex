-- Thong tin 4 cuon sach. Chay TRUOC khi nap chuong (CSV hoac SQL).
-- Tat ca deu la sach DA HET BAN QUYEN, nguon Project Gutenberg.
-- An toan chay lai nhieu lan.

insert into public.books (id, slug, title, author, year, level, blurb,
  cover_emoji, word_count, chapter_count, gutenberg_id, sort_order) values
  ('804649e6-99d8-49da-aa41-309bc3a3d846', 'alice-in-wonderland', 'Alice''s Adventures in Wonderland', 'Lewis Carroll', 1865, 'B1', 'Cô bé Alice rơi xuống hang thỏ và lạc vào một thế giới phi lý. Câu ngắn, lời thoại nhiều, dễ đọc nhất trong bốn cuốn.', '🐰', 26371, 12, 11, 1),
  ('8a2ee8ba-fa79-47f3-a660-97e001e7f1fe', 'sherlock-holmes', 'The Adventures of Sherlock Holmes', 'Arthur Conan Doyle', 1892, 'B2', 'Mười hai vụ án độc lập của thám tử Sherlock Holmes. Đọc lẻ từng truyện được, không cần nhớ cốt truyện dài.', '🔍', 104350, 35, 1661, 2),
  ('663a6e4f-adba-44b9-a289-a17856cd3409', 'the-great-gatsby', 'The Great Gatsby', 'F. Scott Fitzgerald', 1925, 'B2', 'Nước Mỹ những năm 1920 nhìn qua mắt một người hàng xóm của Gatsby. Tiếng Anh hiện đại, câu ngắn, nhưng nhiều ẩn dụ.', '🥂', 48143, 19, 64317, 3),
  ('09634a45-2244-491f-a154-dcc2f947f8a5', 'pride-and-prejudice', 'Pride and Prejudice', 'Jane Austen', 1813, 'C1', 'Elizabeth Bennet và ông Darcy. Văn 1813, câu dài và trang trọng — khó nhất trong bốn tiểu thuyết, nên để dành.', '💐', 121570, 64, 1342, 4),
  ('e2960e44-7498-4fa8-a1d8-f552af12b49a', 'child-history-england', 'A Child''s History of England', 'Charles Dickens', 1853, 'B2', 'Lịch sử nước Anh do Dickens kể lại cho con mình nghe — giọng kể chuyện chứ không phải giọng giáo khoa. Dễ vào nhất trong sách sử.', '🏰', 162424, 66, 699, 5),
  ('8268eabe-4b74-414e-a1f6-5a266d184560', 'short-history-world', 'A Short History of the World', 'H. G. Wells', 1922, 'C1', 'Cả lịch sử thế giới trong 66 chương ngắn. Chương gọn nhưng dày tên riêng (Babylon, Assyria...) nên đọc chậm hơn tiểu thuyết.', '🌍', 107372, 68, 35461, 6)
on conflict (id) do update set
  word_count = excluded.word_count,
  chapter_count = excluded.chapter_count,
  blurb = excluded.blurb;
