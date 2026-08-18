-- ============================================================================
-- MODULE DOC theo thang CEFR — 10 bai (B1)
-- Chay thang file nay la du. An toan chay lai nhieu lan.
-- ============================================================================

-- 1. CHO PHEP CAP DO CEFR
--    Bang lessons dang khoa cung level o 3 gia tri cu nen chen 'B1' se loi.
--    Noi long rang buoc, van giu 3 gia tri cu de cac bai da co khong hong.
alter table public.lessons drop constraint if exists lessons_level_check;
alter table public.lessons add constraint lessons_level_check
  check (level in ('beginner','intermediate','advanced','A1','A2','B1','B2','C1','C2'));

-- 2. XOA BAI CU CUNG ID roi chen lai (de chay lai file nay luon cap nhat)
delete from public.lessons where id in ('b3000000-0000-4000-8000-000000000001', 'b3000000-0000-4000-8000-000000000002', 'b3000000-0000-4000-8000-000000000003', 'b3000000-0000-4000-8000-000000000004', 'b3000000-0000-4000-8000-000000000005', 'b3000000-0000-4000-8000-000000000006', 'b3000000-0000-4000-8000-000000000007', 'b3000000-0000-4000-8000-000000000008', 'b3000000-0000-4000-8000-000000000009', 'b3000000-0000-4000-8000-000000000010');

-- 3. BAI DOC
insert into public.lessons (id, skill, title, description, level, content, order_index) values
('b3000000-0000-4000-8000-000000000001', 'reading', 'Working from Home', 'Lợi ích và mặt trái của việc làm việc tại nhà', 'B1', 'Ten years ago, most people travelled to an office every morning. Today, millions of people work from home instead. The change happened quickly, and many companies now let their staff choose where they work.

There are clear advantages. Workers save time and money because they do not have to commute. A person who spends an hour on the road each day gains about five hours every week. Many people also say they concentrate better at home, away from noisy offices and long meetings.

However, working from home is not perfect. Some people find it hard to separate work from private life. They open their laptop at seven in the morning and close it at nine at night. Others feel lonely because they rarely meet their colleagues face to face.

Experts suggest a few simple rules. Set fixed working hours and stop when they end. Create a small area that is used only for work. Meet your team in person at least once a month. With these habits, most workers can enjoy the freedom of home working without losing the benefits of an office.', 301),
('b3000000-0000-4000-8000-000000000002', 'reading', 'Learning a Language as an Adult', 'Vì sao người lớn vẫn học ngoại ngữ tốt', 'B1', 'Many adults believe they are too old to learn a new language. They remember how easily children pick up words and think the chance has passed. Research suggests this belief is only half true.

Children do have one clear advantage: pronunciation. Young learners copy sounds naturally and often speak without a strong accent. Adults usually keep some accent, no matter how long they study.

In other areas, however, adults do better. They already understand how grammar works, so they can learn rules quickly instead of guessing. They can also organise their study, use a dictionary, and connect new words to knowledge they already have. A child needs years of listening; an adult can reach a useful level in a few months of steady work.

The real difficulty is time. Adults are busy, and progress feels slow when you only study twenty minutes a day. But twenty minutes every day is far better than three hours once a week. Regular practice keeps new words alive in the memory.

So age is not the main problem. Habit is.', 302),
('b3000000-0000-4000-8000-000000000003', 'reading', 'Street Food Culture', 'Văn hoá ẩm thực đường phố và sức hút của nó', 'B1', 'In many Asian cities, the best food is not found in expensive restaurants. It is sold on the pavement, from small carts and plastic tables. Street food is cheap, fast and, for many people, part of daily life.

A typical seller cooks only one or two dishes. Because they make the same thing hundreds of times a day, they become extremely good at it. Customers return for years, and a good stall can support a family for two generations.

Street food is also social. People sit close together on low stools, share tables with strangers, and eat within minutes. Office workers, students and taxi drivers all queue at the same cart.

There are worries, of course. Hygiene is not always perfect, and some governments have tried to move sellers indoors. Yet many customers judge a stall by simple signs: a long queue, fresh ingredients, and a cook who washes their hands.

For visitors, street food offers something a restaurant cannot: the taste of ordinary life in a city.', 303),
('b3000000-0000-4000-8000-000000000004', 'reading', 'Why Sleep Matters', 'Giấc ngủ ảnh hưởng thế nào tới trí nhớ và sức khoẻ', 'B1', 'Most adults need between seven and nine hours of sleep, but many get far less. People often treat sleep as time that could be used for something more useful. Scientists disagree.

During sleep, the brain does important work. It sorts through the day''s events and moves useful information into long-term memory. This is why students who sleep after studying remember more than students who stay awake all night. The body also repairs muscle and produces hormones that control appetite.

Losing sleep has quick effects. After one bad night, people react more slowly and make more mistakes. After several bad nights, they become irritable and find it harder to concentrate. Long-term poor sleep is linked to heart problems and weight gain.

The good news is that habits help. Go to bed and get up at similar times, even at weekends. Keep the bedroom dark and slightly cool. Avoid coffee after the early afternoon, and put the phone in another room.

Sleep is not lost time. It is when the body prepares for tomorrow.', 304),
('b3000000-0000-4000-8000-000000000005', 'reading', 'Phones and Attention', 'Điện thoại ảnh hưởng tới khả năng tập trung', 'B1', 'The average person checks their phone more than a hundred times a day. Most of these checks last only a few seconds, so they feel harmless. Researchers say the cost is higher than it looks.

The problem is not the time itself but what happens afterwards. When you stop a task to look at a message, your attention does not return immediately. It can take several minutes to reach the same level of concentration again. If this happens twenty times in a morning, most of the morning is spent starting again.

Phones are designed to attract us. Notifications, bright colours and endless lists of new content all encourage one more look. This is not an accident; companies earn money from our attention.

Some simple changes help. Turn off notifications for apps that are not urgent. Keep the phone out of sight while working, not just face down. Choose two or three fixed times a day to check messages.

Nobody needs to give up their phone. The aim is to decide when it speaks to you.', 305),
('b3000000-0000-4000-8000-000000000006', 'reading', 'Getting Around a Big City', 'Các cách di chuyển trong thành phố lớn', 'B1', 'Every large city faces the same question: how should millions of people move around each day? The answers are different, but the problems are similar.

Cars offer comfort and privacy. Unfortunately, they also take up a great deal of space. A single bus carries as many passengers as forty cars, using a fraction of the road. When too many people drive, everyone moves slowly, including the drivers.

Public transport is cheaper and cleaner, but it only works if it is reliable. People will accept a crowded train if it arrives every five minutes. They will not accept an empty bus that comes once an hour and is often late.

Recently, many cities have returned to an older idea: walking and cycling. Wide pavements and protected bike lanes cost far less than new roads. They also make streets safer and shops busier.

There is no perfect system. The best cities simply give people a real choice, so that driving becomes one option among several rather than the only one.', 306),
('b3000000-0000-4000-8000-000000000007', 'reading', 'Small Habits, Big Savings', 'Thói quen nhỏ giúp tiết kiệm tiền', 'B1', 'People often believe that saving money requires a large salary. In fact, what matters more is the pattern of small daily decisions.

Consider a coffee bought on the way to work. One cup costs very little, but five cups a week for a year add up to a serious amount. The same is true of unused subscriptions, delivery fees and things bought simply because they were on sale.

Financial advisers suggest a simple exercise. For one month, write down every payment, however small. Most people are surprised: the largest problem is rarely the rent or the electricity bill. It is the many small payments nobody remembers making.

Another useful habit is to save first. Instead of saving whatever is left at the end of the month, move a fixed sum into a separate account on payday. Because the money disappears immediately, people adjust their spending without noticing.

None of this is complicated. The difficulty is that small habits feel unimportant, and that is exactly why they are powerful.', 307),
('b3000000-0000-4000-8000-000000000008', 'reading', 'The Weather Is Changing', 'Biến đổi thời tiết ảnh hưởng tới đời sống hằng ngày', 'B1', 'Farmers are often the first to notice that the weather is changing. They do not read reports; they simply see that the rain no longer arrives when it used to.

In many countries, the wet season now starts later and ends suddenly. Rice planted at the traditional time may sit in dry soil for weeks. When the rain finally comes, it falls too heavily, and young plants are washed away. A crop that once needed careful timing now needs luck.

Cities feel the change differently. Concrete and metal hold heat, so a hot day in the city can be several degrees warmer than in the countryside nearby. Older people and outdoor workers suffer most.

Governments are responding slowly. Some are building better drainage; others are planting trees along main roads, because shade is cheap and effective.

Ordinary people are adapting too. Farmers plant different varieties, shops open earlier to avoid the afternoon heat, and families keep water stored at home. Life continues, but the old rules no longer work.', 308),
('b3000000-0000-4000-8000-000000000009', 'reading', 'Making Friends After Thirty', 'Vì sao kết bạn khi trưởng thành lại khó hơn', 'B1', 'At school and university, friendship happens almost by accident. You see the same people every day, you share the same timetable, and there is plenty of free time. After thirty, all three of these conditions usually disappear.

Adults meet fewer new people, and the people they do meet are often busy. A friendly conversation at work may never turn into anything more, simply because nobody has an evening free. Many adults report that they have colleagues they like but no close friends nearby.

Sociologists say that friendship needs three things: repeated contact, a shared activity, and time without a clear purpose. A weekly football game provides all three. A single dinner every six months provides none of them.

This explains why hobbies matter more than they seem to. Joining a class, a running group or a choir is not only about the activity. It creates a reason to see the same faces again and again.

Friendship after thirty rarely happens by accident. It has to be arranged.', 309),
('b3000000-0000-4000-8000-000000000010', 'reading', 'Reading More Books', 'Cách xây dựng thói quen đọc sách', 'B1', 'Many people say they want to read more but finish only two or three books a year. They rarely lack interest. What they lack is a system.

The first mistake is choosing books that sound impressive rather than books that are enjoyable. A difficult classic left unfinished on a shelf teaches nothing. A simple novel that keeps you turning pages builds the habit, and the habit makes harder books possible later.

The second mistake is waiting for long free periods. Very few adults have two quiet hours. However, almost everyone has ten minutes while waiting, travelling or drinking coffee. Ten minutes a day is roughly fifteen books a year.

A third idea is to allow yourself to stop. Many readers force themselves through a book they dislike and then read nothing for months. Leaving a bad book is not failure; it protects the habit.

Reading is less about discipline than about removing small obstacles. Keep a book where you can reach it, and the rest usually follows.', 310);

-- 4. CAU HOI
insert into public.exercises (lesson_id, type, prompt, options, accepted_answers, explanation, order_index) values
('b3000000-0000-4000-8000-000000000001', 'multiple_choice', 'How much time can a person save each week by not commuting, according to the passage?', '["About one hour", "About three hours", "About five hours", "About ten hours"]', array['About five hours'], 'Đoạn 2: người mất một tiếng đi lại mỗi ngày sẽ tiết kiệm được khoảng năm tiếng mỗi tuần.', 1),
('b3000000-0000-4000-8000-000000000001', 'true_false', 'The passage says that all companies now allow their staff to work from home.', null, array['false'], 'Bài viết nói ''many companies'' (nhiều công ty), không phải tất cả.', 2),
('b3000000-0000-4000-8000-000000000001', 'multiple_choice', 'What problem with time do some home workers have?', '["They start work too late", "They work far too many hours", "They forget their meetings", "They travel too much"]', array['They work far too many hours'], 'Đoạn 3: họ mở máy lúc bảy giờ sáng và đóng lúc chín giờ tối.', 3),
('b3000000-0000-4000-8000-000000000001', 'true_false', 'Experts advise meeting your colleagues in person from time to time.', null, array['true'], 'Đoạn 4: ''Meet your team in person at least once a month.''', 4),
('b3000000-0000-4000-8000-000000000001', 'multiple_choice', 'In this passage, the word ''commute'' means', '["to work at home", "to travel between home and work", "to take a long holiday", "to change jobs often"]', array['to travel between home and work'], '''Commute'' nghĩa là đi lại giữa nhà và nơi làm việc.', 5),
('b3000000-0000-4000-8000-000000000002', 'multiple_choice', 'What advantage do children have over adults?', '["A larger vocabulary", "Better pronunciation", "More free time", "A better memory for rules"]', array['Better pronunciation'], 'Đoạn 2: trẻ em bắt chước âm thanh tự nhiên và thường nói không bị nặng giọng.', 1),
('b3000000-0000-4000-8000-000000000002', 'true_false', 'According to the passage, adults understand grammar rules more easily than children.', null, array['true'], 'Đoạn 3: người lớn đã hiểu ngữ pháp hoạt động thế nào nên học quy tắc rất nhanh.', 2),
('b3000000-0000-4000-8000-000000000002', 'multiple_choice', 'Which study habit does the writer recommend?', '["Three hours once a week", "Twenty minutes every day", "One full day each month", "Only studying before a test"]', array['Twenty minutes every day'], 'Đoạn 4: hai mươi phút mỗi ngày tốt hơn nhiều so với ba tiếng một tuần một lần.', 3),
('b3000000-0000-4000-8000-000000000002', 'true_false', 'The writer thinks age is the main reason adults fail to learn a language.', null, array['false'], 'Câu cuối: ''So age is not the main problem. Habit is.''', 4),
('b3000000-0000-4000-8000-000000000002', 'multiple_choice', 'What is the main idea of the passage?', '["Children always learn faster than adults", "Adults can learn well if they practise regularly", "Pronunciation is the most important skill", "Grammar should be learned last"]', array['Adults can learn well if they practise regularly'], 'Toàn bài lập luận rằng người lớn học tốt nếu luyện tập đều đặn.', 5),
('b3000000-0000-4000-8000-000000000003', 'multiple_choice', 'Why do street food sellers usually cook only one or two dishes?', '["They cannot afford more ingredients", "Repeating the same dish makes them very skilled", "The government does not allow more", "Customers only order one dish"]', array['Repeating the same dish makes them very skilled'], 'Đoạn 2: vì làm cùng một món hàng trăm lần mỗi ngày nên họ trở nên cực kỳ giỏi.', 1),
('b3000000-0000-4000-8000-000000000003', 'true_false', 'According to the passage, street food stalls are used only by poor people.', null, array['false'], 'Đoạn 3: nhân viên văn phòng, sinh viên và tài xế taxi đều xếp hàng ở cùng một xe đẩy.', 2),
('b3000000-0000-4000-8000-000000000003', 'multiple_choice', 'What concern about street food is mentioned?', '["The price is rising quickly", "Hygiene is not always good", "The food is too spicy", "There are too few sellers"]', array['Hygiene is not always good'], 'Đoạn 4: vệ sinh không phải lúc nào cũng hoàn hảo.', 3),
('b3000000-0000-4000-8000-000000000003', 'true_false', 'Some customers use the length of the queue to judge a stall.', null, array['true'], 'Đoạn 4: khách đánh giá quán qua hàng dài, nguyên liệu tươi và người nấu rửa tay.', 4),
('b3000000-0000-4000-8000-000000000003', 'multiple_choice', 'What does the writer say street food gives visitors?', '["The cheapest possible meal", "A taste of ordinary life in a city", "A quiet place to rest", "A chance to learn cooking"]', array['A taste of ordinary life in a city'], 'Câu cuối: món ăn đường phố cho du khách hương vị của đời sống thường ngày.', 5),
('b3000000-0000-4000-8000-000000000004', 'multiple_choice', 'How many hours of sleep do most adults need?', '["Four to five hours", "Five to six hours", "Seven to nine hours", "Ten to twelve hours"]', array['Seven to nine hours'], 'Câu đầu tiên: hầu hết người lớn cần từ bảy đến chín tiếng.', 1),
('b3000000-0000-4000-8000-000000000004', 'true_false', 'The passage says students who sleep after studying remember more.', null, array['true'], 'Đoạn 2: sinh viên ngủ sau khi học nhớ nhiều hơn người thức trắng đêm.', 2),
('b3000000-0000-4000-8000-000000000004', 'multiple_choice', 'What happens after only one night of bad sleep?', '["People gain weight", "People react more slowly", "People develop heart problems", "People stop feeling hungry"]', array['People react more slowly'], 'Đoạn 3: sau một đêm ngủ kém, người ta phản ứng chậm hơn và mắc nhiều lỗi hơn.', 3),
('b3000000-0000-4000-8000-000000000004', 'true_false', 'The writer advises keeping the bedroom warm and bright.', null, array['false'], 'Đoạn 4: khuyên giữ phòng ngủ tối và hơi mát.', 4),
('b3000000-0000-4000-8000-000000000004', 'multiple_choice', 'What is the writer''s main message?', '["Sleep is wasted time", "Sleep is necessary for the body and mind", "Only students need enough sleep", "Coffee helps you sleep better"]', array['Sleep is necessary for the body and mind'], 'Câu cuối: ngủ không phải thời gian lãng phí, đó là lúc cơ thể chuẩn bị cho ngày mai.', 5),
('b3000000-0000-4000-8000-000000000005', 'multiple_choice', 'According to the passage, why is checking a phone costly?', '["It uses a lot of battery", "Attention takes minutes to return", "It is expensive to use data", "It damages the eyes"]', array['Attention takes minutes to return'], 'Đoạn 2: sau khi dừng việc để xem tin nhắn, phải mất vài phút mới tập trung lại được.', 1),
('b3000000-0000-4000-8000-000000000005', 'true_false', 'The passage says phone companies design apps to attract our attention on purpose.', null, array['true'], 'Đoạn 3: ''This is not an accident; companies earn money from our attention.''', 2),
('b3000000-0000-4000-8000-000000000005', 'multiple_choice', 'What does the writer suggest doing with the phone while working?', '["Put it face down on the desk", "Keep it out of sight", "Give it to a colleague", "Turn it off completely"]', array['Keep it out of sight'], 'Đoạn 4: để điện thoại khuất tầm mắt, không chỉ úp mặt xuống.', 3),
('b3000000-0000-4000-8000-000000000005', 'true_false', 'The writer thinks people should stop using phones completely.', null, array['false'], 'Câu cuối: không ai cần bỏ điện thoại, mục tiêu là tự quyết định khi nào dùng.', 4),
('b3000000-0000-4000-8000-000000000005', 'multiple_choice', 'In the passage, ''notifications'' are', '["long articles", "alerts that tell you about something new", "phone bills", "photographs"]', array['alerts that tell you about something new'], '''Notification'' là thông báo báo cho bạn biết có gì đó mới.', 5),
('b3000000-0000-4000-8000-000000000006', 'multiple_choice', 'How many cars does one bus replace, according to the passage?', '["About ten", "About twenty", "About forty", "About one hundred"]', array['About forty'], 'Đoạn 2: một chiếc xe buýt chở được số khách bằng bốn mươi ô tô.', 1),
('b3000000-0000-4000-8000-000000000006', 'true_false', 'The passage says public transport works only if it is reliable.', null, array['true'], 'Đoạn 3: giao thông công cộng rẻ và sạch hơn nhưng chỉ hiệu quả nếu đáng tin cậy.', 2),
('b3000000-0000-4000-8000-000000000006', 'multiple_choice', 'Why do some cities support walking and cycling?', '["They are traditional", "They cost far less than new roads", "They are faster than trains", "They need no planning"]', array['They cost far less than new roads'], 'Đoạn 4: vỉa hè rộng và làn xe đạp có rào chắn rẻ hơn nhiều so với làm đường mới.', 3),
('b3000000-0000-4000-8000-000000000006', 'true_false', 'According to the writer, there is one perfect transport system for every city.', null, array['false'], 'Đoạn cuối: ''There is no perfect system.''', 4),
('b3000000-0000-4000-8000-000000000006', 'multiple_choice', 'What does the writer say the best cities do?', '["Ban all private cars", "Give people a real choice", "Build only new roads", "Make transport free"]', array['Give people a real choice'], 'Câu cuối: thành phố tốt nhất cho người dân lựa chọn thật sự.', 5),
('b3000000-0000-4000-8000-000000000007', 'multiple_choice', 'What does the writer say matters more than a large salary?', '["Living in a cheap city", "The pattern of small daily decisions", "Having a second job", "Knowing about investment"]', array['The pattern of small daily decisions'], 'Đoạn 1: điều quan trọng hơn là thói quen chi tiêu nhỏ hằng ngày.', 1),
('b3000000-0000-4000-8000-000000000007', 'true_false', 'According to the passage, most people''s biggest money problem is rent.', null, array['false'], 'Đoạn 3: vấn đề lớn nhất hiếm khi là tiền thuê nhà hay tiền điện.', 2),
('b3000000-0000-4000-8000-000000000007', 'multiple_choice', 'What exercise do financial advisers suggest?', '["Stop buying coffee for a year", "Write down every payment for a month", "Open three bank accounts", "Ask for a higher salary"]', array['Write down every payment for a month'], 'Đoạn 3: ghi lại mọi khoản chi trong một tháng, dù nhỏ đến đâu.', 3),
('b3000000-0000-4000-8000-000000000007', 'true_false', 'The writer advises moving money into savings at the start of the month, on payday.', null, array['true'], 'Đoạn 4: chuyển một khoản cố định sang tài khoản riêng ngay ngày nhận lương.', 4),
('b3000000-0000-4000-8000-000000000007', 'multiple_choice', 'Why are small habits powerful, according to the writer?', '["Because they cost a lot", "Because they feel unimportant", "Because banks reward them", "Because they are difficult"]', array['Because they feel unimportant'], 'Câu cuối: thói quen nhỏ có vẻ không quan trọng, và chính vì thế chúng mạnh.', 5),
('b3000000-0000-4000-8000-000000000008', 'multiple_choice', 'Why are farmers often the first to notice the change?', '["They read scientific reports", "They see that rain no longer comes as before", "They travel a lot", "They speak to the government"]', array['They see that rain no longer comes as before'], 'Đoạn 1: họ không đọc báo cáo, họ chỉ thấy mưa không còn đến đúng như trước.', 1),
('b3000000-0000-4000-8000-000000000008', 'true_false', 'The passage says cities can be hotter than the countryside nearby.', null, array['true'], 'Đoạn 3: bê tông và kim loại giữ nhiệt nên thành phố nóng hơn vùng quê vài độ.', 2),
('b3000000-0000-4000-8000-000000000008', 'multiple_choice', 'Why are some governments planting trees along roads?', '["Trees are beautiful", "Shade is cheap and effective", "Trees stop the rain", "People asked for fruit"]', array['Shade is cheap and effective'], 'Đoạn 4: trồng cây vì bóng mát vừa rẻ vừa hiệu quả.', 3),
('b3000000-0000-4000-8000-000000000008', 'true_false', 'According to the passage, ordinary people are doing nothing to adapt.', null, array['false'], 'Đoạn cuối: nông dân đổi giống, cửa hàng mở sớm hơn, các gia đình trữ nước.', 4),
('b3000000-0000-4000-8000-000000000008', 'multiple_choice', 'What does the writer mean by ''the old rules no longer work''?', '["Laws have been changed", "Traditional timing and habits are no longer reliable", "Schools teach differently", "Farming has stopped completely"]', array['Traditional timing and habits are no longer reliable'], 'Ý là cách làm và thời điểm truyền thống giờ không còn đúng nữa.', 5),
('b3000000-0000-4000-8000-000000000009', 'multiple_choice', 'Which three conditions make friendship easy at school, according to the passage?', '["Money, space and freedom", "Seeing the same people, a shared timetable and free time", "Sport, music and study", "Family, teachers and exams"]', array['Seeing the same people, a shared timetable and free time'], 'Đoạn 1: gặp cùng những người mỗi ngày, chung thời khoá biểu, và nhiều thời gian rảnh.', 1),
('b3000000-0000-4000-8000-000000000009', 'true_false', 'The passage says many adults have colleagues they like but no close friends nearby.', null, array['true'], 'Đoạn 2 nêu đúng điều này.', 2),
('b3000000-0000-4000-8000-000000000009', 'multiple_choice', 'What do sociologists say friendship needs?', '["Money and free time", "Repeated contact, a shared activity and unplanned time", "A large family", "Living in the same street"]', array['Repeated contact, a shared activity and unplanned time'], 'Đoạn 3 liệt kê đúng ba yếu tố này.', 3),
('b3000000-0000-4000-8000-000000000009', 'true_false', 'According to the writer, a dinner every six months is enough to build a friendship.', null, array['false'], 'Đoạn 3: bữa tối sáu tháng một lần không đáp ứng yếu tố nào cả.', 4),
('b3000000-0000-4000-8000-000000000009', 'multiple_choice', 'Why does the writer say hobbies matter?', '["They are relaxing", "They create a reason to see the same people repeatedly", "They are cheap", "They improve health"]', array['They create a reason to see the same people repeatedly'], 'Đoạn 4: tham gia lớp học hay nhóm chạy tạo lý do gặp lại cùng những người đó.', 5),
('b3000000-0000-4000-8000-000000000010', 'multiple_choice', 'What does the writer say most people lack?', '["Interest in reading", "A system", "Money for books", "Good eyesight"]', array['A system'], 'Đoạn 1: họ hiếm khi thiếu hứng thú, thứ họ thiếu là một cách làm.', 1),
('b3000000-0000-4000-8000-000000000010', 'true_false', 'The writer recommends starting with difficult classic books.', null, array['false'], 'Đoạn 2: nên chọn sách dễ đọc và hấp dẫn trước, sách khó để sau.', 2),
('b3000000-0000-4000-8000-000000000010', 'multiple_choice', 'How many books a year can ten minutes of daily reading produce?', '["About three", "About eight", "About fifteen", "About thirty"]', array['About fifteen'], 'Đoạn 3: mười phút mỗi ngày tương đương khoảng mười lăm cuốn một năm.', 3),
('b3000000-0000-4000-8000-000000000010', 'true_false', 'According to the passage, giving up a book you dislike protects the reading habit.', null, array['true'], 'Đoạn 4: bỏ dở một cuốn sách dở không phải thất bại, nó bảo vệ thói quen đọc.', 4),
('b3000000-0000-4000-8000-000000000010', 'multiple_choice', 'What is the writer''s main advice?', '["Read only classics", "Remove small obstacles to reading", "Read for two hours a day", "Buy more books"]', array['Remove small obstacles to reading'], 'Câu cuối: đọc sách ít phụ thuộc kỷ luật mà chủ yếu là dẹp bỏ những trở ngại nhỏ.', 5);
