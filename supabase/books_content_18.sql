-- ============================================================
-- NOI DUNG SACH — phan 18/20
-- Sinh tu tools/books/import_book.py, dung sua tay.
--
-- Chua: short-history-world
--
-- Chay books_schema.sql TRUOC, roi chay cac phan nay THEO THU TU.
-- An toan chay lai nhieu lan (uuid tat dinh + on conflict).
-- Cat nho vi SQL Editor cua Supabase tu choi cau lenh qua lon.
-- ============================================================

-- ===== A Short History of the World — H. G. Wells (1922) =====
-- Nguon: Project Gutenberg #35461 (public domain)

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('5f98ddea-cc62-438a-a5e3-3fc3fe47711a', '8268eabe-4b74-414e-a1f6-5a266d184560', 28, 'XXVIII The Life of Gautama Buddha', 'But now we must go back three centuries in our story to tell of a great
teacher who came near to revolutionizing the religious thought and
feeling of all Asia. This was Gautama Buddha, who taught his disciples
at Benares in India about the same time that Isaiah was prophesying
among the Jews in Babylon and Heraclitus was carrying on his
speculative enquiries into the nature of things at Ephesus. All these
men were in the world at the same time, in the sixth century
B.C.—unaware of one another.

This sixth century B.C. was indeed one of the most remarkable in all
history. Everywhere—for as we shall tell it was also the case in
China—men’s minds were displaying a new boldness. Everywhere they were
waking up out of the traditions of kingships and priests and blood
sacrifices and asking the most penetrating questions.  It is as if the
race had reached a stage of adolescence—after a childhood of twenty
thousand years.

The early history of India is still very obscure.  Somewhen perhaps
about 2000 B.C., an Aryan- speaking people came down from the
north-west into India either in one invasion or in a series of
invasions; and was able to spread its language and traditions over most
of north India.  Its peculiar variety of Aryan speech was the Sanskrit.
 They found a brunette people with a more elaborate civilization and
less vigour of will, in possession of the country of the Indus and
Ganges.  But they do not seem to have mingled with their predecessors
as freely as did the Greeks and Persians.  They remained aloof.  When
the past of India becomes dimly visible to the historian, Indian
society is already stratified into several layers, with a variable
number of sub-divisions, which do not eat together nor intermarry nor
associate freely.  And throughout history this stratification into
castes continues.  This makes the Indian population something different
from the simple, freely inter-breeding European or Mongolian
communities.  It is really a community of communities.

Siddhattha Gautama was the son of an aristocratic family which ruled a
small district on the Himalayan slopes.  He was married at nineteen to
a beautiful cousin.  He hunted and played and went about in his sunny
world of gardens and groves and irrigated rice-fields.  And it was
amidst this life that a great discontent fell upon him.  It was the
unhappiness of a fine brain that seeks employment.  He felt that the
existence he was leading was not the reality of life, but a holiday—a
holiday that had gone on too long.

The sense of disease and mortality, the insecurity and the
un-satisfactoriness of all happiness, descended upon the mind of
Gautama.  While he was in this mood he met one of those wandering
ascetics who already existed in great numbers in India.  These men
lived under severe rules, spending much time in meditation and in
religious discussion.  They were supposed to be seeking some deeper
reality in life, and a passionate desire to do likewise took possession
of Gautama.

He was meditating upon this project, says the story, when the news was
brought to him that his wife had been delivered of his first-born son.
“This is another tie to break,” said Gautama.

He returned to the village amidst the rejoicings of his fellow
clansmen.  There was a great feast and a Nautch dance to celebrate the
birth of this new tie, and in the night Gautama awoke in a great agony
of spirit, “like a man who is told that his house is on fire.”  He
resolved to leave his happy aimless life forthwith.  He went softly to
the threshold of his wife’s chamber, and saw her by the light of a
little oil lamp, sleeping sweetly, surrounded by flowers, with his
infant son in her arms.  He felt a great craving to take up the child
in one first and last embrace before he departed, but the fear of
waking his wife prevented him, and at last he turned away and went out
into the bright Indian moonshine and mounted his horse and rode off
into the world.

TIBETAN BUDDHA
TIBETAN BUDDHA
Gilt Brass Casting in India Museum, showing Gautama Buddha in the
“earth witness” attitude

_India Mus._

Very far he rode that night, and in the morning he stopped outside the
lands of his clan, and dismounted beside a sandy river.  There he cut
off his flowing locks with his sword, removed all his ornaments and
sent them and his horse and sword back to his house.  Going on he
presently met a ragged man and exchanged clothes with him, and so
having divested himself of all worldly entanglements he was free to
pursue his search after wisdom. He made his way southward to a resort
of hermits and teachers in a hilly spur of the Vindhya Mountains. 
There lived a number of wise men in a warren of caves, going into the
town for their simple supplies and imparting their knowledge by word of
mouth to such as cared to come to them.  Gautama became versed in all
the metaphysics of his age.  But his acute intelligence was
dissatisfied with the solutions offered him.

A BURMESE BUDDHA
A BURMESE BUDDHA
Marble Figure from Mandalay, eighteenth century work, now in the India
Museum

The Indian mind has always been disposed to believe that power and
knowledge may be obtained by extreme asceticism, by fasting,
sleeplessness, and self-torment, and these ideas Gautama now put to the
test.  He betook himself with five disciple companions to the jungle
and there he gave himself up to fasting and terrible penances.  His
fame spread, “like the sound of a great bell hung in the canopy of the
skies.”  But it brought him no sense of truth achieved. One day he was
walking up and down, trying to think in spite of his enfeebled state. 
Suddenly he fell unconscious.  When he recovered, the preposterousness
of these semi-magical ways to wisdom was plain to him.

THE DHAMÊKH TOWER
THE DHAMÊKH TOWER
In the Deer Park at Sarnath.  Sixth Century A.D.

_(From a Painting in the India Museum)_

He horrified his companions by demanding ordinary food and refusing to
continue his mortifications.  He had realized that whatever truth a man
may reach is reached best by a nourished brain in a healthy body.  Such
a conception was absolutely foreign to the ideas of the land and age. 
His disciples deserted him, and went off in a melancholy state to
Benares.  Gautama wandered alone.

When the mind grapples with a great and intricate problem, it makes its
advances step by step, with but little realization of the gains it has
made, until suddenly, with an effect of abrupt illumination, it
realizes its victory.  So it happened to Gautama.  He had seated
himself under a great tree by the side of a river to eat, when this
sense of clear vision came to him.  It seemed to him that he saw life
plain.  He is said to have sat all day and all night in profound
thought, and then he rose up to impart his vision to the world.

He went on to Benares and there he sought out and won back his lost
disciples to his new teaching.  In the King’s Deer Park at Benares they
built themselves huts and set up a sort of school to which came many
who were seeking after wisdom.

The starting point of his teaching was his own question as a fortunate
young man, “Why am I not completely happy?”  It was an introspective
question. It was a question very different in quality from the frank
and self-forgetful _externalized_ curiosity with which Thales and
Heraclitus were attacking the problems of the universe, or the equally
self-forgetful burthen of moral obligation that the culminating
prophets were imposing upon the Hebrew mind.  The Indian teacher did
not forget self, he concentrated upon self and sought to destroy it. 
All suffering, he taught, was due to the greedy desires of the
individual.  Until man has conquered his personal cravings his life is
trouble and his end sorrow.  There were three principal forms that the
craving for life took and they were all evil.  The first was the desire
of the appetites, greed and all forms of sensuousness, the second was
the desire for a personal and egotistic immortality, the third was the
craving for personal success, worldliness, avarice and the like.  All
these forms of desire had to be overcome to escape from the distresses
and chagrins of life.  When they were overcome, when self had vanished
altogether, then serenity of soul, Nirvana, the highest good was
attained.

This was the gist of his teaching, a very subtle and metaphysical
teaching indeed, not nearly so easy to understand as the Greek
injunction to see and know fearlessly and rightly and the Hebrew
command to fear God and accomplish righteousness.  It was a teaching
much beyond the understanding of even Gautama’s immediate disciples,
and it is no wonder that so soon as his personal influence was
withdrawn it became corrupted and coarsened.  There was a widespread
belief in India at that time that at long intervals Wisdom came to
earth and was incarnate in some chosen person who was known as the
Buddha.  Gautama’s disciples declared that he was a Buddha, the latest
of the Buddhas, though there is no evidence that he himself ever
accepted the title.  Before he was well dead, a cycle of fantastic
legends began to be woven about him.  The human heart has always
preferred a wonder story to a moral effort, and Gautama Buddha became
very wonderful.

Yet there remained a substantial gain in the world.  If Nirvana was too
high and subtle for most men’s imaginations, if the myth-making impulse
in the race was too strong for the simple facts of Gautama’s life, they
could at least grasp something of the intention of what Gautama called
the Eight-fold way, the Aryan or Noble Path in life.  In this there was
an insistence upon mental uprightness, upon right aims and speech,
right conduct and honest livelihood.  There was a quickening of the
conscience and an appeal to generous and self-forgetful ends.', 1698)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('8d987844-e023-47f8-a9a3-02d7fe4e0e2a', '8268eabe-4b74-414e-a1f6-5a266d184560', 29, 'XXIX King Asoka', 'For some generations after the death of Gautama, these high and noble
Buddhist teachings, this first plain teaching that the highest good for
man is the subjugation of self, made comparatively little headway in
the world. Then they conquered the imagination of one of the greatest
monarchs the world has ever seen.

We have already mentioned how Alexander the Great came down into India
and fought with Porus upon the Indus.  It is related by the Greek
historians that a certain Chandragupta Maurya came into Alexander’s
camp and tried to persuade him to go on to the Ganges and conquer all
India. Alexander could not do this because of the refusal of his
Macedonians to go further into what was for them an unknown world, and
later on (303 B.C.) Chandragupta was able to secure the help or various
hill tribes and realize his dream without Greek help. He built up an
empire in North India and was presently (303 B.C.) able to attack
Seleucus I in the Punjab and drive the last vestige of Greek power out
of India. His son extended this new empire. His grandson, Asoka, the
monarch of whom we now have to tell, found himself in 264 B.C. ruling
from Afghanistan to Madras.

Asoka was at first disposed to follow the example of his father and
grandfather and complete the conquest of the Indian peninsula.  He
invaded Kalinga (255 B.C.), a country on the east coast of Madras, he
was successful in his military operations and—alone among conquerors—he
was so disgusted by the cruelty and horror of war that he renounced it.
 He would have no more of it.  He adopted the peaceful doctrines of
Buddhism and declared that henceforth his conquests should be the
conquests of religion.

A LOHAN OR BUDDHIST APOSTLE (Tang Dynasty)
A LOHAN OR BUDDHIST APOSTLE (Tang Dynasty)

_(From the statue in the British Museum)_

His reign for eight-and-twenty years was one of the brightest
interludes in the troubled history of mankind.  He organized a great
digging of wells in India and the planting of trees for shade.  He
founded hospitals and public gardens and gardens for the growing of
medicinal herbs.  He created a ministry for the care of the aborigines
and subject races of India. He made provision for the education of
women.  He made vast benefactions to the Buddhist teaching orders, and
tried to stimulate them to a better and more energetic criticism of
their own accumulated literature.  For corruptions and superstitious
accretions had accumulated very speedily upon the pure and simple
teaching of the great Indian master. Missionaries went from Asoka to
Kashmir, to Persia, to Ceylon and Alexandria.

TRANSOME SHOWING THE COURT OF ASOKA
TRANSOME SHOWING THE COURT OF ASOKA

_India Mus._

ASOKA PANEL FROM BHARHUT
ASOKA PANEL FROM BHARHUT

_India Mus._

Such was Asoka, greatest of kings.  He was far in advance of his age. 
He left no prince and no organization of men to carry on his work, and
within a century of his death the great days of his reign had become a
glorious memory in a shattered and decaying India.  The priestly caste
of the Brahmins, the highest and most privileged caste in the Indian
social body, has always been opposed to the frank and open teaching of
Buddha.  Gradually they undermined the Buddhist influence in the land. 
The old monstrous gods, the innumerable cults of Hinduism, resumed
their sway.  Caste became more rigorous and complicated. For long
centuries Buddhism and Brahminism flourished side by side, and then
slowly Buddhism decayed and Brahminism in a multitude of forms replaced
it.  But beyond the confines of India and the realms of caste Buddhism
spread—until it had won China and Siam and Burma and Japan, countries
in which it is predominant to this day.

THE PILLAR OF LIONS
THE PILLAR OF LIONS
Capital of the Pillar (column lying on side) erected in Deer Park in
the time of Asoka, where Buddha preached his first sermon

_(From a print in the India Museum)_', 668)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('144d327d-d319-48e2-ac6f-63b2f8db23b8', '8268eabe-4b74-414e-a1f6-5a266d184560', 30, 'XXX Confucius and Lao Tse', 'We have still to tell of two other great men, Confucius and Lao Tse,
who lived in that wonderful century which began the adolescence of
mankind, the sixth century B.C. In this history thus far we have told
very little of the early story of China. At present that early history
is still very obscure, and we look to Chinese explorers and
archæolologists in the new China that is now arising to work out their
past as thoroughly as the European past has been worked out during the
last century. Very long ago the first primitive Chinese civilizations
arose in the great river valleys out of the primordial heliolithic
culture. They had, like Egypt and Sumeria, the general characteristics
of that culture, and they centred upon temples in which priests and
priest kings offered the seasonal blood sacrifices. The life in those
cities must have been very like the Egyptian and Sumerian life of six
or seven thousand years ago and very like the Maya life of Central
America a thousand years ago.

If there were human sacrifices they had long given way to animal
sacrifices before the dawn of history.  And a form of picture writing
was growing up long before a thousand years B.C.

And just as the primitive civilizations of Europe and western Asia were
in conflict with the nomads of the desert and the nomads of the north,
so the primitive Chinese civilizations had a great cloud of nomadic
peoples on their northern borders.  There was a number of tribes akin
in language and ways of living, who are spoken of in history in
succession as the Huns, the Mongols, the Turks and Tartars.  They
changed and divided and combined and re-combined, just as the Nordic
peoples in north Europe and central Asia changed and varied in name
rather than in nature.  These Mongolian nomads had horses earlier than
the Nordic peoples, and it may be that in the region of the Altai
Mountains they made an independent discovery of iron somewhen after
1000 B.C. And just as in the western case so ever and again these
eastern nomads would achieve a sort of political unity, and become the
conquerors and masters and revivers of this or that settled and
civilized region.

It is quite possible that the earliest civilization of China was not
Mongolian at all any more than the earliest civilization of Europe and
western Asia was Nordic or Semitic.  It is quite possible that the
earliest civilization of China was a brunette civilization and of a
piece with the earliest Egyptian, Sumerian and Dravidian civilizations,
and that when the first recorded history of China began there had
already been conquests and intermixture.  At any rate we find that by
1750 B.C. China was already a vast system of little kingdoms and city
states, all acknowledging a loose allegiance and paying more or less
regularly, more or less definite feudal dues to one great priest
emperor, the “Son of Heaven.”  The “Shang” dynasty came to an end in
1125 B.C.  A “Chow” dynasty succeeded “Shang,” and maintained China in
a relaxing unity until the days of Asoka in India and of the Ptolemies
in Egypt.  Gradually China went to pieces during that long “Chow”
period.  Hunnish peoples came down and set up principalities; local
rulers discontinued their tribute and became independent.  There was in
the sixth century B.C., says one Chinese authority, five or six
thousand practically independent states in China.  It was what the
Chinese call in their records an “Age of Confusion.”

But this Age of Confusion was compatible with much intellectual
activity and with the existence of many local centres of art and
civilized living.  When we know more of Chinese history we shall find
that China also had her Miletus and her Athens, her Pergamum and her
Macedonia.  At present we must be vague and brief about this period of
Chinese division simply because our knowledge is not sufficient for us
to frame a coherent and consecutive story.

CONFUCIUS
CONFUCIUS
Copy of stone carving in the Temple of Confucius at K’iu Fu

_(From the records of the Archæological Mission to North China
(Chavannes))_

And just as in divided Greece there were philosophers and in shattered
and captive Jewry prophets, so in disordered China there were
philosophers and teachers at this time.  In all these cases insecurity
and uncertainty seemed to have quickened the better sort of mind. 
Confucius was a man of aristocratic origin and some official importance
in a small state called Lu.  Here in a very parallel mood to the Greek
impulse he set up a sort of Academy for discovering and teaching
Wisdom.  The lawlessness and disorder of China distressed him
profoundly.  He conceived an ideal of a better government and a better
life, and travelled from state to state seeking a prince who would
carry out his legislative and educational ideas.  He never found his
prince; he found a prince, but court intrigues undermined the influence
of the teacher and finally defeated his reforming proposals.  It is
interesting to note that a century and a half later the Greek
philosopher Plato also sought a prince, and was for a time adviser to
the tyrant Dionysius who ruled Syracuse in Sicily.

Confucius died a disappointed man.  “No intelligent ruler arises to
take me as his master,” he said, “and my time has come to die.”  But
his teaching had more vitality than he imagined in his declining and
hopeless years, and it became a great formative influence with the
Chinese people.  It became one of what the Chinese call the Three
Teachings, the other two being those of Buddha and of Lao Tse.

The gist of the teaching of Confucius was the way of the noble or
aristocratic man.  He was concerned with personal conduct as much as
Gautama was concerned with the peace of self-forgetfulness and the
Greek with external knowledge and the Jew with righteousness.  He was
the most public-minded of all great teachers.  He was supremely
concerned by the confusion and miseries of the world, and he wanted to
make men noble in order to bring about a noble world.  He sought to
regulate conduct to an extraordinary extent; to provide sound rules for
every occasion in life.  A polite, public- spirited gentleman, rather
sternly self-disciplined, was the ideal he found already developing in
the northern Chinese world and one to which he gave a permanent form.

THE GREAT WALL OF CHINA
THE GREAT WALL OF CHINA
As it crosses the mountains in Manchuria

_Photo:  Underwood & Underwood_

The teaching of Lao Tse, who was for a long time in charge of the
imperial library of the Chow dynasty, was much more mystical and vague
and elusive than that of Confucius.  He seems to have preached a
stoical indifference to the pleasures and powers of the world and a
return to an imaginary simple life of the past.  He left writings very
contracted in style and very obscure.  He wrote in riddles.  After his
death his teachings, like the teachings of Gautama Buddha, were
corrupted and overlaid by legends and had the most complex and
extraordinary observances and superstitious ideas grafted upon them. 
In China just as in India primordial ideas of magic and monstrous
legends out of the childish past of our race struggled against the new
thinking in the world and succeeded in plastering it over with
grotesque, irrational and antiquated observances.  Both Buddhism and
Taoism (which ascribes itself largely to Lao Tse) as one finds them in
China now, are religions of monk, temple, priest and offering of a type
as ancient in form, if not in thought, as the sacrificial religions of
ancient Sumeria and Egypt.  But the teaching of Confucius was not so
overlaid because it was limited and plain and straightforward and lent
itself to no such distortions.

EARLY CHINESE BRONZE BELL
EARLY CHINESE BRONZE BELL
Inscribed in archaic characters: “made for use by the elder of Hing
village in Ting district;” latter half of the Chou Dynasty, Sixth
Century B.C.

_(In the Victoria and Albert Museum)_

North China, the China of the Hwang-ho River, became Confucian in
thought and spirit; south China, Yang-tse-Kiang China, became Taoist. 
Since those days a conflict has always been traceable in Chinese
affairs between these two spirits, the spirit of the north and the
spirit of the south, between (in latter times) Pekin and Nankin,
between the official- minded, upright and conservative north, and the
sceptical, artistic, lax and experimental south.

The divisions of China of the Age of Confusion reached their worst
stage in the sixth century B.C. The Chow dynasty was so enfeebled and
so discredited that Lao Tse left the unhappy court and retired into
private life.

Three nominally subordinate powers dominated the situation in those
days, Ts’i and Ts’in, both northern powers, and Ch’u, which was an
aggressive military power in the Yangtse valley.  At last Ts’i and
Ts’in formed an alliance, subdued Ch’u and imposed a general treaty of
disarmament and peace in China.  The power of Ts’in became predominant.
 Finally about the time of Asoka in India the Ts’in monarch seized upon
the sacrificial vessels of the Chow emperor and took over his
sacrificial duties. His son, Shi-Hwang-ti (king in 246 B.C., emperor in
220 B.C.), is called in the Chinese Chronicles “the First Universal
Emperor.”

More fortunate than Alexander, Shi-Hwang-ti reigned for thirty-six
years as king and emperor.  His energetic reign marks the beginning of
a new era of unity and prosperity for the Chinese people.  He fought
vigorously against the Hunnish invaders from the northern deserts, and
he began that immense work, the Great Wall of China, to set a limit to
their incursions.', 1620)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('e5f05e90-83a6-4a10-a08a-ba1a36b1b6a6', '8268eabe-4b74-414e-a1f6-5a266d184560', 31, 'XXXI Rome Comes Into History', 'The reader will note a general similarity in the history of all these
civilizations in spite of the effectual separation caused by the great
barriers of the Indian north-west frontier and of the mountain masses
of Central Asia and further India. First for thousands of years the
heliolithic culture spread over all the warm and fertile river valleys
of the old world and developed a temple system and priest rulers about
its sacrificial traditions. Apparently its first makers were always
those brunette peoples we have spoken of as the central race of
mankind. Then the nomads came in from the regions of seasonal grass and
seasonal migrations and superposed their own characteristics and often
their own language on the primitive civilization. They subjugated and
stimulated it, and were stimulated to fresh developments and made it
here one thing and here another. In Mesopotamia it was the Elamite and
then the Semite, and at last the Nordic Medes and Persians and the
Greeks who supplied the ferment; over the region of the Ægean peoples
it was the Greeks; in India it was the Aryan-speakers; in Egypt there
was a thinner infusion of conquerors into a more intensely saturated
priestly civilization; in China, the Hun conquered and was absorbed and
was followed by fresh Huns. China was Mongolized just as Greece and
North India were Aryanized and Mesopotamia Semitized and Aryanized.
Everywhere the nomads destroyed much, but everywhere they brought in a
new spirit of free enquiry and moral innovation. They questioned the
beliefs of immemorial ages. They let daylight into the temples. They
set up kings who were neither priests nor gods but mere leaders among
their captains and companions.

THE DYING GAUL
THE DYING GAUL
The statue in the National Museum, Rome, depicting a Gaul stabbing
himself, after killing his wife, in the presence of his enemies

_Photo: Anderson_

In the centuries following the sixth century B.C. we find everywhere a
great breaking down of ancient traditions and a new spirit of moral and
intellectual enquiry awake, a spirit never more to be altogether
stilled in the great progressive movement of mankind.  We find reading
and writing becoming common and accessible accomplishments among the
ruling and prosperous minority; they were no longer the jealously
guarded secret of the priests.  Travel is increasing and transport
growing easier by reason of horses and roads.  A new and easy device to
facilitate trade has been found in coined money.

Let us now transfer our attention back from China in the extreme east
of the old world to the western half of the Mediterranean.  Here we
have to note the appearance of a city which was destined to play at
last a very great part indeed in human affairs, Rome.

Hitherto we have told very little about Italy in our story. It was
before 1000 B.C. a land of mountain and forest and thinly populated. 
Aryan-speaking tribes had pressed down this peninsula and formed little
towns and cities, and the southern extremity was studded with Greek
settlements.  The noble ruins of Pæstum preserve for us to this day
something of the dignity and splendour of these early Greek
establishments.  A non-Aryan people, probably akin to the Ægean
peoples, the Etruscans, had established themselves in the central part
of the peninsula. They had reversed the usual process by subjugating
various Aryan tribes.  Rome, when it comes into the light of history,
is a little trading city at a ford on the Tiber, with a Latin-speaking
population ruled over by Etruscan kings.  The old chronologies gave 753
B.C. as the date of the founding of Rome, half a century later than the
founding of the great Phœnician city of Carthage and twenty-three years
after the first Olympiad.  Etruscan tombs of a much earlier date than
753 B.C. have, however, been excavated in the Roman Forum.

In that red-letter century, the sixth century B.C., the Etruscan kings
were expelled (510 B.C.) and Rome became an aristocratic republic with
a lordly class of “patrician” families dominating a commonalty of
“plebeians.” Except that it spoke Latin it was not unlike many
aristocratic Greek republics.

For some centuries the internal history of Rome was the story of a long
and obstinate struggle for freedom and a share in the government on the
part of the plebeians.  It would not be difficult to find Greek
parallels to this conflict, which the Greeks would have called a
conflict of aristocracy with democracy.  In the end the plebeians broke
down most of the exclusive barriers of the old families and established
a working equality with them.  They destroyed the old exclusiveness,
and made it possible and acceptable for Rome to extend her citizenship
by the inclusion of more and more “outsiders.”  For while she still
struggled at home, she was extending her power abroad.

REMAINS OF THE ANCIENT ROMAN CISTERNS AT CARTHAGE
REMAINS OF THE ANCIENT ROMAN CISTERNS AT CARTHAGE

_Photo:  Underwood & Underwood_

The extension of Roman power began in the fifth century B.C.  Until
that time they had waged war, and generally unsuccessful war, with the
Etruscans.  There was an Etruscan fort, Veii, only a few miles from
Rome which the Romans had never been able to capture.  In 474 B.C.,
however, a great misfortune came to the Etruscans.  Their fleet was
destroyed by the Greeks of Syracuse in Sicily.  At the same time a wave
of Nordic invaders came down upon them from the north, the Gauls.
Caught between Roman and Gaul, the Etruscans fell—and disappear from
history.  Veii was captured by the Romans, The Gauls came through to
Rome and sacked the city (390 B.C.A.D.) but could not capture the
Capitol. An attempted night surprise was betrayed by the cackling of
some geese, and finally the invaders were bought off and retired to the
north of Italy again.

The Gaulish raid seems to have invigorated rather than weakened Rome. 
The Romans conquered and assimilated the Etruscans, and extended their
power over all central Italy from the Arno to Naples.  To this they had
reached within a few years of 300 B.C.  Their conquests in Italy were
going on simultaneously with the growth of Philip’s power in Macedonia
and Greece, and the tremendous raid of Alexander to Egypt and the
Indus.  The Romans had become notable people in the civilized world to
the east of them by the break-up of Alexander’s empire.

To the north of the Roman power were the Gauls; to the south of them
were the Greek settlements of Magna Græcia, that is to say of Sicily
and of the toe and heel of Italy.  The Gauls were a hardy, warlike
people and the Romans held that boundary by a line of forts and
fortified settlements.  The Greek cities in the south headed by
Tarentum (now Taranto) and by Syracuse in Sicily, did not so much
threaten as fear the Romans.  They looked about for some help against
these new conquerors.

We have already told how the empire of Alexander fell to pieces and was
divided among his generals and companions. Among these adventurers was
a kinsman of Alexander’s named Pyrrhus, who established himself in
Epirus, which is across the Adriatic Sea over against the heel of
Italy.  It was his ambition to play the part of Philip of Macedonia to
Magna Græcia, and to become protector and master-general of Tarentum,
Syracuse and the rest of that part of the world. He had what was then
it very efficient modern army; he had an infantry phalanx, cavalry from
Thessaly—which was now quite as good as the original Macedonian
cavalry—and twenty fighting elephants; he invaded Italy and routed the
Romans in two considerable battles, Heraclea (280 B.C.) and Ausculum
(279 B.C.), and having driven them north, he turned his attention to
the subjugation of Sicily.

But this brought against him a more formidable enemy than were the
Romans at that time, the Phœnician trading city of Carthage, which was
probably then the greatest city in the world.  Sicily was too near
Carthage for a new Alexander to be welcome there, and Carthage was
mindful of the fate that had befallen her mother city Tyre half a
century before.  So she sent a fleet to encourage or compel Rome to
continue the struggle, and she cut the overseas communications of
Pyrrhus. Pyrrhus found himself freshly assailed by the Romans, and
suffered a disastrous repulse in an attack he had made upon their camp
at Beneventum between Naples and Rome.

And suddenly came news that recalled him to Epirus.  The Gauls were
raiding south.  But this time they were not raiding down into Italy;
the Roman frontier, fortified and guarded, had become too formidable
for them.  They were raiding down through Illyria (which is now Serbia
and Albania) to Macedonia and Epirus.  Repulsed by the Romans,
endangered at sea by the Carthaginians, and threatened at home by the
Gauls, Pyrrhus abandoned his dream of conquest and went home (275
B.C.), and the power of Rome was extended to the Straits of Messina.

On the Sicilian side of the Straits was the Greek city of Messina, and
this presently fell into the hands of a gang of pirates.  The
Carthaginians, who were already practically overlords of Sicily and
allies of Syracuse, suppressed these pirates (270 B.C.) and put in a
Carthaginian garrison there.  The pirates appealed to Rome and Rome
listened to their complaint.  And so across the Straits of Messina the
great trading power of Carthage and this new conquering people, the
Romans, found themselves in antagonism, face to face.', 1590)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('c34646d6-5b08-41e8-a5f4-94ab042d495d', '8268eabe-4b74-414e-a1f6-5a266d184560', 32, 'XXXII Rome and Carthage', 'It was in 264 B.C. that the great struggle between Rome and Carthage,
the Punic Wars, began. In that year Asoka was beginning his reign in
Behar and Shi- Hwang-ti was a little child, the Museum in Alexandria
was still doing good scientific work, and the barbaric Gauls were now
in Asia Minor and exacting a tribute from Pergamum. The different
regions of the world were still separated by insurmountable distances,
and probably the rest of mankind heard only vague and remote rumours of
the mortal fight that went on for a century and a half in Spain, Italy,
North Africa and the western Mediterranean, between the last stronghold
of Semitic power and Rome, this newcomer among Aryan-speaking peoples.

That war has left its traces upon issues that still stir the world. 
Rome triumphed over Carthage, but the rivalry of Aryan and Semite was
to merge itself later on in the conflict of Gentile and Jew.  Our
history now is coming to events whose consequences and distorted
traditions still maintain a lingering and expiring vitality in, and
exercise a complicating and confusing influence upon, the conflicts and
controversies of to-day.

The First Punic War began in 264 B.C. about the pirates of Messina.  It
developed into a struggle for the possession of all Sicily except the
dominions of the Greek king of Syracuse.  The advantage of the sea was
at first with the Carthaginians.  They had great fighting ships of what
was hitherto an unheard-of size, quinqueremes, galleys with five banks
of oars and a huge ram.  At the battle of Salamis, two centuries
before, the leading battleships had only been triremes with three
banks.  But the Romans, with extraordinary energy and in spite of the
fact that they had little naval experience, set themselves to outbuild
the Carthaginians.  They manned the new navy they created chiefly with
Greek seamen, and they invented grappling and boarding to make up for
the superior seamanship of the enemy. When the Carthaginian came up to
ram or shear the oars of the Roman, huge grappling irons seized him and
the Roman soldiers swarmed aboard him.  At Mylæ (260 B.C.) and at
Ecnomus (256 B.C.) the Carthaginians were disastrously beaten. They
repulsed a Roman landing near Carthage but were badly beaten at
Palermo, losing one hundred and four elephants there—to grace such a
triumphal procession through the Forum as Rome had never seen before. 
But after that came two Roman defeats and then a Roman recovery.  The
last naval forces of Carthage were defeated by it last Roman effort at
the battle of the Ægatian Isles (241 B.C.) and Carthage sued for peace.
 All Sicily except the dominions of Hiero, king of Syracuse, was ceded
to the Romans.

HANNIBAL
HANNIBAL

Bust in the National Museum at Naples

_Photo:  Mansell_

For twenty-two years Rome and Carthage kept the peace.  Both had
trouble enough at home.  In Italy the Gauls came south again,
threatened Rome—_which in a state of panic offered human sacrifices to
the Gods!_—and were routed at Telamon.  Rome pushed forward to the
Alps, and even extended her dominions down the Adriatic coast to
Illyria. Carthage suffered from domestic insurrections and from revolts
in Corsica and Sardinia, and displayed far less recuperative power. 
Finally, an act of intolerable aggression, Rome seized and annexed the
two revolting islands.

Spain at that time was Carthaginian as far north as the river Ebro.  To
that boundary the Romans restricted them.  Any crossing of the Ebro by
the Carthaginians was to be considered an act of war against the
Romans.  At last in 218 B.C. the Carthaginians, provoked by new Roman
aggressions, did cross this river under a young general named Hannibal,
one of the most brilliant commanders in the whole of history.  He
marched his army from Spain over the Alps into Italy, raised the Gauls
against the Romans, and carried on the Second Punic War in Italy itself
for fifteen years.  He inflicted tremendous defeats upon the Romans at
Lake Trasimere and at Cannæ, and throughout all his Italian campaigns
no Roman army stood against him and escaped disaster.  But a Roman army
had landed at Marseilles and cut his communications with Spain; he had
no siege train, and he could never capture Rome.  Finally the
Carthaginians, threatened by the revolt of the Numidians at home, were
forced back upon the defence of their own city in Africa, a Roman army
crossed into Africa, and Hannibal experienced his first defeat under
its walls at the battle of Zama (202 B.C. at the hands of Scipio
Africanus the Elder.  The battle of Zama ended this Second Punic War.
Carthage capitulated; she surrendered Spain and her war fleet; she paid
an enormous indemnity and agreed to give up Hannibal to the vengeance
of the Romans.  But Hannibal escaped and fled to Asia where later,
being in danger of falling into the hands of his relentless enemies, he
took poison and died.

For fifty-six years Rome and the shorn city of Carthage were at peace. 
And meanwhile Rome spread her empire over confused and divided Greece,
invaded Asia Minor, and defeated Antiochus III, the Seleucid monarch,
at Magnesia in Lydia. She made Egypt, still under the Ptolemies, and
Pergamum and most of the small states of Asia Minor into “Allies,” or,
as we should call them now, “protected states.”

Meanwhile Carthage, subjugated and enfeebled, had been slowly regaining
something of her former prosperity.  Her recovery revived the hate and
suspicion of the Romans.  She was attacked upon the most shallow and
artificial of quarrels (149 B.C.), she made an obstinate and bitter
resistance, stood a long siege and was stormed (146 B.C.). The street
fighting, or massacre, lasted six days; it was extraordinarily bloody,
and when the citadel capitulated only about fifty thousand of the
Carthaginian population remained alive out of a quarter of a million. 
They were sold into slavery, and the city was burnt and elaborately
destroyed.  The blackened ruins were ploughed and sown as a sort of
ceremonial effacement.

Map: The Extent of the Roman Power & its Alliances about 150 B.C.

So ended the Third Punic War.  Of all the Semitic states and cities
that had flourished in the world five centuries before only one little
country remained free under native rulers. This was Judea, which had
liberated itself from the Seleucids and was under the rule of the
native Maccabean princes. By this time it had its Bible almost
complete, and was developing the distinctive traditions of the Jewish
world as we know it now.  It was natural that the Carthaginians,
Phoenicians and kindred peoples dispersed about the world should find a
common link in their practically identical language and in this
literature of hope and courage.  To a large extent they were still the
traders and bankers of the world.  The Semitic world had been submerged
rather than replaced.

Jerusalem, which has always been rather the symbol than the centre of
Judaism, was taken by the Romans in 65 B.C.; and after various
vicissitudes of quasi- independence and revolt was besieged by them in
70 A.D. and captured after a stubborn struggle. The Temple was
destroyed.  A later rebellion in 132 A.D. completed its destruction,
and the Jerusalem we know to-day was rebuilt later under Roman
auspices.  A temple to the Roman god, Jupiter Capitolinus, stood in the
place of the Temple, and Jews were forbidden to inhabit the city.', 1237)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('fa970d68-a267-4f8e-ab67-e745d9ec8d6e', '8268eabe-4b74-414e-a1f6-5a266d184560', 33, 'XXXIII The Growth of the Roman Empire', 'Now this new Roman power which arose to dominate the western world in
the second and first centuries B.C. was in several respects a different
thing from any of the great empires that had hitherto prevailed in the
civilized world. It was not at first a monarchy, and it was not the
creation of any one great conqueror. It was not indeed the first of
republican empires; Athens had dominated a group of Allies and
dependents in the time of Pericles, and Carthage when she entered upon
her fatal struggle with Rome was mistress of Sardinia and Corsica,
Morocco, Algiers, Tunis, and most of Spain and Sicily. But it was the
first republican empire that escaped extinction and went on to fresh
developments.

The centre of this new system lay far to the west of the more ancient
centres of empire, which had hitherto been the river valleys of
Mesopotamia and Egypt.  This westward position enabled Rome to bring in
to civilization quite fresh regions and peoples. The Roman power
extended to Morocco and Spain, and was presently able to thrust
north-westward over what is now France and Belgium to Britain and
north-eastward into Hungary and South Russia.  But on the other hand it
was never able to maintain itself in Central Asia or Persia because
they were too far from its administrative centres.  It included
therefore great masses of fresh Nordic Aryan- speaking peoples, it
presently incorporated nearly all the Greek people in the world, and
its population was less strongly Hamitic and Semitic than that of any
preceding empire.

For some centuries this Roman Empire did not fall into the grooves of
precedent that had so speedily swallowed up Persian and Greek, and all
that time it developed.  The rulers of the Medes and Persians became
entirely Babylonized in a generation or so; they took over the tiara of
the king of kings and the temples and priesthoods of his gods;
Alexander and his successors followed in the same easy path of
assimilation; the Seleucid monarchs had much the same court and
administrative methods as Nebuchadnezzar; the Ptolemies became Pharaohs
and altogether Egyptian.  They were assimilated just as before them the
Semitic conquerors of the Sumerians had been assimilated.  But the
Romans ruled in their own city, and for some centuries kept to the laws
of their own nature.  The only people who exercised any great mental
influence upon them before the second or third century A.D. were the
kindred and similar Greeks.  So that the Roman Empire was essentially a
first attempt to rule a great dominion upon mainly Aryan lines.  It was
so far a new pattern in history, it was an expanded Aryan republic. 
The old pattern of a personal conqueror ruling over a capital city that
had grown up round the temple of a harvest god did not apply to it. 
The Romans had gods and temples, but like the gods of the Greeks their
gods were quasi-human immortals, divine patricians.  The Romans also
had blood sacrifices and even made human ones in times of stress,
things they may have learnt to do from their dusky Etruscan teachers;
but until Rome was long past its zenith neither priest nor temple
played a large part in Roman history.

The Roman Empire was a growth, an unplanned novel growth; the Roman
people found themselves engaged almost unawares in a vast
administrative experiment.  It cannot be called a successful
experiment.  In the end their empire collapsed altogether.  And it
changed enormously in form and method from century to century.  It
changed more in a hundred years than Bengal or Mesopotamia or Egypt
changed in a thousand. It was always changing.  It never attained to
any fixity.

In a sense the experiment failed.  In a sense the experiment remains
unfinished, and Europe and America to-day are still working out the
riddles of world-wide statescraft first confronted by the Roman people.

It is well for the student of history to bear in mind the very great
changes not only in political but in social and moral matters that went
on throughout the period of Roman dominion.  There is much too strong a
tendency in people’s minds to think of the Roman rule as something
finished and stable, firm, rounded, noble and decisive.  Macaulay’s
_Lays of Ancient Rome_, S.P.Q.R. the elder Cato, the Scipios, Julius
Cæsar, Diocletian, Constantine the Great, triumphs, orations,
gladiatorial combats and Christian martyrs are all mixed up together in
a picture of something high and cruel and dignified.  The items of that
picture have to be disentangled.  They are collected at different
points from a process of change profounder than that which separates
the London of William the Conqueror from the London of to-day.

We may very conveniently divide the expansion of Rome into four stages.
 The first stage began after the sack of Rome by the Goths in 390 B.C.
and went on until the end of the First Punic War (240 B.C,).  We may
call this stage the stage of the Assimilative Republic.  It was perhaps
the finest, most characteristic stage in Roman history.  The age-long
dissensions of patrician and plebeian were drawing to it close, the
Etruscan threat had come to an end, no one was very rich yet nor very
poor, and most men were public-spirited.  It was a republic like the
republic of the South African Boers before 1900 or like the northern
states of the American union between 1800 and 1850; a free- farmers
republic.  At the outset of this stage Rome was a little state scarcely
twenty miles square.  She fought the sturdy but kindred states about
her, and sought not their destruction but coalescence.  Her centuries
of civil dissension had trained her people in compromise and
concessions.  Some of the defeated cities became altogether Roman with
a voting share in the government, some became self-governing with the
right to trade and marry in Rome; garrisons full of citizens were set
up at strategic points and colonies of varied privileges founded among
the freshly conquered people.  Great roads were made.  The rapid
Latinization of all Italy was the inevitable consequence of such a
policy.  In 89 B.C. all the free inhabitants of Italy became citizens
of the city of Rome.  Formally the whole Roman Empire became at last an
extended city.  In 212 A.D. every free man in the entire extent of the
empire was given citizenship; the right, if he could get there, to vote
in the town meeting in Rome.

This extension of citizenship to tractable cities and to whole
countries was the distinctive device of Roman expansion.  It reversed
the old process of conquest and assimilation altogether.  By the Roman
method the conquerors assimilated the conquered.

THE FORUM AT ROME AS IT IS TO-DAY
THE FORUM AT ROME AS IT IS TO-DAY

But after the First Punic War and the annexation of Sicily, though the
old process of assimilation still went on, another process arose by its
side.  Sicily for instance was treated as a conquered prey.  It was
declared an “estate” of the Roman people.  Its rich soil and
industrious population was exploited to make Rome rich.  The patricians
and the more influential among the plebeians secured the major share of
that wealth.  And the war also brought in a large supply of slaves. 
Before the First Punic War the population of the republic had been
largely a population of citizen farmers.  Military service was their
privilege and liability.  While they were on active service their farms
fell into debt and a new large-scale slave agriculture grew up; when
they returned they found their produce in competition with slave-grown
produce from Sicily and from the new estates at home.  Times had
changed.  The republic had altered its character.  Not only was Sicily
in the hands of Rome, the common man was in the hands of the rich
creditor and the rich competitor.  Rome had entered upon its second
stage, the Republic of Adventurous Rich Men.

For two hundred years the Roman soldier farmers had struggled for
freedom and a share in the government of their state; for a hundred
years they had enjoyed their privileges.  The First Punic War wasted
them and robbed them of all they had won.

RELICS OF ROMAN RULE
RELICS OF ROMAN RULE

Ruins of Coliseum in Tunis

_Photo:  Jacques Boyer_

The value of their electoral privileges had also evaporated. The
governing bodies of the Roman republic were two in number.  The first
and more important was the Senate.  This was a body originally of
patricians and then of prominent men of all sorts, who were summoned to
it first by certain powerful officials, the consuls and censors.  Like
the British House of Lords it became a gathering of great landowners,
prominent politicians, big business men and the like. It was much more
like the British House of Lords than it was like the American Senate. 
For three centuries, from the Punic Wars onward, it was the centre of
Roman political thought and purpose.  The second body was the Popular
Assembly.  This was supposed to be an assembly of _all_ the citizens of
Rome.  When Rome was a little state twenty miles square this was a
possible gathering.  When the citizenship of Rome had spread beyond the
confines in Italy, it was an altogether impossible one.  Its meetings,
proclaimed by horn-blowing from the Capitol and the city walls, became
more and more a gathering of political hacks and city riff-raff.  In
the fourth century B.C. the Popular Assembly was a considerable check
upon the Senate, a competent representation of the claims and rights of
the common man.  By the end of the Punic Wars it was an impotent relic
of a vanquished popular control.  No effectual legal check remained
upon the big men.

THE GREAT ROMAN ARCH AT CTESIPHON NEAR BAGDAD
THE GREAT ROMAN ARCH AT CTESIPHON NEAR BAGDAD

Nothing of the nature of representative government was ever introduced
into the Roman republic.  No one thought of electing delegates to
represent the will of the citizens. This is a very important point for
the student to grasp.  The Popular Assembly never became the equivalent
of the American House of Representatives or the British House of
Commons.  In theory it was all the citizens; in practice it ceased to
be anything at all worth consideration.

The common citizen of the Roman Empire was therefore in a very poor
case after the Second Punic War; he was impoverished, he had often lost
his farm, he was ousted from profitable production by slaves, and he
had no political power left to him to remedy these things.  The only
methods of popular expression left to a people without any form of
political expression are the strike and the revolt.  The story of the
second and first centuries B.C., so far as internal politics go, is a
story of futile revolutionary upheaval.  The scale of this history will
not permit us to tell of the intricate struggles of that time, of the
attempts to break up estates and restore the land to the free farmer,
of proposals to abolish debts in whole or in part.  There was revolt
and civil war.  In 73 B.C., the distresses of Italy were enhanced by a
great insurrection, of the slaves under Spartacus.  The slaves of Italy
revolted with some effect, for among them were the trained fighters of
the gladiatorial shows.  For two years Spartacus held out in the crater
of Vesuvius, which seemed at that time to be an extinct volcano. This
insurrection was defeated at last and suppressed with frantic cruelty. 
Six thousand captured Spartacists were crucified along the Appian Way,
the great highway that runs southward out of Rome (71 B.C.).

The common man never made head against the forces that were subjugating
and degrading him.  But the big rich men who were overcoming him were
even in his defeat preparing a new power in the Roman world over
themselves and him, the power of the army.

Before the Second Punic War the army of Rome was a levy of free
farmers, who, according to their quality, rode or marched afoot to
battle.  This was a very good force for wars close at hand, but not the
sort of army that will go abroad and bear long campaigns with patience.
 And moreover as the slaves multiplied and the estates grew, the supply
of free- spirited fighting farmers declined.  It was a popular leader
named Marius who introduced a new factor.  North Africa after the
overthrow of the Carthaginian civilization had become a semi-barbaric
kingdom, the kingdom of Numidia.  The Roman power fell into conflict
with Jugurtha, king of this state, and experienced enormous
difficulties in subduing him. Marius was made consul, in a phase of
public indignation, to end this discreditable war.  This he did by
raising _paid troops_ and drilling them hard.  Jugurtha was brought in
chains to Rome (106 B.C.) and Marius, when his time of office had
expired, held on to his consulship illegally with his newly created
legions.  There was no power in Rome to restrain him.

With Marius began the third phase in the development of the Roman
power, the Republic of the Military Commanders.  For now began a period
in which the leaders of the paid legions fought for the mastery of the
Roman world.  Against Marius was pitted the aristocratic Sulla who had
served under him in Africa.  Each in turn made a great massacre of his
political opponents.  Men were proscribed and executed by the thousand,
and their estates were sold.  After the bloody rivalry of these two and
the horror of the revolt of Spartacus, came a phase in which Lucullus
and Pompey the Great and Crassus and Julius Cæsar were the masters of
armies and dominated affairs.  It was Crassus who defeated Spartacus. 
Lucullus conquered Asia Minor and penetrated to Armenia, and retired
with great wealth into private life.  Crassus thrusting further invaded
Persia and was defeated and slain by the Parthians.  After a long
rivalry Pompey was defeated by Julius Cæsar (48 B.C.) and murdered in
Egypt, leaving Julius Cæsar sole master of the Roman world.

The figure of Julius Cæsar is one that has stirred the human
imagination out of all proportion to its merit or true importance.  He
has become a legend and a symbol.  For us he is chiefly important as
marking the transition from the phase of military adventurers to the
beginning of the fourth stage in Roman expansion, the Early Empire. 
For in spite of the profoundest economic and political convulsions, in
spite of civil war and social degeneration, throughout all this time
the boundaries of the Roman state crept outward and continued to creep
outward to their maximum about 100 A.D.  There had been something like
an ebb during the doubtful phases of the Second Punic War, and again a
manifest loss of vigour before the reconstruction of the army by
Marius. The revolt of Spartacus marked a third phase.  Julius Cæsar
made his reputation as a military leader in Gaul, which is now France
and Belgium.  (The chief tribes inhabiting this country belonged to the
same Celtic people as the Gauls who had occupied north Italy for a
time, and who had afterwards raided into Asia Minor and settled down as
the Galatians.)  Cæsar drove back a German invasion of Gaul and added
all that country to the empire, and he twice crossed the Straits of
Dover into Britain (55 and 54 B.C.), where however he made no permanent
conquest.  Meanwhile Pompey the Great was consolidating Roman conquests
that reached in the east to the Caspian Sea.

THE COLUMN OF TRAJAN AT ROME
THE COLUMN OF TRAJAN AT ROME

Representing his conquests at Dacia and elsewhere

At this time, the middle of the first century B.C., the Roman Senate
was still the nominal centre of the Roman government, appointing
consuls and other officials, granting powers and the like; and a number
of politicians, among whom Cicero was an outstanding figure, were
struggling to preserve the great traditions of republican Rome and to
maintain respect for its laws.  But the spirit of citizenship had gone
from Italy with the wasting away of the free farmers; it was a land now
of slaves and impoverished men with neither the understanding nor the
desire for freedom.  There was nothing whatever behind these republican
leaders in the Senate, while behind the great adventurers they feared
and desired to control were the legions.  Over the heads of the Senate
Crassus and Pompey and Cæsar divided the rule of the Empire between
them (The First Triumvirate).  When presently Crassus was killed at
distant Carrhæ by the Parthians, Pompey and Cæsar fell out. Pompey took
up the republican side, and laws were passed to bring Cæsar to trial
for his breaches of law and his disobedience to the decrees of the
Senate.

It was illegal for a general to bring his troops out of the boundary of
his command, and the boundary between Cæsar’s command and Italy was the
Rubicon.  In 49 B.C. he crossed the Rubicon, saying “The die is cast”
and marched upon Pompey and Rome.

It had been the custom in Rome in the past, in periods of military
extremity, to elect a “dictator” with practically unlimited powers to
rule through the crisis. After his overthrow of Pompey, Cæsar was made
dictator first for ten years and then (in 45 B.C.) for life.  In effect
he was made monarch of the empire for life.  There was talk of a king,
a word abhorrent to Rome since the expulsion of the Etruscans five
centuries before.  Cæsar refused to be king, but adopted throne and
sceptre.  After his defeat of Pompey, Cæsar had gone on into Egypt and
had made love to Cleopatra, the last of the Ptolemies, the goddess
queen of Egypt.  She seems to have turned his head very completely.  He
had brought back to Rome the Egyptian idea of a god-king.  His statue
was set up in a temple with an inscription “To the Unconquerable God.” 
The expiring republicanism of Rome flared up in a last protest, and
Cæsar was stabbed to death in the Senate at the foot of the statue of
his murdered rival, Pompey the Great.

Thirteen years more of this conflict of ambitious personalities
followed.  There was a second Triumvirate of Lepidus, Mark Antony and
Octavian Cæsar, the latter the nephew of Julius Cæsar.  Octavian like
his uncle took the poorer, hardier western provinces where the best
legions were recruited.  In 31 B.C., he defeated Mark Antony, his only
serious rival, at the naval battle of Actium, and made himself sole
master of the Roman world.  But Octavian was a man of different quality
altogether from Julius Cæsar.  He had no foolish craving to be God or
King.  He had no queen-lover that he wished to dazzle.  He restored
freedom to the Senate and people of Rome.  He declined to be dictator. 
The grateful Senate in return gave him the reality instead of the forms
of power. He was to be called not King indeed, but “Princeps” and
“Augustus.”  He became Augustus Cæsar, the first of the Roman emperors
(27 B.C. to 14 A.D.).

He was followed by Tiberius Cæsar (14 to 37 A.D.) and he by others,
Caligula, Claudius, Nero and so on up to Trajan (98 A.D.), Hadrian (117
A.D.), Antonius Pius (138 A.D.) and Marcus Aurelius (161- 180 A.D.). 
All these emperors were emperors of the legions.  The soldiers made
them, and some the soldiers destroyed.  Gradually the Senate fades out
of Roman-history, and the emperor and his administrative officials
replace it.  The boundaries of the empire crept forward now to their
utmost limits.  Most of Britain was added to the empire, Transylvania
was brought in as a new province, Dacia; Trajan crossed the Euphrates. 
Hadrian had an idea that reminds us at once of what had happened at the
other end of the old world.  Like Shi-Hwang-ti he built walls against
the northern barbarians; one across Britain and a palisade between the
Rhine and the Danube.  He abandoned some of the acquisitions of Trajan.

The expansion of the Roman Empire was at an end.', 3371)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('61cb7fc3-f2c5-4f84-a59b-a41c52e3adef', '8268eabe-4b74-414e-a1f6-5a266d184560', 34, 'XXXIV Between Rome and China', 'The second and first centuries B.C. mark a new phase in the history of
mankind. Mesopotamia and the eastern Mediterranean are no longer the
centre of interest. Both Mesopotamia and Egypt were still fertile,
populous and fairly prosperous, but they were no longer the dominant
regions of the world. Power had drifted to the west and to the east.
Two great empires now dominated the world, this new Roman Empire and
the renascent Empire of China. Rome extended its power to the
Euphrates, but it was never able to get beyond that boundary. It was
too remote. Beyond the Euphrates the former Persian and Indian
dominions of the Seleucids fell under a number of new masters. China,
now under the Han dynasty, which had replaced the Ts’in dynasty at the
death of Shi-Hwang-ti, had extended its power across Tibet and over the
high mountain passes of the Pamirs into western Turkestan. But there,
too, it reached its extremes. Beyond was too far.

China at this time was the greatest, best organized and most civilized
political system in the world.  It was superior in area and population
to the Roman Empire at its zenith.  It was possible then for these two
vast systems to flourish in the same world at the same time in almost
complete ignorance of each other.  The means of communication both by
sea and land was not yet sufficiently developed and organized for them
to come to a direct clash.

Yet they reacted upon each other in a very remarkable way, and their
influence upon the fate of the regions that lay between them, upon
central Asia and India, was profound.  A certain amount of trade
trickled through, by camel caravans across Persia, for example, and by
coasting ships by way of India and the Red Sea.  In 66 B.C. Roman
troops under Pompey followed in the footsteps of Alexander the Great,
and marched up the eastern shores of the Caspian Sea.  In 102 A.D. a
Chinese expeditionary force under Pan Chau reached the Caspian, and
sent emissaries to report upon the power of Rome.  But many centuries
were still to pass before definite knowledge and direct intercourse
were to link the great parallel worlds of Europe and Eastern Asia.

To the north of both these great empires were barbaric wildernesses. 
What is now Germany was largely forest lands; the forests extended far
into Russia and made a home for the gigantic aurochs, a bull of almost
elephantine size.  Then to the north of the great mountain masses of
Asia stretched a band of deserts, steppes and then forests and frozen
lands. In the eastward lap of the elevated part of Asia was the great
triangle of Manchuria.  Large parts of these regions, stretching
between South Russia and Turkestan into Manchuria, were and are regions
of exceptional climatic insecurity. Their rainfall has varied greatly
in the course of a few centuries  They are lands treacherous to man. 
For years they will carry pasture and sustain cultivation, and then
will come an age of decline in humidity and a cycle of killing
droughts.

A CHINESE COVERED JAR OF GREEN-GLAZED EARTHENWARE
A CHINESE COVERED JAR OF GREEN-GLAZED EARTHENWARE

Han Dynasty (contemporary with the late Roman republic and early
Empire)

_(In the Victoria and Albert Museum)_

The western part of this barbaric north from the German forests to
South Russia and Turkestan and from Gothland to the Alps was the region
of origin of the Nordic peoples and of the Aryan speech.  The eastern
steppes and deserts of Mongolia was the region of origin of the Hunnish
or Mongolian or Tartar or Turkish peoples—for all these several peoples
were akin in language, race, and way of life.  And as the Nordic
peoples seem to have been continually overflowing their own borders and
pressing south upon the developing civilizations of Mesopotamia and the
Mediterranean coast, so the Hunnish tribes sent their surplus as
wanderers, raiders and conquerors into the settled regions of China. 
Periods of plenty in the north would mean an increase in population
there; a shortage of grass, a spell of cattle disease, would drive the
hungry warlike tribesmen south.

For a time there were simultaneously two fairly effective Empires in
the world capable of holding back the barbarians and even forcing
forward the frontiers of the imperial peace. The thrust of the Han
empire from north China into Mongolia was strong and continuous.  The
Chinese population welled up over the barrier of the Great Wall. 
Behind the imperial frontier guards came the Chinese farmer with horse
and plough, ploughing up the grass lands and enclosing the winter
pasture.  The Hunnish peoples raided and murdered the settlers, but the
Chinese punitive expeditions were too much for them.  The nomads were
faced with the choice of settling down to the plough and becoming
Chinese tax-payers or shifting in search of fresh summer pastures. 
Some took the former course and were absorbed.  Some drifted
north-eastward and eastward over the mountain passes down into western
Turkestan.

VASE OF BRONZE FORM, UNGLAZED STONEWARE
VASE OF BRONZE FORM, UNGLAZED STONEWARE

Han Dynasty (B.C. 206 - A.D. 220)

_(In the Victoria and Albert Museum)_

This westward drive of the Mongolian horsemen was going on from 200
B.C. onward.  It was producing a westward pressure upon the Aryan
tribes, and these again were pressing upon the Roman frontiers ready to
break through directly there was any weakness apparent.  The Parthians,
who were apparently a Scythian people with some Mongolian admixture,
came down to the Euphrates by the first century B.C.  They fought
against Pompey the Great in his eastern raid.  They defeated and killed
Crassus.  They replaced the Seleucid monarchy in Persia by a dynasty of
Parthian kings, the Arsacid dynasty.

CHINESE VESSEL IN BRONZE, IN FORM OF A GOOSE
CHINESE VESSEL IN BRONZE, IN FORM OF A GOOSE

Dating from before the time of Shi-Hwang-ti.  Such a piece of work
indicates a high level of comfort and humour

_(In the Victoria and Albert Museum)_

But for a time the line of least resistance for hungry nomads lay
neither to the west nor the east but through central Asia and then
south-eastward through the Khyber Pass into India. It was India which
received the Mongolian drive in these centuries of Roman and Chinese
strength.  A series of raiding conquerors poured down through the
Punjab into the great plains to loot and destroy.  The empire of Asoka
was broken up, and for a time the history of India passes into
darkness. A certain Kushan dynasty founded by the “Indo- Scythians”—one
of the raiding peoples—ruled for a time over North India and maintained
a certain order. These invasions went on for several centuries.  For a
large part of the fifth century A.D. India was afflicted by the
Ephthalites or White Huns, who levied tribute on the small Indian
princes and held India in terror. Every summer these Ephthalites
pastured in western Turkestan, every autumn they came down through the
passes to terrorize India.

In the second century A.D. a great misfortune came upon the Roman and
Chinese empires that probably weakened the resistance of both to
barbarian pressure.  This was a pestilence of unexampled virulence.  It
raged for eleven years in China and disorganized the social framework
profoundly.  The Han dynasty fell, and a new age of division and
confusion began from which China did not fairly recover until the
seventh century A.D. with the coming of the great Tang dynasty.

The infection spread through Asia to Europe.  It raged throughout the
Roman Empire from 164 to 180 A.D.  It evidently weakened the Roman
imperial fabric very seriously.  We begin to hear of depopulation in
the Roman provinces after this, and there was a marked deterioration in
the vigour and efficiency of government.  At any rate we presently find
the frontier no longer invulnerable, but giving way first in this place
and then in that.  A new Nordic people, the Goths, coming originally
from Gothland in Sweden, had migrated across Russia to the Volga region
and the shores of the Black Sea and taken to the sea and piracy.  By
the end of the second century they may have begun to feel the westward
thrust of the Huns.  In 247 they crossed the Danube in a great land
raid, and defeated and killed the Emperor Decius in a battle in what is
now Serbia. In 236 another Germanic people, the Franks, had broken
bounds upon the lower Rhine, and the Alemanni had poured into Alsace. 
The legions in Gaul beat back their invaders, but the Goths in the
Balkan peninsula raided again and again. The province of Dacia vanished
from Roman history.

A chill had come to the pride and confidence of Rome.  In 270-275 Rome,
which had been an open and secure city for three centuries, was
fortified by the Emperor Aurelian.', 1475)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('c229aee6-e345-4252-a7f2-e21a6e08906f', '8268eabe-4b74-414e-a1f6-5a266d184560', 35, 'XXXV The Common Man’s Life Under the Early Roman Empire', 'Before we tell of how this Roman empire which was built up in the two
centuries B.C., and which flourished in peace and security from the
days of Augustus Cæsar onward for two centuries, fell into disorder and
was broken up, it may be as well to devote some attention to the life
of the ordinary people throughout this great realm. Our history has
come down now to within 2000 years of our own time; and the life of the
civilized people, both under the Peace of Rome and the Peace of the Han
dynasty, was beginning to resemble more and more clearly the life of
their civilized successors to-day.

In the western world coined money was now in common use; outside the
priestly world there were many people of independent means who were
neither officials of the government nor priests; people travelled about
more freely than they had ever done before, and there were high roads
and inns for them. Compared with the past, with the time before 500
B.C., life had become much more loose. Before that date civilized men
had been bound to a district or country, had been bound to a tradition
and lived within a very limited horizon; only the nomads traded and
travelled.

But neither the Roman Peace nor the Peace of the Han dynasty meant a
uniform civilization over the large areas they controlled.  There were
very great local differences and great contrasts and inequalities of
culture between one district and another, just as there are to-day
under the British Peace in India.  The Roman garrisons and colonies
were dotted here and there over this great space, worshipping Roman
gods and speaking the Latin language; but where there had been towns
and cities before the coming of the Romans, they went on, subordinated
indeed but managing their own affairs, and, for a time at least,
worshipping their own gods in their own fashion.  Over Greece, Asia
Minor, Egypt and the Hellenized East generally, the Latin language
never prevailed.  Greek ruled there invincibly.  Saul of Tarsus, who
became the apostle Paul, was a Jew and a Roman citizen; but he spoke
and wrote Greek and not Hebrew.  Even at the court of the Parthian
dynasty, which had overthrown the Greek Seleucids in Persia, and was
quite outside the Roman imperial boundaries, Greek was the fashionable
language.  In some parts of Spain and in North Africa, the Carthaginian
language also held on for a long time in spite of the destruction of
Carthage.  Such a town as Seville, which had been a prosperous city
long before the Roman name had been heard of, kept its Semitic goddess
and preserved its Semitic speech for generations, in spite of a colony
of Roman veterans at Italica a few miles away.  Septimius Severus, who
was emperor from 193 to 211 A.D., spoke Carthaginian as his mother
speech.  He learnt Latin later as a foreign tongue; and it is recorded
that his sister never learnt Latin and conducted her Roman household in
the Punic language.

A Gladiator (contemporary representation)

In such countries as Gaul and Britain and in provinces like Dacia (now
roughly Roumania) and Pannonia (Hungary south of the Danube), where
there were no pre-existing great cities and temples and cultures, the
Roman empire did however “Latinize.”  It civilized these countries for
the first time.  It created cities and towns where Latin was from the
first the dominant speech, and where Roman gods were served and Roman
customs and fashions followed.  The Roumanian, Italian, French and
Spanish languages, all variations and modifications of Latin, remain to
remind us of this extension of Latin speech and customs.  North-west
Africa also became at last largely Latin-speaking.  Egypt, Greece and
the rest of the empire to the east were never Latinized.  They remained
Egyptian and Greek in culture and spirit.  And even in Rome, among
educated men, Greek was learnt as the language of a gentleman and Greek
literature and learning were very, properly preferred to Latin.

In this miscellaneous empire the ways of doing work and business were
naturally also very miscellaneous.  The chief industry of the settled
world was still largely agriculture. We have told how in Italy the
sturdy free farmers who were the backbone of the early Roman republic
were replaced by estates worked by slave labour after the Punic wars. 
The Greek world had had very various methods of cultivation, from the
Arcadian plan, wherein every free citizen toiled with his own hands, to
Sparta, wherein it was a dishonour to work and where agricultural work
was done by a special slave class, the Helots.  But that was ancient
history now, and over most of the Hellenized world the estate system
and slave-gangs had spread.  The agricultural slaves were captives who
spoke many different languages so that they could not understand each
other, or they were born slaves; they had no solidarity to resist
oppression, no tradition of rights, no knowledge, for they could not
read nor write.  Although they came to form a majority of the country
population they never made a successful insurrection.  The insurrection
of Spartacus in the first century B.C. was an insurrection of the
special slaves who were trained for the gladiatorial combats. The
agricultural workers in Italy in the latter days of the Republic and
the early Empire suffered frightful indignities; they would be chained
at night to prevent escape or have half the head shaved to make it
difficult.  They had no wives of their own; they could be outraged,
mutilated and killed by their masters.  A master could sell his slave
to fight beasts in the arena.  If a slave slew his master, all the
slaves in his household and not merely the murderer were crucified.  In
some parts of Greece, in Athens notably, the lot of the slave was never
quite so frightful as this, but it was still detestable.  To such a
population the barbarian invaders who presently broke through the
defensive line of the legions, came not as enemies but as liberators.

POMPEII
POMPEII

“Note the ruts in roadway worn by chariot wheels.”

The slave system had spread to most industries and to every sort of
work that could be done by gangs.  Mines and metallurgical operations,
the rowing of galleys, road-making and big building operations were all
largely slave occupations.  And almost all domestic service was
performed by slaves.  There were poor free-men and there were freed-men
in the cities and upon the country side, working for themselves or even
working for wages.  They were artizans, supervisors and so forth,
workers of a new money- paid class working in competition with slave
workers; but we do not know what proportion they made of the general
population.  It probably varied widely in different places and at
different periods.  And there were also many modifications of slavery,
from the slavery that was chained at night and driven with whips to the
farm or quarry, to the slave whose master found it advantageous to
leave him to cultivate his patch or work his craft and own his wife
like a free-man, provided he paid in a satisfactory quittance to his
owner.

There were armed slaves.  At the opening of the period of the Punic
wars, in 264 B.C., the Etruscan sport of setting slaves to fight for
their lives was revived in Rome.  It grew rapidly fashionable; and soon
every great Roman rich man kept a retinue of gladiators, who sometimes
fought in the arena but whose real business it was to act as his
bodyguard of bullies.  And also there were learned slaves.  The
conquests of the later Republic were among the highly civilized cities
of Greece, North Africa and Asia Minor; and they brought in many highly
educated captives. The tutor of a young Roman of good family was
usually a slave.  A rich man would have a Greek slave as librarian, and
slave secretaries and learned men.  He would keep his poet as he would
keep a performing dog.  In this atmosphere of slavery the traditions of
modern literary criticism were evolved.  The slaves still boast and
quarrel in our reviews. There were enterprising people who bought
intelligent boy slaves and had them educated for sale.  Slaves were
trained as book copyists, as jewellers, and for endless skilled
callings.

THE COLISEUM, ROME
THE COLISEUM, ROME

_Photo:  Underwood & Underwood_

INTERIOR OF THE COLISEUM AT IT APPEARS TO-DAY
INTERIOR OF THE COLISEUM AT IT APPEARS TO-DAY

But there were very considerable changes in the position of a slave
during the four hundred years between the opening days of conquest
under the republic of rich men and the days of disintegration that
followed the great pestilence.  In the second century B.C. war-captives
were abundant, manners gross and brutal; the slave had no rights and
there was scarcely an outrage the reader can imagine that was not
practised upon slaves in those days.  But already in the first century
A.D. there was a perceptible improvement in the attitude of the Roman
civilization towards slavery.  Captives were not so abundant for one
thing, and slaves were dearer.  And slave- owners began to realize that
the profit and comfort they got from their slaves increased with the
self-respect of these unfortunates.  But also the moral tone of the
community was rising, and a sense of justice was becoming effective. 
The higher mentality of Greece was qualifying the old Roman harshness. 
Restrictions upon cruelty were made, a master might no longer sell his
slave to fight beasts, a slave was given property rights in what was
called his _peculium_, slaves were paid wages as an encouragement and
stimulus, a form of slave marriage was recognized.  Very many forms of
agriculture do not lend themselves to gang working, or require gang
workers only at certain seasons.  In regions where such conditions
prevailed the slave presently became a serf, paying his owner part of
his produce or working for him at certain seasons.

When we begin to realize how essentially this great Latin and
Greek-speaking Roman Empire of the first two centuries A.D. was a slave
state and how small was the minority who had any pride or freedom in
their lives, we lay our hands on the clues to its decay and collapse. 
There was little of what we should call family life, few homes of
temperate living and active thought and study; schools and colleges
were few and far between.  The free will and the free mind were nowhere
to be found.  The great roads, the ruins of splendid buildings, the
tradition of law and power it left for the astonishment of succeeding
generations must not conceal from us that all its outer splendour was
built upon thwarted wills, stifled intelligence, and crippled and
perverted desires.  And even the minority who lorded it over that wide
realm of subjugation and of restraint and forced labour were uneasy and
unhappy in their souls; art and literature, science and philosophy,
which are the fruits of free and happy minds, waned in that atmosphere.
 There was much copying and imitation, an abundance of artistic
artificers, much slavish pedantry among the servile men of learning,
but the whole Roman empire in four centuries produced nothing to set
beside the bold and noble intellectual activities of the comparatively
little city of Athens during its one century of greatness.  Athens
decayed under the Roman sceptre.  The science of Alexandria decayed.
The spirit of man, it seemed, was decaying in those days.', 1915)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('6eef05ab-02a4-411d-a18b-5552f18b8e46', '8268eabe-4b74-414e-a1f6-5a266d184560', 36, 'XXXVI Religious Developments Under the Roman Empire', 'The soul of man under that Latin and Greek empire of the first two
centuries of the Christian era was a worried and frustrated soul.
Compulsion and cruelty reigned; there were pride and display but little
honour; little serenity or steadfast happiness. The unfortunate were
despised and wretched; the fortunate were insecure and feverishly eager
for gratifications. In a great number of cities life centred on the red
excitement of the arena, where men and beasts fought and were tormented
and slain. Amphitheatres are the most characteristic of Roman ruins.
Life went on in that key. The uneasiness of men’s hearts manifested
itself in profound religious unrest.

From the days when the Aryan hordes first broke in upon the ancient
civilizations, it was inevitable that the old gods of the temples and
priesthoods should suffer great adaptations or disappear.  In the
course of hundreds of generations the agricultural peoples of the
brunette civilizations had shaped their lives and thoughts to the
temple-centred life. Observances and the fear of disturbed routines,
sacrifices and mysteries, dominated their minds.  Their gods seem
monstrous and illogical to our modern minds because we belong to an
Aryanized world, but to these older peoples these deities had the
immediate conviction and vividness of things seen in an intense dream. 
The conquest of one city state by another in Sumeria or early Egypt
meant a change or a renaming of gods or goddesses, but left the shape
and spirit of the worship intact.  There was no change in its general
character.  The figures in the dream changed, but the dream went on and
it was the same sort of dream.  And the early Semitic conquerors were
sufficiently akin in spirit to the Sumerians to take over the religion
of the Mesopotamian civilization they subjugated without any profound
alteration. Egypt was never indeed subjugated to the extent of a
religious revolution.  Under the Ptolemies and under the Cæsars, her
temples and altars and priesthoods remained essentially Egyptian.

So long as conquests went on between people of similar social and
religious habits it was possible to get over the clash between the god
of this temple and region and the god of that by a process of grouping
or assimilation.  If the two gods were alike in character they were
identified.  It was really the same god under another name, said the
priests and the people.  This fusion of gods is called theocrasia; and
the age of the great conquests of the thousand years B.C. was an age of
theocrasia.  Over wide areas the local gods were displaced by, or
rather they were swallowed up in, a general god.  So that when at last
Hebrew prophets in Babylon proclaimed one God of Righteousness in all
the earth men’s minds were fully prepared for that idea.

But often the gods were too dissimilar for such an assimilation, and
then they were grouped together in some plausible relationship.  A
female god - and the Ægean world before the coming of the Greek was
much addicted to Mother Gods—would be married to a male god, and an
animal god or a star god would be humanized and the animal or
astronomical aspect, the serpent or the sun or the star, made into an
ornament or a symbol.  Or the god of a defeated people would become a
malignant antagonist to the brighter gods.  The history of theology is
full of such adaptations, compromises and rationalizations of once
local gods.

As Egypt developed from city states into one united kingdom there was
much of this theocrasia.  The chief god so to speak was Osiris, a
sacrificial harvest god of whom Pharaoh was supposed to be the earthly
incarnation.  Osiris was represented as repeatedly dying and rising
again; he was not only the seed and the harvest but also by a natural
extension of thought the means of human immortality.  Among his symbols
was the wide-winged scarabeus beetle which buries its eggs to rise
again, and also the effulgent sun which sets to rise. Later on he was
to be identified with Apis, the sacred bull. Associated with him was
the goddess Isis.  Isis was also Hathor, a cow-goddess, and the
crescent moon and the Star of the sea.  Osiris dies and she bears a
child, Horus, who is also a hawk-god and the dawn, and who grows to
become Osiris again.  The effigies of Isis represent her as bearing the
infant Horus in her arms and standing on the crescent moon.  These are
not logical relationships, but they were devised by the human mind
before the development of hard and systematic thinking and they have a
dream-like coherence.  Beneath this triple group there are other and
darker Egyptian gods, bad gods, the dog-headed Anubis, black night and
the like, devourers, tempters, enemies of god and man.

MITHRAS SACRIFICING A BULL, ROMAN
MITHRAS SACRIFICING A BULL, ROMAN

_(In the British Museum)_

Every religious system does in the course of time fit itself to the
shape of the human soul, and there can be no doubt that out of these
illogical and even uncouth symbols, Egyptian people were able to
fashion for themselves ways of genuine devotion and consolation.  The
desire for immortality was very strong in the Egyptian mind, and the
religious life of Egypt turned on that desire. The Egyptian religion
was an immortality religion as no other religion had ever been. As
Egypt went down under foreign conquerors and the Egyptian gods ceased
to have any satisfactory political significance, this craving for a
life of compensations here-after, intensified.

ISIS AND HORUS
ISIS AND HORUS

After the Greek conquest, the new city of Alexandria became the centre
of Egyptian religious life, and indeed of the religious life of the
whole Hellenic world.  A great temple, the Serapeum, was set up by
Ptolemy I at which a sort of trinity of gods was worshipped. These were
Serapis (who was Osiris-Apis rechristened), Isis and Horus. These were
not regarded as separate gods but as three aspects of one god, and
Serapis was identified with the Greek Zeus, the Roman Jupiter and the
Persian sun-god.  This worship spread wherever the Hellenic influence
extended, even into North India and Western China.  The idea of
immortality, an immortality of compensations and consolation, was
eagerly received by a world in which the common life was hopelessly
wretched.  Serapis was called “the saviour of souls.”  “After death,”
said the hymns of that time, “we are still in the care of his
providence.”  Isis attracted many devotees.  Her images stood in her
temples, as Queen of Heaven, bearing the infant Horus in her arms. 
Candles were burnt before her, votive offerings were made to her,
shaven priests consecrated to celibacy waited on her altar.

The rise of the Roman empire opened the western European world to this
growing cult.  The temples of Serapis-Isis, the chanting of the priests
and the hope of immortal life, followed the Roman standards to Scotland
and Holland.  But there were many rivals to the Serapis-Isis religion.
Prominent among these was Mithraism.  This was a religion of Persian
origin, and it centred upon some now forgotten mysteries about Mithras
sacrificing a sacred and benevolent bull.  Here we seem to have
something more primordial than the complicated and sophisticated
Serapis-Isis beliefs.  We are carried back directly to the blood
sacrifices of the heliolithic stage in human culture.  The bull upon
the Mithraic monuments always bleeds copiously from a wound in its
side, and from this blood springs new life.  The votary to Mithraism
actually bathed in the blood of the sacrificial bull.  At his
initiation he went beneath a scaffolding upon which a bull was killed
so that the blood could actually run down on him.

Both these religions, and the same is true of many other of the
numerous parallel cults that sought the allegiance of the slaves and
citizens under the earlier Roman emperors, are personal religions. 
They aim at personal salvation and personal immortality.  The older
religions were not personal like that; they were social.  The older
fashion of divinity was god or goddess of the city first or of the
state, and only secondarily of the individual.  The sacrifices were a
public and not a private function.  They concerned collective practical
needs in this world in which we live.  But the Greeks first and now the
Romans had pushed religion out of politics.  Guided by the Egyptian
tradition religion had retreated to the other world.

BUST OF THE EMPEROR COMMODUS, A.D. 180-192
BUST OF THE EMPEROR COMMODUS, A.D. 180-192

Represented as the God Mithras, Roman, Circa A.D. 190

_(In the British Museum)_

These new private immortality religions took all the heart and emotion
out of the old state religions, but they did not actually replace them.
 A typical city under the earlier Roman emperors would have a number of
temples to all sorts of gods.  There might be a temple to Jupiter of
the Capitol, the great god of Rome, and there would probably be one to
the reigning Cæsar.  For the Cæsars had learnt from the Pharaohs the
possibility of being gods.  In such temples a cold and stately
political worship went on; one would go and make an offering and burn a
pinch of incense to show one’s loyalty.  But it would be to the temple
of Isis, the dear Queen of Heaven, one would go with the burthen of
one’s private troubles for advice and relief.  There might be local and
eccentric gods.  Seville, for example, long affected the worship of the
old Carthaginian Venus.  In a cave or an underground temple there would
certainly be an altar to Mithras, attended by legionaries and slaves. 
And probably also there would be a synagogue where the Jews gathered to
read their Bible and uphold their faith in the unseen God of all the
Earth.

Sometimes there would be trouble with the Jews about the political side
of the state religion.  They held that their God was a jealous God
intolerant of idolatry, and they would refuse to take part in the
public sacrifices to Cæsar. They would not even salute the Roman
standards for fear of idolatry.

In the East long before the time of Buddha there had been ascetics, men
and women who gave up most of the delights of life, who repudiated
marriage and property and sought spiritual powers and an escape from
the stresses and mortifications of the world in abstinence, pain and
solitude. Buddha himself set his face against ascetic extravagances,
but many of his disciples followed a monkish life of great severity. 
Obscure Greek cults practised similar disciplines even to the extent of
self-mutilation.  Asceticism appeared in the Jewish communities of
Judea and Alexandria also in the first century B.C.  Communities of men
abandoned the world and gave themselves to austerities and mystical
contemplation.  Such was the sect of the Essenes.  Throughout the first
and second centuries A.D. there was an almost world-wide resort to such
repudiations of life, a universal search for “salvation” from the
distresses of the time.  The old sense of an established order, the old
confidence in priest and temple and law and custom, had gone.  Amidst
the prevailing slavery, cruelty, fear, anxiety, waste, display and
hectic self-indulgence, went this epidemic of self- disgust and mental
insecurity, this agonized search for peace even at the price of
renunciation and voluntary suffering. This it was that filled the
Serapeum with weeping penitents and brought the converts into the gloom
and gore of the Mithraic cave.', 1921)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('fd59de83-2102-46de-a438-a81824a651c1', '8268eabe-4b74-414e-a1f6-5a266d184560', 37, 'XXXVII The Teaching of Jesus', 'It was while Augustus Cæsar, the first of the Emperors, was reigning in
Rome that Jesus who is the Christ of Christianity was born in Judea. In
his name a religion was to arise which was destined to become the
official religion of the entire Roman Empire.

Now it is on the whole more convenient to keep history and theology
apart.  A large proportion of the Christian world believes that Jesus
was an incarnation of that God of all the Earth whom the Jews first
recognized.  The historian, if he is to remain historian, can neither
accept nor deny that interpretation.  Materially Jesus appeared in the
likeness of a man, and it is as a man that the historian must deal with
him.

He appeared in Judea in the reign of Tiberius Cæsar.  He was a prophet.
 He preached after the fashion of the preceding Jewish prophets.  He
was a man of about thirty, and we are in the profoundest ignorance of
his manner of life before his preaching began.

Our only direct sources of information about the life and teaching of
Jesus are the four Gospels.  All four agree in giving us a picture of a
very definite personality.  One is obliged to say, “Here was a man. 
This could not have been invented.”

But just as the personality of Gautama Buddha has been distorted and
obscured by the stiff squatting figure, the gilded idol of later
Buddhism, so one feels that the lean and strenuous personality of Jesus
is much wronged by the unreality and conventionality that a mistaken
reverence has imposed upon his figure in modern Christian art.  Jesus
was a penniless teacher, who wandered about the dusty sun-bit country
of Judea, living upon casual gifts of food; yet he is always
represented clean, combed and sleek, in spotless raiment, erect and
with something motionless about him as though he was gliding through
the air. This alone has made him unreal and incredible to many people
who cannot distinguish the core of the story from the ornamental and
unwise additions of the unintelligently devout.

We are left, if we do strip this record of these difficult accessories,
with the figure of a being, very human, very earnest and passionate,
capable of swift anger, and teaching a new and simple and profound
doctrine—namely, the universal loving Fatherhood of God and the coming
of the Kingdom of Heaven.  He was clearly a person—to use a common
phrase—of intense personal magnetism.  He attracted followers and
filled them with love and courage. Weak and ailing people were
heartened and healed by his presence.  Yet he was probably of a
delicate physique, because of the swiftness with which he died under
the pains of crucifixion.  There is a tradition that he fainted when,
according to the custom, he was made to bear his cross to the place of
execution.  He went about the country for three years spreading his
doctrine and then he came to Jerusalem and was accused of trying to set
up a strange kingdom in Judea; he was tried upon this charge, and
crucified together with two thieves.  Long before these two were dead
his sufferings were over.

The doctrine of the Kingdom of Heaven, which was the main teaching of
Jesus, is certainly one of the most revolutionary doctrines that ever
stirred and changed human thought.  It is small wonder if the world of
that time failed to grasp its full significance, and recoiled in dismay
from even a half apprehension of its tremendous challenges to the
established habits and institutions of mankind.  For the doctrine of
the Kingdom of Heaven, as Jesus seems to have preached it, was no less
than a bold and uncompromising demand for a complete change and
cleansing of the life of our struggling race, an utter cleansing,
without and within.  To the gospels the reader must go for all that is
preserved of this tremendous teaching; here we are only concerned with
the jar of its impact upon established ideas.

The Jews were persuaded that God, the one God of the whole world, was a
righteous god, but they also thought of him as a trading god who had
made a bargain with their Father Abraham about them, a very good
bargain indeed for them, to bring them at last to predominance in the
earth. With dismay and anger they heard Jesus sweeping away their dear
securities.  God, he taught, was no bargainer; there were no chosen
people and no favourites in the Kingdom of Heaven.  God was the loving
father of all life, as incapable of showing favour as the universal
sun.  And all men were brothers—sinners alike and beloved sons alike—of
this divine father.  In the parable of the Good Samaritan Jesus cast
scorn upon that natural tendency we all obey, to glorify our own people
and to minimize the righteousness of other creeds and other races.  In
the parable of the labourers he thrust aside the obstinate claim of the
Jews to have a special claim upon God. All whom God takes into the
kingdom, he taught, God serves alike; there is no distinction in his
treatment, because there is no measure to his bounty.  From all
moreover, as the parable of the buried talent witnesses, and as the
incident of the widow’s mite enforces, he demands the utmost. There are
no privileges, no rebates and no excuses in the Kingdom of Heaven.

EARLY IDEAL PORTRAIT, IN GILDED GLASS, OF JESUS CHRIST IN WHICH THE
TRADITIONAL BEARD IS NOT SHOWN
EARLY IDEAL PORTRAIT, IN GILDED GLASS, OF JESUS CHRIST IN WHICH THE
TRADITIONAL BEARD IS NOT SHOWN

But it is not only the intense tribal patriotism of the Jews that Jesus
outraged.  They were a people of intense family loyalty, and he would
have swept away all the narrow and restrictive family affections in the
great flood of the love of God.  The whole kingdom of Heaven was to be
the family of his followers.  We are told that, “While he yet talked to
the people, behold, his mother and his brethren stood without, desiring
to speak with him.  Then one said unto him, Behold, thy mother and thy
brethren stand without, desiring to speak with thee.  But he answered
and said unto him that told him, Who is my mother? and who are my
brethren? And he stretched forth his hands towards his disciples, and
said, Behold my mother and my brethren!  For whosoever shall do the
will of my Father which is in heaven, the same is my brother, and
sister, and mother.?  [1]

THE ROAD FROM NAZARETH TO TIBERIAS
THE ROAD FROM NAZARETH TO TIBERIAS

_Photo:  Fannaway_

And not only did Jesus strike at patriotism and the bonds of family
loyalty in the name of God’s universal fatherhood and brotherhood of
all mankind, but it is clear that his teaching condemned all the
gradations of the economic system, all private wealth, and personal
advantages.  All men belonged to the kingdom; all their possessions
belonged to the kingdom; the righteous life for all men, the only
righteous life, was the service of God’s will with all that we had,
with all that we were. Again and again he denounced private riches and
the reservation of any private life.

DAVID’S TOWER AND WALL OF JERUSALEM
DAVID’S TOWER AND WALL OF JERUSALEM

_Photo:  Fannaway_

“And when he was gone forth into the way, there came one running, and
kneeled to him, and asked him, Good Master, what shall I do that I may
inherit eternal life?  And Jesus said to him, Why callest thou me good?
there is none good but one, that is God.  Thou knowest the
commandments, Do not commit adultery, Do not kill, Do not steal, Do not
bear false witness, Defraud not, Honour thy father and mother.  And he
answered and said unto him, Master, all these things have I observed
from my youth.  Then Jesus beholding him loved him, and said unto him,
One thing thou lackest; go thy way, sell whatsoever thou hast, and give
to the poor, and thou shalt have treasure in heaven; and come, take up
the cross, and follow me.  And he was sad at that saying, and went away
grieved; for he had great possessions.

A STREET IN JERUSALEM
A STREET IN JERUSALEM

Along such a thoroughfare Christ carried his cross to the place of
execution

_Photo:  Fannaway_

“And Jesus looked round about, and saith unto his disciples, How hardly
shall they that have riches enter into the Kingdom of God!  And the
disciples were astonished at his words.  But Jesus answered again, and
saith unto them, Children, how hard is it for them that trust in riches
to enter into the Kingdom of God!  It is easier for a camel to go
through the eye of a needle, than for a rich man to enter into the
Kingdom of God.”  [2]

Moreover, in his tremendous prophecy of this kingdom which was to make
all men one together in God, Jesus had small patience for the
bargaining righteousness of formal religion. Another large part of his
recorded utterances is aimed against the meticulous observance of the
rules of the pious career.  “Then the Pharisees and scribes asked him,
Why walk not thy disciples according to the tradition of the elders,
but eat bread with unwashen hands?  He answered and said unto them,
Well hath Isaiah prophesied of you hypocrites, as it is written,

“This people honoureth me with their lips,

“But their heart is far from me.

“Howbeit in vain do they worship me,

“Teaching for doctrines the commandments of men.

“For laying aside the commandment of God, ye hold the tradition of men,
as the washing of pots and cups: and many other such things ye do.  And
he said unto them, Full well ye reject the commandment of God, that ye
may keep your own tradition.”  [3]

It was not merely a moral and a social revolution that Jesus
proclaimed; it is clear from a score of indications that his teaching
had a political bent of the plainest sort.  It is true that he said his
kingdom was not of this world, that it was in the hearts of men and not
upon a throne; but it is equally clear that wherever and in what
measure his kingdom was set up in the hearts of men, the outer world
would be in that measure revolutionized and made new.

Whatever else the deafness and blindness of his hearers may have missed
in his utterances, it is plain they did not miss his resolve to
revolutionize the world.  The whole tenor of the opposition to him and
the circumstances of his trial and execution show clearly that to his
contemporaries he seemed to propose plainly, and did propose plainly,
to change and fuse and enlarge all human life.

In view of what he plainly said, is it any wonder that all who were
rich and prosperous felt a horror of strange things, a swimming of
their world at his teaching?  He was dragging out all the little
private reservations they had made from social service into the light
of a universal religious life.  He was like some terrible moral
huntsman digging mankind out of the snug burrows in which they had
lived hitherto.  In the white blaze of this kingdom of his there was to
be no property, no privilege, no pride and precedence; no motive indeed
and no reward but love.  Is it any wonder that men were dazzled and
blinded and cried out against him?  Even his disciples cried out when
he would not spare them the light. Is it any wonder that the priests
realized that between this man and themselves there was no choice but
that he or priestcraft should perish?  Is it any wonder that the Roman
soldiers, confronted and amazed by something soaring over their
comprehension and threatening all their disciplines, should take refuge
in wild laughter, and crown him with thorns and robe him in purple and
make a mock Cæsar of him?  For to take him seriously was to enter upon
a strange and alarming life, to abandon habits, to control instincts
and impulses, to essay an incredible happiness. . . .

[1] Matt. xii, 46-50.

[2] Mark x, 17-25.

[3] Mark vii, 1-9.', 2054)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('d3f57f6b-ebc9-4e2b-a16d-3de9557a9e69', '8268eabe-4b74-414e-a1f6-5a266d184560', 38, 'XXXVIII The Development of Doctrinal Christianity', 'In the four gospels we find the personality and teachings of Jesus but
very little of the dogmas of the Christian church. It is in the
epistles, a series of writings by the immediate followers of Jesus,
that the broad lines of Christian belief are laid down.

Chief among the makers of Christian doctrine was St. Paul. He had never
seen Jesus nor heard him preach.  Paul’s name was originally Saul, and
he was conspicuous at first as an active persecutor of the little band
of disciples after the crucifixion.  Then he was suddenly converted to
Christianity, and he changed his name to Paul.  He was a man of great
intellectual vigour and deeply and passionately interested in the
religious movements of the time.  He was well versed in Judaism and in
the Mithraism and Alexandrian religion of the day.  He carried over
many of their ideas and terms of expression into Christianity.  He did
very little to enlarge or develop the original teaching of Jesus, the
teaching of the Kingdom of Heaven.  But he taught that Jesus was not
only the promised Christ, the promised leader of the Jews, but also
that his death was a sacrifice, like the deaths of the ancient
sacrificial victims of the primordial civilizations, for the redemption
of mankind.

When religions flourish side by side they tend to pick up each other’s
ceremonial and other outward peculiarities.  Buddhism, for example, in
China has now almost the same sort of temples and priests and uses as
Taoism, which follows in the teachings of Lao Tse.  Yet the original
teachings of Buddhism and Taoism were almost flatly opposed.  And it
reflects no doubt or discredit upon the essentials of Christian
teaching that it took over not merely such formal things as the shaven
priest, the votive offering, the altars, candles, chanting and images
of the Alexandrian and Mithraic faiths, but adopted even their
devotional phrases and their theological ideas.  All these religions
were flourishing side by side with many less prominent cults. Each was
seeking adherents, and there must have been a constant going and coming
of converts between them. Sometimes one or other would be in favour
with the government.  But Christianity was regarded with more suspicion
than its rivals because, like the Jews, its adherents would not perform
acts of worship to the God Cæsar.  This made it a seditious religion,
quite apart from the revolutionary spirit of the teachings of Jesus
himself.

MOSAIC OF SS. PETER AND PAUL POINTING TO A THRONE, ON GOLD BACKGROUND
MOSAIC OF SS. PETER AND PAUL POINTING TO A THRONE, ON GOLD BACKGROUND

From the Ninth Century original, in the Church of Sta. Prassede, Rome

_(In the Victoria and Albert Museum)_

St. Paul familiarized his disciples with the idea that Jesus, like
Osiris, was a god who died to rise again and give men immortality.  And
presently the spreading Christian community was greatly torn by
complicated theological disputes about the relationship of this God
Jesus to God the Father of Mankind.  The Arians taught that Jesus was
divine, but distant from and inferior to the Father.  The Sabellians
taught that Jesus was merely an aspect of the Father, and that God was
Jesus and Father at the same time just as a man may be a father and an
artificer at the same time; and the Trinitarians taught a more subtle
doctrine that God was both one and three, Father, Son and Holy Spirit. 
For a time it seemed that Arianism would prevail over its rivals, and
then after disputes, violence and wars, the Trinitarian formula became
the accepted formula of all Christendom.  It may be found in its
completest expression in the Athanasian Creed.

We offer no comment on these controversies here.  They do not sway
history as the personal teaching of Jesus sways history. The personal
teaching of Jesus does seem to mark a new phase in the moral and
spiritual life of our race.  Its insistence upon the universal
Fatherhood of God and the implicit brotherhood of all men, its
insistence upon the sacredness of every human personality as a living
temple of God, was to have the profoundest effect upon all the
subsequent social and political life of mankind.  With Christianity,
with the spreading teachings of Jesus, a new respect appears in the
world for man as man.  It may be true, as hostile critics of
Christianity have urged, that St.. Paul preached obedience to slaves,
but it is equally true that the whole spirit of the teachings of Jesus
preserved in the gospels was against the subjugation of man by man. 
And still more distinctly was Christianity opposed to such outrages
upon human dignity as the gladiatorial combats in the arena.

THE BAPTISM OF CHRIST
THE BAPTISM OF CHRIST

_(Sixth Century Ivory Panel in the British Museum)_

Throughout the first two centuries after Christ, the Christian religion
spread throughout the Roman Empire, weaving together an ever-growing
multitude of converts into a new community of ideas and will.  The
attitude of the emperors varied between hostility and toleration. 
There were attempts to suppress this new faith in both the second and
third centuries; and finally in 303 and the following years a great
persecution under the Emperor Diocletian.  The considerable
accumulations of Church property were seized, all bibles and religious
writings were confiscated and destroyed, Christians were put out of the
protection of the law and many executed.  The destruction of the books
is particularly notable.  It shows how the power of the written word in
holding together the new faith was appreciated by the authorities. 
These “book religions,” Christianity and Judaism, were religions that
educated. Their continued existence depended very largely on people
being able to read and understand their doctrinal ideas.  The older
religions had made no such appeal to the personal intelligence.  In the
ages of barbaric confusion that were now at hand in western Europe it
was the Christian church that was mainly instrumental in preserving the
tradition of learning.

The persecution of Diocletian failed completely to suppress the growing
Christian community.  In many provinces it was ineffective because the
bulk of the population and many of the officials were Christian.  In
317 an edict of toleration was issued by the associated Emperor
Galerius, and in 324 Constantine the Great, a friend and on his
deathbed a baptized convert to Christianity, became sole ruler of the
Roman world.  He abandoned all divine pretensions and put Christian
symbols on the shields and banners of his troops.

In a few years Christianity was securely established as the official
religion of the empire.  The competing religions disappeared or were
absorbed with extraordinary celerity, and in 300 Theodosius the Great
caused the great statue of Jupiter Serapis at Alexandria to be
destroyed.  From the outset of the fifth century onward the only
priests or temples in the Roman Empire were Christian priests and
temples.', 1150)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('9d6ba000-a0a0-454e-ab47-8a6ae246ea52', '8268eabe-4b74-414e-a1f6-5a266d184560', 39, 'XXXIX The Barbarians Break the Empire Into East and West', 'Throughout the third century the Roman Empire, decaying socially and
disintegrating morally, faced the barbarians. The emperors of this
period were fighting military autocrats, and the capital of the empire
shifted with the necessities of their military policy. Now the imperial
headquarters would be at Milan in north Italy, now in what is now
Serbia at Sirmium or Nish, now in Nicomedia in Asia Minor. Rome halfway
down Italy was too far from the centre of interest to be a convenient
imperial seat. It was a declining city. Over most of the empire peace
still prevailed and men went about without arms. The armies continued
to be the sole repositories of power; the emperors, dependent on their
legions, became more and more autocratic to the rest of the empire and
their state more and more like that of the Persian and other oriental
monarchs. Diocletian assumed a royal diadem and oriental robes.

All along the imperial frontier, which ran roughly along the Rhine and
Danube, enemies were now pressing.  The Franks and other German tribes
had come up to the Rhine.  In north Hungary were the Vandals; in what
was once Dacia and is now Roumania, the Visigoths or West Goths. 
Behind these in south Russia were the East Goths or Ostrogoths, and
beyond these again in the Volga region the Alans.  But now Mongolian
peoples were forcing their way towards Europe.  The Huns were already
exacting tribute from the Alans and Ostrogoths and pushing them to the
west.

In Asia the Roman frontiers were crumpling back under the push of a
renascent Persia.  This new Persia, the Persia of the Sassenid kings,
was to be a vigorous and on the whole a successful rival of the Roman
Empire in Asia for the next three centuries.

A glance at the map of Europe will show the reader the peculiar
weakness of the empire.  The river Danube comes down to within a couple
of hundred miles of the Adriatic Sea in the region of what is now
Bosnia and Serbia. It makes a square re-entrant angle there.  The
Romans never kept their sea communications in good order, and this two
hundred mile strip of land was their line of communication between the
western Latin-speaking part of the empire and the eastern
Greek-speaking portion.  Against this square angle of the Danube the
barbarian pressure was greatest.  When they broke through there it was
inevitable that the empire should fall into two parts.

Map: The Empire and the Barbarians

A more vigorous empire might have thrust forward and reconquered Dacia,
but the Roman Empire lacked any such vigour.  Constantine the Great was
certainly a monarch of great devotion and intelligence.  He beat back a
raid of the Goths from just these vital Balkan regions, but he had no
force to carry the frontier across the Danube.  He was too pre-occupied
with the internal weaknesses of the empire.  He brought the solidarity
and moral force of Christianity to revive the spirit of the declining
empire, and he decided to create a new permanent capital at Byzantium
upon the Hellespont.  This new-made Byzantium, which was re-christened
Constantinople in his honour, was still building when he died.  Towards
the end of his reign occurred a remarkable transaction.  The Vandals,
being pressed by the Goths, asked to be received into the Roman Empire.
 They were assigned lands in Pannonia, which is now that part of
Hungary west of the Danube, and their fighting men became nominally
legionaries.  But these new legionaries remained under their own
chiefs.  Rome failed to digest them.

Constantine died working to reorganize his great realm, and soon the
frontiers were ruptured again and the Visigoths came almost to
Constantinople. They defeated the Emperor Valens at Adrianople and made
a settlement in what is now Bulgaria, similar to the settlement of the
Vandals in Pannonia. Nominally they were subjects of the emperor,
practically they were conquerors.

CONSTANTINE’S PILLAR, CONSTANTINOPLE
CONSTANTINE’S PILLAR, CONSTANTINOPLE

_Photo:  Sebah & Foaillier_

From 379 to 395 A.D. reigned the Emperor Theodosius the Great, and
while he reigned the empire was still formally intact.  Over the armies
of Italy and Pannonia presided Stilicho, a Vandal, over the armies in
the Balkan peninsula, Alaric, a Goth.  When Theodosius died at the
close of the fourth century he left two sons. Alaric supported one of
these, Arcadius, in Constantinople, and Stilicho the other, Honorius,
in Italy.  In other words Alaric and Stilicho fought for the empire
with the princes as puppets.  In the course of their struggle Alaric
marched into Italy and after a short siege took Rome (410 A.D.).

The opening half of the fifth century saw the whole of the Roman Empire
in Europe the prey of robber armies of barbarians.  It is difficult to
visualize the state of affairs in the world at that time.  Over France,
Spain, Italy and the Balkan peninsula, the great cities that had
flourished under the early empire still stood, impoverished, partly
depopulated and falling into decay.  Life in them must have been
shallow, mean and full of uncertainty.  Local officials asserted their
authority and went on with their work with such conscience as they had,
no doubt in the name of a now remote and inaccessible emperor.  The
churches went on, but usually with illiterate priests.  There was
little reading and much superstition and fear.  But everywhere except
where looters had destroyed them, books and pictures and statuary and
such-like works of art were still to be found.

The life of the countryside had also degenerated.  Everywhere this
Roman world was much more weedy and untidy than it had been.  In some
regions war and pestilence had brought the land down to the level of a
waste.  Roads and forests were infested with robbers.  Into such
regions the barbarians marched, with little or no opposition, and set
up their chiefs as rulers, often with Roman official titles.  If they
were half civilized barbarians they would give the conquered districts
tolerable terms, they would take possession of the towns, associate and
intermarry, and acquire (with an accent) the Latin speech; but the
Jutes, the Angles and Saxons who submerged the Roman province of
Britain were agriculturalists and had no use for towns, they seem to
have swept south Britain clear of the Romanized population and they
replaced the language by their own Teutonic dialects, which became at
last English.

BASE OF THE “OBELISK OF THEODOSIUS,” CONSTANTINOPLE
BASE OF THE “OBELISK OF THEODOSIUS,” CONSTANTINOPLE

The obelisk of Thothmes, taken from Egypt to Constantinople by
Theodosius and placed upon the pedestal her shown; an interesting
example of early Byzantine art.  The complete obelisk is seen on page
239.

_Photo:  Sebah & Foaillier_

It is impossible in the space at our disposal to trace the movements of
all the various German and Slavonic tribes as they went to and fro in
the disorganized empire in search of plunder and a pleasant home.  But
let the Vandals serve as an example.  They came into history in east
Germany.  They settled as we have told in Pannonia.  Thence they moved
somewhen about 425 A.D. through the intervening provinces to Spain. 
There they found Visigoths from South Russia and other German tribes
setting up dukes and kings.  From Spain the Vandals under Genseric
sailed for North Africa (429), captured Carthage (439), and built a
fleet.  They secured the mastery of the sea and captured and pillaged
Rome (455), which had recovered very imperfectly from her capture and
looting by Alaric half a century earlier.  Then the Vandals made
themselves masters of Sicily, Corsica, Sardinia and most of the other
islands of the western Mediterranean.  They made, in fact, a sea empire
very similar in its extent to the sea empire of Carthage seven hundred
odd years before.  They were at the climax of their power about 477. 
They were a mere handful of conquerors holding all this country.  In
the next century almost all their territory had been reconquered for
the empire of Constantinople during a transitory blaze of energy under
Justinian I.

The story of the Vandals is but one sample of a host of similar
adventures.  But now there was coming into the European world the least
kindred and most redoubtable of all these devastators, the Mongolian
Huns or Tartars, a yellow people active and able, such as the western
world had never before encountered.', 1396)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('af8f02fa-7263-455c-ad20-142b535dc6b2', '8268eabe-4b74-414e-a1f6-5a266d184560', 40, 'XL The Huns and the End of the Western Empire', 'This appearance of a conquering Mongolian people in Europe may be taken
to mark a new stage in human history. Until the last century or so
before the Christian era, the Mongol and the Nordic peoples had not
been in close touch. Far away in the frozen lands beyond the northern
forests the Lapps, a Mongolian people, had drifted westward as far as
Lapland, but they played no part in the main current of history. For
thousands of years the western world carried on the dramatic interplay
of the Aryan, Semitic and fundamental brunette peoples with very little
interference (except for an Ethiopian invasion of Egypt or so) either
from the black peoples to the south or from the Mongolian world in the
far East.

It is probable that there were two chief causes for the new westward
drift of the nomadic Mongolians.  One was the consolidation of the
great empire of China, its extension northward and the increase of its
population during the prosperous period of the Han dynasty.  The other
was some process of climatic change; a lesser rainfall that abolished
swamps and forests perhaps, or a greater rainfall that extended grazing
over desert steppes, or even perhaps both these processes going on in
different regions but which anyhow facilitated a westward migration.  A
third contributary cause was the economic wretchedness, internal decay
and falling population of the Roman Empire.  The rich men of the later
Roman Republic, and then the tax-gatherers of the military emperors had
utterly consumed its vitality. So we have the factors of thrust, means
and opportunity. There was pressure from the east, rot in the west and
an open road.

The Hun had reached the eastern boundaries of European Russia by the
first century A.D., but it was not until the fourth and fifth centuries
A.D. that these horsemen rose to predominance upon the steppes.  The
fifth century was the Hun’s century. The first Huns to come into Italy
were mercenary bands in the pay of Stilicho the Vandal, the master of
Honorius. Presently they were in possession of Pannonia, the empty nest
of the Vandals.

By the second quarter of the fifth century a great war chief had arisen
among the Huns, Attila.  We have only vague and tantalizing glimpses of
his power.  He ruled not only over the Huns but over a conglomerate of
tributary Germanic tribes; his empire extended from the Rhine cross the
plains into Central Asia.  He exchanged ambassadors with China.  His
head camp was in the plain of Hungary east of the Danube. There he was
visited by an envoy from Constantinople, Priscus, who has left us an
account of his state.  The way of living of these Mongols was very like
the way of living of the primitive Aryans they had replaced.  The
common folk were in huts and tents; the chiefs lived in great stockaded
timber halls.  There were feasts and drinking and singing by the bards.
 The Homeric heroes and even the Macedonian companions of Alexander
would probably have felt more at home in the camp-capital of Attila
than they would have done in the cultivated and decadent court of
Theodosius II, the son of Arcadius, who was then reigning in
Constantinople.

For a time it seemed as though the nomads under the leadership of the
Huns and Attila would play the same part towards the Græco-Roman
civilization of the Mediterranean countries that the barbaric Greeks
had played long ago to the Ægean civilization.  It looked like history
repeating itself upon a larger stage.  But the Huns were much more
wedded to the nomadic life than the early Greeks, who were rather
migratory cattle farmers than true nomads.  The Huns raided and
plundered but did not settle.

For some years Attila bullied Theodosius as he chose.  His armies
devastated and looted right down to the walls of Constantinople, Gibbon
says that he totally destroyed no less than seventy cities in the
Balkan peninsula, and Theodosius bought him off by payments of tribute
and tried to get rid of him for good by sending secret agents to
assassinate him.  In 451 Attila turned his attention to the remains of
the Latin- speaking half of the empire and invaded Gaul.  Nearly every
town in northern Gaul was sacked.  Franks, Visigoths and the imperial
forces united against him and he was defeated at Troyes in a vast
dispersed battle in which a multitude of men, variously estimated as
between 150,000 and 300,000, were killed. This checked him in Gaul, but
it did not exhaust his enormous military resources.  Next year he came
into Italy by way of Venetia, burnt Aquileia and Padua and looted
Milan.

HEAD OF BARBARIAN CHIEF
HEAD OF BARBARIAN CHIEF

_(In the British Museum)_

Numbers of fugitives from these north Italian towns and particularly
from Padua fled to islands in the lagoons at the head of the Adriatic
and laid there the foundations of the city state of Venice, which was
to become one of the greatest or the trading centres in the middle
ages.

In 453 Attila died suddenly after a great feast to celebrate his
marriage to a young woman, and at his death this plunder confederation
of his fell to pieces.  The actual Huns disappear from history, mixed
into the surrounding more numerous Aryan-speaking populations.  But
these great Hun raids practically consummated the end of the Latin
Roman Empire.  After his death ten different emperors ruled in Rome in
twenty years, set up by Vandal and other mercenary troops.  The Vandals
from Carthage took and sacked Rome in 455.  Finally in 476 Odoacer, the
chief of the barbarian troops, suppressed a Pannonian who was figuring
as emperor under the impressive name of Romulus Augustulus, and
informed the Court of Constantinople that there was no longer an
emperor in the west.  So ingloriously the Latin Roman Empire came to an
end.  In 493 Theodoric the Goth became King of Rome.

All over western and central Europe now barbarian chiefs were reigning
as kings, dukes and the like, practically independent but for the most
part professing some sort of shadowy allegiance to the emperor.  There
were hundreds and perhaps thousands of such practically independent
brigand rulers.  In Gaul, Spain and Italy and in Dacia the Latin speech
still prevailed in locally distorted forms, but in Britain and east of
the Rhine languages of the German group (or in Bohemia a Slavonic
language, Czech) were the common speech.  The superior clergy and a
small remnant of other educated men read and wrote Latin.  Everywhere
life was insecure and property was held by the strong arm.  Castles
multiplied and roads fell into decay.  The dawn of the sixth century
was an age of division and of intellectual darkness throughout the
western world.  Had it not been for the monks and Christian
missionaries Latin learning might have perished altogether.

Why had the Roman Empire grown and why had it so completely decayed? 
It grew because at first the idea of citizenship held it together. 
Throughout the days of the expanding republic, and even into the days
of the early empire there remained a great number of men conscious of
Roman citizenship, feeling it a privilege and an obligation to be a
Roman citizen, confident of their rights under the Roman law and
willing to make sacrifices in the name of Rome.  The prestige of Rome
as of something just and great and law- upholding spread far beyond the
Roman boundaries.  But even as early as the Punic wars the sense of
citizenship was being undermined by the growth of wealth and slavery. 
Citizenship spread indeed but not the idea of citizenship.

The Roman Empire was after all a very primitive organization; it did
not educate, did not explain itself to its increasing multitudes of
citizens, did not invite their co-operation in its decisions.  There
was no network of schools to ensure a common understanding, no
distribution of news to sustain collective activity.  The adventurers
who struggled for power from the days of Marius and Sulla onward had no
idea of creating and calling in public opinion upon the imperial
affairs.  The spirit of citizenship died of starvation and no one
observed it die.  All empires, all states, all organizations of human
society are, in the ultimate, things of understanding and will.  There
remained no will for the Roman Empire in the World and so it came to an
end.

But though the Latin-speaking Roman Empire died in the fifth century,
something else had been born within it that was to avail itself
enormously of its prestige and tradition, and that was the
Latin-speaking half of the Catholic Church. This lived while the empire
died because it appealed to the minds and wills of men, because it had
books and a great system of teachers and missionaries to hold it
together, things stronger than any law or legions.  Throughout the
fourth and fifth centuries A.D. while the empire was decaying,
Christianity was spreading to a universal dominion in Europe.  It
conquered its conquerors, the barbarians.  When Attila seemed disposed
to march on Rome, the patriarch of Rome intercepted him and did what no
armies could do, turning him back by sheer moral force.

The Patriarch or Pope of Rome claimed to be the head of the entire
Christian church.  Now that there were no more emperors, he began to
annex imperial titles and claims.  He took the title of _pontifex
maximus_, head sacrificial priest of the Roman dominion, the most
ancient of all the titles that the emperors had enjoyed.', 1593)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('f79c22f5-ff7a-4835-a389-4c5192a13e50', '8268eabe-4b74-414e-a1f6-5a266d184560', 41, 'XLI The Byzantine and Sassanid Empires', 'The Greek-speaking eastern half of the Roman Empire showed much more
political tenacity than the western half. It weathered the disasters of
the fifth century A.D., which saw a complete and final breaking up of
the original Latin Roman power. Attila bullied the Emperor Theodosius
II and sacked and raided almost to the walls of Constantinople, but
that city remained intact. The Nubians came down the Nile and looted
Upper Egypt, but Lower Egypt and Alexandria were left still fairly
prosperous. Most of Asia Minor was held against the Sassanid Persians.

The sixth century, which was an age of complete darkness for the West,
saw indeed a considerable revival of the Greek power.  Justinian I
(527-565) was a ruler of very great ambition and energy, and he was
married to the Empress Theodora, a woman of quite equal capacity who
had begun life as an actress.  Justinian reconquered North Africa from
the Vandals and most of Italy from the Goths.  He even regained the
south of Spain.  He did not limit his energies to naval and military
enterprises.  He founded a university, built the great church of Sta.
Sophia in Constantinople and codified the Roman law.  But in order to
destroy a rival to his university foundation he closed the schools of
philosophy in Athens, which had been going on in unbroken continuity
from the days of Plato, that is to say for nearly a thousand years.

From the third century onwards the Persian Empire had been the
steadfast rival of the Byzantine.  The two empires kept Asia Minor,
Syria and Egypt in a state of perpetual unrest and waste.  In the first
century A.D., these lands were still at a high level of civilization,
wealthy and with an abundant population, but the continual coming and
going of armies, massacres, looting and war taxation wore them down
steadily until only shattered and ruinous cities remained upon a
countryside of scattered peasants.  In this melancholy process of
impoverishment and disorder lower Egypt fared perhaps less badly than
the rest of the world.  Alexandria, like Constantinople, continued a
dwindling trade between the east and the west.

THE CHURCH (NOW A MOSQUE) OF S. SOPHIA, CONSTANTINOPLE
THE CHURCH (NOW A MOSQUE) OF S. SOPHIA, CONSTANTINOPLE

The obelisk of Theodosius in in the foreground statue on left

_Photo:  Sebah & Foaillier_

Science and political philosophy seemed dead now in both these warring
and decaying empires.  The last philosophers of Athens, until their
suppression, preserved the texts of the great literature of the past
with an infinite reverence and want of understanding.  But there
remained no class of men in the world, no free gentlemen with bold and
independent habits of thought, to carry on the tradition of frank
statement and enquiry embodied in these writings.  The social and
political chaos accounts largely for the disappearance of this class,
but there was also another reason why the human intelligence was
sterile and feverish during this age.  In both Persia and Byzantium it
was all age of intolerance.  Both empires were religious empires in a
new way, in a way that greatly hampered the free activities of the
human mind.

THE MAGNIFICENT ROOF-WORK IN S. SOPHIA
THE MAGNIFICENT ROOF-WORK IN S. SOPHIA

_Photo:  Sebah & Foaillier_

Of course the oldest empires in the world were religious empires,
centring upon the worship of a god or of a god-king. Alexander was
treated as a divinity and the Cæsars were gods in so much as they had
altars and temples devoted to them and the offering of incense was made
a test of loyalty to the Roman state.  But these older religions were
essentially religions of act and fact.  They did not invade the mind. 
If a man offered his sacrifice and bowed to the god, he was left not
only to think but to say practically whatever he liked about the
affair.  But the new sort of religions that had come into the world,
and particularly Christianity, turned inward.  These new faiths
demanded not simply conformity but understanding belief.  Naturally
fierce controversy ensued upon the exact meaning of the things
believed.  These new religions were creed religions.  The world was
confronted with a new word, Orthodoxy, and with a stern resolve to keep
not only acts but speech and private thought within the limits of a set
teaching.  For to hold a wrong opinion, much more to convey it to other
people, was no longer regarded as an intellectual defect but a moral
fault that might condemn a soul to everlasting destruction.

THE RAVENNA PANEL, DEPICTING JUSTINIAN AND HIS COURT
THE RAVENNA PANEL, DEPICTING JUSTINIAN AND HIS COURT

_Photo:  Alinari_

THE ROCK HEWN TEMPLE AT PETRA
THE ROCK HEWN TEMPLE AT PETRA

_Photo:  Underwood & Underwood_

Both Ardashir I who founded the Sassanid dynasty in the third century
A.D., and Constantine the Great who reconstructed the Roman Empire in
the fourth, turned to religious organizations for help, because in
these organizations they saw a new means of using and controlling the
wills of men.  And already before the end of the fourth century both
empires were persecuting free talk and religious innovation.  In Persia
Ardashir found the ancient Persian religion of Zoroaster (or
Zarathushtra) with its priests and temples and a sacred fire that burnt
upon its altars, ready for his purpose as a state religion.  Before the
end of the third century Zoroastrianism was persecuting Christianity,
and in 277 A.D. Mani, the founder of a new faith, the Manichæans, was
crucified and his body flayed. Constantinople, on its side, was busy
hunting out Christian heresies.  Manichæan ideas infected Christianity
and had to be fought with the fiercest methods; in return ideas from
Christianity affected the purity of the Zoroastrian doctrine. All ideas
became suspect.  Science, which demands before all things the free
action of an untroubled mind, suffered a complete eclipse throughout
this phase of intolerance.

War, the bitterest theology, and the usual vices of mankind constituted
Byzantine life of those days.  It was picturesque, it was romantic; it
had little sweetness or light.  When Byzantium and Persia were not
fighting the barbarians from the north, they wasted Asia Minor and
Syria in dreary and destructive hostilities.  Even in close alliance
these two empires would have found it a hard task to turn back the
barbarians and recover their prosperity.  The Turks or Tartars first
come into history as the allies first of one power and then of another.
 In the sixth century the two chief antagonists were Justinian and
Chosroes I; in the opening of the seventh the Emperor Heraclius was
pitted against Chosroes II (580).

At first and until after Heraclius had become Emperor (610) Chosroes II
carried all before him.  He took Antioch, Damascus and Jerusalem and
his armies reached Chalcedon, which is in Asia Minor over against
Constantinople.  In 619 he conquered Egypt.  Then Heraclius pressed a
counter attack home and routed a Persian army at Nineveh (627),
although at that time there were still Persian troops at Chalcedon.  In
628 Chosroes II was deposed and murdered by his son, Kavadh, and an
inconclusive peace was made between the two exhausted empires.

Byzantium and Persia had fought their last war.  But few people as yet
dreamt of the storm that was even then gathering in the deserts to put
an end for ever to this aimless, chronic struggle.

While Heraclius was restoring order in Syria a message reached him.  It
had been brought in to the imperial outpost at Bostra south of
Damascus; it was in Arabic, an obscure Semitic desert language, and it
was read to the Emperor, if it reached him at all, by an interpreter. 
It was from someone who called himself “Muhammad the Prophet of God.” 
It called upon the Emperor to acknowledge the One True God and to serve
him.  What the Emperor said is not recorded.

A similar message came to Kavadh at Ctesiphon.  He was annoyed, tore up
the letter, and bade the messenger begone.

This Muhammad, it appeared, was a Bedouin leader whose headquarters
were in the mean little desert town of Medina. He was preaching a new
religion of faith in the One True God.

“Even so, O Lord!” he said; “rend thou his Kingdom from Kavadh.”', 1374)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('d860c532-224a-4cd8-aaf2-3b0a6d5f6585', '8268eabe-4b74-414e-a1f6-5a266d184560', 42, 'XLII The Dynasties of Suy and Tang in China', 'Throughout the fifth, sixth, seventh and eighth centuries, there was a
steady drift of Mongolian peoples westward. The Huns of Attila were
merely precursors of this advance, which led at last to the
establishment of Mongolian peoples in Finland, Esthonia, Hungary and
Bulgaria, where their descendants, speaking languages akin to Turkish,
survive to this day. The Mongolian nomads were, in fact, playing a role
towards the Aryanized civilizations of Europe and Persia and India that
the Aryans had played to the Ægean and Semitic civilizations ten or
fifteen centuries before.

In Central Asia the Turkish peoples had taken root in what is now
Western Turkestan, and Persia already employed many Turkish officials
and Turkish mercenaries.  The Parthians had gone out of history,
absorbed into the general population of Persia.  There were no more
Aryan nomads in the history of Central Asia; Mongolian people had
replaced them.  The Turks became masters of Asia from China to the
Caspian.

The same great pestilence at the end of the second century A.D. that
had shattered the Roman Empire had overthrown the Han dynasty in China.
 Then came a period of division and of Hunnish conquests from which
China arose refreshed, more rapidly and more completely than Europe was
destined to do.  Before the end of the sixth century China was reunited
under the Suy dynasty, and this by the time of Heraclius gave place to
the Tang dynasty, whose reign marks another great period of prosperity
for China.

CHINESE EARTHENWARE ART OF THE TANG DYNASTY, 616-906
CHINESE EARTHENWARE ART OF THE TANG DYNASTY, 616-906

Specimens in glazed earthenware, in brown, green and buff, discovered
in tombs in China

_(In the Victoria and Albert Museum)_

Throughout the seventh, eighth and ninth centuries China was the most
secure and civilized country in the world.  The Han dynasty had
extended her boundaries in the north; the Suy and Tang dynasties now
spread her civilization to the south, and China began to assume the
proportions she has to-day.  In Central Asia indeed she reached much
further, extending at last, through tributary Turkish tribes, to Persia
and the Caspian Sea.

The new China that had arisen was a very different land from the old
China of the Hans.  A new and more vigorous literary school appeared,
there was a great poetic revival; Buddhism had revolutionized
philosophical and religious thought. There were great advances in
artistic work, in technical skill and in all the amenities of life. 
Tea was first used, paper manufactured and wood-block printing began. 
Millions of people indeed were leading orderly, graceful and kindly
lives in China during these centuries when the attenuated populations
of Europe and Western Asia were living either in hovels, small walled
cities or grim robber fortresses.  While the mind of the west was black
with theological obsessions, the mind of China was open and tolerant
and enquiring.

One of the earliest monarchs of the Tang dynasty was Tai- tsung, who
began to reign in 627, the year of the victory of Heraclius at Nineveh.
 He received an embassy from Heraclius, who was probably seeking an
ally in the rear of Persia.  From Persia itself came a party of
Christian missionaries (635). They were allowed to explain their creed
to Tai-tsung and he examined a Chinese translation of their Scriptures.
 He pronounced this strange religion acceptable, and gave permission
for the foundation of a church and monastery.

To this monarch also (in 628) came messengers from Muhammad. They came
to Canton on a trading ship.  They had sailed the whole way from Arabia
along the Indian coasts.  Unlike Heraclius and Kavadh, Tai-Tsung gave
these envoys a courteous hearing.  He expressed his interest in their
theological ideas and assisted them to build a mosque in Canton, a
mosque which survives, it is said, to this day, the oldest mosque in
the world.', 639)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('56467939-3d30-4340-ab41-115cf6aac6ba', '8268eabe-4b74-414e-a1f6-5a266d184560', 43, 'XLIII Muhammad and Islam', 'A prophetic amateur of history surveying the world in the opening of
the seventh century might have concluded very reasonably that it was
only a question of a few centuries before the whole of Europe and Asia
fell under Mongolian domination. There were no signs of order or union
in Western Europe, and the Byzantine and Persian Empires were
manifestly bent upon a mutual destruction. India also was divided and
wasted. On the other hand China was a steadily expanding empire which
probably at that time exceeded all Europe in population, and the
Turkish people who were growing to power in Central Asia were disposed
to work in accord with China. And such a prophecy would not have been
an altogether vain one. A time was to come in the thirteenth century
when a Mongolian overlord would rule from the Danube to the Pacific,
and Turkish dynasties were destined to reign over the entire Byzantine
and Persian Empires, over Egypt and most of India.

Where our prophet would have been most likely to have erred would have
been in under-estimating the recuperative power of the Latin end of
Europe and in ignoring the latent forces of the Arabian desert.  Arabia
would have seemed what it had been for times immemorial, the refuge of
small and bickering nomadic tribes.  No Semitic people had founded an
empire now for more than a thousand years.

Then suddenly the Bedouin flared out for a brief century of splendour. 
They spread their rule and language from Spain to the boundaries of
China.  They gave the world a new culture. They created a religion that
is still to this day one of the most vital forces in the world.

The man who fired this Arab flame appears first in history as the young
husband of the widow of a rich merchant of the town of Mecca, named
Muhammad.  Until he was forty he did very little to distinguish himself
in the world.  He seems to have taken considerable interest in
religious discussion.  Mecca was a pagan city at that time worshipping
in particular a black stone, the Kaaba, of great repute throughout all
Arabia and a centre of pilgrimages; but there were great numbers of
Jews in the country—indeed all the southern portion of Arabia professed
the Jewish faith—and there were Christian churches in Syria.

About forty Muhammad began to develop prophetic characteristics like
those of the Hebrew prophets twelve hundred years before him.  He
talked first to his wife of the One True God, and of the rewards and
punishments of virtue and wickedness.  There can be no doubt that his
thoughts were very strongly influenced by Jewish and Christian ideas. 
He gathered about him a small circle of believers and presently began
to preach in the town against the prevalent idolatry. This made him
extremely unpopular with his fellow townsmen because the pilgrimages to
the Kaaba were the chief source of such prosperity as Mecca enjoyed. 
He became bolder and more definite in his teaching, declaring himself
to be the last chosen prophet of God entrusted with a mission to
perfect religion.  Abraham, he declared, and Jesus Christ were his
forerunners.  He had been chosen to complete and perfect the revelation
of God’s will.

He produced verses which he said had been communicated to him by an
angel, and he had a strange vision in which he was taken up through the
Heavens to God and instructed in his mission.

AT PRAYER IN THE DESERT
AT PRAYER IN THE DESERT

_Photo:  Lehnert & Landrock_

As his teaching increased in force the hostility of his fellow townsmen
increased also.  At last a plot was made to kill him; but he escaped
with his faithful friend and disciple, Abu Bekr, to the friendly town
of Medina which adopted his doctrine.  Hostilities followed between
Mecca and Medina which ended at last in a treaty.  Mecca was to adopt
the worship of the One True God and accept Muhammad as his prophet,
_but the adherents of the new faith were still to make the pilgrimage
to Mecca_ just as they had done when they were pagans.  So Muhammad
established the One True God in Mecca without injuring its pilgrim
traffic.  In 629 Muhammad returned to Mecca as its master, a year after
he had sent out these envoys of his to Heraclius, Tai-tsung, Kavadh and
all the rulers of the earth.

LOOKING ACROSS THE SEA OF SAND
LOOKING ACROSS THE SEA OF SAND

_Photo:  Lehnert & Landrock_

Then for four years more until his death in 632, Muhammad spread his
power over the rest of Arabia.  He married a number of wives in his
declining years, and his life on the whole was by modern standards
unedifying.  He seems to have been a man compounded of very
considerable vanity, greed, cunning, self-deception and quite sincere
religious passion. He dictated a book of injunctions and expositions,
the Koran, which he declared was communicated to him from God. 
Regarded as literature or philosophy the Koran is certainly unworthy of
its alleged Divine authorship.

Yet when the manifest defects of Muhammad’s life and writings have been
allowed for, there remains in Islam, this faith he imposed upon the
Arabs, much power and inspiration. One is its uncompromising
monotheism; its simple enthusiastic faith in the rule and fatherhood of
God and its freedom from theological complications.  Another is its
complete detachment from the sacrificial priest and the temple.  It is
an entirely prophetic religion, proof against any possibility of
relapse towards blood sacrifices.  In the Koran the limited and
ceremonial nature of the pilgrimage to Mecca is stated beyond the
possibility of dispute, and every precaution was taken by Muhammad to
prevent the deification of himself after his death.  And a third
element of strength lay in the insistence of Islam upon the perfect
brotherhood and equality before God of all believers, whatever their
colour, origin or status.

These are the things that made Islam a power in human affairs.  It has
been said that the true founder of the Empire of Islam was not so much
Muhammad as his friend and helper, Abu Bekr.  If Muhammad, with his
shifty character, was the mind and imagination of primitive Islam, Abu
Bekr was its conscience and its will.  Whenever Muhammad wavered Abu
Bekr sustained him.  And when Muhammad died, Abu Bekr became Caliph (=
successor), and with that faith that moves mountains, he set himself
simply and sanely to organize the subjugation of the whole world to
Allah—with little armies of 3,000 or 4,000 Arabs—according to those
letters the prophet had written from Medina in 628 to all the monarchs
of the world.', 1110)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('7f7bf545-04a5-4b26-a1ed-a5833969b740', '8268eabe-4b74-414e-a1f6-5a266d184560', 44, 'XLIV The Great Days of the Arabs', 'There follows the most amazing story of conquest in the whole history
of our race. The Byzantine army was smashed at the battle of the Yarmuk
(a tributary of the Jordan) in 634; and the Emperor Heraclius, his
energy sapped by dropsy and his resources exhausted by the Persian war,
saw his new conquests in Syria, Damascus, Palmyra, Antioch, Jerusalem
and the rest fall almost without resistance to the Moslim. Large
elements in the population went over to Islam. Then the Moslim turned
east. The Persians had found an able general in Rustam; they had a
great host with a force of elephants; and for three days they fought
the Arabs at Kadessia (637) and broke at last in headlong rout.

The conquest of all Persia followed, and the Moslem Empire pushed far
into Western Turkestan and eastward until it met the Chinese.  Egypt
fell almost without resistance to the new conquerors, who full of a
fanatical belief in the sufficiency of the Koran, wiped out the
vestiges of the book-copying industry of the Alexandria Library.  The
tide of conquest poured along the north coast of Africa to the Straits
of Gibraltar and Spain.  Spain was invaded in 710 and the Pyrenees
Mountains were reached in 720.  In 732 the Arab advance had reached the
centre of France, but here it was stopped for good at the battle of
Poitiers and thrust back as far as the Pyrenees again.  The conquest of
Egypt had given the Moslim a fleet, and for a time it looked as though
they would take Constantinople.  They made repeated sea attacks between
672 and 718 but the great city held out against them.

Map: The Growth of the Moslem Power in 25 Years

Map: The Moslem Empire, 750 A.D.

The Arabs had little political aptitude and no political experience,
and this great empire with its capital now at Damascus, which stretched
from Spain to China, was destined to break up very speedily. From the
very beginning doctrinal differences undermined its unity.  But our
interest here lies not with the story of its political disintegration
but with its effect upon the human mind and upon the general destinies
of our race.  The Arab intelligence had been flung across the world
even more swiftly and dramatically than had the Greek a thousand years
before.  The intellectual stimulation of the whole world west of China,
the break-up of old ideas and development of new ones, was enormous.

In Persia this fresh excited Arabic mind came into contact not only
with Manichæan, Zoroastrian and Christian doctrine, but with the
scientific Greek literature, preserved not only in Greek but in Syrian
translations.  It found Greek learning in Egypt also. Every-where, and
particularly in Spain, it discovered an active Jewish tradition of
speculation and discussion.  In Central Asia it met Buddhism and the
material achievements of Chinese civilization.  It learnt the
manufacture of paper—which made printed books possible—from the
Chinese.  And finally it came into touch with Indian mathematics and
philosophy.

JERUSALEM, SHOWING THE MOSQUE OF OMAR
JERUSALEM, SHOWING THE MOSQUE OF OMAR

_Photo:  Lehnert & Landrock_

Very speedily the intolerant self-sufficiency of the early days of
faith, which made the Koran seem the only possible book, was dropped.
Learning sprang up everywhere in the footsteps of the Arab conquerors. 
By the eighth century there was an educational organization throughout
the whole “Arabized” world.  In the ninth learned men in the schools of
Cordoba in Spain were corresponding with learned men in Cairo, Bagdad,
Bokhara and Samarkand.  The Jewish mind assimilated very readily with
the Arab, and for a time the two Semitic races worked together through
the medium of Arabic.  Long after the political break-up and
enfeeblement of the Arabs, this intellectual community of the
Arab-speaking world endured.  It was still producing very considerable
results in the thirteenth century.

VIEW OF CAIRO MOSQUES
VIEW OF CAIRO MOSQUES

_Photo:  Lehnert & Landrock_

So it was that the systematic accumulation and criticism of facts which
was first begun by the Greeks was resumed in this astonishing
renascence of the Semitic world.  The seed of Aristotle and the museum
of Alexandria that had lain so long inactive and neglected now
germinated and began to grow towards fruition.  Very great advances
were made in mathematical, medical and physical science.  The clumsy
Roman numerals were ousted by the Arabic figures we use to this day and
the zero sign was first employed.  The very name algebra is Arabic.  So
is the word chemistry.  The names of such stars as Algol, Aldebaran and
Boötes preserve the traces of Arab conquests in the sky.  Their
philosophy was destined to reanimate the medieval philosophy of France
and Italy and the whole Christian world.

The Arab experimental chemists were called alchemists, and they were
still sufficiently barbaric in spirit to keep their methods and results
secret as far as possible.  They realized from the very beginning what
enormous advantages their possible discoveries might give them, and
what far-reaching consequences they might have on human life.  They
came upon many metallurgical and technical devices of the utmost value,
alloys and dyes, distilling, tinctures and essences, optical glass; but
the two chief ends they sought, they sought in vain.  One was “the
philosopher’s stone”—a means of changing the metallic elements one into
another and so getting a control of artificial gold, and the other was
the _elixir vitœ_, a stimulant that would revivify age and prolong life
indefinitely.  The crabbed patient experimenting of these Arab
alchemists spread into the Christian world.  The fascination of their
enquiries spread.  Very gradually the activities of these alchemists
became more social and co-operative.  They found it profitable to
exchange and compare ideas.  By insensible gradations the last of the
alchemists became the first of the experimental philosophers.

The old alchemists sought the philosopher’s stone which was to
transmute base metals to gold, and an elixir of immortality; they found
the methods of modern experimental science which promise in the end to
give man illimitable power over the world and over his own destiny.', 1008)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('f3ecc19e-0c55-4a44-afb6-71bbc3cd4fc0', '8268eabe-4b74-414e-a1f6-5a266d184560', 45, 'XLV The Development of Latin Christendom', 'It is worth while to note the extremely shrunken dimensions of the
share of the world remaining under Aryan control in the seventh and
eighth centuries. A thousand years before, the Aryan-speaking races
were triumphant over all the civilized world west of China. Now the
Mongol had thrust as far as Hungary, nothing of Asia remained under
Aryan rule except the Byzantine dominions in Asia Minor, and all Africa
was lost and nearly all Spain. The great Hellenic world had shrunken to
a few possessions round the nucleus of the trading city of
Constantinople, and the memory of the Roman world was kept alive by the
Latin of the western Christian priests. In vivid contrast to this tale
of retrogression, the Semitic tradition had risen again from
subjugation and obscurity after a thousand years of darkness.

Yet the vitality of the Nordic peoples was not exhausted. Confined now
to Central and North-Western Europe and terribly muddled in their
social and political ideas, they were nevertheless building up
gradually and steadily a new social order and preparing unconsciously
for the recovery of a power even more extensive than that they had
previously enjoyed.

We have told how at the beginning of the sixth century there remained
no central government in Western Europe at all. That world was divided
up among numbers of local rulers holding their own as they could.  This
was too insecure a state of affairs to last; a system of co-operation
and association grew up in this disorder, the feudal system, which has
left its traces upon European life up to the present time.  This feudal
system was a sort of crystallization of society about power. 
Everywhere the lone man felt insecure and was prepared to barter a
certain amount of his liberty for help and protection.  He sought a
stronger man as his lord and protector; he gave him military services
and paid him dues, and in return he was confirmed in his possession of
what was his.  His lord again found safety in vassalage to a still
greater lord.  Cities also found it convenient to have feudal
protectors, and monasteries and church estates bound themselves by
similar ties.  No doubt in many cases allegiance was claimed before it
was offered; the system grew downward as well as upward.  So a sort of
pyramidal system grew up, varying widely in different localities,
permitting at first a considerable play of violence and private warfare
but making steadily for order and a new reign of law.  The pyramids
grew up until some became recognizable as kingdoms.  Already by the
early sixth century a Frankish kingdom existed under its founder Clovis
in what is now France and the Netherlands, and presently Visigothic and
Lombard and Gothic kingdoms were in existence.

The Moslim when they crossed the Pyrenees in 720 found this Frankish
kingdom under the practical rule of Charles Martel, the Mayor of the
Palace of a degenerate descendant of Clovis, and experienced the
decisive defeat of Poitiers (732) at his hands.  This Charles Martel
was practically overlord of Europe north of the Alps from the Pyrenees
to Hungary.  He ruled over a multitude of subordinate lords speaking
French- Latin, and High and Low German languages.  His son Pepin
extinguished the last descendants of Clovis and took the kingly state
and title.  His grandson Charlemagne, who began to reign in 768, found
himself lord of a realm so large that he could think of reviving the
title of Latin Emperor.  He conquered North Italy and made himself
master of Rome.

Map: Area more or less under Frankish dominion in the time of Charles
Martel

Approaching the story of Europe as we do from the wider horizons of a
world history we can see much more distinctly than the mere nationalist
historian how cramping and disastrous this tradition of the Latin Roman
Empire was.  A narrow intense struggle for this phantom predominance
was to consume European energy for more than a thousand years. Through
all that period it is possible to trace certain unquenchable
antagonisms; they run through the wits of Europe like the obsessions of
a demented mind.  One driving force was this ambition of successful
rulers, which Charlemagne (Charles the Great) embodied, to become
Cæsar.  The realm of Charlemagne consisted of a complex of feudal
German states at various stages of barbarism.  West of the Rhine, most
of these German peoples had learnt to speak various Latinized dialects
which fused at last to form French.  East of the Rhine, the racially
similar German peoples did not lose their German speech.  On account of
this, communication was difficult between these two groups of barbarian
conquerors and a split easily brought about.  The split was made the
more easy by the fact that the Frankish usage made it seem natural to
divide the empire of Charlemagne among his sons at his death.  So one
aspect of the history of Europe from the days of Charlemagne onwards is
a history of first this monarch and his family and then that,
struggling to a precarious headship of the kings, princes, dukes,
bishops and cities of Europe, while a steadily deepening antagonism
between the French and German speaking elements develops in the medley.
 There was a formality of election for each emperor; and the climax of
his ambition was to struggle to the possession of that worn-out,
misplaced capital Rome and to a coronation there.

The next factor in the European political disorder was the resolve of
the Church at Rome to make no temporal prince but the Pope of Rome
himself emperor in effect.  He was already pontifex maximus; for all
practical purposes he held the decaying city; if he had no armies he
had at least a vast propaganda organization in his priests throughout
the whole Latin world; if he had little power over men’s bodies he held
the keys of heaven and hell in their imaginations and could exercise
much influence upon their souls.  So throughout the middle ages while
one prince manœuvred against another first for equality, then for
ascendancy, and at last for the supreme prize, the Pope of Rome,
sometimes boldly, sometimes craftily, sometimes feebly—for the Popes
were a succession of oldish men and the average reign of a Pope was not
more than two years—manœuvred for the submission of all the princes to
himself as the ultimate overlord of Christendom.

But these antagonisms of prince against prince and of Emperor against
Pope do not by any means exhaust the factors of the European confusion.
 There was still an Emperor in Constantinople speaking Greek and
claiming the allegiance of all Europe.  When Charlemagne sought to
revive the empire, it was merely the Latin end of the empire he
revived.  It was natural that a sense of rivalry between Latin Empire
and Greek Empire should develop very readily.  And still more readily
did the rivalry of Greek-speaking Christianity and the newer
Latin-speaking version develop.  The Pope of Rome claimed to be the
successor of St. Peter, the chief of the apostles of Christ, and the
head of the Christian community everywhere.  Neither the emperor nor
the patriarch in Constantinople were disposed to acknowledge this
claim.  A dispute about a fine point in the doctrine of the Holy
Trinity consummated a long series of dissensions in a final rupture in
1054.  The Latin Church and the Greek Church became and remained
thereafter distinct and frankly antagonistic. This antagonism must be
added to the others in our estimate of the conflicts that wasted Latin
Christendom in the middle ages.

STATUE OF CHARLEMAGNE IN FRONT OF NOTRE DAME, PARIS
STATUE OF CHARLEMAGNE IN FRONT OF NOTRE DAME, PARIS
The figure is entirely imaginary and romantic.  There is no
contemporary portrait of Charlemagne

_Photo:  Rischgitz_

Upon this divided world of Christendom rained the blows of three sets
of antagonists.  About the Baltic and North Seas remained a series of
Nordic tribes who were only very slowly and reluctantly Christianized;
these were the Northmen.  They had taken to the sea and piracy, and
were raiding all the Christian coasts down to Spain.  They had pushed
up the Russian rivers to the desolate central lands and brought their
shipping over into the south-flowing rivers.  They had come out upon
the Caspian and Black Seas as pirates also.  They set up principalities
in Russia; they were the first people to be called Russians.  These
Northmen Russians came near to taking Constantinople.  England in the
early ninth century was a Christianized Low German country under a
king, Egbert, a protégé and pupil of Charlemagne.  The Northmen wrested
half the kingdom from his successor Alfred the Great (886), and finally
under Canute (1016) made themselves masters of the whole land.  Under
Rolph the Ganger (912) another band of Northmen conquered the north of
France, which became Normandy.

Canute ruled not only over England but over Norway and Denmark, but his
brief empire fell to pieces at his death through that political
weakness of the barbaric peoples—division among a ruler’s sons.  It is
interesting to speculate what might have happened if this temporary
union of the Northmen had endured.  They were a race of astonishing
boldness and energy.  They sailed in their galleys even to Iceland and
Greenland.  They were the first Europeans to land on American soil. 
Later on Norman adventurers were to recover Sicily from the Saracens
and sack Rome.  It is a fascinating thing to imagine what a great
northern sea-faring power might have grown out of Canute’s kingdom,
reaching from America to Russia.

To the east of the Germans and Latinized Europeans was a medley of Slav
tribes and Turkish peoples.  Prominent among these were the Magyars or
Hungarians who were coming westward throughout the eighth and ninth
centuries.  Charlemagne held them for a time, but after his death they
established themselves in what is now Hungary; and after the fashion of
their kindred predecessors, the Huns, raided every summer into the
settled parts of Europe.  In 938 they went through Germany into France,
crossed the Alps into North Italy, and so came home, burning, robbing
and destroying.

Finally pounding away from the south at the vestiges of the Roman
Empire were the Saracens.  They had made themselves largely masters of
the sea; their only formidable adversaries upon the water were the
Northmen, the Russian Northmen out of the Black Sea and the Northmen of
the west.

Map: Europe at the death of Charlemagne—814

Hemmed in by these more vigorous and aggressive peoples, amidst forces
they did not understand and dangers they could not estimate,
Charlemagne and after him a series of other ambitious spirits took up
the futile drama of restoring the Western Empire under the name of the
Holy Roman Empire.  From the time of Charlemagne onward this idea
obsessed the political life of Western Europe, while in the East the
Greek half of the Roman power decayed and dwindled until at last
nothing remained of it at all but the corrupt trading city of
Constantinople and a few miles of territory about it. Politically the
continent of Europe remained traditional and uncreative from the time
of Charlemagne onward for a thousand years.

The name of Charlemagne looms large in European history but his
personality is but indistinctly seen.  He could not read nor write, but
he had a considerable respect for learning; he liked to be read aloud
to at meals and he had a weakness for theological discussion.  At his
winter quarters at Aix-la- Chapelle or Mayence he gathered about him a
number of learned men and picked up much from their conversation.  In
the summer he made war, against the Spanish Saracens, against the Slavs
and Magyars, against the Saxons, and other still heathen German tribes.
 It is doubtful whether the idea of becoming Cæsar in succession to
Romulus Augustulus occurred to him before his acquisition of North
Italy, or whether it was suggested to him by Pope Leo III, who was
anxious to make the Latin Church independent of Constantinople.

There were the most extraordinary manœuvres at Rome between the Pope
and the prospective emperor in order to make it appear or not appear as
if the Pope gave him the imperial crown.  The Pope succeeded in
crowning his visitor and conqueror by surprise in St. Peter’s on
Christmas Day 800 A.D.  He produced a crown, put it on the head of
Charlemagne and hailed him Cæsar and Augustus.  There was great
applause among the people. Charlemagne was by no means pleased at the
way in which the thing was done, it rankled in his mind as a defeat;
and he left the most careful instructions to his son that he was not to
let the Pope crown him emperor; he was to seize the crown into his own
hands and put it on his own head himself.  So at the very outset of
this imperial revival we see beginning the age-long dispute of Pope and
Emperor for priority.  But Louis the Pious, the son of Charlemagne,
disregarded his father’s instructions and was entirely submissive to
the Pope.

The empire of Charlemagne fell apart at the death of Louis the Pious
and the split between the French-speaking Franks and the
German-speaking Franks widened.  The next emperor to arise was Otto,
the son of a certain Henry the Fowler, a Saxon, who had been elected
King of Germany by an assembly of German princes and prelates in 919. 
Otto descended upon Rome and was crowned emperor there in 962.  This
Saxon line came to an end early in the eleventh century and gave place
to other German rulers.  The feudal princes and nobles to the west who
spoke various French dialects did not fall under the sway of these
German emperors after the Carlovingian line, the line that is descended
from Charlemagne, had come to an end, and no part of Britain ever came
into the Holy Roman Empire.  The Duke of Normandy, the King of France
and a number of lesser feudal rulers remained outside.  In 987 the
Kingdom of France passed out of the possession of the Carlovingian line
into the hands of Hugh Capet, whose descendants were still reigning in
the eighteenth century.  At the time of Hugh Capet the King of France
ruled only a comparatively small territory round Paris.

In 1066 England was attacked almost simultaneously by an invasion of
the Norwegian Northmen under King Harold Hardrada and by the Latinized
Northmen under the Duke of Normandy. Harold King of England defeated
the former at the battle of Stamford Bridge, and was defeated by the
latter at Hastings. England was conquered by the Normans, and so cut
off from Scandinavian, Teutonic and Russian affairs, and brought into
the most intimate relations and conflicts with the French. For the next
four centuries the English were entangled in the conflicts of the
French feudal princes and wasted upon the fields of France.', 2485)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;
