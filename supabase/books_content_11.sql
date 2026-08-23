-- ============================================================
-- NOI DUNG SACH — phan 11/20
-- Sinh tu tools/books/import_book.py, dung sua tay.
--
-- Chua: pride-and-prejudice, child-history-england
--
-- Chay books_schema.sql TRUOC, roi chay cac phan nay THEO THU TU.
-- An toan chay lai nhieu lan (uuid tat dinh + on conflict).
-- Cat nho vi SQL Editor cua Supabase tu choi cau lenh qua lon.
-- ============================================================

-- ===== Pride and Prejudice — Jane Austen (1813) =====
-- Nguon: Project Gutenberg #1342 (public domain)

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('b42d5047-5c0e-45cf-a059-5d89d814d4be', '09634a45-2244-491f-a154-dcc2f947f8a5', 62, 'Chapter LIX', '“My dear Lizzy, where can you have been walking to?” was a question

which Elizabeth received from Jane as soon as she entered the room, and

from all the others when they sat down to table. She had only to say in

reply, that they had wandered about till she was beyond her own

knowledge. She coloured as she spoke; but neither that, nor anything

else, awakened a suspicion of the truth.

The evening passed quietly, unmarked by anything extraordinary. The

acknowledged lovers talked and laughed; the unacknowledged were silent.

Darcy was not of a disposition in which happiness overflows in mirth;

and Elizabeth, agitated and confused, rather _knew_ that she was happy

than _felt_ herself to be so; for, besides the immediate embarrassment,

there were other evils before her. She anticipated what would be felt in

the family when her situation became known: she was aware that no one

liked him but Jane; and even feared that with the others it was a

_dislike_ which not all his fortune and consequence might do away.

At night she opened her heart to Jane. Though suspicion was very far

from Miss Bennet’s general habits, she was absolutely incredulous here.

“You are joking, Lizzy. This cannot be! Engaged to Mr. Darcy! No, no,

you shall not deceive me: I know it to be impossible.”

“This is a wretched beginning, indeed! My sole dependence was on you;

and I am sure nobody else will believe me, if you do not. Yet, indeed, I

am in earnest. I speak nothing but the truth. He still loves me, and we

are engaged.”

Jane looked at her doubtingly. “Oh, Lizzy! it cannot be. I know how much

you dislike him.”

“You know nothing of the matter. _That_ is all to be forgot. Perhaps I

did not always love him so well as I do now; but in such cases as these

a good memory is unpardonable. This is the last time I shall ever

remember it myself.”

Miss Bennet still looked all amazement. Elizabeth again, and more

seriously, assured her of its truth.

“Good heaven! can it be really so? Yet now I must believe you,” cried

Jane. “My dear, dear Lizzy, I would, I do congratulate you; but are you

certain--forgive the question--are you quite certain that you can be

happy with him?”

“There can be no doubt of that. It is settled between us already that we

are to be the happiest couple in the world. But are you pleased, Jane?

Shall you like to have such a brother?”

“Very, very much. Nothing could give either Bingley or myself more

delight. But we considered it, we talked of it as impossible. And do you

really love him quite well enough? Oh, Lizzy! do anything rather than

marry without affection. Are you quite sure that you feel what you ought

to do?”

“Oh, yes! You will only think I feel _more_ than I ought to do when I

tell you all.”

“What do you mean?”

“Why, I must confess that I love him better than I do Bingley. I am

afraid you will be angry.”

“My dearest sister, now be, _be_ serious. I want to talk very seriously.

Let me know everything that I am to know without delay. Will you tell me

how long you have loved him?”

“It has been coming on so gradually, that I hardly know when it began;

but I believe I must date it from my first seeing his beautiful grounds

at Pemberley.”

Another entreaty that she would be serious, however, produced the

desired effect; and she soon satisfied Jane by her solemn assurances of

attachment. When convinced on that article, Miss Bennet had nothing

further to wish.

“Now I am quite happy,” said she, “for you will be as happy as myself. I

always had a value for him. Were it for nothing but his love of you, I

must always have esteemed him; but now, as Bingley’s friend and your

husband, there can be only Bingley and yourself more dear to me. But,

Lizzy, you have been very sly, very reserved with me. How little did you

tell me of what passed at Pemberley and Lambton! I owe all that I know

of it to another, not to you.”

Elizabeth told her the motives of her secrecy. She had been unwilling to

mention Bingley; and the unsettled state of her own feelings had made

her equally avoid the name of his friend: but now she would no longer

conceal from her his share in Lydia’s marriage. All was acknowledged,

and half the night spent in conversation.

“Good gracious!” cried Mrs. Bennet, as she stood at a window the next

morning, “if that disagreeable Mr. Darcy is not coming here again with

our dear Bingley! What can he mean by being so tiresome as to be always

coming here? I had no notion but he would go a-shooting, or something or

other, and not disturb us with his company. What shall we do with him?

Lizzy, you must walk out with him again, that he may not be in Bingley’s

way.”

Elizabeth could hardly help laughing at so convenient a proposal; yet

was really vexed that her mother should be always giving him such an

epithet.

As soon as they entered, Bingley looked at her so expressively, and

shook hands with such warmth, as left no doubt of his good information;

and he soon afterwards said aloud, “Mrs. Bennet, have you no more lanes

hereabouts in which Lizzy may lose her way again to-day?”

“I advise Mr. Darcy, and Lizzy, and Kitty,” said Mrs. Bennet, “to walk

to Oakham Mount this morning. It is a nice long walk, and Mr. Darcy has

never seen the view.”

“It may do very well for the others,” replied Mr. Bingley; “but I am

sure it will be too much for Kitty. Won’t it, Kitty?”

Kitty owned that she had rather stay at home. Darcy professed a great

curiosity to see the view from the Mount, and Elizabeth silently

consented. As she went upstairs to get ready, Mrs. Bennet followed her,

saying,--

“I am quite sorry, Lizzy, that you should be forced to have that

disagreeable man all to yourself; but I hope you will not mind it. It is

all for Jane’s sake, you know; and there is no occasion for talking to

him except just now and then; so do not put yourself to inconvenience.”

During their walk, it was resolved that Mr. Bennet’s consent should be

asked in the course of the evening: Elizabeth reserved to herself the

application for her mother’s. She could not determine how her mother

would take it; sometimes doubting whether all his wealth and grandeur

would be enough to overcome her abhorrence of the man; but whether she

were violently set against the match, or violently delighted with it, it

was certain that her manner would be equally ill adapted to do credit to

her sense; and she could no more bear that Mr. Darcy should hear the

first raptures of her joy, than the first vehemence of her

disapprobation.

In the evening, soon after Mr. Bennet withdrew to the library, she saw

Mr. Darcy rise also and follow him, and her agitation on seeing it was

extreme. She did not fear her father’s opposition, but he was going to

be made unhappy, and that it should be through her means; that _she_,

his favourite child, should be distressing him by her choice, should be

filling him with fears and regrets in disposing of her, was a wretched

reflection, and she sat in misery till Mr. Darcy appeared again, when,

looking at him, she was a little relieved by his smile. In a few minutes

he approached the table where she was sitting with Kitty; and, while

pretending to admire her work, said in a whisper, “Go to your father; he

wants you in the library.” She was gone directly.

Her father was walking about the room, looking grave and anxious.

“Lizzy,” said he, “what are you doing? Are you out of your senses to be

accepting this man? Have not you always hated him?”

How earnestly did she then wish that her former opinions had been more

reasonable, her expressions more moderate! It would have spared her from

explanations and professions which it was exceedingly awkward to give;

but they were now necessary, and she assured him, with some confusion,

of her attachment to Mr. Darcy.

“Or, in other words, you are determined to have him. He is rich, to be

sure, and you may have more fine clothes and fine carriages than Jane.

But will they make you happy?”

“Have you any other objection,” said Elizabeth, “than your belief of my

indifference?”

“None at all. We all know him to be a proud, unpleasant sort of man; but

this would be nothing if you really liked him.”

“I do, I do like him,” she replied, with tears in her eyes; “I love him.

Indeed he has no improper pride. He is perfectly amiable. You do not

know what he really is; then pray do not pain me by speaking of him in

such terms.”

“Lizzy,” said her father, “I have given him my consent. He is the kind

of man, indeed, to whom I should never dare refuse anything, which he

condescended to ask. I now give it to _you_, if you are resolved on

having him. But let me advise you to think better of it. I know your

disposition, Lizzy. I know that you could be neither happy nor

respectable, unless you truly esteemed your husband, unless you looked

up to him as a superior. Your lively talents would place you in the

greatest danger in an unequal marriage. You could scarcely escape

discredit and misery. My child, let me not have the grief of seeing

_you_ unable to respect your partner in life. You know not what you are

about.”

Elizabeth, still more affected, was earnest and solemn in her reply;

and, at length, by repeated assurances that Mr. Darcy was really the

object of her choice, by explaining the gradual change which her

estimation of him had undergone, relating her absolute certainty that

his affection was not the work of a day, but had stood the test of many

months’ suspense, and enumerating with energy all his good qualities,

she did conquer her father’s incredulity, and reconcile him to the

match.

“Well, my dear,” said he, when she ceased speaking, “I have no more to

say. If this be the case, he deserves you. I could not have parted with

you, my Lizzy, to anyone less worthy.”

To complete the favourable impression, she then told him what Mr. Darcy

had voluntarily done for Lydia. He heard her with astonishment.

“This is an evening of wonders, indeed! And so, Darcy did everything;

made up the match, gave the money, paid the fellow’s debts, and got him

his commission! So much the better. It will save me a world of trouble

and economy. Had it been your uncle’s doing, I must and _would_ have

paid him; but these violent young lovers carry everything their own

way. I shall offer to pay him to-morrow, he will rant and storm about

his love for you, and there will be an end of the matter.”

He then recollected her embarrassment a few days before on his reading

Mr. Collins’s letter; and after laughing at her some time, allowed her

at last to go, saying, as she quitted the room, “If any young men come

for Mary or Kitty, send them in, for I am quite at leisure.”

Elizabeth’s mind was now relieved from a very heavy weight; and, after

half an hour’s quiet reflection in her own room, she was able to join

the others with tolerable composure. Everything was too recent for

gaiety, but the evening passed tranquilly away; there was no longer

anything material to be dreaded, and the comfort of ease and familiarity

would come in time.

When her mother went up to her dressing-room at night, she followed her,

and made the important communication. Its effect was most extraordinary;

for, on first hearing it, Mrs. Bennet sat quite still, and unable to

utter a syllable. Nor was it under many, many minutes, that she could

comprehend what she heard, though not in general backward to credit what

was for the advantage of her family, or that came in the shape of a

lover to any of them. She began at length to recover, to fidget about in

her chair, get up, sit down again, wonder, and bless herself.

“Good gracious! Lord bless me! only think! dear me! Mr. Darcy! Who would

have thought it? And is it really true? Oh, my sweetest Lizzy! how rich

and how great you will be! What pin-money, what jewels, what carriages

you will have! Jane’s is nothing to it--nothing at all. I am so

pleased--so happy. Such a charming man! so handsome! so tall! Oh, my

dear Lizzy! pray apologize for my having disliked him so much before. I

hope he will overlook it. Dear, dear Lizzy. A house in town! Everything

that is charming! Three daughters married! Ten thousand a year! Oh,

Lord! what will become of me? I shall go distracted.”

This was enough to prove that her approbation need not be doubted; and

Elizabeth, rejoicing that such an effusion was heard only by herself,

soon went away. But before she had been three minutes in her own room,

her mother followed her.

“My dearest child,” she cried, “I can think of nothing else. Ten

thousand a year, and very likely more! ’Tis as good as a lord! And a

special licence--you must and shall be married by a special licence.

But, my dearest love, tell me what dish Mr. Darcy is particularly fond

of, that I may have it to-morrow.”

This was a sad omen of what her mother’s behaviour to the gentleman

himself might be; and Elizabeth found that, though in the certain

possession of his warmest affection, and secure of her relations’

consent, there was still something to be wished for. But the morrow

passed off much better than she expected; for Mrs. Bennet luckily stood

in such awe of her intended son-in-law, that she ventured not to speak

to him, unless it was in her power to offer him any attention, or mark

her deference for his opinion.

Elizabeth had the satisfaction of seeing her father taking pains to get

acquainted with him; and Mr. Bennet soon assured her that he was rising

every hour in his esteem.

“I admire all my three sons-in-law highly,” said he. “Wickham, perhaps,

is my favourite; but I think I shall like _your_ husband quite as well

as Jane’s.”', 2468)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('a1b0ef32-9514-4a36-ae5a-3670a8c461df', '09634a45-2244-491f-a154-dcc2f947f8a5', 63, 'Chapter LX', 'Elizabeth’s spirits soon rising to playfulness again, she wanted Mr.

Darcy to account for his having ever fallen in love with her. “How could

you begin?” said she. “I can comprehend your going on charmingly, when

you had once made a beginning; but what could set you off in the first

place?”

“I cannot fix on the hour, or the spot, or the look, or the words, which

laid the foundation. It is too long ago. I was in the middle before I

knew that I _had_ begun.”

“My beauty you had early withstood, and as for my manners--my behaviour

to _you_ was at least always bordering on the uncivil, and I never spoke

to you without rather wishing to give you pain than not. Now, be

sincere; did you admire me for my impertinence?”

“For the liveliness of your mind I did.”

“You may as well call it impertinence at once. It was very little less.

The fact is, that you were sick of civility, of deference, of officious

attention. You were disgusted with the women who were always speaking,

and looking, and thinking for _your_ approbation alone. I roused and

interested you, because I was so unlike _them_. Had you not been really

amiable you would have hated me for it: but in spite of the pains you

took to disguise yourself, your feelings were always noble and just; and

in your heart you thoroughly despised the persons who so assiduously

courted you. There--I have saved you the trouble of accounting for it;

and really, all things considered, I begin to think it perfectly

reasonable. To be sure you know no actual good of me--but nobody thinks

of _that_ when they fall in love.”

“Was there no good in your affectionate behaviour to Jane, while she was

ill at Netherfield?”

“Dearest Jane! who could have done less for her? But make a virtue of it

by all means. My good qualities are under your protection, and you are

to exaggerate them as much as possible; and, in return, it belongs to me

to find occasions for teasing and quarrelling with you as often as may

be; and I shall begin directly, by asking you what made you so unwilling

to come to the point at last? What made you so shy of me, when you

first called, and afterwards dined here? Why, especially, when you

called, did you look as if you did not care about me?”

“Because you were grave and silent, and gave me no encouragement.”

“But I was embarrassed.”

“And so was I.”

“You might have talked to me more when you came to dinner.”

“A man who had felt less might.”

“How unlucky that you should have a reasonable answer to give, and that

I should be so reasonable as to admit it! But I wonder how long you

_would_ have gone on, if you had been left to yourself. I wonder when

you _would_ have spoken if I had not asked you! My resolution of

thanking you for your kindness to Lydia had certainly great effect. _Too

much_, I am afraid; for what becomes of the moral, if our comfort

springs from a breach of promise, for I ought not to have mentioned the

subject? This will never do.”

“You need not distress yourself. The moral will be perfectly fair. Lady

Catherine’s unjustifiable endeavours to separate us were the means of

removing all my doubts. I am not indebted for my present happiness to

your eager desire of expressing your gratitude. I was not in a humour to

wait for an opening of yours. My aunt’s intelligence had given me hope,

and I was determined at once to know everything.”

“Lady Catherine has been of infinite use, which ought to make her happy,

for she loves to be of use. But tell me, what did you come down to

Netherfield for? Was it merely to ride to Longbourn and be embarrassed?

or had you intended any more serious consequences?”

“My real purpose was to see _you_, and to judge, if I could, whether I

might ever hope to make you love me. My avowed one, or what I avowed to

myself, was to see whether your sister was still partial to Bingley, and

if she were, to make the confession to him which I have since made.”

“Shall you ever have courage to announce to Lady Catherine what is to

befall her?”

“I am more likely to want time than courage, Elizabeth. But it ought to

be done; and if you will give me a sheet of paper it shall be done

directly.”

“And if I had not a letter to write myself, I might sit by you, and

admire the evenness of your writing, as another young lady once did. But

I have an aunt, too, who must not be longer neglected.”

From an unwillingness to confess how much her intimacy with Mr. Darcy

had been overrated, Elizabeth had never yet answered Mrs. Gardiner’s

long letter; but now, having _that_ to communicate which she knew would

be most welcome, she was almost ashamed to find that her uncle and aunt

had already lost three days of happiness, and immediately wrote as

follows:--

“I would have thanked you before, my dear aunt, as I ought to have done,

for your long, kind, satisfactory detail of particulars; but, to say the

truth, I was too cross to write. You supposed more than really existed.

But _now_ suppose as much as you choose; give a loose to your fancy,

indulge your imagination in every possible flight which the subject will

afford, and unless you believe me actually married, you cannot greatly

err. You must write again very soon, and praise him a great deal more

than you did in your last. I thank you again and again, for not going to

the Lakes. How could I be so silly as to wish it! Your idea of the

ponies is delightful. We will go round the park every day. I am the

happiest creature in the world. Perhaps other people have said so

before, but no one with such justice. I am happier even than Jane; she

only smiles, I laugh. Mr. Darcy sends you all the love in the world that

can be spared from me. You are all to come to Pemberley at Christmas.

Yours,” etc.

Mr. Darcy’s letter to Lady Catherine was in a different style, and still

different from either was what Mr. Bennet sent to Mr. Collins, in return

for his last.

     /* “Dear Sir, */

     “I must trouble you once more for congratulations. Elizabeth will

     soon be the wife of Mr. Darcy. Console Lady Catherine as well as

     you can. But, if I were you, I would stand by the nephew. He has

     more to give.

“Yours sincerely,” etc.

Miss Bingley’s congratulations to her brother on his approaching

marriage were all that was affectionate and insincere. She wrote even to

Jane on the occasion, to express her delight, and repeat all her former

professions of regard. Jane was not deceived, but she was affected; and

though feeling no reliance on her, could not help writing her a much

kinder answer than she knew was deserved.

The joy which Miss Darcy expressed on receiving similar information was

as sincere as her brother’s in sending it. Four sides of paper were

insufficient to contain all her delight, and all her earnest desire of

being loved by her sister.

Before any answer could arrive from Mr. Collins, or any congratulations

to Elizabeth from his wife, the Longbourn family heard that the

Collinses were come themselves to Lucas Lodge. The reason of this

sudden removal was soon evident. Lady Catherine had been rendered so

exceedingly angry by the contents of her nephew’s letter, that

Charlotte, really rejoicing in the match, was anxious to get away till

the storm was blown over. At such a moment, the arrival of her friend

was a sincere pleasure to Elizabeth, though in the course of their

meetings she must sometimes think the pleasure dearly bought, when she

saw Mr. Darcy exposed to all the parading and obsequious civility of her

husband. He bore it, however, with admirable calmness. He could even

listen to Sir William Lucas, when he complimented him on carrying away

the brightest jewel of the country, and expressed his hopes of their all

meeting frequently at St. James’s, with very decent composure. If he did

shrug his shoulders, it was not till Sir William was out of sight.

Mrs. Philips’s vulgarity was another, and, perhaps, a greater tax on his

forbearance; and though Mrs. Philips, as well as her sister, stood in

too much awe of him to speak with the familiarity which Bingley’s

good-humour encouraged; yet, whenever she _did_ speak, she must be

vulgar. Nor was her respect for him, though it made her more quiet, at

all likely to make her more elegant. Elizabeth did all she could to

shield him from the frequent notice of either, and was ever anxious to

keep him to herself, and to those of her family with whom he might

converse without mortification; and though the uncomfortable feelings

arising from all this took from the season of courtship much of its

pleasure, it added to the hope of the future; and she looked forward

with delight to the time when they should be removed from society so

little pleasing to either, to all the comfort and elegance of their

family party at Pemberley.', 1586)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('81de9402-db81-4a81-a05f-f2a5172a9bb9', '09634a45-2244-491f-a154-dcc2f947f8a5', 64, 'Chapter LXI', 'Happy for all her maternal feelings was the day on which Mrs. Bennet got

rid of her two most deserving daughters. With what delighted pride she

afterwards visited Mrs. Bingley, and talked of Mrs. Darcy, may be

guessed. I wish I could say, for the sake of her family, that the

accomplishment of her earnest desire in the establishment of so many of

her children produced so happy an effect as to make her a sensible,

amiable, well-informed woman for the rest of her life; though, perhaps,

it was lucky for her husband, who might not have relished domestic

felicity in so unusual a form, that she still was occasionally nervous

and invariably silly.

Mr. Bennet missed his second daughter exceedingly; his affection for her

drew him oftener from home than anything else could do. He delighted in

going to Pemberley, especially when he was least expected.

Mr. Bingley and Jane remained at Netherfield only a twelvemonth. So near

a vicinity to her mother and Meryton relations was not desirable even to

_his_ easy temper, or _her_ affectionate heart. The darling wish of his

sisters was then gratified: he bought an estate in a neighbouring county

to Derbyshire; and Jane and Elizabeth, in addition to every other source

of happiness, were within thirty miles of each other.

Kitty, to her very material advantage, spent the chief of her time with

her two elder sisters. In society so superior to what she had generally

known, her improvement was great. She was not of so ungovernable a

temper as Lydia; and, removed from the influence of Lydia’s example, she

became, by proper attention and management, less irritable, less

ignorant, and less insipid. From the further disadvantage of Lydia’s

society she was of course carefully kept; and though Mrs. Wickham

frequently invited her to come and stay with her, with the promise of

balls and young men, her father would never consent to her going.

Mary was the only daughter who remained at home; and she was necessarily

drawn from the pursuit of accomplishments by Mrs. Bennet’s being quite

unable to sit alone. Mary was obliged to mix more with the world, but

she could still moralize over every morning visit; and as she was no

longer mortified by comparisons between her sisters’ beauty and her own,

it was suspected by her father that she submitted to the change without

much reluctance.

As for Wickham and Lydia, their characters suffered no revolution from

the marriage of her sisters. He bore with philosophy the conviction that

Elizabeth must now become acquainted with whatever of his ingratitude

and falsehood had before been unknown to her; and, in spite of

everything, was not wholly without hope that Darcy might yet be

prevailed on to make his fortune. The congratulatory letter which

Elizabeth received from Lydia on her marriage explained to her that, by

his wife at least, if not by himself, such a hope was cherished. The

letter was to this effect:--

     /* “My dear Lizzy, */

     “I wish you joy. If you love Mr. Darcy half so well as I do my dear

     Wickham, you must be very happy. It is a great comfort to have you

     so rich; and when you have nothing else to do, I hope you will

     think of us. I am sure Wickham would like a place at court very

     much; and I do not think we shall have quite money enough to live

     upon without some help. Any place would do of about three or four

     hundred a year; but, however, do not speak to Mr. Darcy about it,

     if you had rather not.

“Yours,” etc.

As it happened that Elizabeth had much rather not, she endeavoured in

her answer to put an end to every entreaty and expectation of the kind.

Such relief, however, as it was in her power to afford, by the practice

of what might be called economy in her own private expenses, she

frequently sent them. It had always been evident to her that such an

income as theirs, under the direction of two persons so extravagant in

their wants, and heedless of the future, must be very insufficient to

their support; and whenever they changed their quarters, either Jane or

herself were sure of being applied to for some little assistance towards

discharging their bills. Their manner of living, even when the

restoration of peace dismissed them to a home, was unsettled in the

extreme. They were always moving from place to place in quest of a

cheap situation, and always spending more than they ought. His affection

for her soon sunk into indifference: hers lasted a little longer; and,

in spite of her youth and her manners, she retained all the claims to

reputation which her marriage had given her. Though Darcy could never

receive _him_ at Pemberley, yet, for Elizabeth’s sake, he assisted him

further in his profession. Lydia was occasionally a visitor there, when

her husband was gone to enjoy himself in London or Bath; and with the

Bingleys they both of them frequently stayed so long, that even

Bingley’s good-humour was overcome, and he proceeded so far as to _talk_

of giving them a hint to be gone.

Miss Bingley was very deeply mortified by Darcy’s marriage; but as she

thought it advisable to retain the right of visiting at Pemberley, she

dropped all her resentment; was fonder than ever of Georgiana, almost as

attentive to Darcy as heretofore, and paid off every arrear of civility

to Elizabeth.

Pemberley was now Georgiana’s home; and the attachment of the sisters

was exactly what Darcy had hoped to see. They were able to love each

other, even as well as they intended. Georgiana had the highest opinion

in the world of Elizabeth; though at first she often listened with an

astonishment bordering on alarm at her lively, sportive manner of

talking to her brother. He, who had always inspired in herself a respect

which almost overcame her affection, she now saw the object of open

pleasantry. Her mind received knowledge which had never before fallen in

her way. By Elizabeth’s instructions she began to comprehend that a

woman may take liberties with her husband, which a brother will not

always allow in a sister more than ten years younger than himself.

Lady Catherine was extremely indignant on the marriage of her nephew;

and as she gave way to all the genuine frankness of her character, in

her reply to the letter which announced its arrangement, she sent him

language so very abusive, especially of Elizabeth, that for some time

all intercourse was at an end. But at length, by Elizabeth’s persuasion,

he was prevailed on to overlook the offence, and seek a reconciliation;

and, after a little further resistance on the part of his aunt, her

resentment gave way, either to her affection for him, or her curiosity

to see how his wife conducted herself; and she condescended to wait on

them at Pemberley, in spite of that pollution which its woods had

received, not merely from the presence of such a mistress, but the

visits of her uncle and aunt from the city.

With the Gardiners they were always on the most intimate terms. Darcy,

as well as Elizabeth, really loved them; and they were both ever

sensible of the warmest gratitude towards the persons who, by bringing

her into Derbyshire, had been the means of uniting them.', 1238)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

-- ===== A Child's History of England — Charles Dickens (1853) =====
-- Nguon: Project Gutenberg #699 (public domain)

insert into public.books (id, slug, title, author, year, level, blurb, cover_emoji, word_count, chapter_count, gutenberg_id, sort_order) values
  ('e2960e44-7498-4fa8-a1d8-f552af12b49a', 'child-history-england', 'A Child''s History of England', 'Charles Dickens', 1853, 'B2', 'Lịch sử nước Anh do Dickens kể lại cho con mình nghe — giọng kể chuyện chứ không phải giọng giáo khoa. Dễ vào nhất trong sách sử.', '🏰', 162424, 66, 699, 5)
on conflict (id) do update set word_count = excluded.word_count, chapter_count = excluded.chapter_count, blurb = excluded.blurb;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('50044c7b-8fea-4603-ac63-e3b49bf7f15f', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 1, 'Chapter I. Ancient England and the Romans (1/2)', 'If you look at a Map of the World, you will see, in the left-hand upper
corner of the Eastern Hemisphere, two Islands lying in the sea. They
are England and Scotland, and Ireland. England and Scotland form the
greater part of these Islands. Ireland is the next in size. The little
neighbouring islands, which are so small upon the Map as to be mere
dots, are chiefly little bits of Scotland,—broken off, I dare say, in
the course of a great length of time, by the power of the restless
water.

In the old days, a long, long while ago, before Our Saviour was born on
earth and lay asleep in a manger, these Islands were in the same place,
and the stormy sea roared round them, just as it roars now. But the sea
was not alive, then, with great ships and brave sailors, sailing to and
from all parts of the world. It was very lonely. The Islands lay
solitary, in the great expanse of water. The foaming waves dashed
against their cliffs, and the bleak winds blew over their forests; but
the winds and waves brought no adventurers to land upon the Islands,
and the savage Islanders knew nothing of the rest of the world, and the
rest of the world knew nothing of them.

It is supposed that the Phœnicians, who were an ancient people, famous
for carrying on trade, came in ships to these Islands, and found that
they produced tin and lead; both very useful things, as you know, and
both produced to this very hour upon the sea-coast. The most celebrated
tin mines in Cornwall are, still, close to the sea. One of them, which
I have seen, is so close to it that it is hollowed out underneath the
ocean; and the miners say, that in stormy weather, when they are at
work down in that deep place, they can hear the noise of the waves
thundering above their heads. So, the Phœnicians, coasting about the
Islands, would come, without much difficulty, to where the tin and lead
were.

The Phœnicians traded with the Islanders for these metals, and gave the
Islanders some other useful things in exchange. The Islanders were, at
first, poor savages, going almost naked, or only dressed in the rough
skins of beasts, and staining their bodies, as other savages do, with
coloured earths and the juices of plants. But the Phœnicians, sailing
over to the opposite coasts of France and Belgium, and saying to the
people there, ‘We have been to those white cliffs across the water,
which you can see in fine weather, and from that country, which is
called Britain, we bring this tin and lead,’ tempted some of the French
and Belgians to come over also. These people settled themselves on the
south coast of England, which is now called Kent; and, although they
were a rough people too, they taught the savage Britons some useful
arts, and improved that part of the Islands. It is probable that other
people came over from Spain to Ireland, and settled there.

Thus, by little and little, strangers became mixed with the Islanders,
and the savage Britons grew into a wild, bold people; almost savage,
still, especially in the interior of the country away from the sea
where the foreign settlers seldom went; but hardy, brave, and strong.

The whole country was covered with forests, and swamps. The greater
part of it was very misty and cold. There were no roads, no bridges, no
streets, no houses that you would think deserving of the name. A town
was nothing but a collection of straw-covered huts, hidden in a thick
wood, with a ditch all round, and a low wall, made of mud, or the
trunks of trees placed one upon another. The people planted little or
no corn, but lived upon the flesh of their flocks and cattle. They made
no coins, but used metal rings for money. They were clever in
basket-work, as savage people often are; and they could make a coarse
kind of cloth, and some very bad earthenware. But in building
fortresses they were much more clever.

They made boats of basket-work, covered with the skins of animals, but
seldom, if ever, ventured far from the shore. They made swords, of
copper mixed with tin; but, these swords were of an awkward shape, and
so soft that a heavy blow would bend one. They made light shields,
short pointed daggers, and spears—which they jerked back after they had
thrown them at an enemy, by a long strip of leather fastened to the
stem. The butt-end was a rattle, to frighten an enemy’s horse. The
ancient Britons, being divided into as many as thirty or forty tribes,
each commanded by its own little king, were constantly fighting with
one another, as savage people usually do; and they always fought with
these weapons.

They were very fond of horses. The standard of Kent was the picture of
a white horse. They could break them in and manage them wonderfully
well. Indeed, the horses (of which they had an abundance, though they
were rather small) were so well taught in those days, that they can
scarcely be said to have improved since; though the men are so much
wiser. They understood, and obeyed, every word of command; and would
stand still by themselves, in all the din and noise of battle, while
their masters went to fight on foot. The Britons could not have
succeeded in their most remarkable art, without the aid of these
sensible and trusty animals. The art I mean, is the construction and
management of war-chariots or cars, for which they have ever been
celebrated in history. Each of the best sort of these chariots, not
quite breast high in front, and open at the back, contained one man to
drive, and two or three others to fight—all standing up. The horses who
drew them were so well trained, that they would tear, at full gallop,
over the most stony ways, and even through the woods; dashing down
their masters’ enemies beneath their hoofs, and cutting them to pieces
with the blades of swords, or scythes, which were fastened to the
wheels, and stretched out beyond the car on each side, for that cruel
purpose. In a moment, while at full speed, the horses would stop, at
the driver’s command. The men within would leap out, deal blows about
them with their swords like hail, leap on the horses, on the pole,
spring back into the chariots anyhow; and, as soon as they were safe,
the horses tore away again.

The Britons had a strange and terrible religion, called the Religion of
the Druids. It seems to have been brought over, in very early times
indeed, from the opposite country of France, anciently called Gaul, and
to have mixed up the worship of the Serpent, and of the Sun and Moon,
with the worship of some of the Heathen Gods and Goddesses. Most of its
ceremonies were kept secret by the priests, the Druids, who pretended
to be enchanters, and who carried magicians’ wands, and wore, each of
them, about his neck, what he told the ignorant people was a Serpent’s
egg in a golden case. But it is certain that the Druidical ceremonies
included the sacrifice of human victims, the torture of some suspected
criminals, and, on particular occasions, even the burning alive, in
immense wicker cages, of a number of men and animals together. The
Druid Priests had some kind of veneration for the Oak, and for the
mistletoe—the same plant that we hang up in houses at Christmas Time
now—when its white berries grew upon the Oak. They met together in dark
woods, which they called Sacred Groves; and there they instructed, in
their mysterious arts, young men who came to them as pupils, and who
sometimes stayed with them as long as twenty years.

These Druids built great Temples and altars, open to the sky, fragments
of some of which are yet remaining. Stonehenge, on Salisbury Plain, in
Wiltshire, is the most extraordinary of these. Three curious stones,
called Kits Coty House, on Bluebell Hill, near Maidstone, in Kent, form
another. We know, from examination of the great blocks of which such
buildings are made, that they could not have been raised without the
aid of some ingenious machines, which are common now, but which the
ancient Britons certainly did not use in making their own uncomfortable
houses. I should not wonder if the Druids, and their pupils who stayed
with them twenty years, knowing more than the rest of the Britons, kept
the people out of sight while they made these buildings, and then
pretended that they built them by magic. Perhaps they had a hand in the
fortresses too; at all events, as they were very powerful, and very
much believed in, and as they made and executed the laws, and paid no
taxes, I don’t wonder that they liked their trade. And, as they
persuaded the people the more Druids there were, the better off the
people would be, I don’t wonder that there were a good many of them.
But it is pleasant to think that there are no Druids, _now_, who go on
in that way, and pretend to carry Enchanters’ Wands and Serpents’
Eggs—and of course there is nothing of the kind, anywhere.

Such was the improved condition of the ancient Britons, fifty-five
years before the birth of Our Saviour, when the Romans, under their
great General, Julius Cæsar, were masters of all the rest of the known
world. Julius Cæsar had then just conquered Gaul; and hearing, in Gaul,
a good deal about the opposite Island with the white cliffs, and about
the bravery of the Britons who inhabited it—some of whom had been
fetched over to help the Gauls in the war against him—he resolved, as
he was so near, to come and conquer Britain next.

So, Julius Cæsar came sailing over to this Island of ours, with eighty
vessels and twelve thousand men. And he came from the French coast
between Calais and Boulogne, ‘because thence was the shortest passage
into Britain;’ just for the same reason as our steam-boats now take the
same track, every day. He expected to conquer Britain easily: but it
was not such easy work as he supposed—for the bold Britons fought most
bravely; and, what with not having his horse-soldiers with him (for
they had been driven back by a storm), and what with having some of his
vessels dashed to pieces by a high tide after they were drawn ashore,
he ran great risk of being totally defeated. However, for once that the
bold Britons beat him, he beat them twice; though not so soundly but
that he was very glad to accept their proposals of peace, and go away.', 1819)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('113a8087-b014-45f5-a381-c8b56bdc9936', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 2, 'Chapter I. Ancient England and the Romans (2/2)', 'But, in the spring of the next year, he came back; this time, with
eight hundred vessels and thirty thousand men. The British tribes
chose, as their general-in-chief, a Briton, whom the Romans in their
Latin language called Cassivellaunus, but whose British name is
supposed to have been Caswallon. A brave general he was, and well he
and his soldiers fought the Roman army! So well, that whenever in that
war the Roman soldiers saw a great cloud of dust, and heard the rattle
of the rapid British chariots, they trembled in their hearts. Besides a
number of smaller battles, there was a battle fought near Canterbury,
in Kent; there was a battle fought near Chertsey, in Surrey; there was
a battle fought near a marshy little town in a wood, the capital of
that part of Britain which belonged to Cassivellaunus, and which was
probably near what is now Saint Albans, in Hertfordshire. However,
brave Cassivellaunus had the worst of it, on the whole; though he and
his men always fought like lions. As the other British chiefs were
jealous of him, and were always quarrelling with him, and with one
another, he gave up, and proposed peace. Julius Cæsar was very glad to
grant peace easily, and to go away again with all his remaining ships
and men. He had expected to find pearls in Britain, and he may have
found a few for anything I know; but, at all events, he found delicious
oysters, and I am sure he found tough Britons—of whom, I dare say, he
made the same complaint as Napoleon Bonaparte the great French General
did, eighteen hundred years afterwards, when he said they were such
unreasonable fellows that they never knew when they were beaten. They
never _did_ know, I believe, and never will.

Nearly a hundred years passed on, and all that time, there was peace in
Britain. The Britons improved their towns and mode of life: became more
civilised, travelled, and learnt a great deal from the Gauls and
Romans. At last, the Roman Emperor, Claudius, sent Aulus Plautius, a
skilful general, with a mighty force, to subdue the Island, and shortly
afterwards arrived himself. They did little; and Ostorius Scapula,
another general, came. Some of the British Chiefs of Tribes submitted.
Others resolved to fight to the death. Of these brave men, the bravest
was Caractacus, or Caradoc, who gave battle to the Romans, with his
army, among the mountains of North Wales. ‘This day,’ said he to his
soldiers, ‘decides the fate of Britain! Your liberty, or your eternal
slavery, dates from this hour. Remember your brave ancestors, who drove
the great Cæsar himself across the sea!’ On hearing these words, his
men, with a great shout, rushed upon the Romans. But the strong Roman
swords and armour were too much for the weaker British weapons in close
conflict. The Britons lost the day. The wife and daughter of the brave
Caractacus were taken prisoners; his brothers delivered themselves up;
he himself was betrayed into the hands of the Romans by his false and
base stepmother: and they carried him, and all his family, in triumph
to Rome.

But a great man will be great in misfortune, great in prison, great in
chains. His noble air, and dignified endurance of distress, so touched
the Roman people who thronged the streets to see him, that he and his
family were restored to freedom. No one knows whether his great heart
broke, and he died in Rome, or whether he ever returned to his own dear
country. English oaks have grown up from acorns, and withered away,
when they were hundreds of years old—and other oaks have sprung up in
their places, and died too, very aged—since the rest of the history of
the brave Caractacus was forgotten.

Still, the Britons _would not_ yield. They rose again and again, and
died by thousands, sword in hand. They rose, on every possible
occasion. Suetonius, another Roman general, came, and stormed the
Island of Anglesey (then called Mona), which was supposed to be sacred,
and he burnt the Druids in their own wicker cages, by their own fires.
But, even while he was in Britain, with his victorious troops, the
Britons rose. Because Boadicea, a British queen, the widow of the King
of the Norfolk and Suffolk people, resisted the plundering of her
property by the Romans who were settled in England, she was scourged,
by order of Catus a Roman officer; and her two daughters were
shamefully insulted in her presence, and her husband’s relations were
made slaves. To avenge this injury, the Britons rose, with all their
might and rage. They drove Catus into Gaul; they laid the Roman
possessions waste; they forced the Romans out of London, then a poor
little town, but a trading place; they hanged, burnt, crucified, and
slew by the sword, seventy thousand Romans in a few days. Suetonius
strengthened his army, and advanced to give them battle. They
strengthened their army, and desperately attacked his, on the field
where it was strongly posted. Before the first charge of the Britons
was made, Boadicea, in a war-chariot, with her fair hair streaming in
the wind, and her injured daughters lying at her feet, drove among the
troops, and cried to them for vengeance on their oppressors, the
licentious Romans. The Britons fought to the last; but they were
vanquished with great slaughter, and the unhappy queen took poison.

Still, the spirit of the Britons was not broken. When Suetonius left
the country, they fell upon his troops, and retook the Island of
Anglesey. Agricola came, fifteen or twenty years afterwards, and retook
it once more, and devoted seven years to subduing the country,
especially that part of it which is now called Scotland; but, its
people, the Caledonians, resisted him at every inch of ground. They
fought the bloodiest battles with him; they killed their very wives and
children, to prevent his making prisoners of them; they fell, fighting,
in such great numbers that certain hills in Scotland are yet supposed
to be vast heaps of stones piled up above their graves. Hadrian came,
thirty years afterwards, and still they resisted him. Severus came,
nearly a hundred years afterwards, and they worried his great army like
dogs, and rejoiced to see them die, by thousands, in the bogs and
swamps. Caracalla, the son and successor of Severus, did the most to
conquer them, for a time; but not by force of arms. He knew how little
that would do. He yielded up a quantity of land to the Caledonians, and
gave the Britons the same privileges as the Romans possessed. There was
peace, after this, for seventy years.

Then new enemies arose. They were the Saxons, a fierce, sea-faring
people from the countries to the North of the Rhine, the great river of
Germany on the banks of which the best grapes grow to make the German
wine. They began to come, in pirate ships, to the sea-coast of Gaul and
Britain, and to plunder them. They were repulsed by Carausius, a native
either of Belgium or of Britain, who was appointed by the Romans to the
command, and under whom the Britons first began to fight upon the sea.
But, after this time, they renewed their ravages. A few years more, and
the Scots (which was then the name for the people of Ireland), and the
Picts, a northern people, began to make frequent plundering incursions
into the South of Britain. All these attacks were repeated, at
intervals, during two hundred years, and through a long succession of
Roman Emperors and chiefs; during all which length of time, the Britons
rose against the Romans, over and over again. At last, in the days of
the Roman Honorius, when the Roman power all over the world was fast
declining, and when Rome wanted all her soldiers at home, the Romans
abandoned all hope of conquering Britain, and went away. And still, at
last, as at first, the Britons rose against them, in their old brave
manner; for, a very little while before, they had turned away the Roman
magistrates, and declared themselves an independent people.

Five hundred years had passed, since Julius Cæsar’s first invasion of
the Island, when the Romans departed from it for ever. In the course of
that time, although they had been the cause of terrible fighting and
bloodshed, they had done much to improve the condition of the Britons.
They had made great military roads; they had built forts; they had
taught them how to dress, and arm themselves, much better than they had
ever known how to do before; they had refined the whole British way of
living. Agricola had built a great wall of earth, more than seventy
miles long, extending from Newcastle to beyond Carlisle, for the
purpose of keeping out the Picts and Scots; Hadrian had strengthened
it; Severus, finding it much in want of repair, had built it afresh of
stone.

Above all, it was in the Roman time, and by means of Roman ships, that
the Christian Religion was first brought into Britain, and its people
first taught the great lesson that, to be good in the sight of God,
they must love their neighbours as themselves, and do unto others as
they would be done by. The Druids declared that it was very wicked to
believe in any such thing, and cursed all the people who did believe
it, very heartily. But, when the people found that they were none the
better for the blessings of the Druids, and none the worse for the
curses of the Druids, but, that the sun shone and the rain fell without
consulting the Druids at all, they just began to think that the Druids
were mere men, and that it signified very little whether they cursed or
blessed. After which, the pupils of the Druids fell off greatly in
numbers, and the Druids took to other trades.

Thus I have come to the end of the Roman time in England. It is but
little that is known of those five hundred years; but some remains of
them are still found. Often, when labourers are digging up the ground,
to make foundations for houses or churches, they light on rusty money
that once belonged to the Romans. Fragments of plates from which they
ate, of goblets from which they drank, and of pavement on which they
trod, are discovered among the earth that is broken by the plough, or
the dust that is crumbled by the gardener’s spade. Wells that the
Romans sunk, still yield water; roads that the Romans made, form part
of our highways. In some old battle-fields, British spear-heads and
Roman armour have been found, mingled together in decay, as they fell
in the thick pressure of the fight. Traces of Roman camps overgrown
with grass, and of mounds that are the burial-places of heaps of
Britons, are to be seen in almost all parts of the country. Across the
bleak moors of Northumberland, the wall of Severus, overrun with moss
and weeds, still stretches, a strong ruin; and the shepherds and their
dogs lie sleeping on it in the summer weather. On Salisbury Plain,
Stonehenge yet stands: a monument of the earlier time when the Roman
name was unknown in Britain, and when the Druids, with their best magic
wands, could not have written it in the sands of the wild sea-shore.', 1918)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('1cf2432c-0ebb-4495-a4ba-1503c71821fb', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 3, 'Chapter II. Ancient England Under the Early Saxons', 'The Romans had scarcely gone away from Britain, when the Britons began
to wish they had never left it. For, the Romans being gone, and the
Britons being much reduced in numbers by their long wars, the Picts and
Scots came pouring in, over the broken and unguarded wall of Severus,
in swarms. They plundered the richest towns, and killed the people; and
came back so often for more booty and more slaughter, that the
unfortunate Britons lived a life of terror. As if the Picts and Scots
were not bad enough on land, the Saxons attacked the islanders by sea;
and, as if something more were still wanting to make them miserable,
they quarrelled bitterly among themselves as to what prayers they ought
to say, and how they ought to say them. The priests, being very angry
with one another on these questions, cursed one another in the
heartiest manner; and (uncommonly like the old Druids) cursed all the
people whom they could not persuade. So, altogether, the Britons were
very badly off, you may believe.

They were in such distress, in short, that they sent a letter to Rome
entreating help—which they called the Groans of the Britons; and in
which they said, ‘The barbarians chase us into the sea, the sea throws
us back upon the barbarians, and we have only the hard choice left us
of perishing by the sword, or perishing by the waves.’ But, the Romans
could not help them, even if they were so inclined; for they had enough
to do to defend themselves against their own enemies, who were then
very fierce and strong. At last, the Britons, unable to bear their hard
condition any longer, resolved to make peace with the Saxons, and to
invite the Saxons to come into their country, and help them to keep out
the Picts and Scots.

It was a British Prince named Vortigern who took this resolution, and
who made a treaty of friendship with Hengist and Horsa, two Saxon
chiefs. Both of these names, in the old Saxon language, signify Horse;
for the Saxons, like many other nations in a rough state, were fond of
giving men the names of animals, as Horse, Wolf, Bear, Hound. The
Indians of North America,—a very inferior people to the Saxons,
though—do the same to this day.

Hengist and Horsa drove out the Picts and Scots; and Vortigern, being
grateful to them for that service, made no opposition to their settling
themselves in that part of England which is called the Isle of Thanet,
or to their inviting over more of their countrymen to join them. But
Hengist had a beautiful daughter named Rowena; and when, at a feast,
she filled a golden goblet to the brim with wine, and gave it to
Vortigern, saying in a sweet voice, ‘Dear King, thy health!’ the King
fell in love with her. My opinion is, that the cunning Hengist meant
him to do so, in order that the Saxons might have greater influence
with him; and that the fair Rowena came to that feast, golden goblet
and all, on purpose.

At any rate, they were married; and, long afterwards, whenever the King
was angry with the Saxons, or jealous of their encroachments, Rowena
would put her beautiful arms round his neck, and softly say, ‘Dear
King, they are my people! Be favourable to them, as you loved that
Saxon girl who gave you the golden goblet of wine at the feast!’ And,
really, I don’t see how the King could help himself.

Ah! We must all die! In the course of years, Vortigern died—he was
dethroned, and put in prison, first, I am afraid; and Rowena died; and
generations of Saxons and Britons died; and events that happened during
a long, long time, would have been quite forgotten but for the tales
and songs of the old Bards, who used to go about from feast to feast,
with their white beards, recounting the deeds of their forefathers.
Among the histories of which they sang and talked, there was a famous
one, concerning the bravery and virtues of King Arthur, supposed to
have been a British Prince in those old times. But, whether such a
person really lived, or whether there were several persons whose
histories came to be confused together under that one name, or whether
all about him was invention, no one knows.

I will tell you, shortly, what is most interesting in the early Saxon
times, as they are described in these songs and stories of the Bards.

In, and long after, the days of Vortigern, fresh bodies of Saxons,
under various chiefs, came pouring into Britain. One body, conquering
the Britons in the East, and settling there, called their kingdom
Essex; another body settled in the West, and called their kingdom
Wessex; the Northfolk, or Norfolk people, established themselves in one
place; the Southfolk, or Suffolk people, established themselves in
another; and gradually seven kingdoms or states arose in England, which
were called the Saxon Heptarchy. The poor Britons, falling back before
these crowds of fighting men whom they had innocently invited over as
friends, retired into Wales and the adjacent country; into Devonshire,
and into Cornwall. Those parts of England long remained unconquered.
And in Cornwall now—where the sea-coast is very gloomy, steep, and
rugged—where, in the dark winter-time, ships have often been wrecked
close to the land, and every soul on board has perished—where the winds
and waves howl drearily and split the solid rocks into arches and
caverns—there are very ancient ruins, which the people call the ruins
of King Arthur’s Castle.

Kent is the most famous of the seven Saxon kingdoms, because the
Christian religion was preached to the Saxons there (who domineered
over the Britons too much, to care for what _they_ said about their
religion, or anything else) by Augustine, a monk from Rome. King
Ethelbert, of Kent, was soon converted; and the moment he said he was a
Christian, his courtiers all said _they_ were Christians; after which,
ten thousand of his subjects said they were Christians too. Augustine
built a little church, close to this King’s palace, on the ground now
occupied by the beautiful cathedral of Canterbury. Sebert, the King’s
nephew, built on a muddy marshy place near London, where there had been
a temple to Apollo, a church dedicated to Saint Peter, which is now
Westminster Abbey. And, in London itself, on the foundation of a temple
to Diana, he built another little church which has risen up, since that
old time, to be Saint Paul’s.

After the death of Ethelbert, Edwin, King of Northumbria, who was such
a good king that it was said a woman or child might openly carry a
purse of gold, in his reign, without fear, allowed his child to be
baptised, and held a great council to consider whether he and his
people should all be Christians or not. It was decided that they should
be. Coifi, the chief priest of the old religion, made a great speech on
the occasion. In this discourse, he told the people that he had found
out the old gods to be impostors. ‘I am quite satisfied of it,’ he
said. ‘Look at me! I have been serving them all my life, and they have
done nothing for me; whereas, if they had been really powerful, they
could not have decently done less, in return for all I have done for
them, than make my fortune. As they have never made my fortune, I am
quite convinced they are impostors!’ When this singular priest had
finished speaking, he hastily armed himself with sword and lance,
mounted a war-horse, rode at a furious gallop in sight of all the
people to the temple, and flung his lance against it as an insult. From
that time, the Christian religion spread itself among the Saxons, and
became their faith.

The next very famous prince was Egbert. He lived about a hundred and
fifty years afterwards, and claimed to have a better right to the
throne of Wessex than Beortric, another Saxon prince who was at the
head of that kingdom, and who married Edburga, the daughter of Offa,
king of another of the seven kingdoms. This Queen Edburga was a
handsome murderess, who poisoned people when they offended her. One
day, she mixed a cup of poison for a certain noble belonging to the
court; but her husband drank of it too, by mistake, and died. Upon
this, the people revolted, in great crowds; and running to the palace,
and thundering at the gates, cried, ‘Down with the wicked queen, who
poisons men!’ They drove her out of the country, and abolished the
title she had disgraced. When years had passed away, some travellers
came home from Italy, and said that in the town of Pavia they had seen
a ragged beggar-woman, who had once been handsome, but was then
shrivelled, bent, and yellow, wandering about the streets, crying for
bread; and that this beggar-woman was the poisoning English queen. It
was, indeed, Edburga; and so she died, without a shelter for her
wretched head.

Egbert, not considering himself safe in England, in consequence of his
having claimed the crown of Wessex (for he thought his rival might take
him prisoner and put him to death), sought refuge at the court of
Charlemagne, King of France. On the death of Beortric, so unhappily
poisoned by mistake, Egbert came back to Britain; succeeded to the
throne of Wessex; conquered some of the other monarchs of the seven
kingdoms; added their territories to his own; and, for the first time,
called the country over which he ruled, England.

And now, new enemies arose, who, for a long time, troubled England
sorely. These were the Northmen, the people of Denmark and Norway, whom
the English called the Danes. They were a warlike people, quite at home
upon the sea; not Christians; very daring and cruel. They came over in
ships, and plundered and burned wheresoever they landed. Once, they
beat Egbert in battle. Once, Egbert beat them. But, they cared no more
for being beaten than the English themselves. In the four following
short reigns, of Ethelwulf, and his sons, Ethelbald, Ethelbert, and
Ethelred, they came back, over and over again, burning and plundering,
and laying England waste. In the last-mentioned reign, they seized
Edmund, King of East England, and bound him to a tree. Then, they
proposed to him that he should change his religion; but he, being a
good Christian, steadily refused. Upon that, they beat him, made
cowardly jests upon him, all defenceless as he was, shot arrows at him,
and, finally, struck off his head. It is impossible to say whose head
they might have struck off next, but for the death of King Ethelred
from a wound he had received in fighting against them, and the
succession to his throne of the best and wisest king that ever lived in
England.', 1835)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('042ecb75-1a8f-48df-a956-0f581fd57129', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 4, 'Chapter III', 'ENGLAND UNDER THE GOOD SAXON, ALFRED

Alfred the Great was a young man, three-and-twenty years of age, when
he became king. Twice in his childhood, he had been taken to Rome,
where the Saxon nobles were in the habit of going on journeys which
they supposed to be religious; and, once, he had stayed for some time
in Paris. Learning, however, was so little cared for, then, that at
twelve years old he had not been taught to read; although, of the sons
of King Ethelwulf, he, the youngest, was the favourite. But he had—as
most men who grow up to be great and good are generally found to have
had—an excellent mother; and, one day, this lady, whose name was
Osburga, happened, as she was sitting among her sons, to read a book of
Saxon poetry. The art of printing was not known until long and long
after that period, and the book, which was written, was what is called
‘illuminated,’ with beautiful bright letters, richly painted. The
brothers admiring it very much, their mother said, ‘I will give it to
that one of you four princes who first learns to read.’ Alfred sought
out a tutor that very day, applied himself to learn with great
diligence, and soon won the book. He was proud of it, all his life.

This great king, in the first year of his reign, fought nine battles
with the Danes. He made some treaties with them too, by which the false
Danes swore they would quit the country. They pretended to consider
that they had taken a very solemn oath, in swearing this upon the holy
bracelets that they wore, and which were always buried with them when
they died; but they cared little for it, for they thought nothing of
breaking oaths and treaties too, as soon as it suited their purpose,
and coming back again to fight, plunder, and burn, as usual. One fatal
winter, in the fourth year of King Alfred’s reign, they spread
themselves in great numbers over the whole of England; and so dispersed
and routed the King’s soldiers that the King was left alone, and was
obliged to disguise himself as a common peasant, and to take refuge in
the cottage of one of his cowherds who did not know his face.

Here, King Alfred, while the Danes sought him far and near, was left
alone one day, by the cowherd’s wife, to watch some cakes which she put
to bake upon the hearth. But, being at work upon his bow and arrows,
with which he hoped to punish the false Danes when a brighter time
should come, and thinking deeply of his poor unhappy subjects whom the
Danes chased through the land, his noble mind forgot the cakes, and
they were burnt. ‘What!’ said the cowherd’s wife, who scolded him well
when she came back, and little thought she was scolding the King, ‘you
will be ready enough to eat them by-and-by, and yet you cannot watch
them, idle dog?’

At length, the Devonshire men made head against a new host of Danes who
landed on their coast; killed their chief, and captured their flag; on
which was represented the likeness of a Raven—a very fit bird for a
thievish army like that, I think. The loss of their standard troubled
the Danes greatly, for they believed it to be enchanted—woven by the
three daughters of one father in a single afternoon—and they had a
story among themselves that when they were victorious in battle, the
Raven stretched his wings and seemed to fly; and that when they were
defeated, he would droop. He had good reason to droop, now, if he could
have done anything half so sensible; for, King Alfred joined the
Devonshire men; made a camp with them on a piece of firm ground in the
midst of a bog in Somersetshire; and prepared for a great attempt for
vengeance on the Danes, and the deliverance of his oppressed people.

But, first, as it was important to know how numerous those pestilent
Danes were, and how they were fortified, King Alfred, being a good
musician, disguised himself as a glee-man or minstrel, and went, with
his harp, to the Danish camp. He played and sang in the very tent of
Guthrum the Danish leader, and entertained the Danes as they caroused.
While he seemed to think of nothing but his music, he was watchful of
their tents, their arms, their discipline, everything that he desired
to know. And right soon did this great king entertain them to a
different tune; for, summoning all his true followers to meet him at an
appointed place, where they received him with joyful shouts and tears,
as the monarch whom many of them had given up for lost or dead, he put
himself at their head, marched on the Danish camp, defeated the Danes
with great slaughter, and besieged them for fourteen days to prevent
their escape. But, being as merciful as he was good and brave, he then,
instead of killing them, proposed peace: on condition that they should
altogether depart from that Western part of England, and settle in the
East; and that Guthrum should become a Christian, in remembrance of the
Divine religion which now taught his conqueror, the noble Alfred, to
forgive the enemy who had so often injured him. This, Guthrum did. At
his baptism, King Alfred was his godfather. And Guthrum was an
honourable chief who well deserved that clemency; for, ever afterwards
he was loyal and faithful to the king. The Danes under him were
faithful too. They plundered and burned no more, but worked like honest
men. They ploughed, and sowed, and reaped, and led good honest English
lives. And I hope the children of those Danes played, many a time, with
Saxon children in the sunny fields; and that Danish young men fell in
love with Saxon girls, and married them; and that English travellers,
benighted at the doors of Danish cottages, often went in for shelter
until morning; and that Danes and Saxons sat by the red fire, friends,
talking of King Alfred the Great.

All the Danes were not like these under Guthrum; for, after some years,
more of them came over, in the old plundering and burning way—among
them a fierce pirate of the name of Hastings, who had the boldness to
sail up the Thames to Gravesend, with eighty ships. For three years,
there was a war with these Danes; and there was a famine in the
country, too, and a plague, both upon human creatures and beasts. But
King Alfred, whose mighty heart never failed him, built large ships
nevertheless, with which to pursue the pirates on the sea; and he
encouraged his soldiers, by his brave example, to fight valiantly
against them on the shore. At last, he drove them all away; and then
there was repose in England.

As great and good in peace, as he was great and good in war, King
Alfred never rested from his labours to improve his people. He loved to
talk with clever men, and with travellers from foreign countries, and
to write down what they told him, for his people to read. He had
studied Latin after learning to read English, and now another of his
labours was, to translate Latin books into the English-Saxon tongue,
that his people might be interested, and improved by their contents. He
made just laws, that they might live more happily and freely; he turned
away all partial judges, that no wrong might be done them; he was so
careful of their property, and punished robbers so severely, that it
was a common thing to say that under the great King Alfred, garlands of
golden chains and jewels might have hung across the streets, and no man
would have touched one. He founded schools; he patiently heard causes
himself in his Court of Justice; the great desires of his heart were,
to do right to all his subjects, and to leave England better, wiser,
happier in all ways, than he found it. His industry in these efforts
was quite astonishing. Every day he divided into certain portions, and
in each portion devoted himself to a certain pursuit. That he might
divide his time exactly, he had wax torches or candles made, which were
all of the same size, were notched across at regular distances, and
were always kept burning. Thus, as the candles burnt down, he divided
the day into notches, almost as accurately as we now divide it into
hours upon the clock. But when the candles were first invented, it was
found that the wind and draughts of air, blowing into the palace
through the doors and windows, and through the chinks in the walls,
caused them to gutter and burn unequally. To prevent this, the King had
them put into cases formed of wood and white horn. And these were the
first lanthorns ever made in England.

All this time, he was afflicted with a terrible unknown disease, which
caused him violent and frequent pain that nothing could relieve. He
bore it, as he had borne all the troubles of his life, like a brave
good man, until he was fifty-three years old; and then, having reigned
thirty years, he died. He died in the year nine hundred and one; but,
long ago as that is, his fame, and the love and gratitude with which
his subjects regarded him, are freshly remembered to the present hour.

In the next reign, which was the reign of Edward, surnamed The Elder,
who was chosen in council to succeed, a nephew of King Alfred troubled
the country by trying to obtain the throne. The Danes in the East of
England took part with this usurper (perhaps because they had honoured
his uncle so much, and honoured him for his uncle’s sake), and there
was hard fighting; but, the King, with the assistance of his sister,
gained the day, and reigned in peace for four and twenty years. He
gradually extended his power over the whole of England, and so the
Seven Kingdoms were united into one.

When England thus became one kingdom, ruled over by one Saxon king, the
Saxons had been settled in the country more than four hundred and fifty
years. Great changes had taken place in its customs during that time.
The Saxons were still greedy eaters and great drinkers, and their
feasts were often of a noisy and drunken kind; but many new comforts
and even elegances had become known, and were fast increasing. Hangings
for the walls of rooms, where, in these modern days, we paste up paper,
are known to have been sometimes made of silk, ornamented with birds
and flowers in needlework. Tables and chairs were curiously carved in
different woods; were sometimes decorated with gold or silver;
sometimes even made of those precious metals. Knives and spoons were
used at table; golden ornaments were worn—with silk and cloth, and
golden tissues and embroideries; dishes were made of gold and silver,
brass and bone. There were varieties of drinking-horns, bedsteads,
musical instruments. A harp was passed round, at a feast, like the
drinking-bowl, from guest to guest; and each one usually sang or played
when his turn came. The weapons of the Saxons were stoutly made, and
among them was a terrible iron hammer that gave deadly blows, and was
long remembered. The Saxons themselves were a handsome people. The men
were proud of their long fair hair, parted on the forehead; their ample
beards, their fresh complexions, and clear eyes. The beauty of the
Saxon women filled all England with a new delight and grace.

I have more to tell of the Saxons yet, but I stop to say this now,
because under the Great Alfred, all the best points of the
English-Saxon character were first encouraged, and in him first shown.
It has been the greatest character among the nations of the earth.
Wherever the descendants of the Saxon race have gone, have sailed, or
otherwise made their way, even to the remotest regions of the world,
they have been patient, persevering, never to be broken in spirit,
never to be turned aside from enterprises on which they have resolved.
In Europe, Asia, Africa, America, the whole world over; in the desert,
in the forest, on the sea; scorched by a burning sun, or frozen by ice
that never melts; the Saxon blood remains unchanged. Wheresoever that
race goes, there, law, and industry, and safety for life and property,
and all the great results of steady perseverance, are certain to arise.

I pause to think with admiration, of the noble king who, in his single
person, possessed all the Saxon virtues. Whom misfortune could not
subdue, whom prosperity could not spoil, whose perseverance nothing
could shake. Who was hopeful in defeat, and generous in success. Who
loved justice, freedom, truth, and knowledge. Who, in his care to
instruct his people, probably did more to preserve the beautiful old
Saxon language, than I can imagine. Without whom, the English tongue in
which I tell this story might have wanted half its meaning. As it is
said that his spirit still inspires some of our best English laws, so,
let you and I pray that it may animate our English hearts, at least to
this—to resolve, when we see any of our fellow-creatures left in
ignorance, that we will do our best, while life is in us, to have them
taught; and to tell those rulers whose duty it is to teach them, and
who neglect their duty, that they have profited very little by all the
years that have rolled away since the year nine hundred and one, and
that they are far behind the bright example of King Alfred the Great.', 2312)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('1c7c11bb-24e4-4007-af77-5c241a9bc3be', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 5, 'Chapter IV. England Under Athelstan and the Six Boy-kings (1/2)', 'Athelstan, the son of Edward the Elder, succeeded that king. He reigned
only fifteen years; but he remembered the glory of his grandfather, the
great Alfred, and governed England well. He reduced the turbulent
people of Wales, and obliged them to pay him a tribute in money, and in
cattle, and to send him their best hawks and hounds. He was victorious
over the Cornish men, who were not yet quite under the Saxon
government. He restored such of the old laws as were good, and had
fallen into disuse; made some wise new laws, and took care of the poor
and weak. A strong alliance, made against him by Anlaf a Danish prince,
Constantine King of the Scots, and the people of North Wales, he broke
and defeated in one great battle, long famous for the vast numbers
slain in it. After that, he had a quiet reign; the lords and ladies
about him had leisure to become polite and agreeable; and foreign
princes were glad (as they have sometimes been since) to come to
England on visits to the English court.

When Athelstan died, at forty-seven years old, his brother Edmund, who
was only eighteen, became king. He was the first of six boy-kings, as
you will presently know.

They called him the Magnificent, because he showed a taste for
improvement and refinement. But he was beset by the Danes, and had a
short and troubled reign, which came to a troubled end. One night, when
he was feasting in his hall, and had eaten much and drunk deep, he saw,
among the company, a noted robber named Leof, who had been banished
from England. Made very angry by the boldness of this man, the King
turned to his cup-bearer, and said, ‘There is a robber sitting at the
table yonder, who, for his crimes, is an outlaw in the land—a hunted
wolf, whose life any man may take, at any time. Command that robber to
depart!’ ‘I will not depart!’ said Leof. ‘No?’ cried the King. ‘No, by
the Lord!’ said Leof. Upon that the King rose from his seat, and,
making passionately at the robber, and seizing him by his long hair,
tried to throw him down. But the robber had a dagger underneath his
cloak, and, in the scuffle, stabbed the King to death. That done, he
set his back against the wall, and fought so desperately, that although
he was soon cut to pieces by the King’s armed men, and the wall and
pavement were splashed with his blood, yet it was not before he had
killed and wounded many of them. You may imagine what rough lives the
kings of those times led, when one of them could struggle, half drunk,
with a public robber in his own dining-hall, and be stabbed in presence
of the company who ate and drank with him.

Then succeeded the boy-king Edred, who was weak and sickly in body, but
of a strong mind. And his armies fought the Northmen, the Danes, and
Norwegians, or the Sea-Kings, as they were called, and beat them for
the time. And, in nine years, Edred died, and passed away.

Then came the boy-king Edwy, fifteen years of age; but the real king,
who had the real power, was a monk named Dunstan—a clever priest, a
little mad, and not a little proud and cruel.

Dunstan was then Abbot of Glastonbury Abbey, whither the body of King
Edmund the Magnificent was carried, to be buried. While yet a boy, he
had got out of his bed one night (being then in a fever), and walked
about Glastonbury Church when it was under repair; and, because he did
not tumble off some scaffolds that were there, and break his neck, it
was reported that he had been shown over the building by an angel. He
had also made a harp that was said to play of itself—which it very
likely did, as Æolian Harps, which are played by the wind, and are
understood now, always do. For these wonders he had been once denounced
by his enemies, who were jealous of his favour with the late King
Athelstan, as a magician; and he had been waylaid, bound hand and foot,
and thrown into a marsh. But he got out again, somehow, to cause a
great deal of trouble yet.

The priests of those days were, generally, the only scholars. They were
learned in many things. Having to make their own convents and
monasteries on uncultivated grounds that were granted to them by the
Crown, it was necessary that they should be good farmers and good
gardeners, or their lands would have been too poor to support them. For
the decoration of the chapels where they prayed, and for the comfort of
the refectories where they ate and drank, it was necessary that there
should be good carpenters, good smiths, good painters, among them. For
their greater safety in sickness and accident, living alone by
themselves in solitary places, it was necessary that they should study
the virtues of plants and herbs, and should know how to dress cuts,
burns, scalds, and bruises, and how to set broken limbs. Accordingly,
they taught themselves, and one another, a great variety of useful
arts; and became skilful in agriculture, medicine, surgery, and
handicraft. And when they wanted the aid of any little piece of
machinery, which would be simple enough now, but was marvellous then,
to impose a trick upon the poor peasants, they knew very well how to
make it; and _did_ make it many a time and often, I have no doubt.

Dunstan, Abbot of Glastonbury Abbey, was one of the most sagacious of
these monks. He was an ingenious smith, and worked at a forge in a
little cell. This cell was made too short to admit of his lying at full
length when he went to sleep—as if _that_ did any good to anybody!—and
he used to tell the most extraordinary lies about demons and spirits,
who, he said, came there to persecute him. For instance, he related
that one day when he was at work, the devil looked in at the little
window, and tried to tempt him to lead a life of idle pleasure;
whereupon, having his pincers in the fire, red hot, he seized the devil
by the nose, and put him to such pain, that his bellowings were heard
for miles and miles. Some people are inclined to think this nonsense a
part of Dunstan’s madness (for his head never quite recovered the
fever), but I think not. I observe that it induced the ignorant people
to consider him a holy man, and that it made him very powerful. Which
was exactly what he always wanted.

On the day of the coronation of the handsome boy-king Edwy, it was
remarked by Odo, Archbishop of Canterbury (who was a Dane by birth),
that the King quietly left the coronation feast, while all the company
were there. Odo, much displeased, sent his friend Dunstan to seek him.
Dunstan finding him in the company of his beautiful young wife Elgiva,
and her mother Ethelgiva, a good and virtuous lady, not only grossly
abused them, but dragged the young King back into the feasting-hall by
force. Some, again, think Dunstan did this because the young King’s
fair wife was his own cousin, and the monks objected to people marrying
their own cousins; but I believe he did it, because he was an
imperious, audacious, ill-conditioned priest, who, having loved a young
lady himself before he became a sour monk, hated all love now, and
everything belonging to it.

The young King was quite old enough to feel this insult. Dunstan had
been Treasurer in the last reign, and he soon charged Dunstan with
having taken some of the last king’s money. The Glastonbury Abbot fled
to Belgium (very narrowly escaping some pursuers who were sent to put
out his eyes, as you will wish they had, when you read what follows),
and his abbey was given to priests who were married; whom he always,
both before and afterwards, opposed. But he quickly conspired with his
friend, Odo the Dane, to set up the King’s young brother, Edgar, as his
rival for the throne; and, not content with this revenge, he caused the
beautiful queen Elgiva, though a lovely girl of only seventeen or
eighteen, to be stolen from one of the Royal Palaces, branded in the
cheek with a red-hot iron, and sold into slavery in Ireland. But the
Irish people pitied and befriended her; and they said, ‘Let us restore
the girl-queen to the boy-king, and make the young lovers happy!’ and
they cured her of her cruel wound, and sent her home as beautiful as
before. But the villain Dunstan, and that other villain, Odo, caused
her to be waylaid at Gloucester as she was joyfully hurrying to join
her husband, and to be hacked and hewn with swords, and to be
barbarously maimed and lamed, and left to die. When Edwy the Fair (his
people called him so, because he was so young and handsome) heard of
her dreadful fate, he died of a broken heart; and so the pitiful story
of the poor young wife and husband ends! Ah! Better to be two cottagers
in these better times, than king and queen of England in those bad
days, though never so fair!

Then came the boy-king, Edgar, called the Peaceful, fifteen years old.
Dunstan, being still the real king, drove all married priests out of
the monasteries and abbeys, and replaced them by solitary monks like
himself, of the rigid order called the Benedictines. He made himself
Archbishop of Canterbury, for his greater glory; and exercised such
power over the neighbouring British princes, and so collected them
about the King, that once, when the King held his court at Chester, and
went on the river Dee to visit the monastery of St. John, the eight
oars of his boat were pulled (as the people used to delight in relating
in stories and songs) by eight crowned kings, and steered by the King
of England. As Edgar was very obedient to Dunstan and the monks, they
took great pains to represent him as the best of kings. But he was
really profligate, debauched, and vicious. He once forcibly carried off
a young lady from the convent at Wilton; and Dunstan, pretending to be
very much shocked, condemned him not to wear his crown upon his head
for seven years—no great punishment, I dare say, as it can hardly have
been a more comfortable ornament to wear, than a stewpan without a
handle. His marriage with his second wife, Elfrida, is one of the worst
events of his reign. Hearing of the beauty of this lady, he despatched
his favourite courtier, Athelwold, to her father’s castle in
Devonshire, to see if she were really as charming as fame reported.
Now, she was so exceedingly beautiful that Athelwold fell in love with
her himself, and married her; but he told the King that she was only
rich—not handsome. The King, suspecting the truth when they came home,
resolved to pay the newly-married couple a visit; and, suddenly, told
Athelwold to prepare for his immediate coming. Athelwold, terrified,
confessed to his young wife what he had said and done, and implored her
to disguise her beauty by some ugly dress or silly manner, that he
might be safe from the King’s anger. She promised that she would; but
she was a proud woman, who would far rather have been a queen than the
wife of a courtier. She dressed herself in her best dress, and adorned
herself with her richest jewels; and when the King came, presently, he
discovered the cheat. So, he caused his false friend, Athelwold, to be
murdered in a wood, and married his widow, this bad Elfrida. Six or
seven years afterwards, he died; and was buried, as if he had been all
that the monks said he was, in the abbey of Glastonbury, which he—or
Dunstan for him—had much enriched.

England, in one part of this reign, was so troubled by wolves, which,
driven out of the open country, hid themselves in the mountains of
Wales when they were not attacking travellers and animals, that the
tribute payable by the Welsh people was forgiven them, on condition of
their producing, every year, three hundred wolves’ heads. And the
Welshmen were so sharp upon the wolves, to save their money, that in
four years there was not a wolf left.', 2103)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('0baaf23a-291b-4c77-a79e-ffde8ff6d0ab', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 6, 'Chapter IV. England Under Athelstan and the Six Boy-kings (2/2)', 'Then came the boy-king, Edward, called the Martyr, from the manner of
his death. Elfrida had a son, named Ethelred, for whom she claimed the
throne; but Dunstan did not choose to favour him, and he made Edward
king. The boy was hunting, one day, down in Dorsetshire, when he rode
near to Corfe Castle, where Elfrida and Ethelred lived. Wishing to see
them kindly, he rode away from his attendants and galloped to the
castle gate, where he arrived at twilight, and blew his hunting-horn.
‘You are welcome, dear King,’ said Elfrida, coming out, with her
brightest smiles. ‘Pray you dismount and enter.’ ‘Not so, dear madam,’
said the King. ‘My company will miss me, and fear that I have met with
some harm. Please you to give me a cup of wine, that I may drink here,
in the saddle, to you and to my little brother, and so ride away with
the good speed I have made in riding here.’ Elfrida, going in to bring
the wine, whispered to an armed servant, one of her attendants, who
stole out of the darkening gateway, and crept round behind the King’s
horse. As the King raised the cup to his lips, saying, ‘Health!’ to the
wicked woman who was smiling on him, and to his innocent brother whose
hand she held in hers, and who was only ten years old, this armed man
made a spring and stabbed him in the back. He dropped the cup and
spurred his horse away; but, soon fainting with loss of blood, dropped
from the saddle, and, in his fall, entangled one of his feet in the
stirrup. The frightened horse dashed on; trailing his rider’s curls
upon the ground; dragging his smooth young face through ruts, and
stones, and briers, and fallen leaves, and mud; until the hunters,
tracking the animal’s course by the King’s blood, caught his bridle,
and released the disfigured body.

Then came the sixth and last of the boy-kings, Ethelred, whom Elfrida,
when he cried out at the sight of his murdered brother riding away from
the castle gate, unmercifully beat with a torch which she snatched from
one of the attendants. The people so disliked this boy, on account of
his cruel mother and the murder she had done to promote him, that
Dunstan would not have had him for king, but would have made Edgitha,
the daughter of the dead King Edgar, and of the lady whom he stole out
of the convent at Wilton, Queen of England, if she would have
consented. But she knew the stories of the youthful kings too well, and
would not be persuaded from the convent where she lived in peace; so,
Dunstan put Ethelred on the throne, having no one else to put there,
and gave him the nickname of The Unready—knowing that he wanted
resolution and firmness.

At first, Elfrida possessed great influence over the young King, but,
as he grew older and came of age, her influence declined. The infamous
woman, not having it in her power to do any more evil, then retired
from court, and, according, to the fashion of the time, built churches
and monasteries, to expiate her guilt. As if a church, with a steeple
reaching to the very stars, would have been any sign of true repentance
for the blood of the poor boy, whose murdered form was trailed at his
horse’s heels! As if she could have buried her wickedness beneath the
senseless stones of the whole world, piled up one upon another, for the
monks to live in!

About the ninth or tenth year of this reign, Dunstan died. He was
growing old then, but was as stern and artful as ever. Two
circumstances that happened in connexion with him, in this reign of
Ethelred, made a great noise. Once, he was present at a meeting of the
Church, when the question was discussed whether priests should have
permission to marry; and, as he sat with his head hung down, apparently
thinking about it, a voice seemed to come out of a crucifix in the
room, and warn the meeting to be of his opinion. This was some juggling
of Dunstan’s, and was probably his own voice disguised. But he played
off a worse juggle than that, soon afterwards; for, another meeting
being held on the same subject, and he and his supporters being seated
on one side of a great room, and their opponents on the other, he rose
and said, ‘To Christ himself, as judge, do I commit this cause!’
Immediately on these words being spoken, the floor where the opposite
party sat gave way, and some were killed and many wounded. You may be
pretty sure that it had been weakened under Dunstan’s direction, and
that it fell at Dunstan’s signal. _His_ part of the floor did not go
down. No, no. He was too good a workman for that.

When he died, the monks settled that he was a Saint, and called him
Saint Dunstan ever afterwards. They might just as well have settled
that he was a coach-horse, and could just as easily have called him
one.

Ethelred the Unready was glad enough, I dare say, to be rid of this
holy saint; but, left to himself, he was a poor weak king, and his
reign was a reign of defeat and shame. The restless Danes, led by
Sweyn, a son of the King of Denmark who had quarrelled with his father
and had been banished from home, again came into England, and, year
after year, attacked and despoiled large towns. To coax these sea-kings
away, the weak Ethelred paid them money; but, the more money he paid,
the more money the Danes wanted. At first, he gave them ten thousand
pounds; on their next invasion, sixteen thousand pounds; on their next
invasion, four and twenty thousand pounds: to pay which large sums, the
unfortunate English people were heavily taxed. But, as the Danes still
came back and wanted more, he thought it would be a good plan to marry
into some powerful foreign family that would help him with soldiers.
So, in the year one thousand and two, he courted and married Emma, the
sister of Richard Duke of Normandy; a lady who was called the Flower of
Normandy.

And now, a terrible deed was done in England, the like of which was
never done on English ground before or since. On the thirteenth of
November, in pursuance of secret instructions sent by the King over the
whole country, the inhabitants of every town and city armed, and
murdered all the Danes who were their neighbours.

Young and old, babies and soldiers, men and women, every Dane was
killed. No doubt there were among them many ferocious men who had done
the English great wrong, and whose pride and insolence, in swaggering
in the houses of the English and insulting their wives and daughters,
had become unbearable; but no doubt there were also among them many
peaceful Christian Danes who had married English women and become like
English men. They were all slain, even to Gunhilda, the sister of the
King of Denmark, married to an English lord; who was first obliged to
see the murder of her husband and her child, and then was killed
herself.

When the King of the sea-kings heard of this deed of blood, he swore
that he would have a great revenge. He raised an army, and a mightier
fleet of ships than ever yet had sailed to England; and in all his army
there was not a slave or an old man, but every soldier was a free man,
and the son of a free man, and in the prime of life, and sworn to be
revenged upon the English nation, for the massacre of that dread
thirteenth of November, when his countrymen and countrywomen, and the
little children whom they loved, were killed with fire and sword. And
so, the sea-kings came to England in many great ships, each bearing the
flag of its own commander. Golden eagles, ravens, dragons, dolphins,
beasts of prey, threatened England from the prows of those ships, as
they came onward through the water; and were reflected in the shining
shields that hung upon their sides. The ship that bore the standard of
the King of the sea-kings was carved and painted like a mighty serpent;
and the King in his anger prayed that the Gods in whom he trusted might
all desert him, if his serpent did not strike its fangs into England’s
heart.

And indeed it did. For, the great army landing from the great fleet,
near Exeter, went forward, laying England waste, and striking their
lances in the earth as they advanced, or throwing them into rivers, in
token of their making all the island theirs. In remembrance of the
black November night when the Danes were murdered, wheresoever the
invaders came, they made the Saxons prepare and spread for them great
feasts; and when they had eaten those feasts, and had drunk a curse to
England with wild rejoicings, they drew their swords, and killed their
Saxon entertainers, and marched on. For six long years they carried on
this war: burning the crops, farmhouses, barns, mills, granaries;
killing the labourers in the fields; preventing the seed from being
sown in the ground; causing famine and starvation; leaving only heaps
of ruin and smoking ashes, where they had found rich towns. To crown
this misery, English officers and men deserted, and even the favourites
of Ethelred the Unready, becoming traitors, seized many of the English
ships, turned pirates against their own country, and aided by a storm
occasioned the loss of nearly the whole English navy.

There was but one man of note, at this miserable pass, who was true to
his country and the feeble King. He was a priest, and a brave one. For
twenty days, the Archbishop of Canterbury defended that city against
its Danish besiegers; and when a traitor in the town threw the gates
open and admitted them, he said, in chains, ‘I will not buy my life
with money that must be extorted from the suffering people. Do with me
what you please!’ Again and again, he steadily refused to purchase his
release with gold wrung from the poor.

At last, the Danes being tired of this, and being assembled at a
drunken merry-making, had him brought into the feasting-hall.

‘Now, bishop,’ they said, ‘we want gold!’

He looked round on the crowd of angry faces; from the shaggy beards
close to him, to the shaggy beards against the walls, where men were
mounted on tables and forms to see him over the heads of others: and he
knew that his time was come.

‘I have no gold,’ he said.

‘Get it, bishop!’ they all thundered.

‘That, I have often told you I will not,’ said he.

They gathered closer round him, threatening, but he stood unmoved.
Then, one man struck him; then, another; then a cursing soldier picked
up from a heap in a corner of the hall, where fragments had been rudely
thrown at dinner, a great ox-bone, and cast it at his face, from which
the blood came spurting forth; then, others ran to the same heap, and
knocked him down with other bones, and bruised and battered him; until
one soldier whom he had baptised (willing, as I hope for the sake of
that soldier’s soul, to shorten the sufferings of the good man) struck
him dead with his battle-axe.

If Ethelred had had the heart to emulate the courage of this noble
archbishop, he might have done something yet. But he paid the Danes
forty-eight thousand pounds, instead, and gained so little by the
cowardly act, that Sweyn soon afterwards came over to subdue all
England. So broken was the attachment of the English people, by this
time, to their incapable King and their forlorn country which could not
protect them, that they welcomed Sweyn on all sides, as a deliverer.
London faithfully stood out, as long as the King was within its walls;
but, when he sneaked away, it also welcomed the Dane. Then, all was
over; and the King took refuge abroad with the Duke of Normandy, who
had already given shelter to the King’s wife, once the Flower of that
country, and to her children.

Still, the English people, in spite of their sad sufferings, could not
quite forget the great King Alfred and the Saxon race. When Sweyn died
suddenly, in little more than a month after he had been proclaimed King
of England, they generously sent to Ethelred, to say that they would
have him for their King again, ‘if he would only govern them better
than he had governed them before.’ The Unready, instead of coming
himself, sent Edward, one of his sons, to make promises for him. At
last, he followed, and the English declared him King. The Danes
declared Canute, the son of Sweyn, King. Thus, direful war began again,
and lasted for three years, when the Unready died. And I know of
nothing better that he did, in all his reign of eight and thirty years.

Was Canute to be King now? Not over the Saxons, they said; they must
have Edmund, one of the sons of the Unready, who was surnamed Ironside,
because of his strength and stature. Edmund and Canute thereupon fell
to, and fought five battles—O unhappy England, what a fighting-ground
it was!—and then Ironside, who was a big man, proposed to Canute, who
was a little man, that they two should fight it out in single combat.
If Canute had been the big man, he would probably have said yes, but,
being the little man, he decidedly said no. However, he declared that
he was willing to divide the kingdom—to take all that lay north of
Watling Street, as the old Roman military road from Dover to Chester
was called, and to give Ironside all that lay south of it. Most men
being weary of so much bloodshed, this was done. But Canute soon became
sole King of England; for Ironside died suddenly within two months.
Some think that he was killed, and killed by Canute’s orders. No one
knows.', 2386)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('68ebac4f-aca4-4ff5-a7e1-93a25bae1090', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 7, 'Chapter V. England Under Canute the Dane', 'Canute reigned eighteen years. He was a merciless King at first. After
he had clasped the hands of the Saxon chiefs, in token of the sincerity
with which he swore to be just and good to them in return for their
acknowledging him, he denounced and slew many of them, as well as many
relations of the late King. ‘He who brings me the head of one of my
enemies,’ he used to say, ‘shall be dearer to me than a brother.’ And
he was so severe in hunting down his enemies, that he must have got
together a pretty large family of these dear brothers. He was strongly
inclined to kill Edmund and Edward, two children, sons of poor
Ironside; but, being afraid to do so in England, he sent them over to
the King of Sweden, with a request that the King would be so good as
‘dispose of them.’ If the King of Sweden had been like many, many other
men of that day, he would have had their innocent throats cut; but he
was a kind man, and brought them up tenderly.

Normandy ran much in Canute’s mind. In Normandy were the two children
of the late king—Edward and Alfred by name; and their uncle the Duke
might one day claim the crown for them. But the Duke showed so little
inclination to do so now, that he proposed to Canute to marry his
sister, the widow of The Unready; who, being but a showy flower, and
caring for nothing so much as becoming a queen again, left her children
and was wedded to him.

Successful and triumphant, assisted by the valour of the English in his
foreign wars, and with little strife to trouble him at home, Canute had
a prosperous reign, and made many improvements. He was a poet and a
musician. He grew sorry, as he grew older, for the blood he had shed at
first; and went to Rome in a Pilgrim’s dress, by way of washing it out.
He gave a great deal of money to foreigners on his journey; but he took
it from the English before he started. On the whole, however, he
certainly became a far better man when he had no opposition to contend
with, and was as great a King as England had known for some time.

The old writers of history relate how that Canute was one day disgusted
with his courtiers for their flattery, and how he caused his chair to
be set on the sea-shore, and feigned to command the tide as it came up
not to wet the edge of his robe, for the land was his; how the tide
came up, of course, without regarding him; and how he then turned to
his flatterers, and rebuked them, saying, what was the might of any
earthly king, to the might of the Creator, who could say unto the sea,
‘Thus far shalt thou go, and no farther!’ We may learn from this, I
think, that a little sense will go a long way in a king; and that
courtiers are not easily cured of flattery, nor kings of a liking for
it. If the courtiers of Canute had not known, long before, that the
King was fond of flattery, they would have known better than to offer
it in such large doses. And if they had not known that he was vain of
this speech (anything but a wonderful speech it seems to me, if a good
child had made it), they would not have been at such great pains to
repeat it. I fancy I see them all on the sea-shore together; the King’s
chair sinking in the sand; the King in a mighty good humour with his
own wisdom; and the courtiers pretending to be quite stunned by it!

It is not the sea alone that is bidden to go ‘thus far, and no
farther.’ The great command goes forth to all the kings upon the earth,
and went to Canute in the year one thousand and thirty-five, and
stretched him dead upon his bed. Beside it, stood his Norman wife.
Perhaps, as the King looked his last upon her, he, who had so often
thought distrustfully of Normandy, long ago, thought once more of the
two exiled Princes in their uncle’s court, and of the little favour
they could feel for either Danes or Saxons, and of a rising cloud in
Normandy that slowly moved towards England.', 748)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('9c9c4cbb-fe8f-44d1-a5f3-5221efb79a7f', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 8, 'Chapter VI', 'ENGLAND UNDER HAROLD HAREFOOT, HARDICANUTE, AND EDWARD THE CONFESSOR

Canute left three sons, by name Sweyn, Harold, and Hardicanute; but his
Queen, Emma, once the Flower of Normandy, was the mother of only
Hardicanute. Canute had wished his dominions to be divided between the
three, and had wished Harold to have England; but the Saxon people in
the South of England, headed by a nobleman with great possessions,
called the powerful Earl Godwin (who is said to have been originally a
poor cow-boy), opposed this, and desired to have, instead, either
Hardicanute, or one of the two exiled Princes who were over in
Normandy. It seemed so certain that there would be more bloodshed to
settle this dispute, that many people left their homes, and took refuge
in the woods and swamps. Happily, however, it was agreed to refer the
whole question to a great meeting at Oxford, which decided that Harold
should have all the country north of the Thames, with London for his
capital city, and that Hardicanute should have all the south. The
quarrel was so arranged; and, as Hardicanute was in Denmark troubling
himself very little about anything but eating and getting drunk, his
mother and Earl Godwin governed the south for him.

They had hardly begun to do so, and the trembling people who had hidden
themselves were scarcely at home again, when Edward, the elder of the
two exiled Princes, came over from Normandy with a few followers, to
claim the English Crown. His mother Emma, however, who only cared for
her last son Hardicanute, instead of assisting him, as he expected,
opposed him so strongly with all her influence that he was very soon
glad to get safely back. His brother Alfred was not so fortunate.
Believing in an affectionate letter, written some time afterwards to
him and his brother, in his mother’s name (but whether really with or
without his mother’s knowledge is now uncertain), he allowed himself to
be tempted over to England, with a good force of soldiers, and landing
on the Kentish coast, and being met and welcomed by Earl Godwin,
proceeded into Surrey, as far as the town of Guildford. Here, he and
his men halted in the evening to rest, having still the Earl in their
company; who had ordered lodgings and good cheer for them. But, in the
dead of the night, when they were off their guard, being divided into
small parties sleeping soundly after a long march and a plentiful
supper in different houses, they were set upon by the King’s troops,
and taken prisoners. Next morning they were drawn out in a line, to the
number of six hundred men, and were barbarously tortured and killed;
with the exception of every tenth man, who was sold into slavery. As to
the wretched Prince Alfred, he was stripped naked, tied to a horse and
sent away into the Isle of Ely, where his eyes were torn out of his
head, and where in a few days he miserably died. I am not sure that the
Earl had wilfully entrapped him, but I suspect it strongly.

Harold was now King all over England, though it is doubtful whether the
Archbishop of Canterbury (the greater part of the priests were Saxons,
and not friendly to the Danes) ever consented to crown him. Crowned or
uncrowned, with the Archbishop’s leave or without it, he was King for
four years: after which short reign he died, and was buried; having
never done much in life but go a hunting. He was such a fast runner at
this, his favourite sport, that the people called him Harold Harefoot.

Hardicanute was then at Bruges, in Flanders, plotting, with his mother
(who had gone over there after the cruel murder of Prince Alfred), for
the invasion of England. The Danes and Saxons, finding themselves
without a King, and dreading new disputes, made common cause, and
joined in inviting him to occupy the Throne. He consented, and soon
troubled them enough; for he brought over numbers of Danes, and taxed
the people so insupportably to enrich those greedy favourites that
there were many insurrections, especially one at Worcester, where the
citizens rose and killed his tax-collectors; in revenge for which he
burned their city. He was a brutal King, whose first public act was to
order the dead body of poor Harold Harefoot to be dug up, beheaded, and
thrown into the river. His end was worthy of such a beginning. He fell
down drunk, with a goblet of wine in his hand, at a wedding-feast at
Lambeth, given in honour of the marriage of his standard-bearer, a Dane
named Towed the Proud. And he never spoke again.

Edward, afterwards called by the monks The Confessor, succeeded; and
his first act was to oblige his mother Emma, who had favoured him so
little, to retire into the country; where she died some ten years
afterwards. He was the exiled prince whose brother Alfred had been so
foully killed. He had been invited over from Normandy by Hardicanute,
in the course of his short reign of two years, and had been handsomely
treated at court. His cause was now favoured by the powerful Earl
Godwin, and he was soon made King. This Earl had been suspected by the
people, ever since Prince Alfred’s cruel death; he had even been tried
in the last reign for the Prince’s murder, but had been pronounced not
guilty; chiefly, as it was supposed, because of a present he had made
to the swinish King, of a gilded ship with a figure-head of solid gold,
and a crew of eighty splendidly armed men. It was his interest to help
the new King with his power, if the new King would help him against the
popular distrust and hatred. So they made a bargain. Edward the
Confessor got the Throne. The Earl got more power and more land, and
his daughter Editha was made queen; for it was a part of their compact
that the King should take her for his wife.

But, although she was a gentle lady, in all things worthy to be
beloved—good, beautiful, sensible, and kind—the King from the first
neglected her. Her father and her six proud brothers, resenting this
cold treatment, harassed the King greatly by exerting all their power
to make him unpopular. Having lived so long in Normandy, he preferred
the Normans to the English. He made a Norman Archbishop, and Norman
Bishops; his great officers and favourites were all Normans; he
introduced the Norman fashions and the Norman language; in imitation of
the state custom of Normandy, he attached a great seal to his state
documents, instead of merely marking them, as the Saxon Kings had done,
with the sign of the cross—just as poor people who have never been
taught to write, now make the same mark for their names. All this, the
powerful Earl Godwin and his six proud sons represented to the people
as disfavour shown towards the English; and thus they daily increased
their own power, and daily diminished the power of the King.

They were greatly helped by an event that occurred when he had reigned
eight years. Eustace, Earl of Bologne, who had married the King’s
sister, came to England on a visit. After staying at the court some
time, he set forth, with his numerous train of attendants, to return
home. They were to embark at Dover. Entering that peaceful town in
armour, they took possession of the best houses, and noisily demanded
to be lodged and entertained without payment. One of the bold men of
Dover, who would not endure to have these domineering strangers
jingling their heavy swords and iron corselets up and down his house,
eating his meat and drinking his strong liquor, stood in his doorway
and refused admission to the first armed man who came there. The armed
man drew, and wounded him. The man of Dover struck the armed man dead.
Intelligence of what he had done, spreading through the streets to
where the Count Eustace and his men were standing by their horses,
bridle in hand, they passionately mounted, galloped to the house,
surrounded it, forced their way in (the doors and windows being closed
when they came up), and killed the man of Dover at his own fireside.
They then clattered through the streets, cutting down and riding over
men, women, and children. This did not last long, you may believe. The
men of Dover set upon them with great fury, killed nineteen of the
foreigners, wounded many more, and, blockading the road to the port so
that they should not embark, beat them out of the town by the way they
had come. Hereupon, Count Eustace rides as hard as man can ride to
Gloucester, where Edward is, surrounded by Norman monks and Norman
lords. ‘Justice!’ cries the Count, ‘upon the men of Dover, who have set
upon and slain my people!’ The King sends immediately for the powerful
Earl Godwin, who happens to be near; reminds him that Dover is under
his government; and orders him to repair to Dover and do military
execution on the inhabitants. ‘It does not become you,’ says the proud
Earl in reply, ‘to condemn without a hearing those whom you have sworn
to protect. I will not do it.’

The King, therefore, summoned the Earl, on pain of banishment and loss
of his titles and property, to appear before the court to answer this
disobedience. The Earl refused to appear. He, his eldest son Harold,
and his second son Sweyn, hastily raised as many fighting men as their
utmost power could collect, and demanded to have Count Eustace and his
followers surrendered to the justice of the country. The King, in his
turn, refused to give them up, and raised a strong force. After some
treaty and delay, the troops of the great Earl and his sons began to
fall off. The Earl, with a part of his family and abundance of
treasure, sailed to Flanders; Harold escaped to Ireland; and the power
of the great family was for that time gone in England. But, the people
did not forget them.

Then, Edward the Confessor, with the true meanness of a mean spirit,
visited his dislike of the once powerful father and sons upon the
helpless daughter and sister, his unoffending wife, whom all who saw
her (her husband and his monks excepted) loved. He seized rapaciously
upon her fortune and her jewels, and allowing her only one attendant,
confined her in a gloomy convent, of which a sister of his—no doubt an
unpleasant lady after his own heart—was abbess or jailer.

Having got Earl Godwin and his six sons well out of his way, the King
favoured the Normans more than ever. He invited over William, Duke Of
Normandy, the son of that Duke who had received him and his murdered
brother long ago, and of a peasant girl, a tanner’s daughter, with whom
that Duke had fallen in love for her beauty as he saw her washing
clothes in a brook. William, who was a great warrior, with a passion
for fine horses, dogs, and arms, accepted the invitation; and the
Normans in England, finding themselves more numerous than ever when he
arrived with his retinue, and held in still greater honour at court
than before, became more and more haughty towards the people, and were
more and more disliked by them.

The old Earl Godwin, though he was abroad, knew well how the people
felt; for, with part of the treasure he had carried away with him, he
kept spies and agents in his pay all over England.

Accordingly, he thought the time was come for fitting out a great
expedition against the Norman-loving King. With it, he sailed to the
Isle of Wight, where he was joined by his son Harold, the most gallant
and brave of all his family. And so the father and son came sailing up
the Thames to Southwark; great numbers of the people declaring for
them, and shouting for the English Earl and the English Harold, against
the Norman favourites!

The King was at first as blind and stubborn as kings usually have been
whensoever they have been in the hands of monks. But the people rallied
so thickly round the old Earl and his son, and the old Earl was so
steady in demanding without bloodshed the restoration of himself and
his family to their rights, that at last the court took the alarm. The
Norman Archbishop of Canterbury, and the Norman Bishop of London,
surrounded by their retainers, fought their way out of London, and
escaped from Essex to France in a fishing-boat. The other Norman
favourites dispersed in all directions. The old Earl and his sons
(except Sweyn, who had committed crimes against the law) were restored
to their possessions and dignities. Editha, the virtuous and lovely
Queen of the insensible King, was triumphantly released from her
prison, the convent, and once more sat in her chair of state, arrayed
in the jewels of which, when she had no champion to support her rights,
her cold-blooded husband had deprived her.

The old Earl Godwin did not long enjoy his restored fortune. He fell
down in a fit at the King’s table, and died upon the third day
afterwards. Harold succeeded to his power, and to a far higher place in
the attachment of the people than his father had ever held. By his
valour he subdued the King’s enemies in many bloody fights. He was
vigorous against rebels in Scotland—this was the time when Macbeth slew
Duncan, upon which event our English Shakespeare, hundreds of years
afterwards, wrote his great tragedy; and he killed the restless Welsh
King Griffith, and brought his head to England.

What Harold was doing at sea, when he was driven on the French coast by
a tempest, is not at all certain; nor does it at all matter. That his
ship was forced by a storm on that shore, and that he was taken
prisoner, there is no doubt. In those barbarous days, all shipwrecked
strangers were taken prisoners, and obliged to pay ransom. So, a
certain Count Guy, who was the Lord of Ponthieu where Harold’s disaster
happened, seized him, instead of relieving him like a hospitable and
Christian lord as he ought to have done, and expected to make a very
good thing of it.

But Harold sent off immediately to Duke William of Normandy,
complaining of this treatment; and the Duke no sooner heard of it than
he ordered Harold to be escorted to the ancient town of Rouen, where he
then was, and where he received him as an honoured guest. Now, some
writers tell us that Edward the Confessor, who was by this time old and
had no children, had made a will, appointing Duke William of Normandy
his successor, and had informed the Duke of his having done so. There
is no doubt that he was anxious about his successor; because he had
even invited over, from abroad, Edward the Outlaw, a son of Ironside,
who had come to England with his wife and three children, but whom the
King had strangely refused to see when he did come, and who had died in
London suddenly (princes were terribly liable to sudden death in those
days), and had been buried in St. Paul’s Cathedral. The King might
possibly have made such a will; or, having always been fond of the
Normans, he might have encouraged Norman William to aspire to the
English crown, by something that he said to him when he was staying at
the English court. But, certainly William did now aspire to it; and
knowing that Harold would be a powerful rival, he called together a
great assembly of his nobles, offered Harold his daughter Adele in
marriage, informed him that he meant on King Edward’s death to claim
the English crown as his own inheritance, and required Harold then and
there to swear to aid him. Harold, being in the Duke’s power, took this
oath upon the Missal, or Prayer-book. It is a good example of the
superstitions of the monks, that this Missal, instead of being placed
upon a table, was placed upon a tub; which, when Harold had sworn, was
uncovered, and shown to be full of dead men’s bones—bones, as the monks
pretended, of saints. This was supposed to make Harold’s oath a great
deal more impressive and binding. As if the great name of the Creator
of Heaven and earth could be made more solemn by a knuckle-bone, or a
double-tooth, or a finger-nail, of Dunstan!

Within a week or two after Harold’s return to England, the dreary old
Confessor was found to be dying. After wandering in his mind like a
very weak old man, he died. As he had put himself entirely in the hands
of the monks when he was alive, they praised him lustily when he was
dead. They had gone so far, already, as to persuade him that he could
work miracles; and had brought people afflicted with a bad disorder of
the skin, to him, to be touched and cured. This was called ‘touching
for the King’s Evil,’ which afterwards became a royal custom. You know,
however, Who really touched the sick, and healed them; and you know His
sacred name is not among the dusty line of human kings.', 2920)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('d8ff1088-5a1c-4069-aaf0-9f6331f7749f', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 9, 'Chapter VII', 'ENGLAND UNDER HAROLD THE SECOND, AND CONQUERED BY THE NORMANS

Harold was crowned King of England on the very day of the maudlin
Confessor’s funeral. He had good need to be quick about it. When the
news reached Norman William, hunting in his park at Rouen, he dropped
his bow, returned to his palace, called his nobles to council, and
presently sent ambassadors to Harold, calling on him to keep his oath
and resign the Crown. Harold would do no such thing. The barons of
France leagued together round Duke William for the invasion of England.
Duke William promised freely to distribute English wealth and English
lands among them. The Pope sent to Normandy a consecrated banner, and a
ring containing a hair which he warranted to have grown on the head of
Saint Peter. He blessed the enterprise; and cursed Harold; and
requested that the Normans would pay ‘Peter’s Pence’—or a tax to
himself of a penny a year on every house—a little more regularly in
future, if they could make it convenient.

King Harold had a rebel brother in Flanders, who was a vassal of Harold
Hardrada, King of Norway. This brother, and this Norwegian King,
joining their forces against England, with Duke William’s help, won a
fight in which the English were commanded by two nobles; and then
besieged York. Harold, who was waiting for the Normans on the coast at
Hastings, with his army, marched to Stamford Bridge upon the river
Derwent to give them instant battle.

He found them drawn up in a hollow circle, marked out by their shining
spears. Riding round this circle at a distance, to survey it, he saw a
brave figure on horseback, in a blue mantle and a bright helmet, whose
horse suddenly stumbled and threw him.

‘Who is that man who has fallen?’ Harold asked of one of his captains.

‘The King of Norway,’ he replied.

‘He is a tall and stately king,’ said Harold, ‘but his end is near.’

He added, in a little while, ‘Go yonder to my brother, and tell him, if
he withdraw his troops, he shall be Earl of Northumberland, and rich
and powerful in England.’

The captain rode away and gave the message.

‘What will he give to my friend the King of Norway?’ asked the brother.

‘Seven feet of earth for a grave,’ replied the captain.

‘No more?’ returned the brother, with a smile.

‘The King of Norway being a tall man, perhaps a little more,’ replied
the captain.

‘Ride back!’ said the brother, ‘and tell King Harold to make ready for
the fight!’

He did so, very soon. And such a fight King Harold led against that
force, that his brother, and the Norwegian King, and every chief of
note in all their host, except the Norwegian King’s son, Olave, to whom
he gave honourable dismissal, were left dead upon the field. The
victorious army marched to York. As King Harold sat there at the feast,
in the midst of all his company, a stir was heard at the doors; and
messengers all covered with mire from riding far and fast through
broken ground came hurrying in, to report that the Normans had landed
in England.

The intelligence was true. They had been tossed about by contrary
winds, and some of their ships had been wrecked. A part of their own
shore, to which they had been driven back, was strewn with Norman
bodies. But they had once more made sail, led by the Duke’s own galley,
a present from his wife, upon the prow whereof the figure of a golden
boy stood pointing towards England. By day, the banner of the three
Lions of Normandy, the diverse coloured sails, the gilded vanes, the
many decorations of this gorgeous ship, had glittered in the sun and
sunny water; by night, a light had sparkled like a star at her
mast-head. And now, encamped near Hastings, with their leader lying in
the old Roman castle of Pevensey, the English retiring in all
directions, the land for miles around scorched and smoking, fired and
pillaged, was the whole Norman power, hopeful and strong on English
ground.

Harold broke up the feast and hurried to London. Within a week, his
army was ready. He sent out spies to ascertain the Norman strength.
William took them, caused them to be led through his whole camp, and
then dismissed. ‘The Normans,’ said these spies to Harold, ‘are not
bearded on the upper lip as we English are, but are shorn. They are
priests.’ ‘My men,’ replied Harold, with a laugh, ‘will find those
priests good soldiers!’

‘The Saxons,’ reported Duke William’s outposts of Norman soldiers, who
were instructed to retire as King Harold’s army advanced, ‘rush on us
through their pillaged country with the fury of madmen.’

‘Let them come, and come soon!’ said Duke William.

Some proposals for a reconciliation were made, but were soon abandoned.
In the middle of the month of October, in the year one thousand and
sixty-six, the Normans and the English came front to front. All night
the armies lay encamped before each other, in a part of the country
then called Senlac, now called (in remembrance of them) Battle. With
the first dawn of day, they arose. There, in the faint light, were the
English on a hill; a wood behind them; in their midst, the Royal
banner, representing a fighting warrior, woven in gold thread, adorned
with precious stones; beneath the banner, as it rustled in the wind,
stood King Harold on foot, with two of his remaining brothers by his
side; around them, still and silent as the dead, clustered the whole
English army—every soldier covered by his shield, and bearing in his
hand his dreaded English battle-axe.

On an opposite hill, in three lines, archers, foot-soldiers, horsemen,
was the Norman force. Of a sudden, a great battle-cry, ‘God help us!’
burst from the Norman lines. The English answered with their own
battle-cry, ‘God’s Rood! Holy Rood!’ The Normans then came sweeping
down the hill to attack the English.

There was one tall Norman Knight who rode before the Norman army on a
prancing horse, throwing up his heavy sword and catching it, and
singing of the bravery of his countrymen. An English Knight, who rode
out from the English force to meet him, fell by this Knight’s hand.
Another English Knight rode out, and he fell too. But then a third rode
out, and killed the Norman. This was in the first beginning of the
fight. It soon raged everywhere.

The English, keeping side by side in a great mass, cared no more for
the showers of Norman arrows than if they had been showers of Norman
rain. When the Norman horsemen rode against them, with their
battle-axes they cut men and horses down. The Normans gave way. The
English pressed forward. A cry went forth among the Norman troops that
Duke William was killed. Duke William took off his helmet, in order
that his face might be distinctly seen, and rode along the line before
his men. This gave them courage. As they turned again to face the
English, some of their Norman horse divided the pursuing body of the
English from the rest, and thus all that foremost portion of the
English army fell, fighting bravely. The main body still remaining
firm, heedless of the Norman arrows, and with their battle-axes cutting
down the crowds of horsemen when they rode up, like forests of young
trees,—Duke William pretended to retreat. The eager English followed.
The Norman army closed again, and fell upon them with great slaughter.

‘Still,’ said Duke William, ‘there are thousands of the English, firm
as rocks around their King. Shoot upward, Norman archers, that your
arrows may fall down upon their faces!’

The sun rose high, and sank, and the battle still raged. Through all
the wild October day, the clash and din resounded in the air. In the
red sunset, and in the white moonlight, heaps upon heaps of dead men
lay strewn, a dreadful spectacle, all over the ground.

King Harold, wounded with an arrow in the eye, was nearly blind. His
brothers were already killed. Twenty Norman Knights, whose battered
armour had flashed fiery and golden in the sunshine all day long, and
now looked silvery in the moonlight, dashed forward to seize the Royal
banner from the English Knights and soldiers, still faithfully
collected round their blinded King. The King received a mortal wound,
and dropped. The English broke and fled. The Normans rallied, and the
day was lost.

O what a sight beneath the moon and stars, when lights were shining in
the tent of the victorious Duke William, which was pitched near the
spot where Harold fell—and he and his knights were carousing,
within—and soldiers with torches, going slowly to and fro, without,
sought for the corpse of Harold among piles of dead—and the Warrior,
worked in golden thread and precious stones, lay low, all torn and
soiled with blood—and the three Norman Lions kept watch over the field!', 1515)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('9885e673-0fdf-45ce-af4a-35ae50255229', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 10, 'Chapter VIII', 'ENGLAND UNDER WILLIAM THE FIRST, THE NORMAN CONQUEROR

Upon the ground where the brave Harold fell, William the Norman
afterwards founded an abbey, which, under the name of Battle Abbey, was
a rich and splendid place through many a troubled year, though now it
is a grey ruin overgrown with ivy. But the first work he had to do, was
to conquer the English thoroughly; and that, as you know by this time,
was hard work for any man.

He ravaged several counties; he burned and plundered many towns; he
laid waste scores upon scores of miles of pleasant country; he
destroyed innumerable lives. At length Stigand, Archbishop of
Canterbury, with other representatives of the clergy and the people,
went to his camp, and submitted to him. Edgar, the insignificant son of
Edmund Ironside, was proclaimed King by others, but nothing came of it.
He fled to Scotland afterwards, where his sister, who was young and
beautiful, married the Scottish King. Edgar himself was not important
enough for anybody to care much about him.

On Christmas Day, William was crowned in Westminster Abbey, under the
title of William the First; but he is best known as William the
Conqueror. It was a strange coronation. One of the bishops who
performed the ceremony asked the Normans, in French, if they would have
Duke William for their king? They answered Yes. Another of the bishops
put the same question to the Saxons, in English. They too answered Yes,
with a loud shout. The noise being heard by a guard of Norman
horse-soldiers outside, was mistaken for resistance on the part of the
English. The guard instantly set fire to the neighbouring houses, and a
tumult ensued; in the midst of which the King, being left alone in the
Abbey, with a few priests (and they all being in a terrible fright
together), was hurriedly crowned. When the crown was placed upon his
head, he swore to govern the English as well as the best of their own
monarchs. I dare say you think, as I do, that if we except the Great
Alfred, he might pretty easily have done that.

Numbers of the English nobles had been killed in the last disastrous
battle. Their estates, and the estates of all the nobles who had fought
against him there, King William seized upon, and gave to his own Norman
knights and nobles. Many great English families of the present time
acquired their English lands in this way, and are very proud of it.

But what is got by force must be maintained by force. These nobles were
obliged to build castles all over England, to defend their new
property; and, do what he would, the King could neither soothe nor
quell the nation as he wished. He gradually introduced the Norman
language and the Norman customs; yet, for a long time the great body of
the English remained sullen and revengeful. On his going over to
Normandy, to visit his subjects there, the oppressions of his
half-brother Odo, whom he left in charge of his English kingdom, drove
the people mad. The men of Kent even invited over, to take possession
of Dover, their old enemy Count Eustace of Boulogne, who had led the
fray when the Dover man was slain at his own fireside. The men of
Hereford, aided by the Welsh, and commanded by a chief named Edric the
Wild, drove the Normans out of their country. Some of those who had
been dispossessed of their lands, banded together in the North of
England; some, in Scotland; some, in the thick woods and marshes; and
whensoever they could fall upon the Normans, or upon the English who
had submitted to the Normans, they fought, despoiled, and murdered,
like the desperate outlaws that they were. Conspiracies were set on
foot for a general massacre of the Normans, like the old massacre of
the Danes. In short, the English were in a murderous mood all through
the kingdom.

King William, fearing he might lose his conquest, came back, and tried
to pacify the London people by soft words. He then set forth to repress
the country people by stern deeds. Among the towns which he besieged,
and where he killed and maimed the inhabitants without any distinction,
sparing none, young or old, armed or unarmed, were Oxford, Warwick,
Leicester, Nottingham, Derby, Lincoln, York. In all these places, and
in many others, fire and sword worked their utmost horrors, and made
the land dreadful to behold. The streams and rivers were discoloured
with blood; the sky was blackened with smoke; the fields were wastes of
ashes; the waysides were heaped up with dead. Such are the fatal
results of conquest and ambition! Although William was a harsh and
angry man, I do not suppose that he deliberately meant to work this
shocking ruin, when he invaded England. But what he had got by the
strong hand, he could only keep by the strong hand, and in so doing he
made England a great grave.

Two sons of Harold, by name Edmund and Godwin, came over from Ireland,
with some ships, against the Normans, but were defeated. This was
scarcely done, when the outlaws in the woods so harassed York, that the
Governor sent to the King for help. The King despatched a general and a
large force to occupy the town of Durham. The Bishop of that place met
the general outside the town, and warned him not to enter, as he would
be in danger there. The general cared nothing for the warning, and went
in with all his men. That night, on every hill within sight of Durham,
signal fires were seen to blaze. When the morning dawned, the English,
who had assembled in great strength, forced the gates, rushed into the
town, and slew the Normans every one. The English afterwards besought
the Danes to come and help them. The Danes came, with two hundred and
forty ships. The outlawed nobles joined them; they captured York, and
drove the Normans out of that city. Then, William bribed the Danes to
go away; and took such vengeance on the English, that all the former
fire and sword, smoke and ashes, death and ruin, were nothing compared
with it. In melancholy songs, and doleful stories, it was still sung
and told by cottage fires on winter evenings, a hundred years
afterwards, how, in those dreadful days of the Normans, there was not,
from the River Humber to the River Tyne, one inhabited village left,
nor one cultivated field—how there was nothing but a dismal ruin, where
the human creatures and the beasts lay dead together.

The outlaws had, at this time, what they called a Camp of Refuge, in
the midst of the fens of Cambridgeshire. Protected by those marshy
grounds which were difficult of approach, they lay among the reeds and
rushes, and were hidden by the mists that rose up from the watery
earth. Now, there also was, at that time, over the sea in Flanders, an
Englishman named Hereward, whose father had died in his absence, and
whose property had been given to a Norman. When he heard of this wrong
that had been done him (from such of the exiled English as chanced to
wander into that country), he longed for revenge; and joining the
outlaws in their camp of refuge, became their commander. He was so good
a soldier, that the Normans supposed him to be aided by enchantment.
William, even after he had made a road three miles in length across the
Cambridgeshire marshes, on purpose to attack this supposed enchanter,
thought it necessary to engage an old lady, who pretended to be a
sorceress, to come and do a little enchantment in the royal cause. For
this purpose she was pushed on before the troops in a wooden tower; but
Hereward very soon disposed of this unfortunate sorceress, by burning
her, tower and all. The monks of the convent of Ely near at hand,
however, who were fond of good living, and who found it very
uncomfortable to have the country blockaded and their supplies of meat
and drink cut off, showed the King a secret way of surprising the camp.
So Hereward was soon defeated. Whether he afterwards died quietly, or
whether he was killed after killing sixteen of the men who attacked him
(as some old rhymes relate that he did), I cannot say. His defeat put
an end to the Camp of Refuge; and, very soon afterwards, the King,
victorious both in Scotland and in England, quelled the last rebellious
English noble. He then surrounded himself with Norman lords, enriched
by the property of English nobles; had a great survey made of all the
land in England, which was entered as the property of its new owners,
on a roll called Doomsday Book; obliged the people to put out their
fires and candles at a certain hour every night, on the ringing of a
bell which was called The Curfew; introduced the Norman dresses and
manners; made the Normans masters everywhere, and the English,
servants; turned out the English bishops, and put Normans in their
places; and showed himself to be the Conqueror indeed.

But, even with his own Normans, he had a restless life. They were
always hungering and thirsting for the riches of the English; and the
more he gave, the more they wanted. His priests were as greedy as his
soldiers. We know of only one Norman who plainly told his master, the
King, that he had come with him to England to do his duty as a faithful
servant, and that property taken by force from other men had no charms
for him. His name was Guilbert. We should not forget his name, for it
is good to remember and to honour honest men.

Besides all these troubles, William the Conqueror was troubled by
quarrels among his sons. He had three living. Robert, called Curthose,
because of his short legs; William, called Rufus or the Red, from the
colour of his hair; and Henry, fond of learning, and called, in the
Norman language, Beauclerc, or Fine-Scholar. When Robert grew up, he
asked of his father the government of Normandy, which he had nominally
possessed, as a child, under his mother, Matilda. The King refusing to
grant it, Robert became jealous and discontented; and happening one
day, while in this temper, to be ridiculed by his brothers, who threw
water on him from a balcony as he was walking before the door, he drew
his sword, rushed up-stairs, and was only prevented by the King himself
from putting them to death. That same night, he hotly departed with
some followers from his father’s court, and endeavoured to take the
Castle of Rouen by surprise. Failing in this, he shut himself up in
another Castle in Normandy, which the King besieged, and where Robert
one day unhorsed and nearly killed him without knowing who he was. His
submission when he discovered his father, and the intercession of the
queen and others, reconciled them; but not soundly; for Robert soon
strayed abroad, and went from court to court with his complaints. He
was a gay, careless, thoughtless fellow, spending all he got on
musicians and dancers; but his mother loved him, and often, against the
King’s command, supplied him with money through a messenger named
Samson. At length the incensed King swore he would tear out Samson’s
eyes; and Samson, thinking that his only hope of safety was in becoming
a monk, became one, went on such errands no more, and kept his eyes in
his head.

All this time, from the turbulent day of his strange coronation, the
Conqueror had been struggling, you see, at any cost of cruelty and
bloodshed, to maintain what he had seized. All his reign, he struggled
still, with the same object ever before him. He was a stern, bold man,
and he succeeded in it.

He loved money, and was particular in his eating, but he had only
leisure to indulge one other passion, and that was his love of hunting.
He carried it to such a height that he ordered whole villages and towns
to be swept away to make forests for the deer. Not satisfied with
sixty-eight Royal Forests, he laid waste an immense district, to form
another in Hampshire, called the New Forest. The many thousands of
miserable peasants who saw their little houses pulled down, and
themselves and children turned into the open country without a shelter,
detested him for his merciless addition to their many sufferings; and
when, in the twenty-first year of his reign (which proved to be the
last), he went over to Rouen, England was as full of hatred against
him, as if every leaf on every tree in all his Royal Forests had been a
curse upon his head. In the New Forest, his son Richard (for he had
four sons) had been gored to death by a Stag; and the people said that
this so cruelly-made Forest would yet be fatal to others of the
Conqueror’s race.

He was engaged in a dispute with the King of France about some
territory. While he stayed at Rouen, negotiating with that King, he
kept his bed and took medicines: being advised by his physicians to do
so, on account of having grown to an unwieldy size. Word being brought
to him that the King of France made light of this, and joked about it,
he swore in a great rage that he should rue his jests. He assembled his
army, marched into the disputed territory, burnt—his old way!—the
vines, the crops, and fruit, and set the town of Mantes on fire. But,
in an evil hour; for, as he rode over the hot ruins, his horse, setting
his hoofs upon some burning embers, started, threw him forward against
the pommel of the saddle, and gave him a mortal hurt. For six weeks he
lay dying in a monastery near Rouen, and then made his will, giving
England to William, Normandy to Robert, and five thousand pounds to
Henry. And now, his violent deeds lay heavy on his mind. He ordered
money to be given to many English churches and monasteries, and—which
was much better repentance—released his prisoners of state, some of
whom had been confined in his dungeons twenty years.

It was a September morning, and the sun was rising, when the King was
awakened from slumber by the sound of a church bell. ‘What bell is
that?’ he faintly asked. They told him it was the bell of the chapel of
Saint Mary. ‘I commend my soul,’ said he, ‘to Mary!’ and died.

Think of his name, The Conqueror, and then consider how he lay in
death! The moment he was dead, his physicians, priests, and nobles, not
knowing what contest for the throne might now take place, or what might
happen in it, hastened away, each man for himself and his own property;
the mercenary servants of the court began to rob and plunder; the body
of the King, in the indecent strife, was rolled from the bed, and lay
alone, for hours, upon the ground. O Conqueror, of whom so many great
names are proud now, of whom so many great names thought nothing then,
it were better to have conquered one true heart, than England!

By-and-by, the priests came creeping in with prayers and candles; and a
good knight, named Herluin, undertook (which no one else would do) to
convey the body to Caen, in Normandy, in order that it might be buried
in St. Stephen’s church there, which the Conqueror had founded. But
fire, of which he had made such bad use in his life, seemed to follow
him of itself in death. A great conflagration broke out in the town
when the body was placed in the church; and those present running out
to extinguish the flames, it was once again left alone.

It was not even buried in peace. It was about to be let down, in its
Royal robes, into a tomb near the high altar, in presence of a great
concourse of people, when a loud voice in the crowd cried out, ‘This
ground is mine! Upon it, stood my father’s house. This King despoiled
me of both ground and house to build this church. In the great name of
God, I here forbid his body to be covered with the earth that is my
right!’ The priests and bishops present, knowing the speaker’s right,
and knowing that the King had often denied him justice, paid him down
sixty shillings for the grave. Even then, the corpse was not at rest.
The tomb was too small, and they tried to force it in. It broke, a
dreadful smell arose, the people hurried out into the air, and, for the
third time, it was left alone.

Where were the Conqueror’s three sons, that they were not at their
father’s burial? Robert was lounging among minstrels, dancers, and
gamesters, in France or Germany. Henry was carrying his five thousand
pounds safely away in a convenient chest he had got made. William the
Red was hurrying to England, to lay hands upon the Royal treasure and
the crown.', 2887)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('6cf618c2-f09c-48d8-a83d-241beebe5abe', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 11, 'Chapter IX', 'ENGLAND UNDER WILLIAM THE SECOND, CALLED RUFUS

William the Red, in breathless haste, secured the three great forts of
Dover, Pevensey, and Hastings, and made with hot speed for Winchester,
where the Royal treasure was kept. The treasurer delivering him the
keys, he found that it amounted to sixty thousand pounds in silver,
besides gold and jewels. Possessed of this wealth, he soon persuaded
the Archbishop of Canterbury to crown him, and became William the
Second, King of England.

Rufus was no sooner on the throne, than he ordered into prison again
the unhappy state captives whom his father had set free, and directed a
goldsmith to ornament his father’s tomb profusely with gold and silver.
It would have been more dutiful in him to have attended the sick
Conqueror when he was dying; but England itself, like this Red King,
who once governed it, has sometimes made expensive tombs for dead men
whom it treated shabbily when they were alive.

The King’s brother, Robert of Normandy, seeming quite content to be
only Duke of that country; and the King’s other brother, Fine-Scholar,
being quiet enough with his five thousand pounds in a chest; the King
flattered himself, we may suppose, with the hope of an easy reign. But
easy reigns were difficult to have in those days. The turbulent Bishop
Odo (who had blessed the Norman army at the Battle of Hastings, and
who, I dare say, took all the credit of the victory to himself) soon
began, in concert with some powerful Norman nobles, to trouble the Red
King.

The truth seems to be that this bishop and his friends, who had lands
in England and lands in Normandy, wished to hold both under one
Sovereign; and greatly preferred a thoughtless good-natured person,
such as Robert was, to Rufus; who, though far from being an amiable man
in any respect, was keen, and not to be imposed upon. They declared in
Robert’s favour, and retired to their castles (those castles were very
troublesome to kings) in a sullen humour. The Red King, seeing the
Normans thus falling from him, revenged himself upon them by appealing
to the English; to whom he made a variety of promises, which he never
meant to perform—in particular, promises to soften the cruelty of the
Forest Laws; and who, in return, so aided him with their valour, that
Odo was besieged in the Castle of Rochester, and forced to abandon it,
and to depart from England for ever: whereupon the other rebellious
Norman nobles were soon reduced and scattered.

Then, the Red King went over to Normandy, where the people suffered
greatly under the loose rule of Duke Robert. The King’s object was to
seize upon the Duke’s dominions. This, the Duke, of course, prepared to
resist; and miserable war between the two brothers seemed inevitable,
when the powerful nobles on both sides, who had seen so much of war,
interfered to prevent it. A treaty was made. Each of the two brothers
agreed to give up something of his claims, and that the longer-liver of
the two should inherit all the dominions of the other. When they had
come to this loving understanding, they embraced and joined their
forces against Fine-Scholar; who had bought some territory of Robert
with a part of his five thousand pounds, and was considered a dangerous
individual in consequence.

St. Michael’s Mount, in Normandy (there is another St. Michael’s Mount,
in Cornwall, wonderfully like it), was then, as it is now, a strong
place perched upon the top of a high rock, around which, when the tide
is in, the sea flows, leaving no road to the mainland. In this place,
Fine-Scholar shut himself up with his soldiers, and here he was closely
besieged by his two brothers. At one time, when he was reduced to great
distress for want of water, the generous Robert not only permitted his
men to get water, but sent Fine-Scholar wine from his own table; and,
on being remonstrated with by the Red King, said ‘What! shall we let
our own brother die of thirst? Where shall we get another, when he is
gone?’ At another time, the Red King riding alone on the shore of the
bay, looking up at the Castle, was taken by two of Fine-Scholar’s men,
one of whom was about to kill him, when he cried out, ‘Hold, knave! I
am the King of England!’ The story says that the soldier raised him
from the ground respectfully and humbly, and that the King took him
into his service. The story may or may not be true; but at any rate it
is true that Fine-Scholar could not hold out against his united
brothers, and that he abandoned Mount St. Michael, and wandered
about—as poor and forlorn as other scholars have been sometimes known
to be.

The Scotch became unquiet in the Red King’s time, and were twice
defeated—the second time, with the loss of their King, Malcolm, and his
son. The Welsh became unquiet too. Against them, Rufus was less
successful; for they fought among their native mountains, and did great
execution on the King’s troops. Robert of Normandy became unquiet too;
and, complaining that his brother the King did not faithfully perform
his part of their agreement, took up arms, and obtained assistance from
the King of France, whom Rufus, in the end, bought off with vast sums
of money. England became unquiet too. Lord Mowbray, the powerful Earl
of Northumberland, headed a great conspiracy to depose the King, and to
place upon the throne, Stephen, the Conqueror’s near relative. The plot
was discovered; all the chief conspirators were seized; some were
fined, some were put in prison, some were put to death. The Earl of
Northumberland himself was shut up in a dungeon beneath Windsor Castle,
where he died, an old man, thirty long years afterwards. The Priests in
England were more unquiet than any other class or power; for the Red
King treated them with such small ceremony that he refused to appoint
new bishops or archbishops when the old ones died, but kept all the
wealth belonging to those offices in his own hands. In return for this,
the Priests wrote his life when he was dead, and abused him well. I am
inclined to think, myself, that there was little to choose between the
Priests and the Red King; that both sides were greedy and designing;
and that they were fairly matched.

The Red King was false of heart, selfish, covetous, and mean. He had a
worthy minister in his favourite, Ralph, nicknamed—for almost every
famous person had a nickname in those rough days—Flambard, or the
Firebrand. Once, the King being ill, became penitent, and made Anselm,
a foreign priest and a good man, Archbishop of Canterbury. But he no
sooner got well again than he repented of his repentance, and persisted
in wrongfully keeping to himself some of the wealth belonging to the
archbishopric. This led to violent disputes, which were aggravated by
there being in Rome at that time two rival Popes; each of whom declared
he was the only real original infallible Pope, who couldn’t make a
mistake. At last, Anselm, knowing the Red King’s character, and not
feeling himself safe in England, asked leave to return abroad. The Red
King gladly gave it; for he knew that as soon as Anselm was gone, he
could begin to store up all the Canterbury money again, for his own
use.

By such means, and by taxing and oppressing the English people in every
possible way, the Red King became very rich. When he wanted money for
any purpose, he raised it by some means or other, and cared nothing for
the injustice he did, or the misery he caused. Having the opportunity
of buying from Robert the whole duchy of Normandy for five years, he
taxed the English people more than ever, and made the very convents
sell their plate and valuables to supply him with the means to make the
purchase. But he was as quick and eager in putting down revolt as he
was in raising money; for, a part of the Norman people objecting—very
naturally, I think—to being sold in this way, he headed an army against
them with all the speed and energy of his father. He was so impatient,
that he embarked for Normandy in a great gale of wind. And when the
sailors told him it was dangerous to go to sea in such angry weather,
he replied, ‘Hoist sail and away! Did you ever hear of a king who was
drowned?’

You will wonder how it was that even the careless Robert came to sell
his dominions. It happened thus. It had long been the custom for many
English people to make journeys to Jerusalem, which were called
pilgrimages, in order that they might pray beside the tomb of Our
Saviour there. Jerusalem belonging to the Turks, and the Turks hating
Christianity, these Christian travellers were often insulted and ill
used. The Pilgrims bore it patiently for some time, but at length a
remarkable man, of great earnestness and eloquence, called Peter the
Hermit, began to preach in various places against the Turks, and to
declare that it was the duty of good Christians to drive away those
unbelievers from the tomb of Our Saviour, and to take possession of it,
and protect it. An excitement such as the world had never known before
was created. Thousands and thousands of men of all ranks and conditions
departed for Jerusalem to make war against the Turks. The war is called
in history the first Crusade, and every Crusader wore a cross marked on
his right shoulder.

All the Crusaders were not zealous Christians. Among them were vast
numbers of the restless, idle, profligate, and adventurous spirit of
the time. Some became Crusaders for the love of change; some, in the
hope of plunder; some, because they had nothing to do at home; some,
because they did what the priests told them; some, because they liked
to see foreign countries; some, because they were fond of knocking men
about, and would as soon knock a Turk about as a Christian. Robert of
Normandy may have been influenced by all these motives; and by a kind
desire, besides, to save the Christian Pilgrims from bad treatment in
future. He wanted to raise a number of armed men, and to go to the
Crusade. He could not do so without money. He had no money; and he sold
his dominions to his brother, the Red King, for five years. With the
large sum he thus obtained, he fitted out his Crusaders gallantly, and
went away to Jerusalem in martial state. The Red King, who made money
out of everything, stayed at home, busily squeezing more money out of
Normans and English.

After three years of great hardship and suffering—from shipwreck at
sea; from travel in strange lands; from hunger, thirst, and fever, upon
the burning sands of the desert; and from the fury of the Turks—the
valiant Crusaders got possession of Our Saviour’s tomb. The Turks were
still resisting and fighting bravely, but this success increased the
general desire in Europe to join the Crusade. Another great French Duke
was proposing to sell his dominions for a term to the rich Red King,
when the Red King’s reign came to a sudden and violent end.

You have not forgotten the New Forest which the Conqueror made, and
which the miserable people whose homes he had laid waste, so hated. The
cruelty of the Forest Laws, and the torture and death they brought upon
the peasantry, increased this hatred. The poor persecuted country
people believed that the New Forest was enchanted. They said that in
thunder-storms, and on dark nights, demons appeared, moving beneath the
branches of the gloomy trees. They said that a terrible spectre had
foretold to Norman hunters that the Red King should be punished there.
And now, in the pleasant season of May, when the Red King had reigned
almost thirteen years; and a second Prince of the Conqueror’s
blood—another Richard, the son of Duke Robert—was killed by an arrow in
this dreaded Forest; the people said that the second time was not the
last, and that there was another death to come.

It was a lonely forest, accursed in the people’s hearts for the wicked
deeds that had been done to make it; and no man save the King and his
Courtiers and Huntsmen, liked to stray there. But, in reality, it was
like any other forest. In the spring, the green leaves broke out of the
buds; in the summer, flourished heartily, and made deep shades; in the
winter, shrivelled and blew down, and lay in brown heaps on the moss.
Some trees were stately, and grew high and strong; some had fallen of
themselves; some were felled by the forester’s axe; some were hollow,
and the rabbits burrowed at their roots; some few were struck by
lightning, and stood white and bare. There were hill-sides covered with
rich fern, on which the morning dew so beautifully sparkled; there were
brooks, where the deer went down to drink, or over which the whole herd
bounded, flying from the arrows of the huntsmen; there were sunny
glades, and solemn places where but little light came through the
rustling leaves. The songs of the birds in the New Forest were
pleasanter to hear than the shouts of fighting men outside; and even
when the Red King and his Court came hunting through its solitudes,
cursing loud and riding hard, with a jingling of stirrups and bridles
and knives and daggers, they did much less harm there than among the
English or Normans, and the stags died (as they lived) far easier than
the people.

Upon a day in August, the Red King, now reconciled to his brother,
Fine-Scholar, came with a great train to hunt in the New Forest.
Fine-Scholar was of the party. They were a merry party, and had lain
all night at Malwood-Keep, a hunting-lodge in the forest, where they
had made good cheer, both at supper and breakfast, and had drunk a deal
of wine. The party dispersed in various directions, as the custom of
hunters then was. The King took with him only Sir Walter Tyrrel, who
was a famous sportsman, and to whom he had given, before they mounted
horse that morning, two fine arrows.

The last time the King was ever seen alive, he was riding with Sir
Walter Tyrrel, and their dogs were hunting together.

It was almost night, when a poor charcoal-burner, passing through the
forest with his cart, came upon the solitary body of a dead man, shot
with an arrow in the breast, and still bleeding. He got it into his
cart. It was the body of the King. Shaken and tumbled, with its red
beard all whitened with lime and clotted with blood, it was driven in
the cart by the charcoal-burner next day to Winchester Cathedral, where
it was received and buried.

Sir Walter Tyrrel, who escaped to Normandy, and claimed the protection
of the King of France, swore in France that the Red King was suddenly
shot dead by an arrow from an unseen hand, while they were hunting
together; that he was fearful of being suspected as the King’s
murderer; and that he instantly set spurs to his horse, and fled to the
sea-shore. Others declared that the King and Sir Walter Tyrrel were
hunting in company, a little before sunset, standing in bushes opposite
one another, when a stag came between them. That the King drew his bow
and took aim, but the string broke. That the King then cried, ‘Shoot,
Walter, in the Devil’s name!’ That Sir Walter shot. That the arrow
glanced against a tree, was turned aside from the stag, and struck the
King from his horse, dead.

By whose hand the Red King really fell, and whether that hand
despatched the arrow to his breast by accident or by design, is only
known to God. Some think his brother may have caused him to be killed;
but the Red King had made so many enemies, both among priests and
people, that suspicion may reasonably rest upon a less unnatural
murderer. Men know no more than that he was found dead in the New
Forest, which the suffering people had regarded as a doomed ground for
his race.', 2754)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('632c5797-e069-4fe3-a27f-39f56fb5e78b', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 12, 'Chapter X (1/2)', 'ENGLAND UNDER HENRY THE FIRST, CALLED FINE-SCHOLAR

Fine-scholar, on hearing of the Red King’s death, hurried to Winchester
with as much speed as Rufus himself had made, to seize the Royal
treasure. But the keeper of the treasure who had been one of the
hunting-party in the Forest, made haste to Winchester too, and,
arriving there at about the same time, refused to yield it up. Upon
this, Fine-Scholar drew his sword, and threatened to kill the
treasurer; who might have paid for his fidelity with his life, but that
he knew longer resistance to be useless when he found the Prince
supported by a company of powerful barons, who declared they were
determined to make him King. The treasurer, therefore, gave up the
money and jewels of the Crown: and on the third day after the death of
the Red King, being a Sunday, Fine-Scholar stood before the high altar
in Westminster Abbey, and made a solemn declaration that he would
resign the Church property which his brother had seized; that he would
do no wrong to the nobles; and that he would restore to the people the
laws of Edward the Confessor, with all the improvements of William the
Conqueror. So began the reign of King Henry the First.

The people were attached to their new King, both because he had known
distresses, and because he was an Englishman by birth and not a Norman.
To strengthen this last hold upon them, the King wished to marry an
English lady; and could think of no other wife than Maud the Good, the
daughter of the King of Scotland. Although this good Princess did not
love the King, she was so affected by the representations the nobles
made to her of the great charity it would be in her to unite the Norman
and Saxon races, and prevent hatred and bloodshed between them for the
future, that she consented to become his wife. After some disputing
among the priests, who said that as she had been in a convent in her
youth, and had worn the veil of a nun, she could not lawfully be
married—against which the Princess stated that her aunt, with whom she
had lived in her youth, had indeed sometimes thrown a piece of black
stuff over her, but for no other reason than because the nun’s veil was
the only dress the conquering Normans respected in girl or woman, and
not because she had taken the vows of a nun, which she never had—she
was declared free to marry, and was made King Henry’s Queen. A good
Queen she was; beautiful, kind-hearted, and worthy of a better husband
than the King.

For he was a cunning and unscrupulous man, though firm and clever. He
cared very little for his word, and took any means to gain his ends.
All this is shown in his treatment of his brother Robert—Robert, who
had suffered him to be refreshed with water, and who had sent him the
wine from his own table, when he was shut up, with the crows flying
below him, parched with thirst, in the castle on the top of St.
Michael’s Mount, where his Red brother would have let him die.

Before the King began to deal with Robert, he removed and disgraced all
the favourites of the late King; who were for the most part base
characters, much detested by the people. Flambard, or Firebrand, whom
the late King had made Bishop of Durham, of all things in the world,
Henry imprisoned in the Tower; but Firebrand was a great joker and a
jolly companion, and made himself so popular with his guards that they
pretended to know nothing about a long rope that was sent into his
prison at the bottom of a deep flagon of wine. The guards took the
wine, and Firebrand took the rope; with which, when they were fast
asleep, he let himself down from a window in the night, and so got
cleverly aboard ship and away to Normandy.

Now Robert, when his brother Fine-Scholar came to the throne, was still
absent in the Holy Land. Henry pretended that Robert had been made
Sovereign of that country; and he had been away so long, that the
ignorant people believed it. But, behold, when Henry had been some time
King of England, Robert came home to Normandy; having leisurely
returned from Jerusalem through Italy, in which beautiful country he
had enjoyed himself very much, and had married a lady as beautiful as
itself! In Normandy, he found Firebrand waiting to urge him to assert
his claim to the English crown, and declare war against King Henry.
This, after great loss of time in feasting and dancing with his
beautiful Italian wife among his Norman friends, he at last did.

The English in general were on King Henry’s side, though many of the
Normans were on Robert’s. But the English sailors deserted the King,
and took a great part of the English fleet over to Normandy; so that
Robert came to invade this country in no foreign vessels, but in
English ships. The virtuous Anselm, however, whom Henry had invited
back from abroad, and made Archbishop of Canterbury, was steadfast in
the King’s cause; and it was so well supported that the two armies,
instead of fighting, made a peace. Poor Robert, who trusted anybody and
everybody, readily trusted his brother, the King; and agreed to go home
and receive a pension from England, on condition that all his followers
were fully pardoned. This the King very faithfully promised, but Robert
was no sooner gone than he began to punish them.

Among them was the Earl of Shrewsbury, who, on being summoned by the
King to answer to five-and-forty accusations, rode away to one of his
strong castles, shut himself up therein, called around him his tenants
and vassals, and fought for his liberty, but was defeated and banished.
Robert, with all his faults, was so true to his word, that when he
first heard of this nobleman having risen against his brother, he laid
waste the Earl of Shrewsbury’s estates in Normandy, to show the King
that he would favour no breach of their treaty. Finding, on better
information, afterwards, that the Earl’s only crime was having been his
friend, he came over to England, in his old thoughtless, warm-hearted
way, to intercede with the King, and remind him of the solemn promise
to pardon all his followers.

This confidence might have put the false King to the blush, but it did
not. Pretending to be very friendly, he so surrounded his brother with
spies and traps, that Robert, who was quite in his power, had nothing
for it but to renounce his pension and escape while he could. Getting
home to Normandy, and understanding the King better now, he naturally
allied himself with his old friend the Earl of Shrewsbury, who had
still thirty castles in that country. This was exactly what Henry
wanted. He immediately declared that Robert had broken the treaty, and
next year invaded Normandy.

He pretended that he came to deliver the Normans, at their own request,
from his brother’s misrule. There is reason to fear that his misrule
was bad enough; for his beautiful wife had died, leaving him with an
infant son, and his court was again so careless, dissipated, and
ill-regulated, that it was said he sometimes lay in bed of a day for
want of clothes to put on—his attendants having stolen all his dresses.
But he headed his army like a brave prince and a gallant soldier,
though he had the misfortune to be taken prisoner by King Henry, with
four hundred of his Knights. Among them was poor harmless Edgar
Atheling, who loved Robert well. Edgar was not important enough to be
severe with. The King afterwards gave him a small pension, which he
lived upon and died upon, in peace, among the quiet woods and fields of
England.

And Robert—poor, kind, generous, wasteful, heedless Robert, with so
many faults, and yet with virtues that might have made a better and a
happier man—what was the end of him? If the King had had the
magnanimity to say with a kind air, ‘Brother, tell me, before these
noblemen, that from this time you will be my faithful follower and
friend, and never raise your hand against me or my forces more!’ he
might have trusted Robert to the death. But the King was not a
magnanimous man. He sentenced his brother to be confined for life in
one of the Royal Castles. In the beginning of his imprisonment, he was
allowed to ride out, guarded; but he one day broke away from his guard
and galloped off. He had the evil fortune to ride into a swamp, where
his horse stuck fast and he was taken. When the King heard of it he
ordered him to be blinded, which was done by putting a red-hot metal
basin on his eyes.

And so, in darkness and in prison, many years, he thought of all his
past life, of the time he had wasted, of the treasure he had
squandered, of the opportunities he had lost, of the youth he had
thrown away, of the talents he had neglected. Sometimes, on fine autumn
mornings, he would sit and think of the old hunting parties in the free
Forest, where he had been the foremost and the gayest. Sometimes, in
the still nights, he would wake, and mourn for the many nights that had
stolen past him at the gaming-table; sometimes, would seem to hear,
upon the melancholy wind, the old songs of the minstrels; sometimes,
would dream, in his blindness, of the light and glitter of the Norman
Court. Many and many a time, he groped back, in his fancy, to
Jerusalem, where he had fought so well; or, at the head of his brave
companions, bowed his feathered helmet to the shouts of welcome
greeting him in Italy, and seemed again to walk among the sunny
vineyards, or on the shore of the blue sea, with his lovely wife. And
then, thinking of her grave, and of his fatherless boy, he would
stretch out his solitary arms and weep.

At length, one day, there lay in prison, dead, with cruel and
disfiguring scars upon his eyelids, bandaged from his jailer’s sight,
but on which the eternal Heavens looked down, a worn old man of eighty.
He had once been Robert of Normandy. Pity him!', 1757)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;
