# -*- coding: utf-8 -*-
GROUP = 11  # tu thu 501-550
DATA = [
("sleep","/sliːp/","ngủ","A1",[
 ("I sleep eight hours a night.","Tôi ngủ tám tiếng mỗi đêm."),
 ("The baby is sleeping now.","Em bé đang ngủ."),
 ("Good sleep improves your memory.","Ngủ ngon cải thiện trí nhớ.")]),
("wake","/weɪk/","thức dậy","A1",[
 ("I wake at six every morning.","Tôi thức dậy lúc sáu giờ mỗi sáng."),
 ("Do not wake the baby.","Đừng đánh thức em bé."),
 ("She wakes before the alarm.","Cô ấy dậy trước cả chuông báo thức.")]),
("wash","/wɑːʃ/","rửa, giặt","A1",[
 ("Wash your hands before eating.","Rửa tay trước khi ăn."),
 ("She washes the dishes after dinner.","Cô ấy rửa bát sau bữa tối."),
 ("I wash my car every weekend.","Tôi rửa xe mỗi cuối tuần.")]),
("cook","/kʊk/","nấu ăn","A1",[
 ("My father cooks on Sunday.","Bố tôi nấu ăn vào Chủ nhật."),
 ("She cooks better than anyone.","Cô ấy nấu ăn ngon hơn ai hết."),
 ("Let me cook dinner tonight.","Tối nay để tôi nấu bữa tối.")]),
("drink","/drɪŋk/","uống","A1",[
 ("Drink more water every day.","Hãy uống nhiều nước hơn mỗi ngày."),
 ("She drinks tea in the morning.","Cô ấy uống trà buổi sáng."),
 ("Do not drink and drive.","Đã uống rượu thì đừng lái xe.")]),
("cost","/kɔːst/","có giá, tốn","A2",[
 ("How much does it cost?","Cái này giá bao nhiêu?"),
 ("The repair will cost a lot.","Sửa chữa sẽ tốn nhiều tiền."),
 ("These shoes cost too much.","Đôi giày này đắt quá.")]),
("spend","/spend/","tiêu, dành","A2",[
 ("I spend too much on coffee.","Tôi tiêu quá nhiều cho cà phê."),
 ("She spends an hour reading.","Cô ấy dành một tiếng để đọc sách."),
 ("How much do you spend each month?","Mỗi tháng bạn tiêu bao nhiêu?")]),
("lend","/lend/","cho mượn","A2",[
 ("Can you lend me a pen?","Bạn cho tôi mượn cây bút được không?"),
 ("I will lend you my bike.","Tôi sẽ cho bạn mượn xe đạp."),
 ("Banks lend money to businesses.","Ngân hàng cho doanh nghiệp vay tiền.")]),
("borrow","/ˈbɑːroʊ/","mượn","A2",[
 ("Can I borrow your phone?","Tôi mượn điện thoại bạn được không?"),
 ("She borrows books from the library.","Cô ấy mượn sách ở thư viện."),
 ("Do not borrow what you cannot return.","Đừng mượn thứ bạn không trả được.")]),
("teach","/tiːtʃ/","dạy","A1",[
 ("She teaches English at a school.","Cô ấy dạy tiếng Anh ở một trường."),
 ("Can you teach me to swim?","Bạn dạy tôi bơi được không?"),
 ("Experience teaches us a lot.","Kinh nghiệm dạy chúng ta nhiều điều.")]),
("forget","/fərˈɡet/","quên","A1",[
 ("Do not forget your keys.","Đừng quên chìa khoá."),
 ("I always forget his name.","Tôi luôn quên tên anh ấy."),
 ("She will never forget that day.","Cô ấy sẽ không bao giờ quên ngày đó.")]),
("understand","/ˌʌndərˈstænd/","hiểu","A1",[
 ("I do not understand this word.","Tôi không hiểu từ này."),
 ("Do you understand the question?","Bạn hiểu câu hỏi chứ?"),
 ("She understands three languages.","Cô ấy hiểu được ba thứ tiếng.")]),
("guess","/ɡes/","đoán","A2",[
 ("Can you guess my age?","Bạn đoán được tuổi tôi không?"),
 ("I guess she is not coming.","Tôi đoán cô ấy không đến."),
 ("Take a guess.","Thử đoán xem.")]),
("wonder","/ˈwʌndər/","tự hỏi","B1",[
 ("I wonder where she is.","Tôi tự hỏi cô ấy đang ở đâu."),
 ("She wonders if it will rain.","Cô ấy phân vân không biết trời có mưa không."),
 ("I wonder why he left early.","Tôi thắc mắc sao anh ấy về sớm.")]),
("worry","/ˈwɜːri/","lo lắng","A2",[
 ("Do not worry about it.","Đừng lo về chuyện đó."),
 ("Parents always worry about children.","Bố mẹ luôn lo cho con cái."),
 ("There is no need to worry.","Không cần phải lo đâu.")]),
("laugh","/læf/","cười","A1",[
 ("We laugh a lot together.","Chúng tôi cười rất nhiều khi ở bên nhau."),
 ("His jokes make me laugh.","Mấy câu đùa của anh ấy làm tôi cười."),
 ("Do not laugh at other people.","Đừng cười nhạo người khác.")]),
("cry","/kraɪ/","khóc","A1",[
 ("The baby began to cry.","Em bé bắt đầu khóc."),
 ("It is okay to cry sometimes.","Đôi khi khóc cũng không sao."),
 ("The film made her cry.","Bộ phim làm cô ấy khóc.")]),
("smile","/smaɪl/","mỉm cười","A1",[
 ("She has a warm smile.","Cô ấy có nụ cười ấm áp."),
 ("Please smile for the photo.","Hãy cười lên để chụp ảnh."),
 ("A smile costs nothing.","Một nụ cười chẳng mất gì.")]),
("shout","/ʃaʊt/","hét, quát","A2",[
 ("Do not shout at the children.","Đừng quát bọn trẻ."),
 ("He had to shout over the noise.","Anh ấy phải hét lên át tiếng ồn."),
 ("She heard someone shout for help.","Cô ấy nghe ai đó hét cầu cứu.")]),
("listen","/ˈlɪsn/","lắng nghe","A1",[
 ("Listen carefully, please.","Vui lòng nghe kỹ."),
 ("She listens to music every night.","Cô ấy nghe nhạc mỗi tối."),
 ("Nobody listens to me.","Chẳng ai nghe tôi cả.")]),
("touch","/tʌtʃ/","chạm","A2",[
 ("Do not touch the hot pan.","Đừng chạm vào cái chảo nóng."),
 ("The screen responds to touch.","Màn hình phản hồi khi chạm."),
 ("Keep in touch with me.","Giữ liên lạc với tôi nhé.")]),
("smell","/smel/","ngửi; mùi","A2",[
 ("The flowers smell wonderful.","Những bông hoa thơm ngát."),
 ("What is that strange smell?","Mùi gì lạ vậy?"),
 ("I cannot smell anything.","Tôi không ngửi thấy gì cả.")]),
("taste","/teɪst/","nếm; vị","A2",[
 ("The soup tastes salty.","Món canh có vị mặn."),
 ("Can I taste it?","Tôi nếm thử được không?"),
 ("This tea has a strange taste.","Trà này có vị lạ.")]),
("push","/pʊʃ/","đẩy","A2",[
 ("Push the door, do not pull.","Đẩy cửa, đừng kéo."),
 ("He pushed the box aside.","Anh ấy đẩy cái hộp sang bên."),
 ("Do not push in the queue.","Đừng chen lấn khi xếp hàng.")]),
("throw","/θroʊ/","ném","A2",[
 ("Do not throw rubbish here.","Đừng vứt rác ở đây."),
 ("He can throw the ball far.","Anh ấy ném bóng rất xa."),
 ("Throw it to me.","Ném cho tôi đi.")]),
("jump","/dʒʌmp/","nhảy","A1",[
 ("The cat can jump very high.","Con mèo nhảy rất cao."),
 ("Do not jump on the bed.","Đừng nhảy trên giường."),
 ("She jumps over the rope.","Cô ấy nhảy qua sợi dây.")]),
("climb","/klaɪm/","leo trèo","A2",[
 ("They climb the mountain every year.","Năm nào họ cũng leo núi."),
 ("The boy can climb a tree.","Cậu bé biết trèo cây."),
 ("It is hard to climb these stairs.","Leo cái cầu thang này mệt lắm.")]),
("swim","/swɪm/","bơi","A1",[
 ("I swim every Sunday.","Tôi đi bơi mỗi Chủ nhật."),
 ("Can you swim well?","Bạn bơi giỏi không?"),
 ("Fish swim in the river.","Cá bơi dưới sông.")]),
("fly","/flaɪ/","bay","A1",[
 ("Birds fly south in winter.","Chim bay về phương nam vào mùa đông."),
 ("We will fly to Hue tomorrow.","Mai chúng tôi sẽ bay đi Huế."),
 ("The kite is flying high.","Con diều đang bay cao.")]),
("ride","/raɪd/","đi (xe đạp, xe máy)","A1",[
 ("I ride my bicycle to work.","Tôi đạp xe đi làm."),
 ("Can you give me a ride?","Bạn chở tôi được không?"),
 ("She rides a motorbike every day.","Cô ấy đi xe máy mỗi ngày.")]),
("travel","/ˈtrævl/","đi du lịch","A1",[
 ("They travel abroad every summer.","Họ đi nước ngoài mỗi mùa hè."),
 ("I love to travel by train.","Tôi thích đi du lịch bằng tàu."),
 ("Travel opens your mind.","Đi đây đó giúp mở mang đầu óc.")]),
("arrive","/əˈraɪv/","đến nơi","A1",[
 ("The train arrives at nine.","Tàu đến lúc chín giờ."),
 ("I arrive at work before eight.","Tôi đến chỗ làm trước tám giờ."),
 ("Please arrive on time.","Vui lòng đến đúng giờ.")]),
("enter","/ˈentər/","đi vào","A2",[
 ("Please enter through this door.","Vui lòng vào bằng cửa này."),
 ("You need a visa to enter.","Bạn cần thị thực để nhập cảnh."),
 ("Enter your password here.","Nhập mật khẩu của bạn vào đây.")]),
("wear","/wer/","mặc, đeo","A1",[
 ("She wears a uniform to school.","Cô ấy mặc đồng phục đến trường."),
 ("What will you wear tonight?","Tối nay bạn sẽ mặc gì?"),
 ("You must wear a helmet.","Bạn phải đội mũ bảo hiểm.")]),
("hurry","/ˈhɜːri/","vội","A2",[
 ("Hurry up or we will be late.","Nhanh lên không thì muộn mất."),
 ("There is no need to hurry.","Không cần vội đâu."),
 ("Please hurry, the bus is coming.","Nhanh lên, xe buýt tới rồi.")]),
("hide","/haɪd/","giấu, trốn","A2",[
 ("The children hide behind the tree.","Bọn trẻ trốn sau gốc cây."),
 ("Do not hide your feelings.","Đừng giấu cảm xúc của bạn."),
 ("She hides the key under the mat.","Cô ấy giấu chìa khoá dưới thảm.")]),
("search","/sɜːrtʃ/","tìm kiếm","A2",[
 ("They search for the lost dog.","Họ đi tìm con chó bị lạc."),
 ("Search the internet for the answer.","Tìm câu trả lời trên mạng."),
 ("The search took two hours.","Cuộc tìm kiếm mất hai tiếng.")]),
("count","/kaʊnt/","đếm","A1",[
 ("Count from one to ten.","Đếm từ một đến mười."),
 ("She counts the money carefully.","Cô ấy đếm tiền cẩn thận."),
 ("You can count on me.","Bạn có thể tin vào tôi.")]),
("measure","/ˈmeʒər/","đo","B1",[
 ("Measure the room before you buy.","Đo phòng trước khi mua."),
 ("This tool measures temperature.","Dụng cụ này đo nhiệt độ."),
 ("Please measure it again.","Vui lòng đo lại.")]),
("weigh","/weɪ/","cân nặng","B1",[
 ("How much do you weigh?","Bạn nặng bao nhiêu?"),
 ("The box weighs five kilos.","Cái hộp nặng năm ký."),
 ("Please weigh the fruit.","Vui lòng cân số trái cây.")]),
("fill","/fɪl/","đổ đầy","A2",[
 ("Fill the glass with water.","Đổ đầy nước vào ly."),
 ("Please fill in this form.","Vui lòng điền vào mẫu này."),
 ("The room fills up quickly.","Căn phòng chật kín rất nhanh.")]),
("pour","/pɔːr/","rót, đổ","B1",[
 ("Pour the milk into the cup.","Rót sữa vào cốc."),
 ("She poured tea for everyone.","Cô ấy rót trà cho mọi người."),
 ("Do not pour oil down the sink.","Đừng đổ dầu xuống bồn rửa.")]),
("mix","/mɪks/","trộn","A2",[
 ("Mix the eggs and sugar.","Trộn trứng với đường."),
 ("Do not mix these two colors.","Đừng trộn hai màu này."),
 ("She mixes the salad well.","Cô ấy trộn salad rất đều.")]),
("burn","/bɜːrn/","đốt, cháy","B1",[
 ("Do not burn the rubbish here.","Đừng đốt rác ở đây."),
 ("The soup will burn if you wait.","Nồi canh sẽ cháy nếu bạn để lâu."),
 ("She burned her hand on the pan.","Cô ấy bị bỏng tay vì cái chảo.")]),
("freeze","/friːz/","đông lạnh","B1",[
 ("Water freezes at zero degrees.","Nước đóng băng ở không độ."),
 ("You can freeze the meat.","Bạn có thể cấp đông miếng thịt."),
 ("My hands freeze in winter.","Tay tôi lạnh cóng vào mùa đông.")]),
("melt","/melt/","tan chảy","B1",[
 ("The ice will melt quickly.","Đá sẽ tan rất nhanh."),
 ("Butter melts in the hot pan.","Bơ tan chảy trong chảo nóng."),
 ("Snow melts in spring.","Tuyết tan vào mùa xuân.")]),
("grow","/ɡroʊ/","mọc, trồng, lớn lên","A2",[
 ("They grow rice in this field.","Họ trồng lúa trên cánh đồng này."),
 ("Children grow very fast.","Trẻ con lớn rất nhanh."),
 ("Flowers grow well in this soil.","Hoa mọc tốt trên loại đất này.")]),
("plant","/plænt/","cây; trồng","A2",[
 ("They plant trees every spring.","Họ trồng cây vào mỗi mùa xuân."),
 ("This plant needs more light.","Cái cây này cần nhiều ánh sáng hơn."),
 ("Water the plant twice a week.","Tưới cây hai lần một tuần.")]),
("dig","/dɪɡ/","đào","B1",[
 ("They dig a hole for the tree.","Họ đào một cái hố để trồng cây."),
 ("The dog digs in the garden.","Con chó đào bới trong vườn."),
 ("We must dig deeper.","Chúng ta phải đào sâu hơn.")]),
("pick","/pɪk/","hái, nhặt, chọn","A2",[
 ("She picks flowers in the garden.","Cô ấy hái hoa trong vườn."),
 ("Please pick up your bag.","Vui lòng nhặt túi của bạn lên."),
 ("Pick a card, any card.","Chọn một lá bài bất kỳ.")]),
]
