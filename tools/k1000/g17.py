# -*- coding: utf-8 -*-
GROUP = 17  # tu thu 801-850
DATA = [
("breakfast","/ˈbrekfəst/","bữa sáng","A1",[
 ("She has breakfast at home.","Cô ấy ăn sáng ở nhà."),
 ("Breakfast is the most important meal.","Bữa sáng là bữa quan trọng nhất."),
 ("I skipped breakfast this morning.","Sáng nay tôi bỏ bữa sáng.")]),
("lunch","/lʌntʃ/","bữa trưa","A1",[
 ("We have lunch at noon.","Chúng tôi ăn trưa lúc mười hai giờ."),
 ("Lunch is included in the price.","Bữa trưa đã tính trong giá."),
 ("She brought lunch from home.","Cô ấy mang cơm trưa từ nhà.")]),
("dinner","/ˈdɪnər/","bữa tối","A1",[
 ("Dinner is ready at seven.","Bữa tối xong lúc bảy giờ."),
 ("We had dinner with our neighbors.","Chúng tôi ăn tối với hàng xóm."),
 ("What is for dinner tonight?","Tối nay ăn gì thế?")]),
("meal","/miːl/","bữa ăn","A1",[
 ("Dinner is my favorite meal.","Bữa tối là bữa tôi thích nhất."),
 ("She cooks three meals a day.","Cô ấy nấu ba bữa mỗi ngày."),
 ("Take this medicine after each meal.","Uống thuốc này sau mỗi bữa ăn.")]),
("restaurant","/ˈrestrɑːnt/","nhà hàng","A1",[
 ("This restaurant serves noodles.","Nhà hàng này bán mì."),
 ("We booked a table at the restaurant.","Chúng tôi đặt bàn ở nhà hàng."),
 ("The restaurant is famous for seafood.","Nhà hàng nổi tiếng về hải sản.")]),
("menu","/ˈmenjuː/","thực đơn","A1",[
 ("Can I see the menu, please?","Cho tôi xem thực đơn được không?"),
 ("The menu has no English.","Thực đơn không có tiếng Anh."),
 ("This dish is not on the menu.","Món này không có trong thực đơn.")]),
("waiter","/ˈweɪtər/","phục vụ bàn","A2",[
 ("The waiter brought our drinks.","Người phục vụ mang đồ uống ra."),
 ("Ask the waiter for the bill.","Nhờ phục vụ mang hoá đơn."),
 ("He works as a waiter.","Anh ấy làm phục vụ bàn.")]),
("recipe","/ˈresəpi/","công thức nấu ăn","B1",[
 ("I found a simple recipe online.","Tôi tìm được một công thức đơn giản trên mạng."),
 ("This recipe needs five ingredients.","Công thức này cần năm nguyên liệu."),
 ("My grandmother gave me her recipe.","Bà tôi cho tôi công thức của bà.")]),
("vegetable","/ˈvedʒtəbl/","rau củ","A1",[
 ("Eat more vegetables every day.","Hãy ăn nhiều rau hơn mỗi ngày."),
 ("She grows vegetables in her garden.","Cô ấy trồng rau trong vườn."),
 ("This vegetable soup is very light.","Món canh rau này rất thanh.")]),
("fruit","/fruːt/","trái cây","A1",[
 ("Eat fruit after every meal.","Ăn trái cây sau mỗi bữa ăn."),
 ("This shop sells tropical fruit.","Cửa hàng này bán trái cây nhiệt đới."),
 ("Fruit is cheaper in summer.","Trái cây rẻ hơn vào mùa hè.")]),
("apple","/ˈæpl/","quả táo","A1",[
 ("An apple a day keeps you healthy.","Mỗi ngày một quả táo giúp bạn khoẻ."),
 ("She cut the apple into four pieces.","Cô ấy cắt quả táo làm bốn."),
 ("These apples are very sweet.","Mấy quả táo này rất ngọt.")]),
("banana","/bəˈnænə/","quả chuối","A1",[
 ("Monkeys love bananas.","Khỉ rất thích chuối."),
 ("I eat a banana before running.","Tôi ăn một quả chuối trước khi chạy."),
 ("The bananas are not ripe yet.","Chuối chưa chín.")]),
("orange","/ˈɔːrɪndʒ/","quả cam","A1",[
 ("This orange is very sweet.","Quả cam này rất ngọt."),
 ("She drinks orange juice every morning.","Cô ấy uống nước cam mỗi sáng."),
 ("Peel the orange before eating.","Bóc vỏ cam trước khi ăn.")]),
("egg","/eɡ/","quả trứng","A1",[
 ("I eat two eggs for breakfast.","Tôi ăn hai quả trứng vào bữa sáng."),
 ("Boil the egg for five minutes.","Luộc trứng năm phút."),
 ("We need eggs for this cake.","Chúng ta cần trứng cho cái bánh này.")]),
("cheese","/tʃiːz/","phô mai","A1",[
 ("She put cheese on the bread.","Cô ấy phết phô mai lên bánh mì."),
 ("This cheese smells strong.","Loại phô mai này mùi nồng."),
 ("He does not like cheese.","Anh ấy không thích phô mai.")]),
("butter","/ˈbʌtər/","bơ","A2",[
 ("Spread butter on the toast.","Phết bơ lên bánh mì nướng."),
 ("The butter is in the fridge.","Bơ ở trong tủ lạnh."),
 ("This cake needs more butter.","Cái bánh này cần thêm bơ.")]),
("sugar","/ˈʃʊɡər/","đường","A1",[
 ("I take my coffee without sugar.","Tôi uống cà phê không đường."),
 ("Add two spoons of sugar.","Thêm hai thìa đường."),
 ("Too much sugar is bad for you.","Ăn nhiều đường quá không tốt.")]),
("salt","/sɔːlt/","muối","A1",[
 ("Add a little salt to the soup.","Cho một chút muối vào canh."),
 ("There is too much salt in this dish.","Món này mặn quá."),
 ("Pass me the salt, please.","Đưa tôi lọ muối với.")]),
("soup","/suːp/","món súp, canh","A1",[
 ("The soup is still hot.","Món canh vẫn còn nóng."),
 ("He made chicken soup for me.","Anh ấy nấu súp gà cho tôi."),
 ("This soup needs more salt.","Món canh này cần thêm muối.")]),
("salad","/ˈsæləd/","món trộn","A1",[
 ("I ordered a green salad.","Tôi gọi một đĩa salad rau."),
 ("She makes salad with fresh herbs.","Cô ấy làm salad với rau thơm tươi."),
 ("This salad needs more dressing.","Đĩa salad này cần thêm nước trộn.")]),
("cake","/keɪk/","bánh ngọt","A1",[
 ("She baked a birthday cake.","Cô ấy nướng một chiếc bánh sinh nhật."),
 ("This cake is too sweet.","Cái bánh này ngọt quá."),
 ("Cut the cake into eight pieces.","Cắt bánh thành tám phần.")]),
("coffee","/ˈkɔːfi/","cà phê","A1",[
 ("Vietnamese coffee is very strong.","Cà phê Việt Nam rất đậm."),
 ("I drink coffee every morning.","Tôi uống cà phê mỗi sáng."),
 ("This coffee has gone cold.","Cốc cà phê này nguội rồi.")]),
("tea","/tiː/","trà","A1",[
 ("My grandfather drinks green tea.","Ông tôi uống trà xanh."),
 ("Would you like some tea?","Bạn dùng chút trà nhé?"),
 ("The tea is still too hot.","Trà vẫn còn nóng quá.")]),
("juice","/dʒuːs/","nước ép","A1",[
 ("I would like some orange juice.","Tôi muốn một chút nước cam."),
 ("She makes fresh juice every morning.","Cô ấy ép nước hoa quả tươi mỗi sáng."),
 ("This juice has no sugar.","Loại nước ép này không đường.")]),
("beer","/bɪr/","bia","A2",[
 ("He drinks a beer after work.","Anh ấy uống một cốc bia sau giờ làm."),
 ("The beer is very cold.","Bia rất lạnh."),
 ("They sell local beer here.","Ở đây bán bia địa phương.")]),
("wine","/waɪn/","rượu vang","A2",[
 ("She ordered a glass of wine.","Cô ấy gọi một ly rượu vang."),
 ("This wine is from France.","Loại rượu vang này từ Pháp."),
 ("Red wine goes well with meat.","Vang đỏ hợp với thịt.")]),
("dish","/dɪʃ/","món ăn","A2",[
 ("This dish is very popular here.","Món này rất được ưa chuộng ở đây."),
 ("She cooked three dishes tonight.","Tối nay cô ấy nấu ba món."),
 ("What is the main dish?","Món chính là gì?")]),
("flavor","/ˈfleɪvər/","hương vị","B1",[
 ("This tea has a strong flavor.","Trà này có hương vị đậm."),
 ("Add garlic for more flavor.","Thêm tỏi cho đậm vị."),
 ("Which flavor do you want?","Bạn muốn vị nào?")]),
("hungry","/ˈhʌŋɡri/","đói","A1",[
 ("I am hungry after work.","Tôi đói sau khi đi làm."),
 ("The children are always hungry.","Bọn trẻ lúc nào cũng đói."),
 ("Do not shop when you are hungry.","Đừng đi chợ lúc đang đói.")]),
("thirsty","/ˈθɜːrsti/","khát","A1",[
 ("I am very thirsty.","Tôi khát lắm."),
 ("Running makes me thirsty.","Chạy bộ làm tôi khát."),
 ("The children were thirsty after playing.","Bọn trẻ khát sau khi chơi.")]),
("delicious","/dɪˈlɪʃəs/","ngon","A1",[
 ("This soup is delicious.","Món canh này rất ngon."),
 ("What a delicious cake!","Bánh ngon quá!"),
 ("The food smells delicious.","Đồ ăn thơm quá.")]),
("sweet","/swiːt/","ngọt","A1",[
 ("This cake is too sweet.","Cái bánh này ngọt quá."),
 ("She likes sweet drinks.","Cô ấy thích đồ uống ngọt."),
 ("The mango tastes very sweet.","Quả xoài rất ngọt.")]),
("clothes","/kloʊz/","quần áo","A1",[
 ("I need to wash my clothes.","Tôi cần giặt quần áo."),
 ("She keeps her clothes very neat.","Cô ấy giữ quần áo rất gọn."),
 ("Warm clothes are needed in winter.","Mùa đông cần quần áo ấm.")]),
("shirt","/ʃɜːrt/","áo sơ mi","A1",[
 ("He wears a white shirt.","Anh ấy mặc áo sơ mi trắng."),
 ("This shirt is too tight.","Chiếc áo này chật quá."),
 ("She ironed his shirt this morning.","Sáng nay cô ấy là áo cho anh.")]),
("trousers","/ˈtraʊzərz/","cái quần","A1",[
 ("These trousers are too long.","Chiếc quần này dài quá."),
 ("He wears black trousers to work.","Anh ấy mặc quần đen đi làm."),
 ("The trousers need washing.","Cái quần cần giặt.")]),
("shoe","/ʃuː/","chiếc giày","A1",[
 ("These shoes are too small.","Đôi giày này chật quá."),
 ("Take off your shoes at the door.","Cởi giày ở cửa nhé."),
 ("There is a stone in my shoe.","Có hòn sỏi trong giày tôi.")]),
("hat","/hæt/","cái mũ","A1",[
 ("Wear a hat in the sun.","Đội mũ khi ra nắng."),
 ("His hat blew away in the wind.","Mũ của anh ấy bay đi vì gió."),
 ("She bought a straw hat.","Cô ấy mua một chiếc mũ rơm.")]),
("coat","/koʊt/","áo choàng","A1",[
 ("She left her coat at home.","Cô ấy để quên áo choàng ở nhà."),
 ("A long coat keeps you warm.","Áo choàng dài giữ ấm cho bạn."),
 ("The coat is too heavy for spring.","Chiếc áo quá dày cho mùa xuân.")]),
("dress","/dres/","váy liền","A1",[
 ("She bought a new dress.","Cô ấy mua một chiếc váy mới."),
 ("The dress fits her perfectly.","Chiếc váy vừa vặn với cô ấy."),
 ("That red dress is beautiful.","Chiếc váy đỏ đó rất đẹp.")]),
("pocket","/ˈpɑːkɪt/","túi áo, túi quần","A1",[
 ("The keys are in my pocket.","Chìa khoá ở trong túi tôi."),
 ("This coat has no pockets.","Chiếc áo này không có túi."),
 ("He put his hands in his pockets.","Anh ấy đút tay vào túi.")]),
("button","/ˈbʌtn/","cái cúc, nút bấm","A2",[
 ("A button fell off my shirt.","Một chiếc cúc áo tôi bị rơi."),
 ("Press the green button.","Bấm nút màu xanh."),
 ("This coat has six buttons.","Chiếc áo choàng có sáu cúc.")]),
("fashion","/ˈfæʃn/","thời trang","B1",[
 ("She follows the latest fashion.","Cô ấy chạy theo thời trang mới nhất."),
 ("Fashion changes every year.","Thời trang thay đổi mỗi năm."),
 ("He works in the fashion industry.","Anh ấy làm trong ngành thời trang.")]),
("style","/staɪl/","phong cách","B1",[
 ("I like her style.","Tôi thích phong cách của cô ấy."),
 ("This house has an old style.","Ngôi nhà này theo phong cách cũ."),
 ("Everyone has a different style.","Mỗi người một phong cách.")]),
("brand","/brænd/","thương hiệu","B1",[
 ("She only buys one brand of coffee.","Cô ấy chỉ mua một thương hiệu cà phê."),
 ("This brand is famous worldwide.","Thương hiệu này nổi tiếng khắp thế giới."),
 ("Brand does not always mean quality.","Thương hiệu không phải lúc nào cũng là chất lượng.")]),
("sale","/seɪl/","đợt giảm giá","A2",[
 ("These jeans were on sale.","Chiếc quần bò này đang giảm giá."),
 ("The summer sale starts tomorrow.","Đợt giảm giá mùa hè bắt đầu ngày mai."),
 ("She bought three dresses in the sale.","Cô ấy mua ba chiếc váy trong đợt giảm giá.")]),
("discount","/ˈdɪskaʊnt/","giảm giá","B1",[
 ("Students get a ten percent discount.","Sinh viên được giảm mười phần trăm."),
 ("Can you give me a discount?","Bạn giảm giá cho tôi được không?"),
 ("The discount ends on Sunday.","Chương trình giảm giá kết thúc Chủ nhật.")]),
("receipt","/rɪˈsiːt/","hoá đơn mua hàng","B1",[
 ("Keep the receipt in case you return it.","Giữ hoá đơn phòng khi bạn trả hàng."),
 ("Can I have a receipt, please?","Cho tôi xin hoá đơn được không?"),
 ("I lost the receipt for these shoes.","Tôi làm mất hoá đơn của đôi giày này.")]),
("cash","/kæʃ/","tiền mặt","A2",[
 ("Do you accept cash?","Bạn có nhận tiền mặt không?"),
 ("I never carry much cash.","Tôi không bao giờ mang nhiều tiền mặt."),
 ("She paid cash for the furniture.","Cô ấy trả tiền mặt cho bộ nội thất.")]),
("card","/kɑːrd/","thẻ","A1",[
 ("Can I pay by card?","Tôi trả bằng thẻ được không?"),
 ("She sent me a birthday card.","Cô ấy gửi tôi một tấm thiệp sinh nhật."),
 ("My card does not work here.","Thẻ của tôi không dùng được ở đây.")]),
("payment","/ˈpeɪmənt/","việc thanh toán","B1",[
 ("Payment is due at the end of the month.","Hạn thanh toán là cuối tháng."),
 ("We accept payment in three ways.","Chúng tôi nhận thanh toán theo ba cách."),
 ("Your payment was successful.","Thanh toán của bạn đã thành công.")]),
]
