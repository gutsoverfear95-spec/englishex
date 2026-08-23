-- ============================================================
-- NOI DUNG SACH — phan 5/20
-- Sinh tu tools/books/import_book.py, dung sua tay.
--
-- Chua: sherlock-holmes, the-great-gatsby
--
-- Chay books_schema.sql TRUOC, roi chay cac phan nay THEO THU TU.
-- An toan chay lai nhieu lan (uuid tat dinh + on conflict).
-- Cat nho vi SQL Editor cua Supabase tu choi cau lenh qua lon.
-- ============================================================

-- ===== The Adventures of Sherlock Holmes — Arthur Conan Doyle (1892) =====
-- Nguon: Project Gutenberg #1661 (public domain)

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('9ae18f14-e03c-4d03-a1da-b86633767ba9', '8a2ee8ba-fa79-47f3-a660-97e001e7f1fe', 33, 'XII. The Adventure of the Copper Beeches (1/3)', '“To the man who loves art for its own sake,” remarked Sherlock Holmes,

tossing aside the advertisement sheet of _The Daily Telegraph_, “it is

frequently in its least important and lowliest manifestations that the

keenest pleasure is to be derived. It is pleasant to me to observe,

Watson, that you have so far grasped this truth that in these little

records of our cases which you have been good enough to draw up, and, I

am bound to say, occasionally to embellish, you have given prominence

not so much to the many _causes célèbres_ and sensational trials in

which I have figured but rather to those incidents which may have been

trivial in themselves, but which have given room for those faculties of

deduction and of logical synthesis which I have made my special

province.”

“And yet,” said I, smiling, “I cannot quite hold myself absolved from

the charge of sensationalism which has been urged against my records.”

“You have erred, perhaps,” he observed, taking up a glowing cinder with

the tongs and lighting with it the long cherry-wood pipe which was wont

to replace his clay when he was in a disputatious rather than a

meditative mood—“you have erred perhaps in attempting to put colour and

life into each of your statements instead of confining yourself to the

task of placing upon record that severe reasoning from cause to effect

which is really the only notable feature about the thing.”

“It seems to me that I have done you full justice in the matter,” I

remarked with some coldness, for I was repelled by the egotism which I

had more than once observed to be a strong factor in my friend’s

singular character.

“No, it is not selfishness or conceit,” said he, answering, as was his

wont, my thoughts rather than my words. “If I claim full justice for my

art, it is because it is an impersonal thing—a thing beyond myself.

Crime is common. Logic is rare. Therefore it is upon the logic rather

than upon the crime that you should dwell. You have degraded what

should have been a course of lectures into a series of tales.”

It was a cold morning of the early spring, and we sat after breakfast

on either side of a cheery fire in the old room at Baker Street. A

thick fog rolled down between the lines of dun-coloured houses, and the

opposing windows loomed like dark, shapeless blurs through the heavy

yellow wreaths. Our gas was lit and shone on the white cloth and

glimmer of china and metal, for the table had not been cleared yet.

Sherlock Holmes had been silent all the morning, dipping continuously

into the advertisement columns of a succession of papers until at last,

having apparently given up his search, he had emerged in no very sweet

temper to lecture me upon my literary shortcomings.

“At the same time,” he remarked after a pause, during which he had sat

puffing at his long pipe and gazing down into the fire, “you can hardly

be open to a charge of sensationalism, for out of these cases which you

have been so kind as to interest yourself in, a fair proportion do not

treat of crime, in its legal sense, at all. The small matter in which I

endeavoured to help the King of Bohemia, the singular experience of

Miss Mary Sutherland, the problem connected with the man with the

twisted lip, and the incident of the noble bachelor, were all matters

which are outside the pale of the law. But in avoiding the sensational,

I fear that you may have bordered on the trivial.”

“The end may have been so,” I answered, “but the methods I hold to have

been novel and of interest.”

“Pshaw, my dear fellow, what do the public, the great unobservant

public, who could hardly tell a weaver by his tooth or a compositor by

his left thumb, care about the finer shades of analysis and deduction!

But, indeed, if you are trivial, I cannot blame you, for the days of

the great cases are past. Man, or at least criminal man, has lost all

enterprise and originality. As to my own little practice, it seems to

be degenerating into an agency for recovering lost lead pencils and

giving advice to young ladies from boarding-schools. I think that I

have touched bottom at last, however. This note I had this morning

marks my zero-point, I fancy. Read it!” He tossed a crumpled letter

across to me.

It was dated from Montague Place upon the preceding evening, and ran

thus:

    “DEAR MR. HOLMES,—I am very anxious to consult you as to whether I

    should or should not accept a situation which has been offered to

    me as governess. I shall call at half-past ten to-morrow if I do

    not inconvenience you. Yours faithfully,

    “VIOLET HUNTER.”

“Do you know the young lady?” I asked.

“Not I.”

“It is half-past ten now.”

“Yes, and I have no doubt that is her ring.”

“It may turn out to be of more interest than you think. You remember

that the affair of the blue carbuncle, which appeared to be a mere whim

at first, developed into a serious investigation. It may be so in this

case, also.”

“Well, let us hope so. But our doubts will very soon be solved, for

here, unless I am much mistaken, is the person in question.”

As he spoke the door opened and a young lady entered the room. She was

plainly but neatly dressed, with a bright, quick face, freckled like a

plover’s egg, and with the brisk manner of a woman who has had her own

way to make in the world.

“You will excuse my troubling you, I am sure,” said she, as my

companion rose to greet her, “but I have had a very strange experience,

and as I have no parents or relations of any sort from whom I could ask

advice, I thought that perhaps you would be kind enough to tell me what

I should do.”

“Pray take a seat, Miss Hunter. I shall be happy to do anything that I

can to serve you.”

I could see that Holmes was favourably impressed by the manner and

speech of his new client. He looked her over in his searching fashion,

and then composed himself, with his lids drooping and his finger-tips

together, to listen to her story.

“I have been a governess for five years,” said she, “in the family of

Colonel Spence Munro, but two months ago the colonel received an

appointment at Halifax, in Nova Scotia, and took his children over to

America with him, so that I found myself without a situation. I

advertised, and I answered advertisements, but without success. At last

the little money which I had saved began to run short, and I was at my

wit’s end as to what I should do.

“There is a well-known agency for governesses in the West End called

Westaway’s, and there I used to call about once a week in order to see

whether anything had turned up which might suit me. Westaway was the

name of the founder of the business, but it is really managed by Miss

Stoper. She sits in her own little office, and the ladies who are

seeking employment wait in an anteroom, and are then shown in one by

one, when she consults her ledgers and sees whether she has anything

which would suit them.

“Well, when I called last week I was shown into the little office as

usual, but I found that Miss Stoper was not alone. A prodigiously stout

man with a very smiling face and a great heavy chin which rolled down

in fold upon fold over his throat sat at her elbow with a pair of

glasses on his nose, looking very earnestly at the ladies who entered.

As I came in he gave quite a jump in his chair and turned quickly to

Miss Stoper.

“‘That will do,’ said he; ‘I could not ask for anything better.

Capital! capital!’ He seemed quite enthusiastic and rubbed his hands

together in the most genial fashion. He was such a comfortable-looking

man that it was quite a pleasure to look at him.

“‘You are looking for a situation, miss?’ he asked.

“‘Yes, sir.’

“‘As governess?’

“‘Yes, sir.’

“‘And what salary do you ask?’

“‘I had £ 4 a month in my last place with Colonel Spence Munro.’

“‘Oh, tut, tut! sweating—rank sweating!’ he cried, throwing his fat

hands out into the air like a man who is in a boiling passion. ‘How

could anyone offer so pitiful a sum to a lady with such attractions and

accomplishments?’

“‘My accomplishments, sir, may be less than you imagine,’ said I. ‘A

little French, a little German, music, and drawing—’

“‘Tut, tut!’ he cried. ‘This is all quite beside the question. The

point is, have you or have you not the bearing and deportment of a

lady? There it is in a nutshell. If you have not, you are not fitted

for the rearing of a child who may some day play a considerable part in

the history of the country. But if you have, why, then, how could any

gentleman ask you to condescend to accept anything under the three

figures? Your salary with me, madam, would commence at £ 100 a year.’

“You may imagine, Mr. Holmes, that to me, destitute as I was, such an

offer seemed almost too good to be true. The gentleman, however, seeing

perhaps the look of incredulity upon my face, opened a pocket-book and

took out a note.

“‘It is also my custom,’ said he, smiling in the most pleasant fashion

until his eyes were just two little shining slits amid the white

creases of his face, ‘to advance to my young ladies half their salary

beforehand, so that they may meet any little expenses of their journey

and their wardrobe.’

“It seemed to me that I had never met so fascinating and so thoughtful

a man. As I was already in debt to my tradesmen, the advance was a

great convenience, and yet there was something unnatural about the

whole transaction which made me wish to know a little more before I

quite committed myself.

“‘May I ask where you live, sir?’ said I.

“‘Hampshire. Charming rural place. The Copper Beeches, five miles on

the far side of Winchester. It is the most lovely country, my dear

young lady, and the dearest old country-house.’

“‘And my duties, sir? I should be glad to know what they would be.’

“‘One child—one dear little romper just six years old. Oh, if you could

see him killing cockroaches with a slipper! Smack! smack! smack! Three

gone before you could wink!’ He leaned back in his chair and laughed

his eyes into his head again.

“I was a little startled at the nature of the child’s amusement, but

the father’s laughter made me think that perhaps he was joking.

“‘My sole duties, then,’ I asked, ‘are to take charge of a single

child?’

“‘No, no, not the sole, not the sole, my dear young lady,’ he cried.

‘Your duty would be, as I am sure your good sense would suggest, to

obey any little commands my wife might give, provided always that they

were such commands as a lady might with propriety obey. You see no

difficulty, heh?’

“‘I should be happy to make myself useful.’

“‘Quite so. In dress now, for example. We are faddy people, you

know—faddy but kind-hearted. If you were asked to wear any dress which

we might give you, you would not object to our little whim. Heh?’

“‘No,’ said I, considerably astonished at his words.

“‘Or to sit here, or sit there, that would not be offensive to you?’

“‘Oh, no.’

“‘Or to cut your hair quite short before you come to us?’

“I could hardly believe my ears. As you may observe, Mr. Holmes, my

hair is somewhat luxuriant, and of a rather peculiar tint of chestnut.

It has been considered artistic. I could not dream of sacrificing it in

this offhand fashion.

“‘I am afraid that that is quite impossible,’ said I. He had been

watching me eagerly out of his small eyes, and I could see a shadow

pass over his face as I spoke.

“‘I am afraid that it is quite essential,’ said he. ‘It is a little

fancy of my wife’s, and ladies’ fancies, you know, madam, ladies’

fancies must be consulted. And so you won’t cut your hair?’

“‘No, sir, I really could not,’ I answered firmly.

“‘Ah, very well; then that quite settles the matter. It is a pity,

because in other respects you would really have done very nicely. In

that case, Miss Stoper, I had best inspect a few more of your young

ladies.’

“The manageress had sat all this while busy with her papers without a

word to either of us, but she glanced at me now with so much annoyance

upon her face that I could not help suspecting that she had lost a

handsome commission through my refusal.

“‘Do you desire your name to be kept upon the books?’ she asked.

“‘If you please, Miss Stoper.’

“‘Well, really, it seems rather useless, since you refuse the most

excellent offers in this fashion,’ said she sharply. ‘You can hardly

expect us to exert ourselves to find another such opening for you.

Good-day to you, Miss Hunter.’ She struck a gong upon the table, and I

was shown out by the page.

“Well, Mr. Holmes, when I got back to my lodgings and found little

enough in the cupboard, and two or three bills upon the table, I began

to ask myself whether I had not done a very foolish thing. After all,

if these people had strange fads and expected obedience on the most

extraordinary matters, they were at least ready to pay for their

eccentricity. Very few governesses in England are getting £ 100 a year.

Besides, what use was my hair to me? Many people are improved by

wearing it short and perhaps I should be among the number. Next day I

was inclined to think that I had made a mistake, and by the day after I

was sure of it. I had almost overcome my pride so far as to go back to

the agency and inquire whether the place was still open when I received

this letter from the gentleman himself. I have it here and I will read

it to you:

“‘The Copper Beeches, near Winchester.

    “‘DEAR MISS HUNTER,—Miss Stoper has very kindly given me your

    address, and I write from here to ask you whether you have

    reconsidered your decision. My wife is very anxious that you should

    come, for she has been much attracted by my description of you. We

    are willing to give £ 30 a quarter, or £ 120 a year, so as to

    recompense you for any little inconvenience which our fads may

    cause you. They are not very exacting, after all. My wife is fond

    of a particular shade of electric blue and would like you to wear

    such a dress indoors in the morning. You need not, however, go to

    the expense of purchasing one, as we have one belonging to my dear

    daughter Alice (now in Philadelphia), which would, I should think,

    fit you very well. Then, as to sitting here or there, or amusing

    yourself in any manner indicated, that need cause you no

    inconvenience. As regards your hair, it is no doubt a pity,

    especially as I could not help remarking its beauty during our

    short interview, but I am afraid that I must remain firm upon this

    point, and I only hope that the increased salary may recompense you

    for the loss. Your duties, as far as the child is concerned, are

    very light. Now do try to come, and I shall meet you with the

    dog-cart at Winchester. Let me know your train. Yours faithfully,

    “‘JEPHRO RUCASTLE.’

“That is the letter which I have just received, Mr. Holmes, and my mind

is made up that I will accept it. I thought, however, that before

taking the final step I should like to submit the whole matter to your

consideration.”

“Well, Miss Hunter, if your mind is made up, that settles the

question,” said Holmes, smiling.

“But you would not advise me to refuse?”

“I confess that it is not the situation which I should like to see a

sister of mine apply for.”

“What is the meaning of it all, Mr. Holmes?”

“Ah, I have no data. I cannot tell. Perhaps you have yourself formed

some opinion?”

“Well, there seems to me to be only one possible solution. Mr. Rucastle

seemed to be a very kind, good-natured man. Is it not possible that his

wife is a lunatic, that he desires to keep the matter quiet for fear

she should be taken to an asylum, and that he humours her fancies in

every way in order to prevent an outbreak?”

“That is a possible solution—in fact, as matters stand, it is the most

probable one. But in any case it does not seem to be a nice household

for a young lady.”

“But the money, Mr. Holmes, the money!”

“Well, yes, of course the pay is good—too good. That is what makes me

uneasy. Why should they give you £ 120 a year, when they could have

their pick for £ 40? There must be some strong reason behind.”

“I thought that if I told you the circumstances you would understand

afterwards if I wanted your help. I should feel so much stronger if I

felt that you were at the back of me.”

“Oh, you may carry that feeling away with you. I assure you that your

little problem promises to be the most interesting which has come my

way for some months. There is something distinctly novel about some of

the features. If you should find yourself in doubt or in danger—”

“Danger! What danger do you foresee?”

Holmes shook his head gravely. “It would cease to be a danger if we

could define it,” said he. “But at any time, day or night, a telegram

would bring me down to your help.”

“That is enough.” She rose briskly from her chair with the anxiety all

swept from her face. “I shall go down to Hampshire quite easy in my

mind now. I shall write to Mr. Rucastle at once, sacrifice my poor hair

to-night, and start for Winchester to-morrow.” With a few grateful

words to Holmes she bade us both good-night and bustled off upon her

way.

“At least,” said I as we heard her quick, firm steps descending the

stairs, “she seems to be a young lady who is very well able to take

care of herself.”

“And she would need to be,” said Holmes gravely. “I am much mistaken if

we do not hear from her before many days are past.”

It was not very long before my friend’s prediction was fulfilled. A

fortnight went by, during which I frequently found my thoughts turning

in her direction and wondering what strange side-alley of human

experience this lonely woman had strayed into. The unusual salary, the

curious conditions, the light duties, all pointed to something

abnormal, though whether a fad or a plot, or whether the man were a

philanthropist or a villain, it was quite beyond my powers to

determine. As to Holmes, I observed that he sat frequently for half an

hour on end, with knitted brows and an abstracted air, but he swept the

matter away with a wave of his hand when I mentioned it. “Data! data!

data!” he cried impatiently. “I can’t make bricks without clay.” And', 3312)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('31137fa5-2849-4115-acd2-ca027718224e', '8a2ee8ba-fa79-47f3-a660-97e001e7f1fe', 34, 'XII. The Adventure of the Copper Beeches (2/3)', 'yet he would always wind up by muttering that no sister of his should

ever have accepted such a situation.

The telegram which we eventually received came late one night just as I

was thinking of turning in and Holmes was settling down to one of those

all-night chemical researches which he frequently indulged in, when I

would leave him stooping over a retort and a test-tube at night and

find him in the same position when I came down to breakfast in the

morning. He opened the yellow envelope, and then, glancing at the

message, threw it across to me.

“Just look up the trains in Bradshaw,” said he, and turned back to his

chemical studies.

The summons was a brief and urgent one.

“Please be at the Black Swan Hotel at Winchester at midday to-morrow,”

it said. “Do come! I am at my wit’s end.

“HUNTER.”

“Will you come with me?” asked Holmes, glancing up.

“I should wish to.”

“Just look it up, then.”

“There is a train at half-past nine,” said I, glancing over my

Bradshaw. “It is due at Winchester at 11:30.”

“That will do very nicely. Then perhaps I had better postpone my

analysis of the acetones, as we may need to be at our best in the

morning.”

By eleven o’clock the next day we were well upon our way to the old

English capital. Holmes had been buried in the morning papers all the

way down, but after we had passed the Hampshire border he threw them

down and began to admire the scenery. It was an ideal spring day, a

light blue sky, flecked with little fleecy white clouds drifting across

from west to east. The sun was shining very brightly, and yet there was

an exhilarating nip in the air, which set an edge to a man’s energy.

All over the countryside, away to the rolling hills around Aldershot,

the little red and grey roofs of the farm-steadings peeped out from

amid the light green of the new foliage.

“Are they not fresh and beautiful?” I cried with all the enthusiasm of

a man fresh from the fogs of Baker Street.

But Holmes shook his head gravely.

“Do you know, Watson,” said he, “that it is one of the curses of a mind

with a turn like mine that I must look at everything with reference to

my own special subject. You look at these scattered houses, and you are

impressed by their beauty. I look at them, and the only thought which

comes to me is a feeling of their isolation and of the impunity with

which crime may be committed there.”

“Good heavens!” I cried. “Who would associate crime with these dear old

homesteads?”

“They always fill me with a certain horror. It is my belief, Watson,

founded upon my experience, that the lowest and vilest alleys in London

do not present a more dreadful record of sin than does the smiling and

beautiful countryside.”

“You horrify me!”

“But the reason is very obvious. The pressure of public opinion can do

in the town what the law cannot accomplish. There is no lane so vile

that the scream of a tortured child, or the thud of a drunkard’s blow,

does not beget sympathy and indignation among the neighbours, and then

the whole machinery of justice is ever so close that a word of

complaint can set it going, and there is but a step between the crime

and the dock. But look at these lonely houses, each in its own fields,

filled for the most part with poor ignorant folk who know little of the

law. Think of the deeds of hellish cruelty, the hidden wickedness which

may go on, year in, year out, in such places, and none the wiser. Had

this lady who appeals to us for help gone to live in Winchester, I

should never have had a fear for her. It is the five miles of country

which makes the danger. Still, it is clear that she is not personally

threatened.”

“No. If she can come to Winchester to meet us she can get away.”

“Quite so. She has her freedom.”

“What _can_ be the matter, then? Can you suggest no explanation?”

“I have devised seven separate explanations, each of which would cover

the facts as far as we know them. But which of these is correct can

only be determined by the fresh information which we shall no doubt

find waiting for us. Well, there is the tower of the cathedral, and we

shall soon learn all that Miss Hunter has to tell.”

The Black Swan is an inn of repute in the High Street, at no distance

from the station, and there we found the young lady waiting for us. She

had engaged a sitting-room, and our lunch awaited us upon the table.

“I am so delighted that you have come,” she said earnestly. “It is so

very kind of you both; but indeed I do not know what I should do. Your

advice will be altogether invaluable to me.”

“Pray tell us what has happened to you.”

“I will do so, and I must be quick, for I have promised Mr. Rucastle to

be back before three. I got his leave to come into town this morning,

though he little knew for what purpose.”

“Let us have everything in its due order.” Holmes thrust his long thin

legs out towards the fire and composed himself to listen.

“In the first place, I may say that I have met, on the whole, with no

actual ill-treatment from Mr. and Mrs. Rucastle. It is only fair to

them to say that. But I cannot understand them, and I am not easy in my

mind about them.”

“What can you not understand?”

“Their reasons for their conduct. But you shall have it all just as it

occurred. When I came down, Mr. Rucastle met me here and drove me in

his dog-cart to the Copper Beeches. It is, as he said, beautifully

situated, but it is not beautiful in itself, for it is a large square

block of a house, whitewashed, but all stained and streaked with damp

and bad weather. There are grounds round it, woods on three sides, and

on the fourth a field which slopes down to the Southampton high road,

which curves past about a hundred yards from the front door. This

ground in front belongs to the house, but the woods all round are part

of Lord Southerton’s preserves. A clump of copper beeches immediately

in front of the hall door has given its name to the place.

“I was driven over by my employer, who was as amiable as ever, and was

introduced by him that evening to his wife and the child. There was no

truth, Mr. Holmes, in the conjecture which seemed to us to be probable

in your rooms at Baker Street. Mrs. Rucastle is not mad. I found her to

be a silent, pale-faced woman, much younger than her husband, not more

than thirty, I should think, while he can hardly be less than

forty-five. From their conversation I have gathered that they have been

married about seven years, that he was a widower, and that his only

child by the first wife was the daughter who has gone to Philadelphia.

Mr. Rucastle told me in private that the reason why she had left them

was that she had an unreasoning aversion to her stepmother. As the

daughter could not have been less than twenty, I can quite imagine that

her position must have been uncomfortable with her father’s young wife.

“Mrs. Rucastle seemed to me to be colourless in mind as well as in

feature. She impressed me neither favourably nor the reverse. She was a

nonentity. It was easy to see that she was passionately devoted both to

her husband and to her little son. Her light grey eyes wandered

continually from one to the other, noting every little want and

forestalling it if possible. He was kind to her also in his bluff,

boisterous fashion, and on the whole they seemed to be a happy couple.

And yet she had some secret sorrow, this woman. She would often be lost

in deep thought, with the saddest look upon her face. More than once I

have surprised her in tears. I have thought sometimes that it was the

disposition of her child which weighed upon her mind, for I have never

met so utterly spoiled and so ill-natured a little creature. He is

small for his age, with a head which is quite disproportionately large.

His whole life appears to be spent in an alternation between savage

fits of passion and gloomy intervals of sulking. Giving pain to any

creature weaker than himself seems to be his one idea of amusement, and

he shows quite remarkable talent in planning the capture of mice,

little birds, and insects. But I would rather not talk about the

creature, Mr. Holmes, and, indeed, he has little to do with my story.”

“I am glad of all details,” remarked my friend, “whether they seem to

you to be relevant or not.”

“I shall try not to miss anything of importance. The one unpleasant

thing about the house, which struck me at once, was the appearance and

conduct of the servants. There are only two, a man and his wife.

Toller, for that is his name, is a rough, uncouth man, with grizzled

hair and whiskers, and a perpetual smell of drink. Twice since I have

been with them he has been quite drunk, and yet Mr. Rucastle seemed to

take no notice of it. His wife is a very tall and strong woman with a

sour face, as silent as Mrs. Rucastle and much less amiable. They are a

most unpleasant couple, but fortunately I spend most of my time in the

nursery and my own room, which are next to each other in one corner of

the building.

“For two days after my arrival at the Copper Beeches my life was very

quiet; on the third, Mrs. Rucastle came down just after breakfast and

whispered something to her husband.

“‘Oh, yes,’ said he, turning to me, ‘we are very much obliged to you,

Miss Hunter, for falling in with our whims so far as to cut your hair.

I assure you that it has not detracted in the tiniest iota from your

appearance. We shall now see how the electric-blue dress will become

you. You will find it laid out upon the bed in your room, and if you

would be so good as to put it on we should both be extremely obliged.’

“The dress which I found waiting for me was of a peculiar shade of

blue. It was of excellent material, a sort of beige, but it bore

unmistakable signs of having been worn before. It could not have been a

better fit if I had been measured for it. Both Mr. and Mrs. Rucastle

expressed a delight at the look of it, which seemed quite exaggerated

in its vehemence. They were waiting for me in the drawing-room, which

is a very large room, stretching along the entire front of the house,

with three long windows reaching down to the floor. A chair had been

placed close to the central window, with its back turned towards it. In

this I was asked to sit, and then Mr. Rucastle, walking up and down on

the other side of the room, began to tell me a series of the funniest

stories that I have ever listened to. You cannot imagine how comical he

was, and I laughed until I was quite weary. Mrs. Rucastle, however, who

has evidently no sense of humour, never so much as smiled, but sat with

her hands in her lap, and a sad, anxious look upon her face. After an

hour or so, Mr. Rucastle suddenly remarked that it was time to commence

the duties of the day, and that I might change my dress and go to

little Edward in the nursery.

“Two days later this same performance was gone through under exactly

similar circumstances. Again I changed my dress, again I sat in the

window, and again I laughed very heartily at the funny stories of which

my employer had an immense _répertoire_, and which he told inimitably.

Then he handed me a yellow-backed novel, and moving my chair a little

sideways, that my own shadow might not fall upon the page, he begged me

to read aloud to him. I read for about ten minutes, beginning in the

heart of a chapter, and then suddenly, in the middle of a sentence, he

ordered me to cease and to change my dress.

“You can easily imagine, Mr. Holmes, how curious I became as to what

the meaning of this extraordinary performance could possibly be. They

were always very careful, I observed, to turn my face away from the

window, so that I became consumed with the desire to see what was going

on behind my back. At first it seemed to be impossible, but I soon

devised a means. My hand-mirror had been broken, so a happy thought

seized me, and I concealed a piece of the glass in my handkerchief. On

the next occasion, in the midst of my laughter, I put my handkerchief

up to my eyes, and was able with a little management to see all that

there was behind me. I confess that I was disappointed. There was

nothing. At least that was my first impression. At the second glance,

however, I perceived that there was a man standing in the Southampton

Road, a small bearded man in a grey suit, who seemed to be looking in

my direction. The road is an important highway, and there are usually

people there. This man, however, was leaning against the railings which

bordered our field and was looking earnestly up. I lowered my

handkerchief and glanced at Mrs. Rucastle to find her eyes fixed upon

me with a most searching gaze. She said nothing, but I am convinced

that she had divined that I had a mirror in my hand and had seen what

was behind me. She rose at once.

“‘Jephro,’ said she, ‘there is an impertinent fellow upon the road

there who stares up at Miss Hunter.’

“‘No friend of yours, Miss Hunter?’ he asked.

“‘No, I know no one in these parts.’

“‘Dear me! How very impertinent! Kindly turn round and motion to him to

go away.’

“‘Surely it would be better to take no notice.’

“‘No, no, we should have him loitering here always. Kindly turn round

and wave him away like that.’

“I did as I was told, and at the same instant Mrs. Rucastle drew down

the blind. That was a week ago, and from that time I have not sat again

in the window, nor have I worn the blue dress, nor seen the man in the

road.”

“Pray continue,” said Holmes. “Your narrative promises to be a most

interesting one.”

“You will find it rather disconnected, I fear, and there may prove to

be little relation between the different incidents of which I speak. On

the very first day that I was at the Copper Beeches, Mr. Rucastle took

me to a small outhouse which stands near the kitchen door. As we

approached it I heard the sharp rattling of a chain, and the sound as

of a large animal moving about.

“‘Look in here!’ said Mr. Rucastle, showing me a slit between two

planks. ‘Is he not a beauty?’

“I looked through and was conscious of two glowing eyes, and of a vague

figure huddled up in the darkness.

“‘Don’t be frightened,’ said my employer, laughing at the start which I

had given. ‘It’s only Carlo, my mastiff. I call him mine, but really

old Toller, my groom, is the only man who can do anything with him. We

feed him once a day, and not too much then, so that he is always as

keen as mustard. Toller lets him loose every night, and God help the

trespasser whom he lays his fangs upon. For goodness’ sake don’t you

ever on any pretext set your foot over the threshold at night, for it’s

as much as your life is worth.’

“The warning was no idle one, for two nights later I happened to look

out of my bedroom window about two o’clock in the morning. It was a

beautiful moonlight night, and the lawn in front of the house was

silvered over and almost as bright as day. I was standing, rapt in the

peaceful beauty of the scene, when I was aware that something was

moving under the shadow of the copper beeches. As it emerged into the

moonshine I saw what it was. It was a giant dog, as large as a calf,

tawny tinted, with hanging jowl, black muzzle, and huge projecting

bones. It walked slowly across the lawn and vanished into the shadow

upon the other side. That dreadful sentinel sent a chill to my heart

which I do not think that any burglar could have done.

“And now I have a very strange experience to tell you. I had, as you

know, cut off my hair in London, and I had placed it in a great coil at

the bottom of my trunk. One evening, after the child was in bed, I

began to amuse myself by examining the furniture of my room and by

rearranging my own little things. There was an old chest of drawers in

the room, the two upper ones empty and open, the lower one locked. I

had filled the first two with my linen, and as I had still much to pack

away I was naturally annoyed at not having the use of the third drawer.

It struck me that it might have been fastened by a mere oversight, so I

took out my bunch of keys and tried to open it. The very first key

fitted to perfection, and I drew the drawer open. There was only one

thing in it, but I am sure that you would never guess what it was. It

was my coil of hair.

“I took it up and examined it. It was of the same peculiar tint, and

the same thickness. But then the impossibility of the thing obtruded

itself upon me. How could my hair have been locked in the drawer? With

trembling hands I undid my trunk, turned out the contents, and drew

from the bottom my own hair. I laid the two tresses together, and I

assure you that they were identical. Was it not extraordinary? Puzzle

as I would, I could make nothing at all of what it meant. I returned

the strange hair to the drawer, and I said nothing of the matter to the

Rucastles as I felt that I had put myself in the wrong by opening a

drawer which they had locked.

“I am naturally observant, as you may have remarked, Mr. Holmes, and I

soon had a pretty good plan of the whole house in my head. There was

one wing, however, which appeared not to be inhabited at all. A door

which faced that which led into the quarters of the Tollers opened into

this suite, but it was invariably locked. One day, however, as I

ascended the stair, I met Mr. Rucastle coming out through this door,

his keys in his hand, and a look on his face which made him a very

different person to the round, jovial man to whom I was accustomed. His

cheeks were red, his brow was all crinkled with anger, and the veins', 3302)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('89c76026-ea34-4e2b-ab6b-1d9ee0379ff0', '8a2ee8ba-fa79-47f3-a660-97e001e7f1fe', 35, 'XII. The Adventure of the Copper Beeches (3/3)', 'stood out at his temples with passion. He locked the door and hurried

past me without a word or a look.

“This aroused my curiosity, so when I went out for a walk in the

grounds with my charge, I strolled round to the side from which I could

see the windows of this part of the house. There were four of them in a

row, three of which were simply dirty, while the fourth was shuttered

up. They were evidently all deserted. As I strolled up and down,

glancing at them occasionally, Mr. Rucastle came out to me, looking as

merry and jovial as ever.

“‘Ah!’ said he, ‘you must not think me rude if I passed you without a

word, my dear young lady. I was preoccupied with business matters.’

“I assured him that I was not offended. ‘By the way,’ said I, ‘you seem

to have quite a suite of spare rooms up there, and one of them has the

shutters up.’

“He looked surprised and, as it seemed to me, a little startled at my

remark.

“‘Photography is one of my hobbies,’ said he. ‘I have made my dark room

up there. But, dear me! what an observant young lady we have come upon.

Who would have believed it? Who would have ever believed it?’ He spoke

in a jesting tone, but there was no jest in his eyes as he looked at

me. I read suspicion there and annoyance, but no jest.

“Well, Mr. Holmes, from the moment that I understood that there was

something about that suite of rooms which I was not to know, I was all

on fire to go over them. It was not mere curiosity, though I have my

share of that. It was more a feeling of duty—a feeling that some good

might come from my penetrating to this place. They talk of woman’s

instinct; perhaps it was woman’s instinct which gave me that feeling.

At any rate, it was there, and I was keenly on the lookout for any

chance to pass the forbidden door.

“It was only yesterday that the chance came. I may tell you that,

besides Mr. Rucastle, both Toller and his wife find something to do in

these deserted rooms, and I once saw him carrying a large black linen

bag with him through the door. Recently he has been drinking hard, and

yesterday evening he was very drunk; and when I came upstairs there was

the key in the door. I have no doubt at all that he had left it there.

Mr. and Mrs. Rucastle were both downstairs, and the child was with

them, so that I had an admirable opportunity. I turned the key gently

in the lock, opened the door, and slipped through.

“There was a little passage in front of me, unpapered and uncarpeted,

which turned at a right angle at the farther end. Round this corner

were three doors in a line, the first and third of which were open.

They each led into an empty room, dusty and cheerless, with two windows

in the one and one in the other, so thick with dirt that the evening

light glimmered dimly through them. The centre door was closed, and

across the outside of it had been fastened one of the broad bars of an

iron bed, padlocked at one end to a ring in the wall, and fastened at

the other with stout cord. The door itself was locked as well, and the

key was not there. This barricaded door corresponded clearly with the

shuttered window outside, and yet I could see by the glimmer from

beneath it that the room was not in darkness. Evidently there was a

skylight which let in light from above. As I stood in the passage

gazing at the sinister door and wondering what secret it might veil, I

suddenly heard the sound of steps within the room and saw a shadow pass

backward and forward against the little slit of dim light which shone

out from under the door. A mad, unreasoning terror rose up in me at the

sight, Mr. Holmes. My overstrung nerves failed me suddenly, and I

turned and ran—ran as though some dreadful hand were behind me

clutching at the skirt of my dress. I rushed down the passage, through

the door, and straight into the arms of Mr. Rucastle, who was waiting

outside.

“‘So,’ said he, smiling, ‘it was you, then. I thought that it must be

when I saw the door open.’

“‘Oh, I am so frightened!’ I panted.

“‘My dear young lady! my dear young lady!’—you cannot think how

caressing and soothing his manner was—‘and what has frightened you, my

dear young lady?’

“But his voice was just a little too coaxing. He overdid it. I was

keenly on my guard against him.

“‘I was foolish enough to go into the empty wing,’ I answered. ‘But it

is so lonely and eerie in this dim light that I was frightened and ran

out again. Oh, it is so dreadfully still in there!’

“‘Only that?’ said he, looking at me keenly.

“‘Why, what did you think?’ I asked.

“‘Why do you think that I lock this door?’

“‘I am sure that I do not know.’

“‘It is to keep people out who have no business there. Do you see?’ He

was still smiling in the most amiable manner.

“‘I am sure if I had known—’

“‘Well, then, you know now. And if you ever put your foot over that

threshold again’—here in an instant the smile hardened into a grin of

rage, and he glared down at me with the face of a demon—‘I’ll throw you

to the mastiff.’

“I was so terrified that I do not know what I did. I suppose that I

must have rushed past him into my room. I remember nothing until I

found myself lying on my bed trembling all over. Then I thought of you,

Mr. Holmes. I could not live there longer without some advice. I was

frightened of the house, of the man, of the woman, of the servants,

even of the child. They were all horrible to me. If I could only bring

you down all would be well. Of course I might have fled from the house,

but my curiosity was almost as strong as my fears. My mind was soon

made up. I would send you a wire. I put on my hat and cloak, went down

to the office, which is about half a mile from the house, and then

returned, feeling very much easier. A horrible doubt came into my mind

as I approached the door lest the dog might be loose, but I remembered

that Toller had drunk himself into a state of insensibility that

evening, and I knew that he was the only one in the household who had

any influence with the savage creature, or who would venture to set him

free. I slipped in in safety and lay awake half the night in my joy at

the thought of seeing you. I had no difficulty in getting leave to come

into Winchester this morning, but I must be back before three o’clock,

for Mr. and Mrs. Rucastle are going on a visit, and will be away all

the evening, so that I must look after the child. Now I have told you

all my adventures, Mr. Holmes, and I should be very glad if you could

tell me what it all means, and, above all, what I should do.”

Holmes and I had listened spellbound to this extraordinary story. My

friend rose now and paced up and down the room, his hands in his

pockets, and an expression of the most profound gravity upon his face.

“Is Toller still drunk?” he asked.

“Yes. I heard his wife tell Mrs. Rucastle that she could do nothing

with him.”

“That is well. And the Rucastles go out to-night?”

“Yes.”

“Is there a cellar with a good strong lock?”

“Yes, the wine-cellar.”

“You seem to me to have acted all through this matter like a very brave

and sensible girl, Miss Hunter. Do you think that you could perform one

more feat? I should not ask it of you if I did not think you a quite

exceptional woman.”

“I will try. What is it?”

“We shall be at the Copper Beeches by seven o’clock, my friend and I.

The Rucastles will be gone by that time, and Toller will, we hope, be

incapable. There only remains Mrs. Toller, who might give the alarm. If

you could send her into the cellar on some errand, and then turn the

key upon her, you would facilitate matters immensely.”

“I will do it.”

“Excellent! We shall then look thoroughly into the affair. Of course

there is only one feasible explanation. You have been brought there to

personate someone, and the real person is imprisoned in this chamber.

That is obvious. As to who this prisoner is, I have no doubt that it is

the daughter, Miss Alice Rucastle, if I remember right, who was said to

have gone to America. You were chosen, doubtless, as resembling her in

height, figure, and the colour of your hair. Hers had been cut off,

very possibly in some illness through which she has passed, and so, of

course, yours had to be sacrificed also. By a curious chance you came

upon her tresses. The man in the road was undoubtedly some friend of

hers—possibly her _fiancé_—and no doubt, as you wore the girl’s dress

and were so like her, he was convinced from your laughter, whenever he

saw you, and afterwards from your gesture, that Miss Rucastle was

perfectly happy, and that she no longer desired his attentions. The dog

is let loose at night to prevent him from endeavouring to communicate

with her. So much is fairly clear. The most serious point in the case

is the disposition of the child.”

“What on earth has that to do with it?” I ejaculated.

“My dear Watson, you as a medical man are continually gaining light as

to the tendencies of a child by the study of the parents. Don’t you see

that the converse is equally valid. I have frequently gained my first

real insight into the character of parents by studying their children.

This child’s disposition is abnormally cruel, merely for cruelty’s

sake, and whether he derives this from his smiling father, as I should

suspect, or from his mother, it bodes evil for the poor girl who is in

their power.”

“I am sure that you are right, Mr. Holmes,” cried our client. “A

thousand things come back to me which make me certain that you have hit

it. Oh, let us lose not an instant in bringing help to this poor

creature.”

“We must be circumspect, for we are dealing with a very cunning man. We

can do nothing until seven o’clock. At that hour we shall be with you,

and it will not be long before we solve the mystery.”

We were as good as our word, for it was just seven when we reached the

Copper Beeches, having put up our trap at a wayside public-house. The

group of trees, with their dark leaves shining like burnished metal in

the light of the setting sun, were sufficient to mark the house even

had Miss Hunter not been standing smiling on the door-step.

“Have you managed it?” asked Holmes.

A loud thudding noise came from somewhere downstairs. “That is Mrs.

Toller in the cellar,” said she. “Her husband lies snoring on the

kitchen rug. Here are his keys, which are the duplicates of Mr.

Rucastle’s.”

“You have done well indeed!” cried Holmes with enthusiasm. “Now lead

the way, and we shall soon see the end of this black business.”

We passed up the stair, unlocked the door, followed on down a passage,

and found ourselves in front of the barricade which Miss Hunter had

described. Holmes cut the cord and removed the transverse bar. Then he

tried the various keys in the lock, but without success. No sound came

from within, and at the silence Holmes’ face clouded over.

“I trust that we are not too late,” said he. “I think, Miss Hunter,

that we had better go in without you. Now, Watson, put your shoulder to

it, and we shall see whether we cannot make our way in.”

It was an old rickety door and gave at once before our united strength.

Together we rushed into the room. It was empty. There was no furniture

save a little pallet bed, a small table, and a basketful of linen. The

skylight above was open, and the prisoner gone.

“There has been some villainy here,” said Holmes; “this beauty has

guessed Miss Hunter’s intentions and has carried his victim off.”

“But how?”

“Through the skylight. We shall soon see how he managed it.” He swung

himself up onto the roof. “Ah, yes,” he cried, “here’s the end of a

long light ladder against the eaves. That is how he did it.”

“But it is impossible,” said Miss Hunter; “the ladder was not there

when the Rucastles went away.”

“He has come back and done it. I tell you that he is a clever and

dangerous man. I should not be very much surprised if this were he

whose step I hear now upon the stair. I think, Watson, that it would be

as well for you to have your pistol ready.”

The words were hardly out of his mouth before a man appeared at the

door of the room, a very fat and burly man, with a heavy stick in his

hand. Miss Hunter screamed and shrunk against the wall at the sight of

him, but Sherlock Holmes sprang forward and confronted him.

“You villain!” said he, “where’s your daughter?”

The fat man cast his eyes round, and then up at the open skylight.

“It is for me to ask you that,” he shrieked, “you thieves! Spies and

thieves! I have caught you, have I? You are in my power. I’ll serve

you!” He turned and clattered down the stairs as hard as he could go.

“He’s gone for the dog!” cried Miss Hunter.

“I have my revolver,” said I.

“Better close the front door,” cried Holmes, and we all rushed down the

stairs together. We had hardly reached the hall when we heard the

baying of a hound, and then a scream of agony, with a horrible worrying

sound which it was dreadful to listen to. An elderly man with a red

face and shaking limbs came staggering out at a side door.

“My God!” he cried. “Someone has loosed the dog. It’s not been fed for

two days. Quick, quick, or it’ll be too late!”

Holmes and I rushed out and round the angle of the house, with Toller

hurrying behind us. There was the huge famished brute, its black muzzle

buried in Rucastle’s throat, while he writhed and screamed upon the

ground. Running up, I blew its brains out, and it fell over with its

keen white teeth still meeting in the great creases of his neck. With

much labour we separated them and carried him, living but horribly

mangled, into the house. We laid him upon the drawing-room sofa, and

having dispatched the sobered Toller to bear the news to his wife, I

did what I could to relieve his pain. We were all assembled round him

when the door opened, and a tall, gaunt woman entered the room.

“Mrs. Toller!” cried Miss Hunter.

“Yes, miss. Mr. Rucastle let me out when he came back before he went up

to you. Ah, miss, it is a pity you didn’t let me know what you were

planning, for I would have told you that your pains were wasted.”

“Ha!” said Holmes, looking keenly at her. “It is clear that Mrs. Toller

knows more about this matter than anyone else.”

“Yes, sir, I do, and I am ready enough to tell what I know.”

“Then, pray, sit down, and let us hear it for there are several points

on which I must confess that I am still in the dark.”

“I will soon make it clear to you,” said she; “and I’d have done so

before now if I could ha’ got out from the cellar. If there’s

police-court business over this, you’ll remember that I was the one

that stood your friend, and that I was Miss Alice’s friend too.

“She was never happy at home, Miss Alice wasn’t, from the time that her

father married again. She was slighted like and had no say in anything,

but it never really became bad for her until after she met Mr. Fowler

at a friend’s house. As well as I could learn, Miss Alice had rights of

her own by will, but she was so quiet and patient, she was, that she

never said a word about them but just left everything in Mr. Rucastle’s

hands. He knew he was safe with her; but when there was a chance of a

husband coming forward, who would ask for all that the law would give

him, then her father thought it time to put a stop on it. He wanted her

to sign a paper, so that whether she married or not, he could use her

money. When she wouldn’t do it, he kept on worrying her until she got

brain-fever, and for six weeks was at death’s door. Then she got better

at last, all worn to a shadow, and with her beautiful hair cut off; but

that didn’t make no change in her young man, and he stuck to her as

true as man could be.”

“Ah,” said Holmes, “I think that what you have been good enough to tell

us makes the matter fairly clear, and that I can deduce all that

remains. Mr. Rucastle then, I presume, took to this system of

imprisonment?”

“Yes, sir.”

“And brought Miss Hunter down from London in order to get rid of the

disagreeable persistence of Mr. Fowler.”

“That was it, sir.”

“But Mr. Fowler being a persevering man, as a good seaman should be,

blockaded the house, and having met you succeeded by certain arguments,

metallic or otherwise, in convincing you that your interests were the

same as his.”

“Mr. Fowler was a very kind-spoken, free-handed gentleman,” said Mrs.

Toller serenely.

“And in this way he managed that your good man should have no want of

drink, and that a ladder should be ready at the moment when your master

had gone out.”

“You have it, sir, just as it happened.”

“I am sure we owe you an apology, Mrs. Toller,” said Holmes, “for you

have certainly cleared up everything which puzzled us. And here comes

the country surgeon and Mrs. Rucastle, so I think, Watson, that we had

best escort Miss Hunter back to Winchester, as it seems to me that our

_locus standi_ now is rather a questionable one.”

And thus was solved the mystery of the sinister house with the copper

beeches in front of the door. Mr. Rucastle survived, but was always a

broken man, kept alive solely through the care of his devoted wife.

They still live with their old servants, who probably know so much of

Rucastle’s past life that he finds it difficult to part from them. Mr.

Fowler and Miss Rucastle were married, by special license, in

Southampton the day after their flight, and he is now the holder of a

government appointment in the island of Mauritius. As to Miss Violet

Hunter, my friend Holmes, rather to my disappointment, manifested no

further interest in her when once she had ceased to be the centre of

one of his problems, and she is now the head of a private school at

Walsall, where I believe that she has met with considerable success.', 3330)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

-- ===== The Great Gatsby — F. Scott Fitzgerald (1925) =====
-- Nguon: Project Gutenberg #64317 (public domain)

insert into public.books (id, slug, title, author, year, level, blurb, cover_emoji, word_count, chapter_count, gutenberg_id, sort_order) values
  ('663a6e4f-adba-44b9-a289-a17856cd3409', 'the-great-gatsby', 'The Great Gatsby', 'F. Scott Fitzgerald', 1925, 'B2', 'Nước Mỹ những năm 1920 nhìn qua mắt một người hàng xóm của Gatsby. Tiếng Anh hiện đại, câu ngắn, nhưng nhiều ẩn dụ.', '🥂', 48143, 19, 64317, 3)
on conflict (id) do update set word_count = excluded.word_count, chapter_count = excluded.chapter_count, blurb = excluded.blurb;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('70d4ef9b-e299-4064-a6a1-35d211ff6abd', '663a6e4f-adba-44b9-a289-a17856cd3409', 1, 'I (1/2)', 'In my younger and more vulnerable years my father gave me some advice

that I’ve been turning over in my mind ever since.

“Whenever you feel like criticizing anyone,” he told me, “just

remember that all the people in this world haven’t had the advantages

that you’ve had.”

He didn’t say any more, but we’ve always been unusually communicative

in a reserved way, and I understood that he meant a great deal more

than that. In consequence, I’m inclined to reserve all judgements, a

habit that has opened up many curious natures to me and also made me

the victim of not a few veteran bores. The abnormal mind is quick to

detect and attach itself to this quality when it appears in a normal

person, and so it came about that in college I was unjustly accused of

being a politician, because I was privy to the secret griefs of wild,

unknown men. Most of the confidences were unsought—frequently I have

feigned sleep, preoccupation, or a hostile levity when I realized by

some unmistakable sign that an intimate revelation was quivering on

the horizon; for the intimate revelations of young men, or at least

the terms in which they express them, are usually plagiaristic and

marred by obvious suppressions. Reserving judgements is a matter of

infinite hope. I am still a little afraid of missing something if I

forget that, as my father snobbishly suggested, and I snobbishly

repeat, a sense of the fundamental decencies is parcelled out

unequally at birth.

And, after boasting this way of my tolerance, I come to the admission

that it has a limit. Conduct may be founded on the hard rock or the

wet marshes, but after a certain point I don’t care what it’s founded

on. When I came back from the East last autumn I felt that I wanted

the world to be in uniform and at a sort of moral attention forever; I

wanted no more riotous excursions with privileged glimpses into the

human heart. Only Gatsby, the man who gives his name to this book, was

exempt from my reaction—Gatsby, who represented everything for which I

have an unaffected scorn. If personality is an unbroken series of

successful gestures, then there was something gorgeous about him, some

heightened sensitivity to the promises of life, as if he were related

to one of those intricate machines that register earthquakes ten

thousand miles away. This responsiveness had nothing to do with that

flabby impressionability which is dignified under the name of the

“creative temperament”—it was an extraordinary gift for hope, a

romantic readiness such as I have never found in any other person and

which it is not likely I shall ever find again. No—Gatsby turned out

all right at the end; it is what preyed on Gatsby, what foul dust

floated in the wake of his dreams that temporarily closed out my

interest in the abortive sorrows and short-winded elations of men.

------------------------------------------------------------------------

My family have been prominent, well-to-do people in this Middle

Western city for three generations. The Carraways are something of a

clan, and we have a tradition that we’re descended from the Dukes of

Buccleuch, but the actual founder of my line was my grandfather’s

brother, who came here in fifty-one, sent a substitute to the Civil

War, and started the wholesale hardware business that my father

carries on today.

I never saw this great-uncle, but I’m supposed to look like him—with

special reference to the rather hard-boiled painting that hangs in

father’s office. I graduated from New Haven in 1915, just a quarter of

a century after my father, and a little later I participated in that

delayed Teutonic migration known as the Great War. I enjoyed the

counter-raid so thoroughly that I came back restless. Instead of being

the warm centre of the world, the Middle West now seemed like the

ragged edge of the universe—so I decided to go East and learn the bond

business. Everybody I knew was in the bond business, so I supposed it

could support one more single man. All my aunts and uncles talked it

over as if they were choosing a prep school for me, and finally said,

“Why—ye-es,” with very grave, hesitant faces. Father agreed to finance

me for a year, and after various delays I came East, permanently, I

thought, in the spring of twenty-two.

The practical thing was to find rooms in the city, but it was a warm

season, and I had just left a country of wide lawns and friendly

trees, so when a young man at the office suggested that we take a

house together in a commuting town, it sounded like a great idea. He

found the house, a weather-beaten cardboard bungalow at eighty a

month, but at the last minute the firm ordered him to Washington, and

I went out to the country alone. I had a dog—at least I had him for a

few days until he ran away—and an old Dodge and a Finnish woman, who

made my bed and cooked breakfast and muttered Finnish wisdom to

herself over the electric stove.

It was lonely for a day or so until one morning some man, more

recently arrived than I, stopped me on the road.

“How do you get to West Egg village?” he asked helplessly.

I told him. And as I walked on I was lonely no longer. I was a guide,

a pathfinder, an original settler. He had casually conferred on me the

freedom of the neighbourhood.

And so with the sunshine and the great bursts of leaves growing on the

trees, just as things grow in fast movies, I had that familiar

conviction that life was beginning over again with the summer.

There was so much to read, for one thing, and so much fine health to

be pulled down out of the young breath-giving air. I bought a dozen

volumes on banking and credit and investment securities, and they

stood on my shelf in red and gold like new money from the mint,

promising to unfold the shining secrets that only Midas and Morgan and

Maecenas knew. And I had the high intention of reading many other

books besides. I was rather literary in college—one year I wrote a

series of very solemn and obvious editorials for the Yale News—and now

I was going to bring back all such things into my life and become

again that most limited of all specialists, the “well-rounded man.”

This isn’t just an epigram—life is much more successfully looked at

from a single window, after all.

It was a matter of chance that I should have rented a house in one of

the strangest communities in North America. It was on that slender

riotous island which extends itself due east of New York—and where

there are, among other natural curiosities, two unusual formations of

land. Twenty miles from the city a pair of enormous eggs, identical in

contour and separated only by a courtesy bay, jut out into the most

domesticated body of salt water in the Western hemisphere, the great

wet barnyard of Long Island Sound. They are not perfect ovals—like the

egg in the Columbus story, they are both crushed flat at the contact

end—but their physical resemblance must be a source of perpetual

wonder to the gulls that fly overhead. To the wingless a more

interesting phenomenon is their dissimilarity in every particular

except shape and size.

I lived at West Egg, the—well, the less fashionable of the two, though

this is a most superficial tag to express the bizarre and not a little

sinister contrast between them. My house was at the very tip of the

egg, only fifty yards from the Sound, and squeezed between two huge

places that rented for twelve or fifteen thousand a season. The one on

my right was a colossal affair by any standard—it was a factual

imitation of some Hôtel de Ville in Normandy, with a tower on one

side, spanking new under a thin beard of raw ivy, and a marble

swimming pool, and more than forty acres of lawn and garden. It was

Gatsby’s mansion. Or, rather, as I didn’t know Mr. Gatsby, it was a

mansion inhabited by a gentleman of that name. My own house was an

eyesore, but it was a small eyesore, and it had been overlooked, so I

had a view of the water, a partial view of my neighbour’s lawn, and

the consoling proximity of millionaires—all for eighty dollars a

month.

Across the courtesy bay the white palaces of fashionable East Egg

glittered along the water, and the history of the summer really begins

on the evening I drove over there to have dinner with the Tom

Buchanans. Daisy was my second cousin once removed, and I’d known Tom

in college. And just after the war I spent two days with them in

Chicago.

Her husband, among various physical accomplishments, had been one of

the most powerful ends that ever played football at New Haven—a

national figure in a way, one of those men who reach such an acute

limited excellence at twenty-one that everything afterward savours of

anticlimax. His family were enormously wealthy—even in college his

freedom with money was a matter for reproach—but now he’d left Chicago

and come East in a fashion that rather took your breath away: for

instance, he’d brought down a string of polo ponies from Lake

Forest. It was hard to realize that a man in my own generation was

wealthy enough to do that.

Why they came East I don’t know. They had spent a year in France for

no particular reason, and then drifted here and there unrestfully

wherever people played polo and were rich together. This was a

permanent move, said Daisy over the telephone, but I didn’t believe

it—I had no sight into Daisy’s heart, but I felt that Tom would drift

on forever seeking, a little wistfully, for the dramatic turbulence of

some irrecoverable football game.

And so it happened that on a warm windy evening I drove over to East

Egg to see two old friends whom I scarcely knew at all. Their house

was even more elaborate than I expected, a cheerful red-and-white

Georgian Colonial mansion, overlooking the bay. The lawn started at

the beach and ran towards the front door for a quarter of a mile,

jumping over sundials and brick walks and burning gardens—finally when

it reached the house drifting up the side in bright vines as though

from the momentum of its run. The front was broken by a line of French

windows, glowing now with reflected gold and wide open to the warm

windy afternoon, and Tom Buchanan in riding clothes was standing with

his legs apart on the front porch.

He had changed since his New Haven years. Now he was a sturdy

straw-haired man of thirty, with a rather hard mouth and a

supercilious manner. Two shining arrogant eyes had established

dominance over his face and gave him the appearance of always leaning

aggressively forward. Not even the effeminate swank of his riding

clothes could hide the enormous power of that body—he seemed to fill

those glistening boots until he strained the top lacing, and you could

see a great pack of muscle shifting when his shoulder moved under his

thin coat. It was a body capable of enormous leverage—a cruel body.

His speaking voice, a gruff husky tenor, added to the impression of

fractiousness he conveyed. There was a touch of paternal contempt in

it, even toward people he liked—and there were men at New Haven who

had hated his guts.

“Now, don’t think my opinion on these matters is final,” he seemed to

say, “just because I’m stronger and more of a man than you are.” We

were in the same senior society, and while we were never intimate I

always had the impression that he approved of me and wanted me to like

him with some harsh, defiant wistfulness of his own.

We talked for a few minutes on the sunny porch.

“I’ve got a nice place here,” he said, his eyes flashing about

restlessly.

Turning me around by one arm, he moved a broad flat hand along the

front vista, including in its sweep a sunken Italian garden, a half

acre of deep, pungent roses, and a snub-nosed motorboat that bumped

the tide offshore.

“It belonged to Demaine, the oil man.” He turned me around again,

politely and abruptly. “We’ll go inside.”

We walked through a high hallway into a bright rosy-coloured space,

fragilely bound into the house by French windows at either end. The

windows were ajar and gleaming white against the fresh grass outside

that seemed to grow a little way into the house. A breeze blew through

the room, blew curtains in at one end and out the other like pale

flags, twisting them up toward the frosted wedding-cake of the

ceiling, and then rippled over the wine-coloured rug, making a shadow

on it as wind does on the sea.

The only completely stationary object in the room was an enormous

couch on which two young women were buoyed up as though upon an

anchored balloon. They were both in white, and their dresses were

rippling and fluttering as if they had just been blown back in after a

short flight around the house. I must have stood for a few moments

listening to the whip and snap of the curtains and the groan of a

picture on the wall. Then there was a boom as Tom Buchanan shut the

rear windows and the caught wind died out about the room, and the

curtains and the rugs and the two young women ballooned slowly to the

floor.

The younger of the two was a stranger to me. She was extended full

length at her end of the divan, completely motionless, and with her

chin raised a little, as if she were balancing something on it which

was quite likely to fall. If she saw me out of the corner of her eyes

she gave no hint of it—indeed, I was almost surprised into murmuring

an apology for having disturbed her by coming in.

The other girl, Daisy, made an attempt to rise—she leaned slightly

forward with a conscientious expression—then she laughed, an absurd,

charming little laugh, and I laughed too and came forward into the

room.

“I’m p-paralysed with happiness.”

She laughed again, as if she said something very witty, and held my

hand for a moment, looking up into my face, promising that there was

no one in the world she so much wanted to see. That was a way she

had. She hinted in a murmur that the surname of the balancing girl was

Baker. (I’ve heard it said that Daisy’s murmur was only to make people

lean toward her; an irrelevant criticism that made it no less

charming.)

At any rate, Miss Baker’s lips fluttered, she nodded at me almost

imperceptibly, and then quickly tipped her head back again—the object

she was balancing had obviously tottered a little and given her

something of a fright. Again a sort of apology arose to my lips.

Almost any exhibition of complete self-sufficiency draws a stunned

tribute from me.

I looked back at my cousin, who began to ask me questions in her low,

thrilling voice. It was the kind of voice that the ear follows up and

down, as if each speech is an arrangement of notes that will never be

played again. Her face was sad and lovely with bright things in it,

bright eyes and a bright passionate mouth, but there was an excitement

in her voice that men who had cared for her found difficult to forget:

a singing compulsion, a whispered “Listen,” a promise that she had

done gay, exciting things just a while since and that there were gay,

exciting things hovering in the next hour.

I told her how I had stopped off in Chicago for a day on my way East,

and how a dozen people had sent their love through me.

“Do they miss me?” she cried ecstatically.

“The whole town is desolate. All the cars have the left rear wheel

painted black as a mourning wreath, and there’s a persistent wail all

night along the north shore.”

“How gorgeous! Let’s go back, Tom. Tomorrow!” Then she added

irrelevantly: “You ought to see the baby.”

“I’d like to.”

“She’s asleep. She’s three years old. Haven’t you ever seen her?”

“Never.”

“Well, you ought to see her. She’s—”

Tom Buchanan, who had been hovering restlessly about the room, stopped

and rested his hand on my shoulder.

“What you doing, Nick?”

“I’m a bond man.”

“Who with?”

I told him.

“Never heard of them,” he remarked decisively.

This annoyed me.

“You will,” I answered shortly. “You will if you stay in the East.”

“Oh, I’ll stay in the East, don’t you worry,” he said, glancing at

Daisy and then back at me, as if he were alert for something

more. “I’d be a God damned fool to live anywhere else.”

At this point Miss Baker said: “Absolutely!” with such suddenness that

I started—it was the first word she had uttered since I came into the

room. Evidently it surprised her as much as it did me, for she yawned

and with a series of rapid, deft movements stood up into the room.

“I’m stiff,” she complained, “I’ve been lying on that sofa for as long

as I can remember.”

“Don’t look at me,” Daisy retorted, “I’ve been trying to get you to

New York all afternoon.”', 2941)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('759c5d16-5271-4028-a07c-ced82182b14e', '663a6e4f-adba-44b9-a289-a17856cd3409', 2, 'I (2/2)', '“No, thanks,” said Miss Baker to the four cocktails just in from the

pantry. “I’m absolutely in training.”

Her host looked at her incredulously.

“You are!” He took down his drink as if it were a drop in the bottom

of a glass. “How you ever get anything done is beyond me.”

I looked at Miss Baker, wondering what it was she “got done.” I

enjoyed looking at her. She was a slender, small-breasted girl, with

an erect carriage, which she accentuated by throwing her body backward

at the shoulders like a young cadet. Her grey sun-strained eyes looked

back at me with polite reciprocal curiosity out of a wan, charming,

discontented face. It occurred to me now that I had seen her, or a

picture of her, somewhere before.

“You live in West Egg,” she remarked contemptuously. “I know somebody

there.”

“I don’t know a single—”

“You must know Gatsby.”

“Gatsby?” demanded Daisy. “What Gatsby?”

Before I could reply that he was my neighbour dinner was announced;

wedging his tense arm imperatively under mine, Tom Buchanan compelled

me from the room as though he were moving a checker to another square.

Slenderly, languidly, their hands set lightly on their hips, the two

young women preceded us out on to a rosy-coloured porch, open toward

the sunset, where four candles flickered on the table in the

diminished wind.

“Why candles?” objected Daisy, frowning. She snapped them out with her

fingers. “In two weeks it’ll be the longest day in the year.” She

looked at us all radiantly. “Do you always watch for the longest day

of the year and then miss it? I always watch for the longest day in

the year and then miss it.”

“We ought to plan something,” yawned Miss Baker, sitting down at the

table as if she were getting into bed.

“All right,” said Daisy. “What’ll we plan?” She turned to me

helplessly: “What do people plan?”

Before I could answer her eyes fastened with an awed expression on her

little finger.

“Look!” she complained; “I hurt it.”

We all looked—the knuckle was black and blue.

“You did it, Tom,” she said accusingly. “I know you didn’t mean to,

but you did do it. That’s what I get for marrying a brute of a man, a

great, big, hulking physical specimen of a—”

“I hate that word ‘hulking,’ ” objected Tom crossly, “even in

kidding.”

“Hulking,” insisted Daisy.

Sometimes she and Miss Baker talked at once, unobtrusively and with a

bantering inconsequence that was never quite chatter, that was as cool

as their white dresses and their impersonal eyes in the absence of all

desire. They were here, and they accepted Tom and me, making only a

polite pleasant effort to entertain or to be entertained. They knew

that presently dinner would be over and a little later the evening too

would be over and casually put away. It was sharply different from the

West, where an evening was hurried from phase to phase towards its

close, in a continually disappointed anticipation or else in sheer

nervous dread of the moment itself.

“You make me feel uncivilized, Daisy,” I confessed on my second glass

of corky but rather impressive claret. “Can’t you talk about crops or

something?”

I meant nothing in particular by this remark, but it was taken up in

an unexpected way.

“Civilization’s going to pieces,” broke out Tom violently. “I’ve

gotten to be a terrible pessimist about things. Have you read The Rise

of the Coloured Empires by this man Goddard?”

“Why, no,” I answered, rather surprised by his tone.

“Well, it’s a fine book, and everybody ought to read it. The idea is

if we don’t look out the white race will be—will be utterly

submerged. It’s all scientific stuff; it’s been proved.”

“Tom’s getting very profound,” said Daisy, with an expression of

unthoughtful sadness. “He reads deep books with long words in

them. What was that word we—”

“Well, these books are all scientific,” insisted Tom, glancing at her

impatiently. “This fellow has worked out the whole thing. It’s up to

us, who are the dominant race, to watch out or these other races will

have control of things.”

“We’ve got to beat them down,” whispered Daisy, winking ferociously

toward the fervent sun.

“You ought to live in California—” began Miss Baker, but Tom

interrupted her by shifting heavily in his chair.

“This idea is that we’re Nordics. I am, and you are, and you are,

and—” After an infinitesimal hesitation he included Daisy with a

slight nod, and she winked at me again. “—And we’ve produced all the

things that go to make civilization—oh, science and art, and all

that. Do you see?”

There was something pathetic in his concentration, as if his

complacency, more acute than of old, was not enough to him any more.

When, almost immediately, the telephone rang inside and the butler

left the porch Daisy seized upon the momentary interruption and leaned

towards me.

“I’ll tell you a family secret,” she whispered enthusiastically.

“It’s about the butler’s nose. Do you want to hear about the butler’s

nose?”

“That’s why I came over tonight.”

“Well, he wasn’t always a butler; he used to be the silver polisher

for some people in New York that had a silver service for two hundred

people. He had to polish it from morning till night, until finally it

began to affect his nose—”

“Things went from bad to worse,” suggested Miss Baker.

“Yes. Things went from bad to worse, until finally he had to give up

his position.”

For a moment the last sunshine fell with romantic affection upon her

glowing face; her voice compelled me forward breathlessly as I

listened—then the glow faded, each light deserting her with lingering

regret, like children leaving a pleasant street at dusk.

The butler came back and murmured something close to Tom’s ear,

whereupon Tom frowned, pushed back his chair, and without a word went

inside. As if his absence quickened something within her, Daisy leaned

forward again, her voice glowing and singing.

“I love to see you at my table, Nick. You remind me of a—of a rose, an

absolute rose. Doesn’t he?” She turned to Miss Baker for confirmation:

“An absolute rose?”

This was untrue. I am not even faintly like a rose. She was only

extemporizing, but a stirring warmth flowed from her, as if her heart

was trying to come out to you concealed in one of those breathless,

thrilling words. Then suddenly she threw her napkin on the table and

excused herself and went into the house.

Miss Baker and I exchanged a short glance consciously devoid of

meaning. I was about to speak when she sat up alertly and said “Sh!”

in a warning voice. A subdued impassioned murmur was audible in the

room beyond, and Miss Baker leaned forward unashamed, trying to

hear. The murmur trembled on the verge of coherence, sank down,

mounted excitedly, and then ceased altogether.

“This Mr. Gatsby you spoke of is my neighbour—” I began.

“Don’t talk. I want to hear what happens.”

“Is something happening?” I inquired innocently.

“You mean to say you don’t know?” said Miss Baker, honestly surprised.

“I thought everybody knew.”

“I don’t.”

“Why—” she said hesitantly. “Tom’s got some woman in New York.”

“Got some woman?” I repeated blankly.

Miss Baker nodded.

“She might have the decency not to telephone him at dinner time.

Don’t you think?”

Almost before I had grasped her meaning there was the flutter of a

dress and the crunch of leather boots, and Tom and Daisy were back at

the table.

“It couldn’t be helped!” cried Daisy with tense gaiety.

She sat down, glanced searchingly at Miss Baker and then at me, and

continued: “I looked outdoors for a minute, and it’s very romantic

outdoors. There’s a bird on the lawn that I think must be a

nightingale come over on the Cunard or White Star Line. He’s singing

away—” Her voice sang: “It’s romantic, isn’t it, Tom?”

“Very romantic,” he said, and then miserably to me: “If it’s light

enough after dinner, I want to take you down to the stables.”

The telephone rang inside, startlingly, and as Daisy shook her head

decisively at Tom the subject of the stables, in fact all subjects,

vanished into air. Among the broken fragments of the last five minutes

at table I remember the candles being lit again, pointlessly, and I

was conscious of wanting to look squarely at everyone, and yet to

avoid all eyes. I couldn’t guess what Daisy and Tom were thinking, but

I doubt if even Miss Baker, who seemed to have mastered a certain

hardy scepticism, was able utterly to put this fifth guest’s shrill

metallic urgency out of mind. To a certain temperament the situation

might have seemed intriguing—my own instinct was to telephone

immediately for the police.

The horses, needless to say, were not mentioned again. Tom and Miss

Baker, with several feet of twilight between them, strolled back into

the library, as if to a vigil beside a perfectly tangible body, while,

trying to look pleasantly interested and a little deaf, I followed

Daisy around a chain of connecting verandas to the porch in front. In

its deep gloom we sat down side by side on a wicker settee.

Daisy took her face in her hands as if feeling its lovely shape, and

her eyes moved gradually out into the velvet dusk. I saw that

turbulent emotions possessed her, so I asked what I thought would be

some sedative questions about her little girl.

“We don’t know each other very well, Nick,” she said suddenly. “Even

if we are cousins. You didn’t come to my wedding.”

“I wasn’t back from the war.”

“That’s true.” She hesitated. “Well, I’ve had a very bad time, Nick,

and I’m pretty cynical about everything.”

Evidently she had reason to be. I waited but she didn’t say any more,

and after a moment I returned rather feebly to the subject of her

daughter.

“I suppose she talks, and—eats, and everything.”

“Oh, yes.” She looked at me absently. “Listen, Nick; let me tell you

what I said when she was born. Would you like to hear?”

“Very much.”

“It’ll show you how I’ve gotten to feel about—things. Well, she was

less than an hour old and Tom was God knows where. I woke up out of

the ether with an utterly abandoned feeling, and asked the nurse right

away if it was a boy or a girl. She told me it was a girl, and so I

turned my head away and wept. ‘All right,’ I said, ‘I’m glad it’s a

girl. And I hope she’ll be a fool—that’s the best thing a girl can be

in this world, a beautiful little fool.’

“You see I think everything’s terrible anyhow,” she went on in a

convinced way. “Everybody thinks so—the most advanced people. And I

know. I’ve been everywhere and seen everything and done everything.”

Her eyes flashed around her in a defiant way, rather like Tom’s, and

she laughed with thrilling scorn. “Sophisticated—God, I’m

sophisticated!”

The instant her voice broke off, ceasing to compel my attention, my

belief, I felt the basic insincerity of what she had said. It made me

uneasy, as though the whole evening had been a trick of some sort to

exact a contributory emotion from me. I waited, and sure enough, in a

moment she looked at me with an absolute smirk on her lovely face, as

if she had asserted her membership in a rather distinguished secret

society to which she and Tom belonged.

------------------------------------------------------------------------

Inside, the crimson room bloomed with light. Tom and Miss Baker sat at

either end of the long couch and she read aloud to him from the

Saturday Evening Post—the words, murmurous and uninflected, running

together in a soothing tune. The lamplight, bright on his boots and

dull on the autumn-leaf yellow of her hair, glinted along the paper as

she turned a page with a flutter of slender muscles in her arms.

When we came in she held us silent for a moment with a lifted hand.

“To be continued,” she said, tossing the magazine on the table, “in

our very next issue.”

Her body asserted itself with a restless movement of her knee, and she

stood up.

“Ten o’clock,” she remarked, apparently finding the time on the

ceiling. “Time for this good girl to go to bed.”

“Jordan’s going to play in the tournament tomorrow,” explained Daisy,

“over at Westchester.”

“Oh—you’re Jordan Baker.”

I knew now why her face was familiar—its pleasing contemptuous

expression had looked out at me from many rotogravure pictures of the

sporting life at Asheville and Hot Springs and Palm Beach. I had heard

some story of her too, a critical, unpleasant story, but what it was I

had forgotten long ago.

“Good night,” she said softly. “Wake me at eight, won’t you.”

“If you’ll get up.”

“I will. Good night, Mr. Carraway. See you anon.”

“Of course you will,” confirmed Daisy. “In fact I think I’ll arrange a

marriage. Come over often, Nick, and I’ll sort of—oh—fling you

together. You know—lock you up accidentally in linen closets and push

you out to sea in a boat, and all that sort of thing—”

“Good night,” called Miss Baker from the stairs. “I haven’t heard a

word.”

“She’s a nice girl,” said Tom after a moment. “They oughtn’t to let

her run around the country this way.”

“Who oughtn’t to?” inquired Daisy coldly.

“Her family.”

“Her family is one aunt about a thousand years old. Besides, Nick’s

going to look after her, aren’t you, Nick? She’s going to spend lots

of weekends out here this summer. I think the home influence will be

very good for her.”

Daisy and Tom looked at each other for a moment in silence.

“Is she from New York?” I asked quickly.

“From Louisville. Our white girlhood was passed together there. Our

beautiful white—”

“Did you give Nick a little heart to heart talk on the veranda?”

demanded Tom suddenly.

“Did I?” She looked at me. “I can’t seem to remember, but I think we

talked about the Nordic race. Yes, I’m sure we did. It sort of crept

up on us and first thing you know—”

“Don’t believe everything you hear, Nick,” he advised me.

I said lightly that I had heard nothing at all, and a few minutes

later I got up to go home. They came to the door with me and stood

side by side in a cheerful square of light. As I started my motor

Daisy peremptorily called: “Wait!

“I forgot to ask you something, and it’s important. We heard you were

engaged to a girl out West.”

“That’s right,” corroborated Tom kindly. “We heard that you were

engaged.”

“It’s a libel. I’m too poor.”

“But we heard it,” insisted Daisy, surprising me by opening up again

in a flower-like way. “We heard it from three people, so it must be

true.”

Of course I knew what they were referring to, but I wasn’t even

vaguely engaged. The fact that gossip had published the banns was one

of the reasons I had come East. You can’t stop going with an old

friend on account of rumours, and on the other hand I had no intention

of being rumoured into marriage.

Their interest rather touched me and made them less remotely

rich—nevertheless, I was confused and a little disgusted as I drove

away. It seemed to me that the thing for Daisy to do was to rush out

of the house, child in arms—but apparently there were no such

intentions in her head. As for Tom, the fact that he “had some woman

in New York” was really less surprising than that he had been

depressed by a book. Something was making him nibble at the edge of

stale ideas as if his sturdy physical egotism no longer nourished his

peremptory heart.

Already it was deep summer on roadhouse roofs and in front of wayside

garages, where new red petrol-pumps sat out in pools of light, and

when I reached my estate at West Egg I ran the car under its shed and

sat for a while on an abandoned grass roller in the yard. The wind had

blown off, leaving a loud, bright night, with wings beating in the

trees and a persistent organ sound as the full bellows of the earth

blew the frogs full of life. The silhouette of a moving cat wavered

across the moonlight, and, turning my head to watch it, I saw that I

was not alone—fifty feet away a figure had emerged from the shadow of

my neighbour’s mansion and was standing with his hands in his pockets

regarding the silver pepper of the stars. Something in his leisurely

movements and the secure position of his feet upon the lawn suggested

that it was Mr. Gatsby himself, come out to determine what share was

his of our local heavens.

I decided to call to him. Miss Baker had mentioned him at dinner, and

that would do for an introduction. But I didn’t call to him, for he

gave a sudden intimation that he was content to be alone—he stretched

out his arms toward the dark water in a curious way, and, far as I was

from him, I could have sworn he was trembling. Involuntarily I glanced

seaward—and distinguished nothing except a single green light, minute

and far away, that might have been the end of a dock. When I looked

once more for Gatsby he had vanished, and I was alone again in the

unquiet darkness.', 2950)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('38bf6091-b405-4448-a5a4-d276636259ac', '663a6e4f-adba-44b9-a289-a17856cd3409', 3, 'II (1/2)', 'About halfway between West Egg and New York the motor road hastily

joins the railroad and runs beside it for a quarter of a mile, so as

to shrink away from a certain desolate area of land. This is a valley

of ashes—a fantastic farm where ashes grow like wheat into ridges and

hills and grotesque gardens; where ashes take the forms of houses and

chimneys and rising smoke and, finally, with a transcendent effort, of

ash-grey men, who move dimly and already crumbling through the powdery

air. Occasionally a line of grey cars crawls along an invisible track,

gives out a ghastly creak, and comes to rest, and immediately the

ash-grey men swarm up with leaden spades and stir up an impenetrable

cloud, which screens their obscure operations from your sight.

But above the grey land and the spasms of bleak dust which drift

endlessly over it, you perceive, after a moment, the eyes of Doctor T.

J. Eckleburg. The eyes of Doctor T. J. Eckleburg are blue and

gigantic—their retinas are one yard high. They look out of no face,

but, instead, from a pair of enormous yellow spectacles which pass

over a nonexistent nose. Evidently some wild wag of an oculist set

them there to fatten his practice in the borough of Queens, and then

sank down himself into eternal blindness, or forgot them and moved

away. But his eyes, dimmed a little by many paintless days, under sun

and rain, brood on over the solemn dumping ground.

The valley of ashes is bounded on one side by a small foul river, and,

when the drawbridge is up to let barges through, the passengers on

waiting trains can stare at the dismal scene for as long as half an

hour. There is always a halt there of at least a minute, and it was

because of this that I first met Tom Buchanan’s mistress.

The fact that he had one was insisted upon wherever he was known. His

acquaintances resented the fact that he turned up in popular cafés

with her and, leaving her at a table, sauntered about, chatting with

whomsoever he knew. Though I was curious to see her, I had no desire

to meet her—but I did. I went up to New York with Tom on the train one

afternoon, and when we stopped by the ash-heaps he jumped to his feet

and, taking hold of my elbow, literally forced me from the car.

“We’re getting off,” he insisted. “I want you to meet my girl.”

I think he’d tanked up a good deal at luncheon, and his determination

to have my company bordered on violence. The supercilious assumption

was that on Sunday afternoon I had nothing better to do.

I followed him over a low whitewashed railroad fence, and we walked

back a hundred yards along the road under Doctor Eckleburg’s

persistent stare. The only building in sight was a small block of

yellow brick sitting on the edge of the waste land, a sort of compact

Main Street ministering to it, and contiguous to absolutely nothing.

One of the three shops it contained was for rent and another was an

all-night restaurant, approached by a trail of ashes; the third was a

garage—Repairs. George B. Wilson. Cars bought and sold.—and I followed

Tom inside.

The interior was unprosperous and bare; the only car visible was the

dust-covered wreck of a Ford which crouched in a dim corner. It had

occurred to me that this shadow of a garage must be a blind, and that

sumptuous and romantic apartments were concealed overhead, when the

proprietor himself appeared in the door of an office, wiping his hands

on a piece of waste. He was a blond, spiritless man, anaemic, and

faintly handsome. When he saw us a damp gleam of hope sprang into his

light blue eyes.

“Hello, Wilson, old man,” said Tom, slapping him jovially on the

shoulder. “How’s business?”

“I can’t complain,” answered Wilson unconvincingly. “When are you

going to sell me that car?”

“Next week; I’ve got my man working on it now.”

“Works pretty slow, don’t he?”

“No, he doesn’t,” said Tom coldly. “And if you feel that way about it,

maybe I’d better sell it somewhere else after all.”

“I don’t mean that,” explained Wilson quickly. “I just meant—”

His voice faded off and Tom glanced impatiently around the garage.

Then I heard footsteps on a stairs, and in a moment the thickish

figure of a woman blocked out the light from the office door. She was

in the middle thirties, and faintly stout, but she carried her flesh

sensuously as some women can. Her face, above a spotted dress of dark

blue crêpe-de-chine, contained no facet or gleam of beauty, but there

was an immediately perceptible vitality about her as if the nerves of

her body were continually smouldering. She smiled slowly and, walking

through her husband as if he were a ghost, shook hands with Tom,

looking him flush in the eye. Then she wet her lips, and without

turning around spoke to her husband in a soft, coarse voice:

“Get some chairs, why don’t you, so somebody can sit down.”

“Oh, sure,” agreed Wilson hurriedly, and went toward the little

office, mingling immediately with the cement colour of the walls. A

white ashen dust veiled his dark suit and his pale hair as it veiled

everything in the vicinity—except his wife, who moved close to Tom.

“I want to see you,” said Tom intently. “Get on the next train.”

“All right.”

“I’ll meet you by the newsstand on the lower level.”

She nodded and moved away from him just as George Wilson emerged with

two chairs from his office door.

We waited for her down the road and out of sight. It was a few days

before the Fourth of July, and a grey, scrawny Italian child was

setting torpedoes in a row along the railroad track.

“Terrible place, isn’t it,” said Tom, exchanging a frown with Doctor

Eckleburg.

“Awful.”

“It does her good to get away.”

“Doesn’t her husband object?”

“Wilson? He thinks she goes to see her sister in New York. He’s so

dumb he doesn’t know he’s alive.”

So Tom Buchanan and his girl and I went up together to New York—or not

quite together, for Mrs. Wilson sat discreetly in another car. Tom

deferred that much to the sensibilities of those East Eggers who might

be on the train.

She had changed her dress to a brown figured muslin, which stretched

tight over her rather wide hips as Tom helped her to the platform in

New York. At the newsstand she bought a copy of Town Tattle and a

moving-picture magazine, and in the station drugstore some cold cream

and a small flask of perfume. Upstairs, in the solemn echoing drive

she let four taxicabs drive away before she selected a new one,

lavender-coloured with grey upholstery, and in this we slid out from

the mass of the station into the glowing sunshine. But immediately she

turned sharply from the window and, leaning forward, tapped on the

front glass.

“I want to get one of those dogs,” she said earnestly. “I want to get

one for the apartment. They’re nice to have—a dog.”

We backed up to a grey old man who bore an absurd resemblance to John

D. Rockefeller. In a basket swung from his neck cowered a dozen very

recent puppies of an indeterminate breed.

“What kind are they?” asked Mrs. Wilson eagerly, as he came to the

taxi-window.

“All kinds. What kind do you want, lady?”

“I’d like to get one of those police dogs; I don’t suppose you got

that kind?”

The man peered doubtfully into the basket, plunged in his hand and

drew one up, wriggling, by the back of the neck.

“That’s no police dog,” said Tom.

“No, it’s not exactly a police dog,” said the man with disappointment

in his voice. “It’s more of an Airedale.” He passed his hand over the

brown washrag of a back. “Look at that coat. Some coat. That’s a dog

that’ll never bother you with catching cold.”

“I think it’s cute,” said Mrs. Wilson enthusiastically. “How much is

it?”

“That dog?” He looked at it admiringly. “That dog will cost you ten

dollars.”

The Airedale—undoubtedly there was an Airedale concerned in it

somewhere, though its feet were startlingly white—changed hands and

settled down into Mrs. Wilson’s lap, where she fondled the

weatherproof coat with rapture.

“Is it a boy or a girl?” she asked delicately.

“That dog? That dog’s a boy.”

“It’s a bitch,” said Tom decisively. “Here’s your money. Go and buy

ten more dogs with it.”

We drove over to Fifth Avenue, warm and soft, almost pastoral, on the

summer Sunday afternoon. I wouldn’t have been surprised to see a great

flock of white sheep turn the corner.

“Hold on,” I said, “I have to leave you here.”

“No you don’t,” interposed Tom quickly. “Myrtle’ll be hurt if you

don’t come up to the apartment. Won’t you, Myrtle?”

“Come on,” she urged. “I’ll telephone my sister Catherine. She’s said

to be very beautiful by people who ought to know.”

“Well, I’d like to, but—”

We went on, cutting back again over the Park toward the West Hundreds.

At 158th Street the cab stopped at one slice in a long white cake of

apartment-houses. Throwing a regal homecoming glance around the

neighbourhood, Mrs. Wilson gathered up her dog and her other

purchases, and went haughtily in.

“I’m going to have the McKees come up,” she announced as we rose in

the elevator. “And, of course, I got to call up my sister, too.”

The apartment was on the top floor—a small living-room, a small

dining-room, a small bedroom, and a bath. The living-room was crowded

to the doors with a set of tapestried furniture entirely too large for

it, so that to move about was to stumble continually over scenes of

ladies swinging in the gardens of Versailles. The only picture was an

over-enlarged photograph, apparently a hen sitting on a blurred rock.

Looked at from a distance, however, the hen resolved itself into a

bonnet, and the countenance of a stout old lady beamed down into the

room. Several old copies of Town Tattle lay on the table together with

a copy of Simon Called Peter, and some of the small scandal magazines

of Broadway. Mrs. Wilson was first concerned with the dog. A reluctant

elevator boy went for a box full of straw and some milk, to which he

added on his own initiative a tin of large, hard dog biscuits—one of

which decomposed apathetically in the saucer of milk all

afternoon. Meanwhile Tom brought out a bottle of whisky from a locked

bureau door.

I have been drunk just twice in my life, and the second time was that

afternoon; so everything that happened has a dim, hazy cast over it,

although until after eight o’clock the apartment was full of cheerful

sun. Sitting on Tom’s lap Mrs. Wilson called up several people on the

telephone; then there were no cigarettes, and I went out to buy some

at the drugstore on the corner. When I came back they had both

disappeared, so I sat down discreetly in the living-room and read a

chapter of Simon Called Peter—either it was terrible stuff or the

whisky distorted things, because it didn’t make any sense to me.

Just as Tom and Myrtle (after the first drink Mrs. Wilson and I called

each other by our first names) reappeared, company commenced to arrive

at the apartment door.

The sister, Catherine, was a slender, worldly girl of about thirty,

with a solid, sticky bob of red hair, and a complexion powdered milky

white. Her eyebrows had been plucked and then drawn on again at a more

rakish angle, but the efforts of nature toward the restoration of the

old alignment gave a blurred air to her face. When she moved about

there was an incessant clicking as innumerable pottery bracelets

jingled up and down upon her arms. She came in with such a proprietary

haste, and looked around so possessively at the furniture that I

wondered if she lived here. But when I asked her she laughed

immoderately, repeated my question aloud, and told me she lived with a

girl friend at a hotel.

Mr. McKee was a pale, feminine man from the flat below. He had just

shaved, for there was a white spot of lather on his cheekbone, and he

was most respectful in his greeting to everyone in the room. He

informed me that he was in the “artistic game,” and I gathered later

that he was a photographer and had made the dim enlargement of', 2130)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('778fc5ec-6a50-486a-ab6d-370e22c76b33', '663a6e4f-adba-44b9-a289-a17856cd3409', 4, 'II (2/2)', 'Mrs. Wilson’s mother which hovered like an ectoplasm on the wall. His

wife was shrill, languid, handsome, and horrible. She told me with

pride that her husband had photographed her a hundred and twenty-seven

times since they had been married.

Mrs. Wilson had changed her costume some time before, and was now

attired in an elaborate afternoon dress of cream-coloured chiffon,

which gave out a continual rustle as she swept about the room. With

the influence of the dress her personality had also undergone a

change. The intense vitality that had been so remarkable in the garage

was converted into impressive hauteur. Her laughter, her gestures, her

assertions became more violently affected moment by moment, and as she

expanded the room grew smaller around her, until she seemed to be

revolving on a noisy, creaking pivot through the smoky air.

“My dear,” she told her sister in a high, mincing shout, “most of

these fellas will cheat you every time. All they think of is money. I

had a woman up here last week to look at my feet, and when she gave me

the bill you’d of thought she had my appendicitis out.”

“What was the name of the woman?” asked Mrs. McKee.

“Mrs. Eberhardt. She goes around looking at people’s feet in their own

homes.”

“I like your dress,” remarked Mrs. McKee, “I think it’s adorable.”

Mrs. Wilson rejected the compliment by raising her eyebrow in disdain.

“It’s just a crazy old thing,” she said. “I just slip it on sometimes

when I don’t care what I look like.”

“But it looks wonderful on you, if you know what I mean,” pursued Mrs.

McKee. “If Chester could only get you in that pose I think he could

make something of it.”

We all looked in silence at Mrs. Wilson, who removed a strand of hair

from over her eyes and looked back at us with a brilliant smile. Mr.

McKee regarded her intently with his head on one side, and then moved

his hand back and forth slowly in front of his face.

“I should change the light,” he said after a moment. “I’d like to

bring out the modelling of the features. And I’d try to get hold of

all the back hair.”

“I wouldn’t think of changing the light,” cried Mrs. McKee. “I think

it’s—”

Her husband said “Sh!” and we all looked at the subject again,

whereupon Tom Buchanan yawned audibly and got to his feet.

“You McKees have something to drink,” he said. “Get some more ice and

mineral water, Myrtle, before everybody goes to sleep.”

“I told that boy about the ice.” Myrtle raised her eyebrows in despair

at the shiftlessness of the lower orders. “These people! You have to

keep after them all the time.”

She looked at me and laughed pointlessly. Then she flounced over to

the dog, kissed it with ecstasy, and swept into the kitchen, implying

that a dozen chefs awaited her orders there.

“I’ve done some nice things out on Long Island,” asserted Mr. McKee.

Tom looked at him blankly.

“Two of them we have framed downstairs.”

“Two what?” demanded Tom.

“Two studies. One of them I call Montauk Point—The Gulls, and the

other I call Montauk Point—The Sea.”

The sister Catherine sat down beside me on the couch.

“Do you live down on Long Island, too?” she inquired.

“I live at West Egg.”

“Really? I was down there at a party about a month ago. At a man named

Gatsby’s. Do you know him?”

“I live next door to him.”

“Well, they say he’s a nephew or a cousin of Kaiser Wilhelm’s. That’s

where all his money comes from.”

“Really?”

She nodded.

“I’m scared of him. I’d hate to have him get anything on me.”

This absorbing information about my neighbour was interrupted by Mrs.

McKee’s pointing suddenly at Catherine:

“Chester, I think you could do something with her,” she broke out, but

Mr. McKee only nodded in a bored way, and turned his attention to Tom.

“I’d like to do more work on Long Island, if I could get the entry.

All I ask is that they should give me a start.”

“Ask Myrtle,” said Tom, breaking into a short shout of laughter as

Mrs. Wilson entered with a tray. “She’ll give you a letter of

introduction, won’t you, Myrtle?”

“Do what?” she asked, startled.

“You’ll give McKee a letter of introduction to your husband, so he can

do some studies of him.” His lips moved silently for a moment as he

invented, “ ‘George B. Wilson at the Gasoline Pump,’ or something like

that.”

Catherine leaned close to me and whispered in my ear:

“Neither of them can stand the person they’re married to.”

“Can’t they?”

“Can’t stand them.” She looked at Myrtle and then at Tom. “What I say

is, why go on living with them if they can’t stand them? If I was them

I’d get a divorce and get married to each other right away.”

“Doesn’t she like Wilson either?”

The answer to this was unexpected. It came from Myrtle, who had

overheard the question, and it was violent and obscene.

“You see,” cried Catherine triumphantly. She lowered her voice again.

“It’s really his wife that’s keeping them apart. She’s a Catholic, and

they don’t believe in divorce.”

Daisy was not a Catholic, and I was a little shocked at the

elaborateness of the lie.

“When they do get married,” continued Catherine, “they’re going West

to live for a while until it blows over.”

“It’d be more discreet to go to Europe.”

“Oh, do you like Europe?” she exclaimed surprisingly. “I just got back

from Monte Carlo.”

“Really.”

“Just last year. I went over there with another girl.”

“Stay long?”

“No, we just went to Monte Carlo and back. We went by way of

Marseilles. We had over twelve hundred dollars when we started, but we

got gyped out of it all in two days in the private rooms. We had an

awful time getting back, I can tell you. God, how I hated that town!”

The late afternoon sky bloomed in the window for a moment like the

blue honey of the Mediterranean—then the shrill voice of Mrs. McKee

called me back into the room.

“I almost made a mistake, too,” she declared vigorously. “I almost

married a little kike who’d been after me for years. I knew he was

below me. Everybody kept saying to me: ‘Lucille, that man’s way below

you!’ But if I hadn’t met Chester, he’d of got me sure.”

“Yes, but listen,” said Myrtle Wilson, nodding her head up and down,

“at least you didn’t marry him.”

“I know I didn’t.”

“Well, I married him,” said Myrtle, ambiguously. “And that’s the

difference between your case and mine.”

“Why did you, Myrtle?” demanded Catherine. “Nobody forced you to.”

Myrtle considered.

“I married him because I thought he was a gentleman,” she said

finally. “I thought he knew something about breeding, but he wasn’t

fit to lick my shoe.”

“You were crazy about him for a while,” said Catherine.

“Crazy about him!” cried Myrtle incredulously. “Who said I was crazy

about him? I never was any more crazy about him than I was about that

man there.”

She pointed suddenly at me, and everyone looked at me accusingly. I

tried to show by my expression that I expected no affection.

“The only crazy I was was when I married him. I knew right away I made

a mistake. He borrowed somebody’s best suit to get married in, and

never even told me about it, and the man came after it one day when he

was out: ‘Oh, is that your suit?’ I said. ‘This is the first I ever

heard about it.’ But I gave it to him and then I lay down and cried to

beat the band all afternoon.”

“She really ought to get away from him,” resumed Catherine to me.

“They’ve been living over that garage for eleven years. And Tom’s the

first sweetie she ever had.”

The bottle of whisky—a second one—was now in constant demand by all

present, excepting Catherine, who “felt just as good on nothing at

all.” Tom rang for the janitor and sent him for some celebrated

sandwiches, which were a complete supper in themselves. I wanted to

get out and walk eastward toward the park through the soft twilight,

but each time I tried to go I became entangled in some wild, strident

argument which pulled me back, as if with ropes, into my chair. Yet

high over the city our line of yellow windows must have contributed

their share of human secrecy to the casual watcher in the darkening

streets, and I saw him too, looking up and wondering. I was within and

without, simultaneously enchanted and repelled by the inexhaustible

variety of life.

Myrtle pulled her chair close to mine, and suddenly her warm breath

poured over me the story of her first meeting with Tom.

“It was on the two little seats facing each other that are always the

last ones left on the train. I was going up to New York to see my

sister and spend the night. He had on a dress suit and patent leather

shoes, and I couldn’t keep my eyes off him, but every time he looked

at me I had to pretend to be looking at the advertisement over his

head. When we came into the station he was next to me, and his white

shirtfront pressed against my arm, and so I told him I’d have to call

a policeman, but he knew I lied. I was so excited that when I got into

a taxi with him I didn’t hardly know I wasn’t getting into a subway

train. All I kept thinking about, over and over, was ‘You can’t live

forever; you can’t live forever.’ ”

She turned to Mrs. McKee and the room rang full of her artificial

laughter.

“My dear,” she cried, “I’m going to give you this dress as soon as I’m

through with it. I’ve got to get another one tomorrow. I’m going to

make a list of all the things I’ve got to get. A massage and a wave,

and a collar for the dog, and one of those cute little ashtrays where

you touch a spring, and a wreath with a black silk bow for mother’s

grave that’ll last all summer. I got to write down a list so I won’t

forget all the things I got to do.”

It was nine o’clock—almost immediately afterward I looked at my watch

and found it was ten. Mr. McKee was asleep on a chair with his fists

clenched in his lap, like a photograph of a man of action. Taking out

my handkerchief I wiped from his cheek the spot of dried lather that

had worried me all the afternoon.

The little dog was sitting on the table looking with blind eyes

through the smoke, and from time to time groaning faintly. People

disappeared, reappeared, made plans to go somewhere, and then lost

each other, searched for each other, found each other a few feet

away. Some time toward midnight Tom Buchanan and Mrs. Wilson stood

face to face discussing, in impassioned voices, whether Mrs. Wilson

had any right to mention Daisy’s name.

“Daisy! Daisy! Daisy!” shouted Mrs. Wilson. “I’ll say it whenever I

want to! Daisy! Dai—”

Making a short deft movement, Tom Buchanan broke her nose with his

open hand.

Then there were bloody towels upon the bathroom floor, and women’s

voices scolding, and high over the confusion a long broken wail of

pain. Mr. McKee awoke from his doze and started in a daze toward the

door. When he had gone halfway he turned around and stared at the

scene—his wife and Catherine scolding and consoling as they stumbled

here and there among the crowded furniture with articles of aid, and

the despairing figure on the couch, bleeding fluently, and trying to

spread a copy of Town Tattle over the tapestry scenes of

Versailles. Then Mr. McKee turned and continued on out the door.

Taking my hat from the chandelier, I followed.

“Come to lunch some day,” he suggested, as we groaned down in the

elevator.

“Where?”

“Anywhere.”

“Keep your hands off the lever,” snapped the elevator boy.

“I beg your pardon,” said Mr. McKee with dignity, “I didn’t know I was

touching it.”

“All right,” I agreed, “I’ll be glad to.”

… I was standing beside his bed and he was sitting up between the

sheets, clad in his underwear, with a great portfolio in his hands.

“Beauty and the Beast … Loneliness … Old Grocery Horse … Brook’n

Bridge …”

Then I was lying half asleep in the cold lower level of the

Pennsylvania Station, staring at the morning Tribune, and waiting for

the four o’clock train.', 2149)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('dd26b55e-5f76-4e1e-a147-a5ff8a3d25d5', '663a6e4f-adba-44b9-a289-a17856cd3409', 5, 'III (1/2)', 'There was music from my neighbour’s house through the summer nights.

In his blue gardens men and girls came and went like moths among the

whisperings and the champagne and the stars. At high tide in the

afternoon I watched his guests diving from the tower of his raft, or

taking the sun on the hot sand of his beach while his two motorboats

slit the waters of the Sound, drawing aquaplanes over cataracts of

foam. On weekends his Rolls-Royce became an omnibus, bearing parties

to and from the city between nine in the morning and long past

midnight, while his station wagon scampered like a brisk yellow bug to

meet all trains. And on Mondays eight servants, including an extra

gardener, toiled all day with mops and scrubbing-brushes and hammers

and garden-shears, repairing the ravages of the night before.

Every Friday five crates of oranges and lemons arrived from a

fruiterer in New York—every Monday these same oranges and lemons left

his back door in a pyramid of pulpless halves. There was a machine in

the kitchen which could extract the juice of two hundred oranges in

half an hour if a little button was pressed two hundred times by a

butler’s thumb.

At least once a fortnight a corps of caterers came down with several

hundred feet of canvas and enough coloured lights to make a Christmas

tree of Gatsby’s enormous garden. On buffet tables, garnished with

glistening hors-d’oeuvre, spiced baked hams crowded against salads of

harlequin designs and pastry pigs and turkeys bewitched to a dark

gold. In the main hall a bar with a real brass rail was set up, and

stocked with gins and liquors and with cordials so long forgotten that

most of his female guests were too young to know one from another.

By seven o’clock the orchestra has arrived, no thin five-piece affair,

but a whole pitful of oboes and trombones and saxophones and viols and

cornets and piccolos, and low and high drums. The last swimmers have

come in from the beach now and are dressing upstairs; the cars from

New York are parked five deep in the drive, and already the halls and

salons and verandas are gaudy with primary colours, and hair bobbed in

strange new ways, and shawls beyond the dreams of Castile. The bar is

in full swing, and floating rounds of cocktails permeate the garden

outside, until the air is alive with chatter and laughter, and casual

innuendo and introductions forgotten on the spot, and enthusiastic

meetings between women who never knew each other’s names.

The lights grow brighter as the earth lurches away from the sun, and

now the orchestra is playing yellow cocktail music, and the opera of

voices pitches a key higher. Laughter is easier minute by minute,

spilled with prodigality, tipped out at a cheerful word. The groups

change more swiftly, swell with new arrivals, dissolve and form in the

same breath; already there are wanderers, confident girls who weave

here and there among the stouter and more stable, become for a sharp,

joyous moment the centre of a group, and then, excited with triumph,

glide on through the sea-change of faces and voices and colour under

the constantly changing light.

Suddenly one of these gypsies, in trembling opal, seizes a cocktail

out of the air, dumps it down for courage and, moving her hands like

Frisco, dances out alone on the canvas platform. A momentary hush; the

orchestra leader varies his rhythm obligingly for her, and there is a

burst of chatter as the erroneous news goes around that she is Gilda

Gray’s understudy from the Follies. The party has begun.

I believe that on the first night I went to Gatsby’s house I was one

of the few guests who had actually been invited. People were not

invited—they went there. They got into automobiles which bore them out

to Long Island, and somehow they ended up at Gatsby’s door. Once there

they were introduced by somebody who knew Gatsby, and after that they

conducted themselves according to the rules of behaviour associated

with an amusement park. Sometimes they came and went without having

met Gatsby at all, came for the party with a simplicity of heart that

was its own ticket of admission.

I had been actually invited. A chauffeur in a uniform of robin’s-egg

blue crossed my lawn early that Saturday morning with a surprisingly

formal note from his employer: the honour would be entirely Gatsby’s,

it said, if I would attend his “little party” that night. He had seen

me several times, and had intended to call on me long before, but a

peculiar combination of circumstances had prevented it—signed Jay

Gatsby, in a majestic hand.

Dressed up in white flannels I went over to his lawn a little after

seven, and wandered around rather ill at ease among swirls and eddies

of people I didn’t know—though here and there was a face I had noticed

on the commuting train. I was immediately struck by the number of

young Englishmen dotted about; all well dressed, all looking a little

hungry, and all talking in low, earnest voices to solid and prosperous

Americans. I was sure that they were selling something: bonds or

insurance or automobiles. They were at least agonizingly aware of the

easy money in the vicinity and convinced that it was theirs for a few

words in the right key.

As soon as I arrived I made an attempt to find my host, but the two or

three people of whom I asked his whereabouts stared at me in such an

amazed way, and denied so vehemently any knowledge of his movements,

that I slunk off in the direction of the cocktail table—the only place

in the garden where a single man could linger without looking

purposeless and alone.

I was on my way to get roaring drunk from sheer embarrassment when

Jordan Baker came out of the house and stood at the head of the marble

steps, leaning a little backward and looking with contemptuous

interest down into the garden.

Welcome or not, I found it necessary to attach myself to someone

before I should begin to address cordial remarks to the passersby.

“Hello!” I roared, advancing toward her. My voice seemed unnaturally

loud across the garden.

“I thought you might be here,” she responded absently as I came up.

“I remembered you lived next door to—”

She held my hand impersonally, as a promise that she’d take care of me

in a minute, and gave ear to two girls in twin yellow dresses, who

stopped at the foot of the steps.

“Hello!” they cried together. “Sorry you didn’t win.”

That was for the golf tournament. She had lost in the finals the week

before.

“You don’t know who we are,” said one of the girls in yellow, “but we

met you here about a month ago.”

“You’ve dyed your hair since then,” remarked Jordan, and I started,

but the girls had moved casually on and her remark was addressed to

the premature moon, produced like the supper, no doubt, out of a

caterer’s basket. With Jordan’s slender golden arm resting in mine, we

descended the steps and sauntered about the garden. A tray of

cocktails floated at us through the twilight, and we sat down at a

table with the two girls in yellow and three men, each one introduced

to us as Mr. Mumble.

“Do you come to these parties often?” inquired Jordan of the girl

beside her.

“The last one was the one I met you at,” answered the girl, in an

alert confident voice. She turned to her companion: “Wasn’t it for

you, Lucille?”

It was for Lucille, too.

“I like to come,” Lucille said. “I never care what I do, so I always

have a good time. When I was here last I tore my gown on a chair, and

he asked me my name and address—inside of a week I got a package from

Croirier’s with a new evening gown in it.”

“Did you keep it?” asked Jordan.

“Sure I did. I was going to wear it tonight, but it was too big in the

bust and had to be altered. It was gas blue with lavender beads. Two

hundred and sixty-five dollars.”

“There’s something funny about a fellow that’ll do a thing like that,”

said the other girl eagerly. “He doesn’t want any trouble with

anybody.”

“Who doesn’t?” I inquired.

“Gatsby. Somebody told me—”

The two girls and Jordan leaned together confidentially.

“Somebody told me they thought he killed a man once.”

A thrill passed over all of us. The three Mr. Mumbles bent forward and

listened eagerly.

“I don’t think it’s so much that,” argued Lucille sceptically; “It’s

more that he was a German spy during the war.”

One of the men nodded in confirmation.

“I heard that from a man who knew all about him, grew up with him in

Germany,” he assured us positively.

“Oh, no,” said the first girl, “it couldn’t be that, because he was in

the American army during the war.” As our credulity switched back to

her she leaned forward with enthusiasm. “You look at him sometimes

when he thinks nobody’s looking at him. I’ll bet he killed a man.”

She narrowed her eyes and shivered. Lucille shivered. We all turned

and looked around for Gatsby. It was testimony to the romantic

speculation he inspired that there were whispers about him from those

who had found little that it was necessary to whisper about in this

world.

The first supper—there would be another one after midnight—was now

being served, and Jordan invited me to join her own party, who were

spread around a table on the other side of the garden. There were

three married couples and Jordan’s escort, a persistent undergraduate

given to violent innuendo, and obviously under the impression that

sooner or later Jordan was going to yield him up her person to a

greater or lesser degree. Instead of rambling, this party had

preserved a dignified homogeneity, and assumed to itself the function

of representing the staid nobility of the countryside—East Egg

condescending to West Egg and carefully on guard against its

spectroscopic gaiety.

“Let’s get out,” whispered Jordan, after a somehow wasteful and

inappropriate half-hour; “this is much too polite for me.”

We got up, and she explained that we were going to find the host: I

had never met him, she said, and it was making me uneasy. The

undergraduate nodded in a cynical, melancholy way.

The bar, where we glanced first, was crowded, but Gatsby was not

there. She couldn’t find him from the top of the steps, and he wasn’t

on the veranda. On a chance we tried an important-looking door, and

walked into a high Gothic library, panelled with carved English oak,

and probably transported complete from some ruin overseas.

A stout, middle-aged man, with enormous owl-eyed spectacles, was

sitting somewhat drunk on the edge of a great table, staring with

unsteady concentration at the shelves of books. As we entered he

wheeled excitedly around and examined Jordan from head to foot.

“What do you think?” he demanded impetuously.

“About what?”

He waved his hand toward the bookshelves.

“About that. As a matter of fact you needn’t bother to ascertain. I

ascertained. They’re real.”

“The books?”

He nodded.

“Absolutely real—have pages and everything. I thought they’d be a nice

durable cardboard. Matter of fact, they’re absolutely real.  Pages

and—Here! Lemme show you.”

Taking our scepticism for granted, he rushed to the bookcases and

returned with Volume One of the Stoddard Lectures.

“See!” he cried triumphantly. “It’s a bona-fide piece of printed

matter. It fooled me. This fella’s a regular Belasco. It’s a

triumph. What thoroughness! What realism! Knew when to stop,

too—didn’t cut the pages. But what do you want? What do you expect?”

He snatched the book from me and replaced it hastily on its shelf,

muttering that if one brick was removed the whole library was liable

to collapse.

“Who brought you?” he demanded. “Or did you just come? I was brought.

Most people were brought.”

Jordan looked at him alertly, cheerfully, without answering.

“I was brought by a woman named Roosevelt,” he continued. “Mrs. Claud

Roosevelt. Do you know her? I met her somewhere last night. I’ve been

drunk for about a week now, and I thought it might sober me up to sit

in a library.”

“Has it?”

“A little bit, I think. I can’t tell yet. I’ve only been here an hour.

Did I tell you about the books? They’re real. They’re—”

“You told us.”

We shook hands with him gravely and went back outdoors.

There was dancing now on the canvas in the garden; old men pushing

young girls backward in eternal graceless circles, superior couples

holding each other tortuously, fashionably, and keeping in the

corners—and a great number of single girls dancing individually or

relieving the orchestra for a moment of the burden of the banjo or the

traps. By midnight the hilarity had increased. A celebrated tenor had

sung in Italian, and a notorious contralto had sung in jazz, and

between the numbers people were doing “stunts” all over the garden,

while happy, vacuous bursts of laughter rose toward the summer sky. A

pair of stage twins, who turned out to be the girls in yellow, did a

baby act in costume, and champagne was served in glasses bigger than

finger-bowls. The moon had risen higher, and floating in the Sound was

a triangle of silver scales, trembling a little to the stiff, tinny

drip of the banjoes on the lawn.

I was still with Jordan Baker. We were sitting at a table with a man

of about my age and a rowdy little girl, who gave way upon the

slightest provocation to uncontrollable laughter. I was enjoying

myself now. I had taken two finger-bowls of champagne, and the scene

had changed before my eyes into something significant, elemental, and

profound.

At a lull in the entertainment the man looked at me and smiled.

“Your face is familiar,” he said politely. “Weren’t you in the First

Division during the war?”

“Why yes. I was in the Twenty-eighth Infantry.”

“I was in the Sixteenth until June nineteen-eighteen. I knew I’d seen

you somewhere before.”

We talked for a moment about some wet, grey little villages in France.

Evidently he lived in this vicinity, for he told me that he had just

bought a hydroplane, and was going to try it out in the morning.

“Want to go with me, old sport? Just near the shore along the Sound.”

“What time?”

“Any time that suits you best.”

It was on the tip of my tongue to ask his name when Jordan looked

around and smiled.

“Having a gay time now?” she inquired.

“Much better.” I turned again to my new acquaintance. “This is an

unusual party for me. I haven’t even seen the host. I live over

there—” I waved my hand at the invisible hedge in the distance, “and

this man Gatsby sent over his chauffeur with an invitation.”

For a moment he looked at me as if he failed to understand.

“I’m Gatsby,” he said suddenly.

“What!” I exclaimed. “Oh, I beg your pardon.”

“I thought you knew, old sport. I’m afraid I’m not a very good host.”

He smiled understandingly—much more than understandingly. It was one

of those rare smiles with a quality of eternal reassurance in it, that

you may come across four or five times in life. It faced—or seemed to

face—the whole eternal world for an instant, and then concentrated on

you with an irresistible prejudice in your favour. It understood you

just so far as you wanted to be understood, believed in you as you

would like to believe in yourself, and assured you that it had

precisely the impression of you that, at your best, you hoped to

convey. Precisely at that point it vanished—and I was looking at an

elegant young roughneck, a year or two over thirty, whose elaborate

formality of speech just missed being absurd. Some time before he

introduced himself I’d got a strong impression that he was picking his

words with care.

Almost at the moment when Mr. Gatsby identified himself a butler

hurried toward him with the information that Chicago was calling him

on the wire. He excused himself with a small bow that included each of

us in turn.

“If you want anything just ask for it, old sport,” he urged me.

“Excuse me. I will rejoin you later.”

When he was gone I turned immediately to Jordan—constrained to assure

her of my surprise. I had expected that Mr. Gatsby would be a florid

and corpulent person in his middle years.

“Who is he?” I demanded. “Do you know?”

“He’s just a man named Gatsby.”

“Where is he from, I mean? And what does he do?”

“Now you’re started on the subject,” she answered with a wan smile.

“Well, he told me once he was an Oxford man.”

A dim background started to take shape behind him, but at her next

remark it faded away.', 2863)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('0cb2e1eb-7762-4594-aa37-ec9e19805119', '663a6e4f-adba-44b9-a289-a17856cd3409', 6, 'III (2/2)', '“However, I don’t believe it.”

“Why not?”

“I don’t know,” she insisted, “I just don’t think he went there.”

Something in her tone reminded me of the other girl’s “I think he

killed a man,” and had the effect of stimulating my curiosity. I would

have accepted without question the information that Gatsby sprang from

the swamps of Louisiana or from the lower East Side of New York. That

was comprehensible. But young men didn’t—at least in my provincial

inexperience I believed they didn’t—drift coolly out of nowhere and

buy a palace on Long Island Sound.

“Anyhow, he gives large parties,” said Jordan, changing the subject

with an urban distaste for the concrete. “And I like large parties.

They’re so intimate. At small parties there isn’t any privacy.”

There was the boom of a bass drum, and the voice of the orchestra

leader rang out suddenly above the echolalia of the garden.

“Ladies and gentlemen,” he cried. “At the request of Mr. Gatsby we are

going to play for you Mr. Vladmir Tostoff’s latest work, which

attracted so much attention at Carnegie Hall last May. If you read the

papers you know there was a big sensation.” He smiled with jovial

condescension, and added: “Some sensation!” Whereupon everybody

laughed.

“The piece is known,” he concluded lustily, “as ‘Vladmir Tostoff’s

Jazz History of the World!’ ”

The nature of Mr. Tostoff’s composition eluded me, because just as it

began my eyes fell on Gatsby, standing alone on the marble steps and

looking from one group to another with approving eyes. His tanned skin

was drawn attractively tight on his face and his short hair looked as

though it were trimmed every day. I could see nothing sinister about

him. I wondered if the fact that he was not drinking helped to set him

off from his guests, for it seemed to me that he grew more correct as

the fraternal hilarity increased. When the “Jazz History of the World”

was over, girls were putting their heads on men’s shoulders in a

puppyish, convivial way, girls were swooning backward playfully into

men’s arms, even into groups, knowing that someone would arrest their

falls—but no one swooned backward on Gatsby, and no French bob touched

Gatsby’s shoulder, and no singing quartets were formed with Gatsby’s

head for one link.

“I beg your pardon.”

Gatsby’s butler was suddenly standing beside us.

“Miss Baker?” he inquired. “I beg your pardon, but Mr. Gatsby would

like to speak to you alone.”

“With me?” she exclaimed in surprise.

“Yes, madame.”

She got up slowly, raising her eyebrows at me in astonishment, and

followed the butler toward the house. I noticed that she wore her

evening-dress, all her dresses, like sports clothes—there was a

jauntiness about her movements as if she had first learned to walk

upon golf courses on clean, crisp mornings.

I was alone and it was almost two. For some time confused and

intriguing sounds had issued from a long, many-windowed room which

overhung the terrace. Eluding Jordan’s undergraduate, who was now

engaged in an obstetrical conversation with two chorus girls, and who

implored me to join him, I went inside.

The large room was full of people. One of the girls in yellow was

playing the piano, and beside her stood a tall, red-haired young lady

from a famous chorus, engaged in song. She had drunk a quantity of

champagne, and during the course of her song she had decided, ineptly,

that everything was very, very sad—she was not only singing, she was

weeping too. Whenever there was a pause in the song she filled it with

gasping, broken sobs, and then took up the lyric again in a quavering

soprano. The tears coursed down her cheeks—not freely, however, for

when they came into contact with her heavily beaded eyelashes they

assumed an inky colour, and pursued the rest of their way in slow

black rivulets. A humorous suggestion was made that she sing the notes

on her face, whereupon she threw up her hands, sank into a chair, and

went off into a deep vinous sleep.

“She had a fight with a man who says he’s her husband,” explained a

girl at my elbow.

I looked around. Most of the remaining women were now having fights

with men said to be their husbands. Even Jordan’s party, the quartet

from East Egg, were rent asunder by dissension. One of the men was

talking with curious intensity to a young actress, and his wife, after

attempting to laugh at the situation in a dignified and indifferent

way, broke down entirely and resorted to flank attacks—at intervals

she appeared suddenly at his side like an angry diamond, and hissed:

“You promised!” into his ear.

The reluctance to go home was not confined to wayward men. The hall

was at present occupied by two deplorably sober men and their highly

indignant wives. The wives were sympathizing with each other in

slightly raised voices.

“Whenever he sees I’m having a good time he wants to go home.”

“Never heard anything so selfish in my life.”

“We’re always the first ones to leave.”

“So are we.”

“Well, we’re almost the last tonight,” said one of the men sheepishly.

“The orchestra left half an hour ago.”

In spite of the wives’ agreement that such malevolence was beyond

credibility, the dispute ended in a short struggle, and both wives

were lifted, kicking, into the night.

As I waited for my hat in the hall the door of the library opened and

Jordan Baker and Gatsby came out together. He was saying some last

word to her, but the eagerness in his manner tightened abruptly into

formality as several people approached him to say goodbye.

Jordan’s party were calling impatiently to her from the porch, but she

lingered for a moment to shake hands.

“I’ve just heard the most amazing thing,” she whispered. “How long

were we in there?”

“Why, about an hour.”

“It was … simply amazing,” she repeated abstractedly. “But I swore I

wouldn’t tell it and here I am tantalizing you.” She yawned gracefully

in my face. “Please come and see me … Phone book … Under the name of

Mrs. Sigourney Howard … My aunt …” She was hurrying off as she

talked—her brown hand waved a jaunty salute as she melted into her

party at the door.

Rather ashamed that on my first appearance I had stayed so late, I

joined the last of Gatsby’s guests, who were clustered around him. I

wanted to explain that I’d hunted for him early in the evening and to

apologize for not having known him in the garden.

“Don’t mention it,” he enjoined me eagerly. “Don’t give it another

thought, old sport.” The familiar expression held no more familiarity

than the hand which reassuringly brushed my shoulder. “And don’t

forget we’re going up in the hydroplane tomorrow morning, at nine

o’clock.”

Then the butler, behind his shoulder:

“Philadelphia wants you on the phone, sir.”

“All right, in a minute. Tell them I’ll be right there … Good night.”

“Good night.”

“Good night.” He smiled—and suddenly there seemed to be a pleasant

significance in having been among the last to go, as if he had desired

it all the time. “Good night, old sport … Good night.”

But as I walked down the steps I saw that the evening was not quite

over. Fifty feet from the door a dozen headlights illuminated a

bizarre and tumultuous scene. In the ditch beside the road, right side

up, but violently shorn of one wheel, rested a new coupé which had

left Gatsby’s drive not two minutes before. The sharp jut of a wall

accounted for the detachment of the wheel, which was now getting

considerable attention from half a dozen curious chauffeurs. However,

as they had left their cars blocking the road, a harsh, discordant din

from those in the rear had been audible for some time, and added to

the already violent confusion of the scene.

A man in a long duster had dismounted from the wreck and now stood in

the middle of the road, looking from the car to the tyre and from the

tyre to the observers in a pleasant, puzzled way.

“See!” he explained. “It went in the ditch.”

The fact was infinitely astonishing to him, and I recognized first the

unusual quality of wonder, and then the man—it was the late patron of

Gatsby’s library.

“How’d it happen?”

He shrugged his shoulders.

“I know nothing whatever about mechanics,” he said decisively.

“But how did it happen? Did you run into the wall?”

“Don’t ask me,” said Owl Eyes, washing his hands of the whole

matter. “I know very little about driving—next to nothing. It

happened, and that’s all I know.”

“Well, if you’re a poor driver you oughtn’t to try driving at night.”

“But I wasn’t even trying,” he explained indignantly, “I wasn’t even

trying.”

An awed hush fell upon the bystanders.

“Do you want to commit suicide?”

“You’re lucky it was just a wheel! A bad driver and not even trying!”

“You don’t understand,” explained the criminal. “I wasn’t driving.

There’s another man in the car.”

The shock that followed this declaration found voice in a sustained

“Ah-h-h!” as the door of the coupé swung slowly open. The crowd—it was

now a crowd—stepped back involuntarily, and when the door had opened

wide there was a ghostly pause. Then, very gradually, part by part, a

pale, dangling individual stepped out of the wreck, pawing tentatively

at the ground with a large uncertain dancing shoe.

Blinded by the glare of the headlights and confused by the incessant

groaning of the horns, the apparition stood swaying for a moment

before he perceived the man in the duster.

“Wha’s matter?” he inquired calmly. “Did we run outa gas?”

“Look!”

Half a dozen fingers pointed at the amputated wheel—he stared at it

for a moment, and then looked upward as though he suspected that it

had dropped from the sky.

“It came off,” someone explained.

He nodded.

“At first I din’ notice we’d stopped.”

A pause. Then, taking a long breath and straightening his shoulders,

he remarked in a determined voice:

“Wonder’ff tell me where there’s a gas’line station?”

At least a dozen men, some of them a little better off than he was,

explained to him that wheel and car were no longer joined by any

physical bond.

“Back out,” he suggested after a moment. “Put her in reverse.”

“But the wheel’s off!”

He hesitated.

“No harm in trying,” he said.

The caterwauling horns had reached a crescendo and I turned away and

cut across the lawn toward home. I glanced back once. A wafer of a

moon was shining over Gatsby’s house, making the night fine as before,

and surviving the laughter and the sound of his still glowing garden.

A sudden emptiness seemed to flow now from the windows and the great

doors, endowing with complete isolation the figure of the host, who

stood on the porch, his hand up in a formal gesture of farewell.

------------------------------------------------------------------------

Reading over what I have written so far, I see I have given the

impression that the events of three nights several weeks apart were

all that absorbed me. On the contrary, they were merely casual events

in a crowded summer, and, until much later, they absorbed me

infinitely less than my personal affairs.

Most of the time I worked. In the early morning the sun threw my

shadow westward as I hurried down the white chasms of lower New York

to the Probity Trust. I knew the other clerks and young bond-salesmen

by their first names, and lunched with them in dark, crowded

restaurants on little pig sausages and mashed potatoes and coffee. I

even had a short affair with a girl who lived in Jersey City and

worked in the accounting department, but her brother began throwing

mean looks in my direction, so when she went on her vacation in July I

let it blow quietly away.

I took dinner usually at the Yale Club—for some reason it was the

gloomiest event of my day—and then I went upstairs to the library and

studied investments and securities for a conscientious hour. There

were generally a few rioters around, but they never came into the

library, so it was a good place to work. After that, if the night was

mellow, I strolled down Madison Avenue past the old Murray Hill Hotel,

and over 33rd Street to the Pennsylvania Station.

I began to like New York, the racy, adventurous feel of it at night,

and the satisfaction that the constant flicker of men and women and

machines gives to the restless eye. I liked to walk up Fifth Avenue

and pick out romantic women from the crowd and imagine that in a few

minutes I was going to enter into their lives, and no one would ever

know or disapprove. Sometimes, in my mind, I followed them to their

apartments on the corners of hidden streets, and they turned and

smiled back at me before they faded through a door into warm

darkness. At the enchanted metropolitan twilight I felt a haunting

loneliness sometimes, and felt it in others—poor young clerks who

loitered in front of windows waiting until it was time for a solitary

restaurant dinner—young clerks in the dusk, wasting the most poignant

moments of night and life.

Again at eight o’clock, when the dark lanes of the Forties were lined

five deep with throbbing taxicabs, bound for the theatre district, I

felt a sinking in my heart. Forms leaned together in the taxis as they

waited, and voices sang, and there was laughter from unheard jokes,

and lighted cigarettes made unintelligible circles inside. Imagining

that I, too, was hurrying towards gaiety and sharing their intimate

excitement, I wished them well.

For a while I lost sight of Jordan Baker, and then in midsummer I

found her again. At first I was flattered to go places with her,

because she was a golf champion, and everyone knew her name. Then it

was something more. I wasn’t actually in love, but I felt a sort of

tender curiosity. The bored haughty face that she turned to the world

concealed something—most affectations conceal something eventually,

even though they don’t in the beginning—and one day I found what it

was. When we were on a house-party together up in Warwick, she left a

borrowed car out in the rain with the top down, and then lied about

it—and suddenly I remembered the story about her that had eluded me

that night at Daisy’s. At her first big golf tournament there was a

row that nearly reached the newspapers—a suggestion that she had moved

her ball from a bad lie in the semifinal round. The thing approached

the proportions of a scandal—then died away. A caddy retracted his

statement, and the only other witness admitted that he might have been

mistaken. The incident and the name had remained together in my mind.

Jordan Baker instinctively avoided clever, shrewd men, and now I saw

that this was because she felt safer on a plane where any divergence

from a code would be thought impossible. She was incurably dishonest.

She wasn’t able to endure being at a disadvantage and, given this

unwillingness, I suppose she had begun dealing in subterfuges when she

was very young in order to keep that cool, insolent smile turned to

the world and yet satisfy the demands of her hard, jaunty body.

It made no difference to me. Dishonesty in a woman is a thing you

never blame deeply—I was casually sorry, and then I forgot. It was on

that same house-party that we had a curious conversation about driving

a car. It started because she passed so close to some workmen that our

fender flicked a button on one man’s coat.

“You’re a rotten driver,” I protested. “Either you ought to be more

careful, or you oughtn’t to drive at all.”

“I am careful.”

“No, you’re not.”

“Well, other people are,” she said lightly.

“What’s that got to do with it?”

“They’ll keep out of my way,” she insisted. “It takes two to make an

accident.”

“Suppose you met somebody just as careless as yourself.”

“I hope I never will,” she answered. “I hate careless people. That’s

why I like you.”

Her grey, sun-strained eyes stared straight ahead, but she had

deliberately shifted our relations, and for a moment I thought I loved

her. But I am slow-thinking and full of interior rules that act as

brakes on my desires, and I knew that first I had to get myself

definitely out of that tangle back home. I’d been writing letters once

a week and signing them: “Love, Nick,” and all I could think of was

how, when that certain girl played tennis, a faint moustache of

perspiration appeared on her upper lip. Nevertheless there was a vague

understanding that had to be tactfully broken off before I was free.

Everyone suspects himself of at least one of the cardinal virtues, and

this is mine: I am one of the few honest people that I have ever

known.', 2870)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('a212b487-e8e6-4633-a567-5b3b099d57d2', '663a6e4f-adba-44b9-a289-a17856cd3409', 7, 'IV (1/2)', 'On Sunday morning while church bells rang in the villages alongshore,

the world and its mistress returned to Gatsby’s house and twinkled

hilariously on his lawn.

“He’s a bootlegger,” said the young ladies, moving somewhere between

his cocktails and his flowers. “One time he killed a man who had found

out that he was nephew to Von Hindenburg and second cousin to the

devil. Reach me a rose, honey, and pour me a last drop into that there

crystal glass.”

Once I wrote down on the empty spaces of a timetable the names of

those who came to Gatsby’s house that summer. It is an old timetable

now, disintegrating at its folds, and headed “This schedule in effect

July 5th, 1922.” But I can still read the grey names, and they will

give you a better impression than my generalities of those who

accepted Gatsby’s hospitality and paid him the subtle tribute of

knowing nothing whatever about him.

From East Egg, then, came the Chester Beckers and the Leeches, and a

man named Bunsen, whom I knew at Yale, and Doctor Webster Civet, who

was drowned last summer up in Maine. And the Hornbeams and the Willie

Voltaires, and a whole clan named Blackbuck, who always gathered in a

corner and flipped up their noses like goats at whosoever came

near. And the Ismays and the Chrysties (or rather Hubert Auerbach and

Mr. Chrystie’s wife), and Edgar Beaver, whose hair, they say, turned

cotton-white one winter afternoon for no good reason at all.

Clarence Endive was from East Egg, as I remember. He came only once,

in white knickerbockers, and had a fight with a bum named Etty in the

garden. From farther out on the Island came the Cheadles and the O.

R. P. Schraeders, and the Stonewall Jackson Abrams of Georgia, and the

Fishguards and the Ripley Snells. Snell was there three days before he

went to the penitentiary, so drunk out on the gravel drive that

Mrs. Ulysses Swett’s automobile ran over his right hand. The Dancies

came, too, and S. B. Whitebait, who was well over sixty, and Maurice

A. Flink, and the Hammerheads, and Beluga the tobacco importer, and

Beluga’s girls.

From West Egg came the Poles and the Mulreadys and Cecil Roebuck and

Cecil Schoen and Gulick the State senator and Newton Orchid, who

controlled Films Par Excellence, and Eckhaust and Clyde Cohen and Don

S. Schwartz (the son) and Arthur McCarty, all connected with the

movies in one way or another. And the Catlips and the Bembergs and G.

Earl Muldoon, brother to that Muldoon who afterward strangled his

wife. Da Fontano the promoter came there, and Ed Legros and James B.

(“Rot-Gut”) Ferret and the De Jongs and Ernest Lilly—they came to

gamble, and when Ferret wandered into the garden it meant he was

cleaned out and Associated Traction would have to fluctuate profitably

next day.

A man named Klipspringer was there so often that he became known as

“the boarder”—I doubt if he had any other home. Of theatrical people

there were Gus Waize and Horace O’Donavan and Lester Myer and George

Duckweed and Francis Bull. Also from New York were the Chromes and the

Backhyssons and the Dennickers and Russel Betty and the Corrigans and

the Kellehers and the Dewars and the Scullys and S. W. Belcher and the

Smirkes and the young Quinns, divorced now, and Henry L. Palmetto, who

killed himself by jumping in front of a subway train in Times Square.

Benny McClenahan arrived always with four girls. They were never quite

the same ones in physical person, but they were so identical one with

another that it inevitably seemed they had been there before. I have

forgotten their names—Jaqueline, I think, or else Consuela, or Gloria

or Judy or June, and their last names were either the melodious names

of flowers and months or the sterner ones of the great American

capitalists whose cousins, if pressed, they would confess themselves

to be.

In addition to all these I can remember that Faustina O’Brien came

there at least once and the Baedeker girls and young Brewer, who had

his nose shot off in the war, and Mr. Albrucksburger and Miss Haag,

his fiancée, and Ardita Fitz-Peters and Mr. P. Jewett, once head of

the American Legion, and Miss Claudia Hip, with a man reputed to be

her chauffeur, and a prince of something, whom we called Duke, and

whose name, if I ever knew it, I have forgotten.

All these people came to Gatsby’s house in the summer.

------------------------------------------------------------------------

At nine o’clock, one morning late in July, Gatsby’s gorgeous car

lurched up the rocky drive to my door and gave out a burst of melody

from its three-noted horn.

It was the first time he had called on me, though I had gone to two of

his parties, mounted in his hydroplane, and, at his urgent invitation,

made frequent use of his beach.

“Good morning, old sport. You’re having lunch with me today and I

thought we’d ride up together.”

He was balancing himself on the dashboard of his car with that

resourcefulness of movement that is so peculiarly American—that comes,

I suppose, with the absence of lifting work in youth and, even more,

with the formless grace of our nervous, sporadic games. This quality

was continually breaking through his punctilious manner in the shape

of restlessness. He was never quite still; there was always a tapping

foot somewhere or the impatient opening and closing of a hand.

He saw me looking with admiration at his car.

“It’s pretty, isn’t it, old sport?” He jumped off to give me a better

view. “Haven’t you ever seen it before?”

I’d seen it. Everybody had seen it. It was a rich cream colour, bright

with nickel, swollen here and there in its monstrous length with

triumphant hatboxes and supper-boxes and toolboxes, and terraced with

a labyrinth of windshields that mirrored a dozen suns. Sitting down

behind many layers of glass in a sort of green leather conservatory,

we started to town.

I had talked with him perhaps half a dozen times in the past month and

found, to my disappointment, that he had little to say. So my first

impression, that he was a person of some undefined consequence, had

gradually faded and he had become simply the proprietor of an

elaborate roadhouse next door.

And then came that disconcerting ride. We hadn’t reached West Egg

village before Gatsby began leaving his elegant sentences unfinished

and slapping himself indecisively on the knee of his caramel-coloured

suit.

“Look here, old sport,” he broke out surprisingly, “what’s your

opinion of me, anyhow?”

A little overwhelmed, I began the generalized evasions which that

question deserves.

“Well, I’m going to tell you something about my life,” he interrupted.

“I don’t want you to get a wrong idea of me from all these stories you

hear.”

So he was aware of the bizarre accusations that flavoured conversation

in his halls.

“I’ll tell you God’s truth.” His right hand suddenly ordered divine

retribution to stand by. “I am the son of some wealthy people in the

Middle West—all dead now. I was brought up in America but educated at

Oxford, because all my ancestors have been educated there for many

years. It is a family tradition.”

He looked at me sideways—and I knew why Jordan Baker had believed he

was lying. He hurried the phrase “educated at Oxford,” or swallowed

it, or choked on it, as though it had bothered him before. And with

this doubt, his whole statement fell to pieces, and I wondered if

there wasn’t something a little sinister about him, after all.

“What part of the Middle West?” I inquired casually.

“San Francisco.”

“I see.”

“My family all died and I came into a good deal of money.”

His voice was solemn, as if the memory of that sudden extinction of a

clan still haunted him. For a moment I suspected that he was pulling

my leg, but a glance at him convinced me otherwise.

“After that I lived like a young rajah in all the capitals of

Europe—Paris, Venice, Rome—collecting jewels, chiefly rubies, hunting

big game, painting a little, things for myself only, and trying to

forget something very sad that had happened to me long ago.”

With an effort I managed to restrain my incredulous laughter. The very

phrases were worn so threadbare that they evoked no image except that

of a turbaned “character” leaking sawdust at every pore as he pursued

a tiger through the Bois de Boulogne.

“Then came the war, old sport. It was a great relief, and I tried very

hard to die, but I seemed to bear an enchanted life. I accepted a

commission as first lieutenant when it began. In the Argonne Forest I

took the remains of my machine-gun battalion so far forward that there

was a half mile gap on either side of us where the infantry couldn’t

advance. We stayed there two days and two nights, a hundred and thirty

men with sixteen Lewis guns, and when the infantry came up at last

they found the insignia of three German divisions among the piles of

dead. I was promoted to be a major, and every Allied government gave

me a decoration—even Montenegro, little Montenegro down on the

Adriatic Sea!”

Little Montenegro! He lifted up the words and nodded at them—with his

smile. The smile comprehended Montenegro’s troubled history and

sympathized with the brave struggles of the Montenegrin people. It

appreciated fully the chain of national circumstances which had

elicited this tribute from Montenegro’s warm little heart. My

incredulity was submerged in fascination now; it was like skimming

hastily through a dozen magazines.

He reached in his pocket, and a piece of metal, slung on a ribbon,

fell into my palm.

“That’s the one from Montenegro.”

To my astonishment, the thing had an authentic look. “Orderi di

Danilo,” ran the circular legend, “Montenegro, Nicolas Rex.”

“Turn it.”

“Major Jay Gatsby,” I read, “For Valour Extraordinary.”

“Here’s another thing I always carry. A souvenir of Oxford days. It

was taken in Trinity Quad—the man on my left is now the Earl of

Doncaster.”

It was a photograph of half a dozen young men in blazers loafing in an

archway through which were visible a host of spires. There was Gatsby,

looking a little, not much, younger—with a cricket bat in his hand.

Then it was all true. I saw the skins of tigers flaming in his palace

on the Grand Canal; I saw him opening a chest of rubies to ease, with

their crimson-lighted depths, the gnawings of his broken heart.

“I’m going to make a big request of you today,” he said, pocketing his

souvenirs with satisfaction, “so I thought you ought to know something

about me. I didn’t want you to think I was just some nobody. You see,

I usually find myself among strangers because I drift here and there

trying to forget the sad things that happened to me.” He hesitated.

“You’ll hear about it this afternoon.”

“At lunch?”

“No, this afternoon. I happened to find out that you’re taking Miss

Baker to tea.”

“Do you mean you’re in love with Miss Baker?”

“No, old sport, I’m not. But Miss Baker has kindly consented to speak

to you about this matter.”

I hadn’t the faintest idea what “this matter” was, but I was more

annoyed than interested. I hadn’t asked Jordan to tea in order to

discuss Mr. Jay Gatsby. I was sure the request would be something

utterly fantastic, and for a moment I was sorry I’d ever set foot upon

his overpopulated lawn.

He wouldn’t say another word. His correctness grew on him as we neared

the city. We passed Port Roosevelt, where there was a glimpse of

red-belted oceangoing ships, and sped along a cobbled slum lined with

the dark, undeserted saloons of the faded-gilt nineteen-hundreds.

Then the valley of ashes opened out on both sides of us, and I had a

glimpse of Mrs. Wilson straining at the garage pump with panting

vitality as we went by.

With fenders spread like wings we scattered light through half

Astoria—only half, for as we twisted among the pillars of the elevated

I heard the familiar “jug-jug-spat!” of a motorcycle, and a frantic

policeman rode alongside.

“All right, old sport,” called Gatsby. We slowed down. Taking a white

card from his wallet, he waved it before the man’s eyes.

“Right you are,” agreed the policeman, tipping his cap. “Know you next

time, Mr. Gatsby. Excuse me!”

“What was that?” I inquired. “The picture of Oxford?”

“I was able to do the commissioner a favour once, and he sends me a

Christmas card every year.”

Over the great bridge, with the sunlight through the girders making a

constant flicker upon the moving cars, with the city rising up across

the river in white heaps and sugar lumps all built with a wish out of

nonolfactory money. The city seen from the Queensboro Bridge is always

the city seen for the first time, in its first wild promise of all the

mystery and the beauty in the world.

A dead man passed us in a hearse heaped with blooms, followed by two

carriages with drawn blinds, and by more cheerful carriages for

friends. The friends looked out at us with the tragic eyes and short

upper lips of southeastern Europe, and I was glad that the sight of

Gatsby’s splendid car was included in their sombre holiday. As we

crossed Blackwell’s Island a limousine passed us, driven by a white

chauffeur, in which sat three modish negroes, two bucks and a girl. I

laughed aloud as the yolks of their eyeballs rolled toward us in

haughty rivalry.

“Anything can happen now that we’ve slid over this bridge,” I thought;

“anything at all …”

Even Gatsby could happen, without any particular wonder.

------------------------------------------------------------------------

Roaring noon. In a well-fanned Forty-second Street cellar I met Gatsby

for lunch. Blinking away the brightness of the street outside, my eyes

picked him out obscurely in the anteroom, talking to another man.

“Mr. Carraway, this is my friend Mr. Wolfshiem.”

A small, flat-nosed Jew raised his large head and regarded me with two

fine growths of hair which luxuriated in either nostril. After a

moment I discovered his tiny eyes in the half-darkness.

“—So I took one look at him,” said Mr. Wolfshiem, shaking my hand

earnestly, “and what do you think I did?”

“What?” I inquired politely.

But evidently he was not addressing me, for he dropped my hand and

covered Gatsby with his expressive nose.

“I handed the money to Katspaugh and I said: ‘All right, Katspaugh,

don’t pay him a penny till he shuts his mouth.’ He shut it then and

there.”

Gatsby took an arm of each of us and moved forward into the

restaurant, whereupon Mr. Wolfshiem swallowed a new sentence he was

starting and lapsed into a somnambulatory abstraction.

“Highballs?” asked the head waiter.

“This is a nice restaurant here,” said Mr. Wolfshiem, looking at the

presbyterian nymphs on the ceiling. “But I like across the street

better!”

“Yes, highballs,” agreed Gatsby, and then to Mr. Wolfshiem: “It’s too

hot over there.”

“Hot and small—yes,” said Mr. Wolfshiem, “but full of memories.”

“What place is that?” I asked.

“The old Metropole.”

“The old Metropole,” brooded Mr. Wolfshiem gloomily. “Filled with

faces dead and gone. Filled with friends gone now forever. I can’t

forget so long as I live the night they shot Rosy Rosenthal there. It

was six of us at the table, and Rosy had eat and drunk a lot all

evening. When it was almost morning the waiter came up to him with a

funny look and says somebody wants to speak to him outside. ‘All

right,’ says Rosy, and begins to get up, and I pulled him down in his

chair.

“ ‘Let the bastards come in here if they want you, Rosy, but don’t

you, so help me, move outside this room.’

“It was four o’clock in the morning then, and if we’d of raised the

blinds we’d of seen daylight.”

“Did he go?” I asked innocently.

“Sure he went.” Mr. Wolfshiem’s nose flashed at me indignantly. “He

turned around in the door and says: ‘Don’t let that waiter take away', 2726)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;
