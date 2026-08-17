# -*- coding: utf-8 -*-
GROUP = 7  # tu thu 301-350
DATA = [
("sound","/saʊnd/","âm thanh; nghe có vẻ","A2",[
 ("I heard a strange sound.","Tôi nghe một âm thanh lạ."),
 ("That sounds like a good plan.","Nghe có vẻ là một kế hoạch hay."),
 ("Turn down the sound, please.","Vặn nhỏ âm thanh giúp nhé.")]),
("sure","/ʃʊr/","chắc chắn","A1",[
 ("Are you sure about that?","Bạn chắc chắn về điều đó chứ?"),
 ("I am not sure yet.","Tôi chưa chắc lắm."),
 ("Make sure the door is locked.","Hãy chắc chắn là cửa đã khoá.")]),
("able","/ˈeɪbl/","có khả năng","A2",[
 ("She is able to swim well.","Cô ấy bơi giỏi."),
 ("Will you be able to come?","Bạn đến được không?"),
 ("He was not able to finish.","Anh ấy không thể hoàn thành.")]),
("team","/tiːm/","đội, nhóm","A1",[
 ("Our team won the match.","Đội chúng tôi thắng trận."),
 ("She joined the sales team.","Cô ấy vào nhóm kinh doanh."),
 ("A good team works together.","Một đội tốt biết phối hợp.")]),
("second","/ˈsekənd/","giây; thứ hai","A1",[
 ("Wait a second, please.","Đợi một giây nhé."),
 ("This is my second visit.","Đây là lần thứ hai tôi đến."),
 ("The light changes every thirty seconds.","Đèn đổi mỗi ba mươi giây.")]),
("face","/feɪs/","khuôn mặt; đối mặt","A1",[
 ("She has a friendly face.","Cô ấy có khuôn mặt thân thiện."),
 ("Wash your face before bed.","Rửa mặt trước khi ngủ."),
 ("We must face the problem.","Chúng ta phải đối mặt với vấn đề.")]),
("information","/ˌɪnfərˈmeɪʃn/","thông tin","A2",[
 ("I need more information.","Tôi cần thêm thông tin."),
 ("The information is on the website.","Thông tin có trên trang web."),
 ("Ask at the information desk.","Hỏi ở quầy thông tin.")]),
("low","/loʊ/","thấp","A1",[
 ("The price is quite low.","Giá khá thấp."),
 ("Speak in a low voice.","Nói nhỏ thôi."),
 ("The battery is low.","Pin yếu rồi.")]),
("morning","/ˈmɔːrnɪŋ/","buổi sáng","A1",[
 ("I run every morning.","Tôi chạy bộ mỗi sáng."),
 ("Good morning, everyone.","Chào buổi sáng cả nhà."),
 ("The morning air is fresh.","Không khí buổi sáng trong lành.")]),
("result","/rɪˈzʌlt/","kết quả","A2",[
 ("The result was a surprise.","Kết quả thật bất ngờ."),
 ("We will know the result tomorrow.","Mai chúng ta sẽ biết kết quả."),
 ("Hard work brings good results.","Chăm chỉ mang lại kết quả tốt.")]),
("wall","/wɔːl/","bức tường","A1",[
 ("The wall is painted white.","Bức tường được sơn trắng."),
 ("She hung a photo on the wall.","Cô ấy treo ảnh lên tường."),
 ("There is a crack in the wall.","Có vết nứt trên tường.")]),
("air","/er/","không khí","A1",[
 ("The air here is very clean.","Không khí ở đây rất sạch."),
 ("Open the window for fresh air.","Mở cửa sổ cho thoáng khí."),
 ("The air is cold this morning.","Sáng nay không khí lạnh.")]),
("food","/fuːd/","thức ăn","A1",[
 ("The food here is delicious.","Đồ ăn ở đây rất ngon."),
 ("We bought food for the week.","Chúng tôi mua đồ ăn cho cả tuần."),
 ("Do not waste food.","Đừng lãng phí thức ăn.")]),
("above","/əˈbʌv/","phía trên","A2",[
 ("The lamp is above the table.","Cái đèn ở phía trên bàn."),
 ("Look at the sky above us.","Nhìn bầu trời trên đầu chúng ta."),
 ("Her score is above average.","Điểm của cô ấy trên trung bình.")]),
("ask","/æsk/","hỏi","A1",[
 ("Can I ask a question?","Tôi hỏi một câu được không?"),
 ("She asked me for help.","Cô ấy nhờ tôi giúp."),
 ("Ask him where the bank is.","Hỏi anh ấy ngân hàng ở đâu.")]),
("best","/best/","tốt nhất","A1",[
 ("She is my best friend.","Cô ấy là bạn thân nhất của tôi."),
 ("This is the best restaurant here.","Đây là nhà hàng ngon nhất ở đây."),
 ("Do your best.","Hãy cố gắng hết sức.")]),
("level","/ˈlevl/","mức độ, trình độ","A2",[
 ("Her English level is very good.","Trình độ tiếng Anh của cô ấy rất tốt."),
 ("The water level is rising.","Mực nước đang dâng."),
 ("This book is for a higher level.","Cuốn sách này dành cho trình độ cao hơn.")]),
("love","/lʌv/","yêu, thích","A1",[
 ("I love this song.","Tôi rất thích bài hát này."),
 ("She loves her family.","Cô ấy yêu gia đình mình."),
 ("Love is more important than money.","Tình yêu quan trọng hơn tiền bạc.")]),
("class","/klæs/","lớp học","A1",[
 ("My class starts at eight.","Lớp tôi bắt đầu lúc tám giờ."),
 ("There are thirty students in the class.","Lớp có ba mươi học sinh."),
 ("She is the best in her class.","Cô ấy giỏi nhất lớp.")]),
("war","/wɔːr/","chiến tranh","B1",[
 ("The war lasted ten years.","Cuộc chiến kéo dài mười năm."),
 ("Nobody wins a war.","Không ai thắng trong chiến tranh."),
 ("His grandfather fought in the war.","Ông anh ấy từng tham chiến.")]),
("easy","/ˈiːzi/","dễ","A1",[
 ("This exercise is very easy.","Bài tập này rất dễ."),
 ("It is not easy to learn a language.","Học một ngôn ngữ không dễ."),
 ("Take it easy.","Cứ từ từ thôi.")]),
("price","/praɪs/","giá","A1",[
 ("What is the price of this?","Cái này giá bao nhiêu?"),
 ("The price includes delivery.","Giá đã gồm phí giao hàng."),
 ("Prices are rising this year.","Năm nay giá đang tăng.")]),
("effect","/ɪˈfekt/","tác động, hiệu quả","B1",[
 ("The medicine had a good effect.","Thuốc có tác dụng tốt."),
 ("Rain has an effect on the crops.","Mưa ảnh hưởng tới mùa màng."),
 ("The new rule takes effect today.","Quy định mới có hiệu lực hôm nay.")]),
("plan","/plæn/","kế hoạch","A1",[
 ("What is your plan for tomorrow?","Kế hoạch ngày mai của bạn là gì?"),
 ("We need a better plan.","Chúng ta cần một kế hoạch tốt hơn."),
 ("They plan to move next year.","Họ dự định chuyển đi năm sau.")]),
("chance","/tʃæns/","cơ hội","A2",[
 ("Give me one more chance.","Cho tôi thêm một cơ hội."),
 ("There is a chance of rain.","Có khả năng mưa."),
 ("This is a good chance to learn.","Đây là cơ hội tốt để học.")]),
("hard","/hɑːrd/","khó; cứng; chăm chỉ","A1",[
 ("This question is very hard.","Câu hỏi này rất khó."),
 ("She works hard every day.","Cô ấy làm việc chăm chỉ mỗi ngày."),
 ("The bed is too hard.","Cái giường cứng quá.")]),
("energy","/ˈenərdʒi/","năng lượng","B1",[
 ("I have no energy today.","Hôm nay tôi không có sức."),
 ("This machine saves energy.","Cái máy này tiết kiệm năng lượng."),
 ("Children have a lot of energy.","Trẻ con nhiều năng lượng lắm.")]),
("save","/seɪv/","tiết kiệm; cứu","A2",[
 ("We save money every month.","Chúng tôi tiết kiệm tiền mỗi tháng."),
 ("Save the file before closing.","Lưu tệp trước khi đóng."),
 ("He helped save a life.","Anh ấy đã góp phần cứu một mạng người.")]),
("sport","/spɔːrt/","thể thao","A1",[
 ("Football is my favorite sport.","Bóng đá là môn thể thao tôi thích."),
 ("Sport keeps you healthy.","Thể thao giúp bạn khoẻ mạnh."),
 ("She plays a lot of sport.","Cô ấy chơi nhiều môn thể thao.")]),
("sing","/sɪŋ/","hát","A1",[
 ("She can sing very well.","Cô ấy hát rất hay."),
 ("The birds sing every morning.","Chim hót mỗi sáng."),
 ("Let us sing together.","Chúng ta hát cùng nhau nào.")]),
("road","/roʊd/","con đường","A1",[
 ("This road leads to the beach.","Con đường này dẫn ra biển."),
 ("The road is wet after the rain.","Đường ướt sau cơn mưa."),
 ("Be careful crossing the road.","Cẩn thận khi qua đường.")]),
("church","/tʃɜːrtʃ/","nhà thờ","A2",[
 ("The old church is on the hill.","Nhà thờ cổ nằm trên đồi."),
 ("They married in this church.","Họ cưới nhau ở nhà thờ này."),
 ("The church bells ring at six.","Chuông nhà thờ đổ lúc sáu giờ.")]),
("health","/helθ/","sức khoẻ","A2",[
 ("Health is more important than money.","Sức khoẻ quan trọng hơn tiền bạc."),
 ("Smoking is bad for your health.","Hút thuốc hại sức khoẻ."),
 ("She is in good health.","Cô ấy có sức khoẻ tốt.")]),
("close","/kloʊz/","đóng; gần","A1",[
 ("Please close the window.","Vui lòng đóng cửa sổ."),
 ("The shop closes at nine.","Cửa hàng đóng lúc chín giờ."),
 ("My house is close to the school.","Nhà tôi gần trường.")]),
("care","/ker/","quan tâm, chăm sóc","A2",[
 ("She cares for her old parents.","Cô ấy chăm sóc bố mẹ già."),
 ("Take care of yourself.","Hãy giữ gìn sức khoẻ."),
 ("I do not care about that.","Tôi không quan tâm chuyện đó.")]),
("kid","/kɪd/","đứa trẻ","A2",[
 ("The kids are playing outside.","Bọn trẻ đang chơi ngoài kia."),
 ("She has two kids.","Cô ấy có hai đứa con."),
 ("When I was a kid, I loved swimming.","Hồi bé tôi rất thích bơi.")]),
("sister","/ˈsɪstər/","chị, em gái","A1",[
 ("I have one older sister.","Tôi có một chị gái."),
 ("Her sister lives in Hue.","Chị cô ấy sống ở Huế."),
 ("My sister is a teacher.","Chị tôi là giáo viên.")]),
("matter","/ˈmætər/","vấn đề; quan trọng","B1",[
 ("It does not matter.","Không sao đâu."),
 ("This is a serious matter.","Đây là một vấn đề nghiêm trọng."),
 ("What is the matter with you?","Bạn bị làm sao vậy?")]),
("tree","/triː/","cây","A1",[
 ("The tree gives good shade.","Cái cây cho bóng mát."),
 ("They planted a tree in the yard.","Họ trồng một cái cây ngoài sân."),
 ("Birds live in that tree.","Chim sống trên cái cây đó.")]),
("hot","/hɑːt/","nóng","A1",[
 ("The soup is very hot.","Món canh rất nóng."),
 ("It is hot today.","Hôm nay trời nóng."),
 ("I like hot tea in winter.","Tôi thích trà nóng vào mùa đông.")]),
("cold","/koʊld/","lạnh","A1",[
 ("The water is too cold.","Nước lạnh quá."),
 ("It gets cold at night.","Về đêm trời lạnh."),
 ("Wear a coat, it is cold.","Mặc áo khoác vào, trời lạnh đấy.")]),
("dark","/dɑːrk/","tối","A1",[
 ("The room is very dark.","Căn phòng rất tối."),
 ("It gets dark at six.","Sáu giờ là trời tối."),
 ("She wore a dark blue dress.","Cô ấy mặc váy xanh đậm.")]),
("deep","/diːp/","sâu","A2",[
 ("The river is very deep here.","Con sông ở đây rất sâu."),
 ("Take a deep breath.","Hít một hơi thật sâu."),
 ("He fell into a deep sleep.","Anh ấy chìm vào giấc ngủ sâu.")]),
("light","/laɪt/","ánh sáng; nhẹ","A1",[
 ("Turn on the light, please.","Vui lòng bật đèn."),
 ("This bag is very light.","Cái túi này rất nhẹ."),
 ("There is not enough light here.","Ở đây không đủ ánh sáng.")]),
("heavy","/ˈhevi/","nặng","A1",[
 ("This box is too heavy.","Cái hộp này nặng quá."),
 ("We had heavy rain last night.","Tối qua mưa rất to."),
 ("Do not carry heavy things.","Đừng mang vác đồ nặng.")]),
("clean","/kliːn/","sạch; dọn dẹp","A1",[
 ("The kitchen is very clean.","Nhà bếp rất sạch."),
 ("I clean my room on Sunday.","Tôi dọn phòng vào Chủ nhật."),
 ("Please use a clean glass.","Vui lòng dùng ly sạch.")]),
("dry","/draɪ/","khô","A1",[
 ("My clothes are dry now.","Quần áo của tôi khô rồi."),
 ("The weather is dry in winter.","Mùa đông thời tiết khô."),
 ("Dry your hair before you go out.","Sấy khô tóc trước khi ra ngoài.")]),
("wet","/wet/","ướt","A1",[
 ("The floor is wet, be careful.","Sàn ướt, cẩn thận nhé."),
 ("My shoes got wet in the rain.","Giày tôi ướt vì mưa."),
 ("Do not sit on the wet chair.","Đừng ngồi lên cái ghế ướt.")]),
("quick","/kwɪk/","nhanh","A1",[
 ("Let us have a quick lunch.","Chúng ta ăn trưa nhanh thôi."),
 ("She is a quick learner.","Cô ấy học rất nhanh."),
 ("Give me a quick answer.","Cho tôi câu trả lời nhanh.")]),
("slow","/sloʊ/","chậm","A1",[
 ("The internet is very slow today.","Hôm nay mạng rất chậm."),
 ("Please drive slow here.","Vui lòng lái chậm ở đây."),
 ("My clock is slow.","Đồng hồ của tôi chạy chậm.")]),
]
