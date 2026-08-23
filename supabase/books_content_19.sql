-- ============================================================
-- NOI DUNG SACH — phan 19/20
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
  ('a773a3e8-835e-4a88-a978-c8c06eb23ad1', '8268eabe-4b74-414e-a1f6-5a266d184560', 46, 'XLVI The Crusades and the Age of Papal Dominion', 'It is interesting to note that Charlemagne corresponded with the Caliph
Haroun-al-Raschid, the Haroun-al-Raschid of the _Arabian Nights_. It is
recorded that Haroun-al-Raschid sent ambassadors from Bagdad—which had
now replaced Damascus as the Moslem capital—with a splendid tent, a
water clock, an elephant and the keys of the Holy Sepulchre. This
latter present was admirably calculated to set the Byzantine Empire and
this new Holy Roman Empire by the ears as to which was the proper
protector of the Christians in Jerusalem.

These presents remind us that while Europe in the ninth century was
still a weltering disorder of war and pillage, there flourished a great
Arab Empire in Egypt and Mesopotamia, far more civilized than anything
Europe could show.  Here literature and science still lived; the arts
flourished, and the mind of man could move without fear or
superstition.  And even in Spain and North Africa where the Saracenic
dominions were falling into political confusion there was a vigorous
intellectual life.  Aristotle was read and discussed by these Jews and
Arabs during these centuries of European darkness.  They guarded the
neglected seeds of science and philosophy.

North-east of the Caliph’s dominions was a number of Turkish tribes. 
They had been converted to Islam, and they held the faith much more
simply and fiercely than the actively intellectual Arabs and Persians
to the south.  In the tenth century the Turks were growing strong and
vigorous while the Arab power was divided and decaying.  The relations
of the Turks to the Empire of the Caliphate became very similar to the
relations of the Medes to the last Babylonian Empire fourteen centuries
before.  In the eleventh century a group of Turkish tribes, the Seljuk
Turks, came down into Mesopotamia and made the Caliph their nominal
ruler but really their captive and tool.  They conquered Armenia.  Then
they struck at the remnants of the Byzantine power in Asia Minor.  In
1071 the Byzantine army was utterly smashed at the battle of Melasgird,
and the Turks swept forward until not a trace of Byzantine rule
remained in Asia. They took the fortress of Nicæa over against
Constantinople, and prepared to attempt that city.

The Byzantine emperor, Michael VII, was overcome with terror. He was
already heavily engaged in warfare with a band of Norman adventurers
who had seized Durazzo, and with a fierce Turkish people, the
Petschenegs, who were raiding over the Danube.  In his extremity he
sought help where he could, and it is notable that he did not appeal to
the western emperor but to the Pope of Rome as the head of Latin
Christendom.  He wrote to Pope Gregory VII, and his successor Alexius
Comnenus wrote still more urgently to Urban II.

CRUSADER TOMBS IN EXETER CATHEDRAL
CRUSADER TOMBS IN EXETER CATHEDRAL

_Photo:  Mansell_

This was not a quarter of a century from the rupture of the Latin and
Greek churches.  That controversy was still vividly alive in men’s
minds, and this disaster to Byzantium must have presented itself to the
Pope as a supreme opportunity for reasserting the supremacy of the
Latin Church over the dissentient Greeks.  Moreover this occasion gave
the Pope a chance to deal with two other matters that troubled western
Christendom very greatly.  One was the custom of “private war” which
disordered social life, and the other was the superabundant fighting
energy of the Low Germans and Christianized Northmen and particularly
of the Franks and Normans.  A religious war, the Crusade, the War of
the Cross, was preached against the Turkish captors of Jerusalem, and a
truce to all warfare amongst Christians (1095).  The declared object of
this war was the recovery of the Holy Sepulchre from the unbelievers. 
A man called Peter the Hermit carried on a popular propaganda
throughout France and Germany on broadly democratic lines. He went clad
in a coarse garment, barefooted on an ass, he carried a huge cross and
harangued the crowd in street or market-place or church.  He denounced
the cruelties practised upon the Christian pilgrims by the Turks, and
the shame of the Holy Sepulchre being in any but Christian hands.  The
fruits of centuries of Christian teaching became apparent in the
response.  A great wave of enthusiasm swept the western world, and
popular Christendom discovered itself.

VIEW OF CAIRO
VIEW OF CAIRO

_Photo:  Lehnert & Landrock_

Such a widespread uprising of the common people in relation to a single
idea as now occurred was a new thing in the history of our race.  There
is nothing to parallel it in the previous history of the Roman Empire
or of India or China. On a smaller scale, however, there had been
similar movements among the Jewish people after their liberation from
the Babylonian captivity, and later on Islam was to display a parallel
susceptibility to collective feeling.  Such movements were certainly
connected with the new spirit that had come into life with the
development of the missionary- teaching religions.  The Hebrew
prophets, Jesus and his disciples, Mani, Muhammad, were all exhorters
of men’s individual souls.  They brought the personal conscience face
to face with God.  Before that time religion had been much more a
business of fetish, of pseudoscience, than of conscience.  The old kind
of religion turned upon temple, initiated priest and mystical
sacrifice, and ruled the common man like a slave by fear.  The new kind
of religion made a man of him.

The preaching of the First Crusade was the first stirring of the common
people in European history.  It may be too much to call it the birth of
modern democracy, but certainly at that time modern democracy stirred. 
Before very long we shall find it stirring again, and raising the most
disturbing social and religious questions.

Certainly this first stirring of democracy ended very pitifully and
lamentably.  Considerable bodies of common people, crowds rather than
armies, set out eastward from France and the Rhineland and Central
Europe without waiting for leaders or proper equipment to rescue the
Holy Sepulchre. This was the “people’s crusade.”  Two great mobs
blundered into Hungary, mistook the recently converted Magyars for
pagans, committed atrocities and were massacred. A third multitude with
a similarly confused mind, after a great pogrom of the Jews in the
Rhineland, marched eastward, and was also destroyed in Hungary.  Two
other huge crowds, under the leadership of Peter the Hermit himself,
reached Constantinople, crossed the Bosphorus, and were massacred
rather than defeated by the Seljuk Turks.  So began and ended this
first movement of the European people, as people.

Next year (1097) the real fighting forces crossed the Bosphorus. 
Essentially they were Norman in leadership and spirit.  They stormed
Nicæa, marched by much the same route as Alexander had followed
fourteen centuries before, to Antioch.  The siege of Antioch kept them
a year, and in June 1099 they invested Jerusalem.  It was stormed after
a month’s siege.  The slaughter was terrible.  Men riding on horseback
were splashed by the blood in the streets.  At nightfall on July 15th
the Crusaders had fought their way into the Church of the Holy
Sepulchre and overcome all opposition there: blood-stained, weary and
“sobbing from excess of joy” they knelt down in prayer.

THE HORSES OF S. MARK, VENICE
THE HORSES OF S. MARK, VENICE
Originally on the arch of Trajan at Constantinople, the Doge Dandalo V
took them after the Fourth Crusade, to Venice, whence Napoleon I
removed them to Paris, but in 1815 they were returned to Venice. 
During the Great War of 1914-18 they were hidden away for fear of air
raids.

_Photo:  D. McLeish_

Immediately the hostility of Latin and Greek broke out again. The
Crusaders were the servants of the Latin Church, and the Greek
patriarch of Jerusalem found himself in a far worse case under the
triumphant Latins than under the Turks.  The Crusaders discovered
themselves between Byzantine and Turk and fighting both.  Much of Asia
Minor was recovered by the Byzantine Empire, and the Latin princes were
left, a buffer between Turk and Greek, with Jerusalem and a few small
principalities, of which Edessa was one of the chief, in Syria.  Their
grip even on these possessions was precarious, and in 1144 Edessa fell
to the Moslim, leading to an ineffective Second Crusade, which failed
to recover Edessa but saved Antioch from a similar fate.

In 1169 the forces of Islam were rallied under a Kurdish adventurer
named Saladin who had made himself master of Egypt.  He preached a Holy
War against the Christians, recaptured Jerusalem in 1187, and so
provoked the Third Crusade.  This failed to recover Jerusalem.  In the
Fourth Crusade (1202-4) the Latin Church turned frankly upon the Greek
Empire, and there was not even a pretence of fighting the Turks.  It
started from Venice and in 1204 it stormed Constantinople. The great
rising trading city of Venice was the leader in this adventure, and
most of the coasts and islands of the Byzantine Empire were annexed by
the Venetians.  A “Latin” emperor (Baldwin of Flanders) was set up in
Constantinople and the Latin and Greek Church were declared to be
reunited.  The Latin emperors ruled in Constantinople from 1204 to 1261
when the Greek world shook itself free again from Roman predominance.

The twelfth century then and the opening of the thirteenth was the age
of papal ascendancy just as the eleventh was the age of the ascendancy
of the Seljuk Turks and the tenth the age of the Northmen.  A united
Christendom under the rule of the Pope came nearer to being a working
reality than it ever was before or after that time.

A COURTYARD IN THE ALHAMBRA
A COURTYARD IN THE ALHAMBRA

_Photo:  Lehnert & Landrock_

In those centuries a simple Christian faith was real and widespread
over great areas of Europe.  Rome itself had passed through some dark
and discreditable phases; few writers can be found to excuse the lives
of Popes John XI and John XII in the tenth century; they were
abominable creatures; but the heart and body of Latin Christendom had
remained earnest and simple; the generality of the common priests and
monks and nuns had lived exemplary and faithful lives.  Upon the wealth
of confidence such lives created rested the power of the church.  Among
the great Popes of the past had been Gregory the Great, Gregory I
(590-604) and Leo III (795-816) who invited Charlemagne to be Cæsar and
crowned him in spite of himself.  Towards the close of the eleventh
century there arose a great clerical statesman, Hildebrand, who ended
his life as Pope Gregory VII (1073- 1085).  Next but one after him came
Urban II (1087-1099), the Pope of the First Crusade.  These two were
the founders of this period of papal greatness during which the Popes
lorded it over the Emperors.  From Bulgaria to Ireland and from Norway
to Sicily and Jerusalem the Pope was supreme.  Gregory VII obliged the
Emperor Henry IV to come in penitence to him at Canossa and to await
forgiveness for three days and nights in the courtyard of the castle,
clad in sackcloth and barefooted to the snow.  In 1176 at Venice the
Emperor Frederick (Frederick Barbarossa), knelt to Pope Alexander III
and swore fealty to him.

The great power of the church in the beginning of the eleventh century
lay in the wills and consciences of men.  It failed to retain the moral
prestige on which its power was based.  In the opening decades of the
fourteenth century it was discovered that the power of the Pope had
evaporated. What was it that destroyed the naive confidence of the
common people of Christendom in the church so that they would no longer
rally to its appeal and serve its purposes?

The first trouble was certainly the accumulation of wealth by the
church.  The church never died, and there was a frequent disposition on
the part of dying childless people to leave lands to the church. 
Penitent sinners were exhorted to do so.  Accordingly in many European
countries as much as a fourth of the land became church property.  The
appetite for property grows with what it feeds upon.  Already in the
thirteenth century it was being said everywhere that the priests were
not good men, that they were always hunting for money and legacies.

The kings and princes disliked this alienation of property very
greatly.  In the place of feudal lords capable of military support,
they found their land supporting abbeys and monks and nuns.  And these
lands were really under foreign dominion.  Even before the time of Pope
Gregory VII there had been a struggle between the princes and the
papacy over the question of “investitures,” the question that is of who
should appoint the bishops.  If that power rested with the Pope and not
the King, then the latter lost control not only of the consciences of
his subjects but of a considerable part of his dominions.  For also the
clergy claimed exemption from taxation.  They paid their taxes to Rome.
 And not only that, but the church also claimed the right to levy a tax
of one-tenth upon the property of the layman in addition to the taxes
he paid his prince.

The history of nearly every country in Latin Christendom tells of the
same phase in the eleventh century, a phase of struggle between monarch
and Pope on the issue of investitures and generally it tells of a
victory for the Pope.  He claimed to be able to excommunicate the
prince, to absolve his subjects from their allegiance to him, to
recognize a successor.  He claimed to be able to put a nation under an
interdict, and then nearly all priestly functions ceased except the
sacraments of baptism, confirmation and penance; the priests could
neither hold the ordinary services, marry people, nor bury the dead. 
With these two weapons it was possible for the twelfth century Popes to
curb the most recalcitrant princes and overawe the most restive
peoples.  These were enormous powers, and enormous powers are only to
be used on extraordinary occasions.  The Popes used them at last with a
frequency that staled their effect.  Within thirty years at the end of
the twelfth century we find Scotland, France and England in turn under
an interdict.  And also the Popes could not resist the temptation to
preach crusades against offending princes—until the crusading spirit
was extinct.

It is possible that if the Church of Rome had struggled simply against
the princes and had had a care to keep its hold upon the general mind,
it might have achieved a permanent dominion over all Christendom.  But
the high claims of the Pope were reflected as arrogance in the conduct
of the clergy.  Before the eleventh century the Roman priests could
marry; they had close ties with the people among whom they lived; they
were indeed a part of the people.  Gregory VII made them celibates; he
cut the priests off from too great an intimacy with the laymen in order
to bind them more closely to Rome, but indeed he opened a fissure
between the church and the commonalty.  The church had its own law
courts. Cases involving not merely priests but monks, students,
crusaders, widows, orphans and the helpless were reserved for the
clerical courts, and so were all matters relating to wills, marriages
and oaths and all cases of sorcery, heresy and blasphemy.  Whenever the
layman found himself in conflict with the priest he had to go to a
clerical court.  The obligations of peace and war fell upon his
shoulders alone and left the priest free.  It is no great wonder that
jealousy and hatred of the priests grew up in the Christian world.

Never did Rome seem to realize that its power was in the consciences of
common men.  It fought against religious enthusiasm, which should have
been its ally, and it forced doctrinal orthodoxy upon honest doubt and
aberrant opinion. When the church interfered in matters of morality it
had the common man with it, but not when it interfered in matters of
doctrine.  When in the south of France Waldo taught a return to the
simplicity of Jesus in faith and life, Innocent III preached a crusade
against the Waldenses, Waldo’s followers, and permitted them to be
suppressed with fire, sword, rape and the most abominable cruelties. 
When again St. Francis of Assisi (1181-1226) taught the imitation of
Christ and a life of poverty and service, his followers, the
Franciscans, were persecuted, scourged, imprisoned and dispersed.  In
1318 four of them were burnt alive at Marseilles.  On the other hand
the fiercely orthodox order of the Dominicans, founded by St. Dominic
(1170-1221) was strongly supported by Innocent III, who with its
assistance set up an organization, the Inquisition, for the hunting of
heresy and the affliction of free thought.

So it was that the church by excessive claims, by unrighteous
privileges, and by an irrational intolerance destroyed that free faith
of the common man which was the final source of all its power.  The
story of its decline tells of no adequate foemen from without but
continually of decay from within.', 2854)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('0c13c01e-0c71-4bd2-a04e-33b5c1ff6bee', '8268eabe-4b74-414e-a1f6-5a266d184560', 47, 'XLVII Recalcitrant Princes and the Great Schism', 'One very great weakness of the Roman Church in its struggle to secure
the headship of all Christendom was the manner in which the Pope was
chosen.

If indeed the papacy was to achieve its manifest ambition and establish
one rule and one peace throughout Christendom, then it was vitally
necessary that it should have a strong, steady and continuous
direction.  In those great days of its opportunity it needed before all
things that the Popes when they took office should be able men in the
prime of life, that each should have his successor-designate with whom
he could discuss the policy of the church, and that the forms and
processes of election should be clear, definite, unalterable and
unassailable.  Unhappily none of these things obtained.  It was not
even clear who could vote in the election of a Pope, nor whether the
Byzantine or Holy Roman Emperor had a voice in the matter.  That very
great papal statesman Hildebrand (Pope Gregory VII, 1073-1085) did much
to regularize the election.  He confined the votes to the Roman
cardinals and he reduced the Emperor’s share to a formula of assent
conceded to him by the church, but he made no provision for a
successor-designate and he left it possible for the disputes of the
cardinals to keep the See vacant, as in some cases it was kept vacant,
for a year or more.

MILAN CATHEDRALA COURTYARD IN THE ALHAMBRA
MILAN CATHEDRALA COURTYARD IN THE ALHAMBRA
View showing the exquisite carvings characteristic of the 98 spires of
the edifice

The consequences of this want of firm definition are to be seen in the
whole history of the papacy up to the sixteenth century.  From quite
early times onward there were disputed elections and two or more men
each claiming to be Pope.  The church would then be subjected to the
indignity of going to the Emperor or some other outside arbiter to
settle the dispute.  And the career of everyone of the great Popes
ended in a note of interrogation.  At his death the church might be
left headless and as ineffective as a decapitated body.  Or he might be
replaced by some old rival eager only to discredit and undo his work. 
Or some enfeebled old man tottering on the brink of the grave might
succeed him.

It was inevitable that this peculiar weakness of the papal organization
should attract the interference of the various German princes, the
French King, and the Norman and French Kings who ruled in England; that
they should all try to influence the elections, and have a Pope in
their own interest established in the Lateran Palace at Rome.  And the
more powerful and important the Pope became in European affairs, the
more urgent did these interventions become. Under the circumstances it
is no great wonder that many of the Popes were weak and futile.  The
astonishing thing is that many of them were able and courageous men.

One of the most vigorous and interesting of the Popes of this great
period was Innocent III (1198-1216) who was so fortunate as to become
Pope before he was thirty-eight.  He and his successors were pitted
against an even more interesting personality, the Emperor Frederick II;
_Stupor mundi_ he was called, the Wonder of the world.  The struggle of
this monarch against Rome is a turning place in history.  In the end
Rome defeated him and destroyed his dynasty, but he left the prestige
of the church and Pope so badly wounded that its wounds festered and
led to its decay.

Frederick was the son of the Emperor Henry VI and his mother was the
daughter of Roger I, the Norman King of Sicily.  He inherited this
kingdom in 1198 when he was a child of four years.  Innocent III had
been made his guardian.  Sicily in those days had been but recently
conquered by the Normans; the Court was half oriental and full of
highly educated Arabs; and some of these were associated in the
education of the young king.  No doubt they were at some pains to make
their point of view clear to him.  He got a Moslem view of Christianity
as well as a Christian view of Islam, and the unhappy result of this
double system of instruction was a view, exceptional in that age of
faith, that all religions were impostures.  He talked freely on the
subject; his heresies and blasphemies are on record.

As the young man grew up he found himself in conflict with his
guardian.  Innocent III wanted altogether too much from his ward.  When
the opportunity came for Frederick to succeed as Emperor, the Pope
intervened with conditions.  Frederick must promise to put down heresy
in Germany with a strong hand. Moreover he must relinquish his crown in
Sicily and South Italy, because otherwise he would be too strong for
the Pope.  And the German clergy were to be freed from all taxation. 
Frederick agreed but with no intention of keeping his word.  The Pope
had already induced the French King to make war upon his own subjects
in France, the cruel and bloody crusade against the Waldenses; he
wanted Frederick to do the same thing in Germany.  But Frederick being
far more of a heretic than any of the simple pietists who had incurred
the Pope’s animosity, lacked the crusading impulse.  And when Innocent
urged him to crusade against the Moslim and recover Jerusalem he was
equally ready to promise and equally slack in his performance.

A TYPICAL CRUSADER: DON RODRIGO DE CARDENAS
A TYPICAL CRUSADER: DON RODRIGO DE CARDENAS
From the Church of S. Pedro at Ocana, Spain

_(In the Victoria and Albert Museum)_

Having secured the imperial crown Frederick II stayed in Sicily, which
he greatly preferred to Germany as a residence, and did nothing to
redeem any of his promises to Innocent III, who died baffled in 1216.

Honorius III, who succeeded Innocent, could do no better with
Frederick, and Gregory IX (1227) came to the papal throne evidently
resolved to settle accounts with this young man at any cost.  He
excommunicated him.  Frederick II was denied all the comforts of
religion.  In the half-Arab Court of Sicily this produced singularly
little discomfort.  And also the Pope addressed a public letter to the
Emperor reciting his vices (which were indisputable), his heresies, and
his general misconduct.  To this Frederick replied in a document of
diabolical ability.  It was addressed to all the princes of Europe, and
it made the first clear statement of the issue between the Pope and the
princes.  He made a shattering attack upon the manifest ambition of the
Pope to become the absolute ruler of all Europe.  He suggested a union
of princes against this usurpation.   He directed the attention of the
princes specifically to the wealth of the church.

Having fired off this deadly missile Frederick resolved to perform his
twelve-year-old promise and go upon a crusade. This was the Sixth
Crusade (1228).  It was as a crusade, farcical.  Frederick II went to
Egypt and met and discussed affairs with the Sultan.  These two
gentlemen, both of sceptical opinions, exchanged congenial views, made
a commercial convention to their mutual advantage, and agreed to
transfer Jerusalem to Frederick.  This indeed was a new sort of
crusade, a crusade by private treaty.  Here was no blood splashing the
conqueror, no “weeping with excess of joy.”  As this astonishing
crusader was an excommunicated man, he had to be content with a purely
secular coronation as King of Jerusalem, taking the crown from the
altar with his own hand—for all the clergy were bound to shun him.  He
then returned to Italy, chased the papal armies which had invaded his
dominions back to their own territories, and obliged the Pope to grant
him absolution from his excommunication.  So a prince might treat the
Pope in the thirteenth century, and there was now no storm of popular
indignation to avenge him.  Those days were past.

In 1239 Gregory IX resumed his struggle with Frederick, excommunicated
him for a second time, and renewed that warfare of public abuse in
which the papacy had already suffered severely.  The controversy was
revived after Gregory IX was dead, when Innocent IV was Pope; and again
a devastating letter, which men were bound to remember, was written by
Frederick against the church.  He denounced the pride and irreligion of
the clergy, and ascribed all the corruptions of the time to their pride
and wealth.  He proposed to his fellow princes a general confiscation
of church property—for the good of the church.  It was a suggestion
that never afterwards left the imagination of the European princes.

We will not go on to tell of his last years.  The particular events of
his life are far less significant than its general atmosphere.  It is
possible to piece together something of his court life in Sicily.  He
was luxurious in his way of living, and fond of beautiful things.  He
is described as licentious.  But it is clear that he was a man of very
effectual curiosity and inquiry.  He gathered Jewish and Moslem as well
as Christian philosophers at his court, and he did much to irrigate the
Italian mind with Saracenic influences.  Through him the Arabic
numerals and algebra were introduced to Christian students, and among
other philosophers at his court was Michael Scott, who translated
portions of Aristotle and the commentaries thereon of the great Arab
philosopher Averroes (of Cordoba).  In 1224 Frederick founded the
University of Naples, and he enlarged and enriched the great medical
school at Salerno University. He also founded a zoological garden.  He
left a book on hawking, which shows him to have been an acute observer
of the habits of birds, and he was one of the first Italians to write
Italian verse.  Italian poetry was indeed born at his court.  He has
been called by an able writer, “the first of the moderns,” and the
phrase expresses aptly the unprejudiced detachment of his intellectual
side.

A still more striking intimation of the decay of the living and
sustaining forces of the papacy appeared when presently the Popes came
into conflict with the growing power of the French King.  During the
lifetime of the Emperor Frederick II, Germany fell into disunion, and
the French King began to play the rôle of guard, supporter and rival to
the Pope that had hitherto fallen to the Hohenstaufen Emperors.  A
series of Popes pursued the policy of supporting the French monarchs. 
French princes were established in the kingdom of Sicily and Naples,
with the support and approval of Rome, and the French Kings saw before
them the possibility of restoring and ruling the Empire of Charlemagne.
 When, however, the German interregnum after the death of Frederick II,
the last of the Hohenstaufens, came to all end and Rudolf of Habsburg
was elected first Habsburg Emperor (1273), the policy of Rome began to
fluctuate between France and Germany, veering about with the sympathies
of each successive Pope.  In the East in 1261 the Greeks recaptured
Constantinople from the Latin emperors, and the founder of the new
Greek dynasty, Michael Palæologus, Michael VIII, after some unreal
tentatives of reconciliation with the Pope, broke away from the Roman
communion altogether, and with that, and the fall of the Latin kingdoms
in Asia, the eastward ascendancy of the Popes came to an end.

COSTUMES OF THE BURGUNDIAN NOBILITY: FLEMISH WORK OF THE FIFTEENTH
CENTURY
COSTUMES OF THE BURGUNDIAN NOBILITY: FLEMISH WORK OF THE FIFTEENTH
CENTURY

In 1294 Boniface VIII became Pope.  He was an Italian, hostile to the
French, and full of a sense of the great traditions and mission of
Rome.  For a time he carried things with a high hand.  In 1300 he held
a jubilee, and a vast multitude of pilgrims assembled in Rome.  “So
great was the influx of money into the papal treasury, that two
assistants were kept busy with the rakes collecting the offerings that
were deposited at the tomb of St. Peter.” [1] But this festival was a
delusive triumph.  Boniface came into conflict with the French King in
1302, and in 1303, as he was about to pronounce sentence of
excommunication against that monarch, he was surprised and arrested in
his own ancestral palace at Anagni, by Guillaume de Nogaret.  This
agent from the French King forced an entrance into the palace, made his
way into the bedroom of the frightened Pope—he was lying in bed with a
cross in his hands—and heaped threats and insults upon him.  The Pope
was liberated a day or so later by the townspeople, and returned to
Rome; but there he was seized upon and again made prisoner by the
Orsini family, and in a few weeks’ time the shocked and disillusioned
old man died a prisoner in their hands.

COSTUMES OF THE BURGUNDIAN NOBILITY: FLEMISH WORK OF THE FIFTEENTH
CENTURY
COSTUMES OF THE BURGUNDIAN NOBILITY: FLEMISH WORK OF THE FIFTEENTH
CENTURY
This series is from casts in the Victoria and Albert Museum of the
original brass statuettes in the Rijks Museum, Amsterdam

The people of Anagni did resent the first outrage, and rose against
Nogaret to liberate Boniface, but then Anagni was the Pope’s native
town.  The important point to note is that the French King in this
rough treatment of the head of Christendom was acting with the full
approval of his people; he had summoned a council of the Three Estates
of France (lords, church and commons) and gained their consent before
proceeding to extremities.  Neither in Italy, Germany nor England was
there the slightest general manifestation of disapproval at this free
handling of the sovereign pontiff. The idea of Christendom had decayed
until its power over the minds of men had gone.

Throughout the fourteenth century the papacy did nothing to recover its
moral sway.  The next Pope elected, Clement V, was a Frenchman, the
choice of King Philip of France.  He never came to Rome.  He set up his
court in the town of Avignon, which then belonged not to France but to
the papal See, though embedded in French territory, and there his
successors remained until 1377, when Pope Gregory XI returned to the
Vatican palace in Rome.  But Gregory XI did not take the sympathies of
the whole church with him.  Many of the cardinals were of French origin
and their habits and associations were rooted deep at Avignon.  When in
1378 Gregory XI died, and an Italian, Urban VI, was elected, these
dissentient cardinals declared the election invalid, and elected
another Pope, the anti-Pope, Clement VII.  This split is called the
Great Schism.  The Popes remained in Rome, and all the anti-French
powers, the Emperor, the King of England, Hungary, Poland and the North
of Europe were loyal to them. The anti-Popes, on the other hand,
continued in Avignon, and were supported by the King of France, his
ally the King of Scotland, Spain, Portugal and various German princes. 
Each Pope excommunicated and cursed the adherents of his rival
(1378-1417).

Is it any wonder that presently all over Europe people began to think
for themselves in matters of religion?

The beginnings of the Franciscans and the Dominicans, which we have
noted in the preceding chapters, were but two among many of the new
forces that were arising in Christendom, either to hold or shatter the
church as its own wisdom might decide. Those two orders the church did
assimilate and use, though with a little violence in the case of the
former.  But other forces were more frankly disobedient and critical. 
A century and a half later came Wycliffe (1320-1384). He was a learned
Doctor at Oxford.  Quite late in his life he began a series of
outspoken criticisms of the corruption of the clergy and the unwisdom
of the church.  He organized a number of poor priests, the Wycliffites,
to spread his ideas throughout England; and in order that people should
judge between the church and himself, he translated the Bible into
English.  He was a more learned and far abler man than either St.
Francis or St. Dominic.  He had supporters in high places and a great
following among the people; and though Rome raged against him, and
ordered his imprisonment, he died a free man.  But the black and
ancient spirit that was leading the Catholic Church to its destruction
would not let his bones rest in the grave.  By a decree of the Council
of Constance in 1415, his remains were ordered to be dug up and burnt,
an order which was carried out at the command of Pope Martin V by
Bishop Fleming in 1428.  This desecration was not the act of some
isolated fanatic; it was the official act of the church.

[1] J. H. Robinson.', 2802)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('8b786678-3977-4d27-ad40-8aca1ace6439', '8268eabe-4b74-414e-a1f6-5a266d184560', 48, 'XLVIII The Mongol Conquests', 'But in the thirteenth century, while this strange and finally
ineffectual struggle to unify Christendom under the rule of the Pope
was going on in Europe, far more momentous events were afoot upon the
larger stage of Asia. A Turkish people from the country to the north of
China rose suddenly to prominence in the world’s affairs, and achieved
such a series of conquests as has no parallel in history. These were
the Mongols. At the opening of the thirteenth century they were a horde
of nomadic horsemen, living very much as their predecessors, the Huns,
had done, subsisting chiefly upon meat and mare’s milk and living in
tents of skin. They had shaken themselves free from Chinese dominion,
and brought a number of other Turkish tribes into a military
confederacy. Their central camp was at Karakorum in Mongolia.

At this time China was in a state of division.  The great dynasty of
Tang had passed into decay by the tenth century, and after a phase of
division into warring states, three main empires, that of Kin in the
north with Pekin as its capital and that of Sung in the south with a
capital at Nankin, and Hsia in the centre, remain.  In 1214 Jengis
Khan, the leader of the Mongol confederates, made war on the Kin Empire
and captured Pekin (1214).  He then turned westward and conquered
Western Turkestan, Persia, Armenia, India down to Lahore, and South
Russia as far as Kieff.  He died master of a vast empire that reached
from the Pacific to the Dnieper.

His successor, Ogdai Khan, continued this astonishing career of
conquest.  His armies were organized to a very high level of
efficiency; and they had with them a new Chinese invention, gunpowder,
which they used in small field guns. He completed the conquest of the
Kin Empire and then swept his hosts right across Asia to Russia (1235),
an altogether amazing march.  Kieff was destroyed in 1240, and nearly
all Russia became tributary to the Mongols.  Poland was ravaged, and a
mixed army of Poles and Germans was annihilated at the battle of
Liegnitz in Lower Silesia in 1241.  The Emperor Frederick II does not
seem to have made any great efforts to stay the advancing tide.

Map: The Ottoman Empire before 1453

“It is only recently,” says Bury in his notes to Gibbon’s _Decline and
Fall of the Roman Empire_, “that European history has begun to
understand that the successes of the Mongol army which overran Poland
and occupied Hungary in the spring of A.D. 1241 were won by consummate
strategy and were not due to a mere overwhelming superiority of
numbers.  But this fact has not yet become a matter of common
knowledge; the vulgar opinion which represents the Tartars as a wild
horde carrying all before them solely by their multitude, and galloping
through Eastern Europe without a strategic plan, rushing at all
obstacles and overcoming them by mere weight, still prevails. . . .

“It was wonderful how punctually and effectually the arrangements were
carried out in operations extending from the Lower Vistula to
Transylvania.  Such a campaign was quite beyond the power of any
European army of the time, and it was beyond the vision of any European
commander. There was no general in Europe, from Frederick II downward,
who was not a tyro in strategy compared to Subutai.  It should also be
noticed that the Mongols embarked upon the enterprise with full
knowledge of the political situation of Hungary and the condition of
Poland—they had taken care to inform themselves by a well-organized
system of spies; on the other hand, the Hungarians and the Christian
powers, like childish barbarians, knew hardly anything about their
enemies.”

Map: The Empire of Jengis Khan at his death (1227)

But though the Mongols were victorious at Liegnitz, they did not
continue their drive westward.  They were getting into woodlands and
hilly country, which did not suit their tactics; and so they turned
southward and prepared to settle in Hungary, massacring or assimilating
the kindred Magyar, even as these had previously massacred and
assimilated the mixed Scythians and Avars and Huns before them.  From
the Hungarian plain they would probably have made raids west and south
as the Hungarians had done in the ninth century, the Avars in the
seventh and eighth and the Huns in the fifth. But Ogdai died suddenly,
and in 1242 there was trouble about the succession, and recalled by
this, the undefeated hosts of Mongols began to pour back across Hungary
and Roumania towards the east.

Thereafter the Mongols concentrated their attention upon their Asiatic
conquests.  By the middle of the thirteenth century they had conquered
the Sung Empire.  Mangu Khan succeeded Ogdai Khan as Great Khan in
1251, and made his brother Kublai Khan governor of China.  In 1280
Kublai Khan had been formally recognized Emperor of China, and so
founded the Yuan dynasty which lasted until 1368.  While the last ruins
of the Sung rule were going down in China, another brother of Mangu,
Hulagu, was conquering Persia and Syria. The Mongols displayed a bitter
animosity to Islam at this time, and not only massacred the population
of Bagdad when they captured that city, but set to work to destroy the
immemorial irrigation system which had kept Mesopotamia incessantly
prosperous and populous from the early days of Sumeria.  From that time
until our own Mesopotamia has been a desert of ruins, sustaining only a
scanty population.  Into Egypt the Mongols never penetrated; the Sultan
of Egypt completely defeated an army of Hulagu’s in Palestine in 1260.

After that disaster the tide of Mongol victory ebbed.  The dominions of
the Great Khan fell into a number of separate states.  The eastern
Mongols became Buddhists, like the Chinese; the western became Moslim. 
The Chinese threw off the rule of the Yuan dynasty in 1368, and set up
the native Ming dynasty which flourished from 1368 to 1644.  The
Russians remained tributary to the Tartar hordes upon the south-east
steppes until 1480, when the Grand Duke of Moscow repudiated his
allegiance and laid the foundation of modern Russia.

TARTAR HORSEMEN
TARTAR HORSEMEN
_(From a Chinese Print in the British Museum) _

In the fourteenth century there was a brief revival of Mongol vigour
under Timurlane, a descendant of Jengis Khan.  He established himself
in Western Turkestan, assumed the title of Grand Khan in 1369, and
conquered from Syria to Delhi.  He was the most savage and destructive
of all the Mongol conquerors.  He established an empire of desolation
that did not survive his death.  In 1505, however, a descendant of this
Timur, an adventurer named Baber, got together an army with guns and
swept down upon the plains of India.  His grandson Akbar (1556-1605)
completed his conquests, and this Mongol (or “Mogul” as the Arabs
called it) dynasty ruled in Delhi over the greater part of India until
the eighteenth century.

Map: The Ottoman Empire at the death of Suleiman the Magnificent, 1566
A.D.

One of the consequences of the first great sweep of Mongol conquest in
the thirteenth century was to drive a certain tribe of Turks, the
Ottoman Turks, out of Turkestan into Asia Minor.  They extended and
consolidated their power in Asia Minor, crossed the Dardanelles and
conquered Macedonia, Serbia and Bulgaria, until at last Constantinople
remained like an island amongst the Ottoman dominions.  In 1453 the
Ottoman Sultan, Muhammad II, took Constantinople, attacking it from the
European side with a great number of guns.  This event caused intense
excitement in Europe and there was talk of a crusade, but the day of
the crusades was past.

In the course of the sixteenth century the Ottoman Sultans conquered
Bagdad, Hungary, Egypt and most of North Africa, and their fleet made
them masters of the Mediterranean.  They very nearly took Vienna, and
they exacted it tribute from the Emperor.  There were but two items to
offset the general ebb of Christian dominion in the fifteenth century. 
One was the restoration of the independence of Moscow (1480); the other
was the gradual reconquest of Spain by the Christians. In 1492,
Granada, the last Moslem state in the peninsula, fell to King Ferdinand
of Aragon and his Queen Isabella of Castile.

But it was not until as late as 1571 that the naval battle of Lepanto
broke the prick of the Ottomans, and restored the Mediterranean waters
to Christian ascendancy.', 1403)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('edb3a480-8a4b-47fd-a7fd-d26c92898a60', '8268eabe-4b74-414e-a1f6-5a266d184560', 49, 'XLIX The Intellectual Revival of the Europeans', 'Throughout the twelfth century there were many signs that the European
intelligence was recovering courage and leisure, and preparing to take
up again the intellectual enterprises of the first Greek scientific
enquiries and such speculations as those of the Italian Lucretius. The
causes of this revival were many and complex. The suppression of
private war, the higher standards of comfort and security that followed
the crusades, and the stimulation of men’s minds by the experiences of
these expeditions were no doubt necessary preliminary conditions. Trade
was reviving; cities were recovering ease and safety; the standard of
education was arising in the church and spreading among laymen. The
thirteenth and fourteenth centuries were a period of growing,
independent or quasi-independent cities; Venice, Florence, Genoa,
Lisbon, Paris, Bruges, London, Antwerp, Hamburg, Nuremberg, Novgorod,
Wisby and Bergen for example. They were all trading cities with many
travellers, and where men trade and travel they talk and think. The
polemics of the Popes and princes, the conspicuous savagery and
wickedness of the persecution of heretics, were exciting men to doubt
the authority of the church and question and discuss fundamental
things.

We have seen how the Arabs were the means of restoring Aristotle to
Europe, and how such a prince as Frederick II acted as a channel
through which Arabic philosophy and science played upon the renascent
European mind.  Still more influential in the stirring up of men’s
ideas were the Jews.  Their very existence was a note of interrogation
to the claims of the church.  And finally the secret, fascinating
enquiries of the alchemists were spreading far and wide and setting men
to the petty, furtive and yet fruitful resumption of experimental
science.

And the stir in men’s minds was by no means confined now to the
independent and well educated.  The mind of the common man was awake in
the world as it had never been before in all the experience of mankind.
 In spite of priest and persecution, Christianity does seem to have
carried a mental ferment wherever its teaching reached.  It established
a direct relation between the conscience of the individual man and the
God of Righteousness, so that now if need arose he had the courage to
form his own judgment upon prince or prelate or creed.

As early as the eleventh century philosophical discussion had begun
again in Europe, and there were great and growing universities at
Paris, Oxford, Bologna and other centres. There medieval “schoolmen”
took up again and thrashed out a series of questions upon the value and
meaning of words that were a necessary preliminary to clear thinking in
the scientific age that was to follow.  And standing by himself because
of his distinctive genius was Roger Bacon (circa 1210 to circa 1293), a
Franciscan of Oxford, the father of modern experimental science.  His
name deserves a prominence in our history second only to that of
Aristotle.

His writings are one long tirade against ignorance.  He told his age it
was ignorant, an incredibly bold thing to do. Nowadays a man may tell
the world it is as silly as it is solemn, that all its methods are
still infantile and clumsy and its dogmas childish assumptions, without
much physical danger; but these peoples of the middle ages when they
were not actually being massacred or starving or dying of pestilence,
were passionately convinced of the wisdom, the completeness and
finality of their beliefs, and disposed to resent any reflections upon
them very bitterly.  Roger Bacon’s writings were like a flash of light
in a profound darkness.  He combined his attack upon the ignorance of
his times with a wealth of suggestion for the increase of knowledge. 
In his passionate insistence upon the need of experiment and of
collecting knowledge, the spirit of Aristotle lives again in him. 
“Experiment, experiment,” that is the burthen of Roger Bacon.

Yet of Aristotle himself Roger Bacon fell foul.  He fell foul of him
because men, instead of facing facts boldly, sat in rooms and pored
over the bad Latin translations which were then all that was available
of the master. “If I had my way,” he wrote, in his intemperate fashion,
“I should burn all the books of Aristotle, for the study of them can
only lead to a loss of time, produce error, and increase ignorance,” a
sentiment that Aristotle would probably have echoed could he have
returned to a world in which his works were not so much read as
worshipped—and that, as Roger Bacon showed, in these most abominable
translations.

AN EARLY PRINTING PRESS
AN EARLY PRINTING PRESS
_(From an old print) _

Throughout his books, a little disguised by the necessity of seeming to
square it all with orthodoxy for fear of the prison and worse, Roger
Bacon shouted to mankind, “Cease to be ruled by dogmas and authorities;
_look at the world!_” Four chief sources of ignorance he denounced;
respect for authority, custom, the sense of the ignorant crowd, and the
vain, proud unteachableness of our dispositions.  Overcome but these,
and a world of power would open to men: —

“Machines for navigating are possible without rowers, so that great
ships suited to river or ocean, guided by one man, may be borne with
greater speed than if they were full of men.  Likewise cars may be made
so that without a draught animal they may be moved _cum impetu
inœstimable_, as we deem the scythed chariots to have been from which
antiquity fought.  And flying machines are possible, so that a man may
sit in the middle turning some device by which artificial wings may
beat the air in the manner of a flying bird.”

So Roger Bacon wrote, but three more centuries were to elapse before
men began any systematic attempts to explore the hidden stores of power
and interest he realized so clearly existed beneath the dull surface of
human affairs.

But the Saracenic world not only gave Christendom the stimulus of its
philosophers and alchemists; it also gave it paper.  It is scarcely too
much to say that paper made the intellectual revival of Europe
possible.  Paper originated in China, where its use probably goes back
to the second century B.C.  In 751 the Chinese made an attack upon the
Arab Moslems in Samarkand; they were repulsed, and among the prisoners
taken from them were some skilled papermakers, from whom the art was
learnt.  Arabic paper manuscripts from the ninth century onward still
exist. The manufacture entered Christendom either through Greece or by
the capture of Moorish paper-mills during the Christian reconquest of
Spain.  But under the Christian Spanish the product deteriorated sadly.
 Good paper was not made in Christian Europe until the end of the
thirteenth century, and then it was Italy which led the world.  Only by
the fourteenth century did the manufacture reach Germany, and not until
the end of that century was it abundant and cheap enough for the
printing of books to be a practicable business proposition.  Thereupon
printing followed naturally and necessarily, for printing is the most
obvious of inventions, and the intellectual life of the world entered
upon a new and far more vigorous phase.  It ceased to be a little
trickle from mind to mind; it became a broad flood, in which thousands
and presently scores and hundreds of thousands of minds participated.

One immediate result of this achievement of printing was the appearance
of an abundance of Bibles in the world.  Another was a cheapening of
school-books.  The knowledge of reading spread swiftly.  There was not
only a great increase of books in the world, but the books that were
now made were plainer to read and so easier to understand.  Instead of
toiling at a crabbed text arid then thinking over its significance,
readers now could think unimpeded as they read.  With this increase in
the facility of reading, the reading public grew. The book ceased to be
a highly decorated toy or a scholar’s mystery.  People began to write
books to be read as well as looked at by ordinary people.  They wrote
in the ordinary language and not in Latin.  With the fourteenth century
the real history of the European literature begins.

So far we have been dealing only with the Saracenic share in the
European revival.  Let us turn now to the influence of the Mongol
conquests.  They stimulated the geographical imagination of Europe
enormously.  For a time under the Great Khan, all Asia and Western
Europe enjoyed an open intercourse; all the roads were temporarily
open, and representatives of every nation appeared at the court of
Karakorum.  The barriers between Europe and Asia set up by the
religious feud of Christianity and Islam were lowered. Great hopes were
entertained by the papacy for the conversion of the Mongols to
Christianity.  Their only religion so far had been Shumanism, a
primitive paganism.  Envoys of the Pope, Buddhist priests from India,
Parisian and Italian and Chinese artificers, Byzantine and Armenian
merchants, mingled with Arab officials and Persian and Indian
astronomers and mathematicians at the Mongol court.  We hear too much
in history of the campaigns and massacres of the Mongols, and not
enough of their curiosity and desire for learning.  Not perhaps as an
originative people, but as transmitters of knowledge and method their
influence upon the world’s history has been very great.  And everything
one can learn of the vague and romantic personalities of Jengis or
Kublai tends to confirm the impression that these men were at least as
understanding and creative monarchs as either that flamboyant but
egotistical figure Alexander the Great or that raiser of political
ghosts, that energetic but illiterate theologian Charlemagne.

One of the most interesting of these visitors to the Mongol Court was a
certain Venetian, Marco Polo, who afterwards set down his story in a
book.  He went to China about 1272 with his father and uncle, who had
already once made the journey. The Great Khan had been deeply impressed
by the elder Polos; they were the first men of the “Latin” peoples he
had seen; and he sent them back with enquiries for teachers and learned
men who could explain Christianity to him, and for various other
European things that had aroused his curiosity.  Their visit with Marco
was their second visit.

ANCIENT BRONZE FIGURE FROM BENIN, W. AFRICA
ANCIENT BRONZE FIGURE FROM BENIN, W. AFRICA
Note evidence in attire of knowledge of early European explorers

_(In the British Museum) _

The three Polos started by way of Palestine and not by the Crimea, as
in their previous expedition.  They had with them a gold tablet and
other indications from the Great Khan that must have greatly
facilitated their journey.  The Great Khan had asked for some oil from
the lamp that burns in the Holy Sepulchre at Jerusalem; and so thither
they first went, and then by way of Cilicia into Armenia.  They went
thus far north because the Sultan of Egypt was raiding the Mongol
domains at this time.  Thence they came by way of Mesopotamia to Ormuz
on the Persian Gulf, as if they contemplated a sea voyage.  At Ormuz
they met merchants from India.  For some reason they did not take ship,
but instead turned northward through the Persian deserts, and so by way
of Balkh over the Pamir to Kashgar, and by way of Kotan and the Lob Nor
into the Hwang-ho valley and on to Pekin.  At Pekin was the Great Khan,
and they were hospitably entertained.

ANOTHER ANCIENT NEGRO BRONZE OF A EUROPEAN
ANOTHER ANCIENT NEGRO BRONZE OF A EUROPEAN

_(In the British Museum) _

Marco particularly pleased Kublai; he was young and clever, and it is
clear he had mastered the Tartar language very thoroughly.  He was
given an official position and sent on several missions, chiefly in
south-west China.  The tale he had to tell of vast stretches of smiling
and prosperous country, “all the way excellent hostelries for
travellers,” and “fine vineyards, fields, and gardens,” of “many
abbeys” of Buddhist monks, of manufactures of “cloth of silk and gold
and many fine taffetas,” a “constant succession of cities and
boroughs,” and so on, first roused the incredulity and then fired the
imagination of all Europe.  He told of Burmah, and of its great armies
with hundreds of elephants, and how these animals were defeated by the
Mongol bowmen, and also of the Mongol conquest of Pegu.  He told of
Japan, and greatly exaggerated the amount of gold in that country.  For
three years Marco ruled the city of Yang-chow as governor, and he
probably impressed the Chinese inhabitants as being little more of a
foreigner than any Tartar would have been.  He may also have been sent
on a mission to India.  Chinese records mention a certain Polo attached
to the imperial council in 1277, a very valuable confirmation of the
general truth of the Polo story.

The publication of Marco Polo’s travels produced a profound effect upon
the European imagination.  The European literature, and especially the
European romance of the fifteenth century, echoes with the names in
Marco Polo’s story, with Cathay (North China) and Cambulac (Pekin) and
the like.

EARLY ITALIAN ENGRAVING OF A SAILING SHIP
EARLY ITALIAN ENGRAVING OF A SAILING SHIP

_(In the British Museum) _

Two centuries later, among the readers of the Travels of Marco Polo was
a certain Genoese mariner, Christopher Columbus, who conceived the
brilliant idea of sailing westward round the world to China.  In
Seville there is a copy of the Travels with marginal notes by Columbus.
There were many reasons why the thought of a Genoese should be turned
in this direction.  Until its capture by the Turks in 1453
Constantinople had been an impartial trading mart between the Western
world and the East, and the Genoese had traded there freely.  But the
“Latin” Venetians, the bitter rivals of the Genoese, had been the
allies and helpers of the Turks against the Greeks, and with the coming
of the Turks Constantinople turned an unfriendly face upon Genoese
trade.  The long forgotten discovery that the world was round had
gradually resumed its sway over men’s minds.  The idea of going
westward to China was therefore a fairly obvious one.  It was
encouraged by two things.  The mariner’s compass had now been invented
and men were no longer left to the mercy of a fine night and the stars
to determine the direction in which they were sailing, and the Normans,
Catalonians and Genoese and Portuguese had already pushed out into the
Atlantic as far as the Canary Isles, Madeira and the Azores.

Yet Columbus found many difficulties before he could get ships to put
his idea to the test.  He went from one European Court to another. 
Finally at Granada, just won from the Moors, he secured the patronage
of Ferdinand and Isabella, and was able to set out across the unknown
ocean in three small ships.  After a voyage of two months and nine days
he came to a land which he believed to be India, but which was really a
new continent, whose distinct existence the old world had never
hitherto suspected.  He returned to Spain with gold, cotton, strange
beasts and birds, and two wild- eyed painted Indians to be baptized. 
They were called Indians because, to the end of his days, he believed
that this land he had found was India.  Only in the course of several
years did men begin to realize that the whole new continent of America
was added to the world’s resources.

The success of Columbus stimulated overseas enterprise enormously.  In
1497 the Portuguese sailed round Africa to India, and in 1515 there
were Portuguese ships in Java.  In 1519 Magellan, a Portuguese sailor
in Spanish employment, sailed out of Seville westward with five ships,
of which one, the _Vittoria_, came back up the river to Seville in
1522, the first ship that had ever circumnavigated the world.
Thirty-one men were aboard her, survivors of two-hundred-and- eighty
who had started.  Magellan himself had been killed in the Philippine
Isles.

Printed paper books, a new realization of the round world as a thing
altogether attainable, a new vision of strange lands, strange animals
and plants, strange manners and customs, discoveries overseas and in
the skies and in the ways and materials of life burst upon the European
mind. The Greek classics, buried and forgotten for so long, were
speedily being printed and studied, and were colouring men’s thoughts
with the dreams of Plato and the traditions of an age of republican
freedom and dignity.  The Roman dominion had first brought law and
order to Western Europe, and the Latin Church had restored it; but
under both Pagan and Catholic Rome curiosity and innovation were
subordinate to and restrained by organization.  The reign of the Latin
mind was now drawing to an end.  Between the thirteenth and the
sixteenth century the European Aryans, thanks to the stimulating
influence of Semite and Mongol and the rediscovery of the Greek
classics, broke away from the Latin tradition and rose again to the
intellectual and material leadership of mankind.', 2853)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('d1e59a6a-78aa-48b3-a217-0406b29c8cd8', '8268eabe-4b74-414e-a1f6-5a266d184560', 50, 'L The Reformation of the Latin Church', 'The Latin Church itself was enormously affected by this mental rebirth.
It was dismembered; and even the portion that survived was extensively
renewed.

We have told how nearly the church came to the autocratic leadership of
all Christendom in the eleventh and twelfth centuries, and how in the
fourteenth and fifteenth its power over men’s minds and affairs
declined.  We have described how popular religious enthusiasm which had
in earlier ages been its support and power was turned against it by its
pride, persecutions and centralization, and how the insidious
scepticism of Frederick II bore fruit in a growing insubordination of
the princes.  The Great Schism had reduced its religious and political
prestige to negligible proportions.  The forces of insurrection struck
it now from both sides.

The teachings of the Englishman Wycliffe spread widely throughout
Europe.  In 1398 a learned Czech, John Huss, delivered a series of
lectures upon Wycliffe’s teachings in the university of Prague.  This
teaching spread rapidly beyond the educated class and aroused great
popular enthusiasm.  In 1414-18 a Council of the whole church was held
at Constance to settle the Great Schism.  Huss was invited to this
Council under promise of a safe conduct from the emperor, seized, put
on trial for heresy and burnt alive (1415).  So far from tranquillizing
the Bohemian people, this led to an insurrection of the Hussites in
that country, the first of a series of religious wars that inaugurated
the break-up of Latin Christendom.  Against this insurrection Pope
Martin V, the Pope specially elected at Constance as the head of a
reunited Christendom, preached a Crusade.

Five Crusades in all were launched upon this sturdy little people and
all of them failed.  All the unemployed ruffianism of Europe was turned
upon Bohemia in the fifteenth century, just as in the thirteenth it had
been turned upon the Waldenses.  But the Bohemian Czechs, unlike the
Waldenses, believed in armed resistance.  The Bohemian Crusade
dissolved and streamed away from the battlefield at the sound of the
Hussites’ waggons and the distant chanting of their troops; it did not
even wait to fight (battle of Domazlice, 1431).  In 1436 an agreement
was patched up with the Hussites by a new Council of the church at
Basle in which many of the special objections to Latin practice were
conceded.

PORTRAIT OF LUTHER
PORTRAIT OF LUTHER

_(From an early German engraving in the British Museum) _

In the fifteenth century a great pestilence had produced much social
disorganization throughout Europe.  There had been extreme misery and
discontent among the common people, and peasant risings against the
landlords and the wealthy in England and France.  After the Hussite
Wars these peasant insurrections increased in gravity in Germany and
took on a religious character.  Printing came in as an influence upon
this development.  By the middle of the fifteenth century there were
printers at work with movable type in Holland and the Rhineland.  The
art spread to Italy and England, where Caxton was printing in
Westminster in 1477.  The immediate consequence was a great increase
and distribution of Bibles, and greatly increased facilities for
widespread popular controversies.  The European world became a world of
readers, to an extent that had never happened to any community in the
past.  And this sudden irrigation of the general mind with clearer
ideas and more accessible information occurred just at a time when the
church was confused and divided and not in a position to defend itself
effectively, and when many princes were looking for means to weaken its
hold upon the vast wealth it claimed in their dominions.

In Germany the attack upon the church gathered round the personality of
an ex-monk, Martin Luther (1483-1546), who appeared in Wittenberg in
1517 offering disputations against various orthodox doctrines and
practices.  At first he disputed in Latin in the fashion of the
Schoolmen.  Then he took up the new weapon of the printed word and
scattered his views far and wide in German addressed to the ordinary
people.  An attempt was made to suppress him as Huss had been
suppressed, but the printing press had changed conditions and he had
too many open and secret friends among the German princes for this fate
to overtake him.

For now in this age of multiplying ideas and weakened faith there were
many rulers who saw their advantage in breaking the religious ties
between their people and Rome.  They sought to make themselves in
person the heads of a more nationalized religion.  England, Scotland,
Sweden, Norway, Denmark, North Germany and Bohemia, one after another,
separated themselves from the Roman Communion.  They have remained
separated ever since.

A MAJOLICA DISH PAINTED IN COLOURS
A MAJOLICA DISH PAINED IN COLOURS
An allegory of the Church triumphant over heretics and infidels. 
Italian (Urbino), dated 1543

_(In the Victoria and Albert Museum)_

The various princes concerned cared very little for the moral and
intellectual freedom of their subjects.  They used the religious doubts
and insurgence of their peoples to strengthen them against Rome, but
they tried to keep a grip upon the popular movement as soon as that
rupture was achieved and a national church set up under the control of
the crown.  But there has always been a curious vitality in the
teaching of Jesus, a direct appeal to righteousness and a man’s
self-respect over every loyalty and every subordination, lay or
ecclesiastical.  None of these princely churches broke off without also
breaking off a number of fragmentary sects that would admit the
intervention of neither prince nor Pope between a man and his God.  In
England and Scotland, for example, there was a number of sects who now
held firmly to the Bible as their one guide in life and belief.  They
refused the disciplines of a state church.  In England these
dissentients were the Non- conformists, who played a very large part in
the polities of that country in the seventeenth and eighteenth
centuries.  In England they carried their objection to a princely head
to the church so far as to decapitate King Charles I (1649), and for
eleven prosperous years England was a republic under Non- conformist
rule.

The breaking away of this large section of Northern Europe from Latin
Christendom is what is generally spoken of as the Reformation.  But the
shock and stress of these losses produced changes perhaps as profound
in the Roman Church itself.  The church was reorganized and a new
spirit came into its life.  One of the dominant figures in this revival
was a young Spanish soldier, Inigo Lopez de Recalde, better known to
the world as St. Ignatius of Loyola.  After some romantic beginnings he
became a priest (1538) and was permitted to found the Society of Jesus,
a direct attempt to bring the generous and chivalrous traditions of
military discipline into the service of religion.  This Society of
Jesus, the Jesuits, became one of the greatest teaching and missionary
societies the world has ever seen.  It carried Christianity to India,
China and America.  It arrested the rapid disintegration of the Roman
Church.  It raised the standard of education throughout the whole
Catholic world; it raised the level of Catholic intelligence and
quickened the Catholic conscience everywhere; it stimulated Protestant
Europe to competitive educational efforts.  The vigorous and aggressive
Roman Catholic Church we know to-day is largely the product of this
Jesuit revival.', 1225)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('8afe9f83-e1f9-4a44-afba-7b439b6f1bb3', '8268eabe-4b74-414e-a1f6-5a266d184560', 51, 'LI The Emperor Charles V (1/2)', 'The Holy Roman Empire came to a sort of climax in the reign of the
Emperor Charles V. He was one of the most extraordinary monarchs that
Europe has ever seen. For a time he had the air of being the greatest
monarch since Charlemagne.

His greatness was not of his own making.  It was largely the creation
of his grandfather, the Emperor Maximilian I (1459- 1519).  Some
families have fought, others have intrigued their way to world power;
the Habsburgs married their way. Maximilian began his career with
Austria, Styria, part of Alsace and other districts, the original
Habsburg patrimony; he married—the lady’s name scarcely matters to
us—the Netherlands and Burgundy.  Most of Burgundy slipped from him
after his first wife’s death, but the Netherlands he held.  Then he
tried unsuccessfully to marry Brittany.  He became Emperor in
succession to his father, Frederick III, in 1493, and married the duchy
of Milan. Finally he married his son to the weak-minded daughter of
Ferdinand and Isabella, the Ferdinand and Isabella of Columbus, who not
only reigned over a freshly united Spain and over Sardinia and the
kingdom of the two Sicilies, but over all America west of Brazil.  So
it was that this Charles V, his grandson, inherited most of the
American continent and between a third and a half of what the Turks had
left of Europe.  He succeeded to the Netherlands in 1506.  When his
grandfather Ferdinand died in 1516, he became practically king of the
Spanish dominions, his mother being imbecile; and his grandfather
Maximilian dying in 1519, he was in 1520 elected Emperor at the still
comparatively tender age of twenty.

He was a fair young man with a not very intelligent face, a thick upper
lip and a long clumsy chin.  He found himself in a world of young and
vigorous personalities.  It was an age of brilliant young monarchs. 
Francis I had succeeded to the French throne in 1515 at the age of
twenty-one, Henry VIII had become King of England in 1509 at eighteen. 
It was the age of Baber in India (1526-1530) and Suleiman the
Magnificent in Turkey (1520), both exceptionally capable monarchs, and
the Pope Leo X (1513) was also a very distinguished Pope.  The Pope and
Francis I attempted to prevent the election of Charles as Emperor
because they dreaded the concentration of so much power in the hands of
one man.  Both Francis I and Henry VIII offered themselves to the
imperial electors.  But there was now a long established tradition of
Habsburg Emperors (since 1273), and some energetic bribery secured the
election for Charles.

At first the young man was very much a magnificent puppet in the hands
of his ministers.  Then slowly he began to assert himself and take
control.  He began to realize something of the threatening complexities
of his exalted position.  It was a position as unsound as it was
splendid.

From the very outset of his reign he was faced by the situation created
by Luther’s agitations in Germany. The Emperor had one reason for
siding with the reformers in the opposition of the Pope to his
election.  But he had been brought up in Spain, that most Catholic of
countries, and he decided against Luther.  So he came into conflict
with the Protestant princes and particularly the Elector of Saxony. He
found himself in the presence of an opening rift that was to split the
outworn fabric of Christendom into two contending camps.  His attempts
to close that rift were strenuous and honest and ineffective.  There
was an extensive peasant revolt in Germany which interwove with the
general political and religious disturbance.  And these internal
troubles were complicated by attacks upon the Empire from east and west
alike.  On the west of Charles was his spirited rival, Francis I; to
the east was the ever advancing Turk, who was now in Hungary, in
alliance with Francis and clamouring for certain arrears of tribute
from the Austrian dominions.  Charles had the money and army of Spain
at his disposal, but it was extremely difficult to get any effective
support in money from Germany.  His social and political troubles were
complicated by financial distresses.  He was forced to ruinous
borrowing.

THE CHARLES V PORTRAIT BY TITIAN
THE CHARLES V PORTRAIT BY TITIAN

_(In the Gallery del Prado, Madrid)

Photo:  Anderson_

On the whole, Charles, in alliance with Henry VIII, was successful
against Francis I and the Turk.  Their chief battlefield was North
Italy; the generalship was dull on both sides; their advances and
retreats depended mainly on the arrival of reinforcements.  The German
army invaded France, failed to take Marseilles, fell back into Italy,
lost Milan, and was besieged in Pavia.  Francis I made a long and
unsuccessful siege of Pavia, was caught by fresh German forces,
defeated, wounded and taken prisoner.  But thereupon the Pope and Henry
VIII, still haunted by the fear of his attaining excessive power,
turned against Charles.  The German troops in Milan, under the
Constable of Bourbon, being unpaid, forced rather than followed their
commander into a raid upon Rome.  They stormed the city and pillaged it
(1527).  The Pope took refuge in the Castle of St. Angelo while the
looting and slaughter went on.  He bought off the German troops at last
by the payment of four hundred thousand ducats.  Ten years of such
confused fighting impoverished all Europe.  At last the Emperor found
himself triumphant in Italy.  In 1530, he was crowned by the Pope—he
was the last German Emperor to be so crowned—at Bologna.

Meanwhile the Turks were making great headway in Hungary. They had
defeated and killed the king of Hungary in 1526, they held Buda-Pesth,
and in 1529 Suleiman the Magnificent very nearly took Vienna.  The
Emperor was greatly concerned by these advances, and did his utmost to
drive back the Turks, but he found the greatest difficulty in getting
the German princes to unite even with this formidable enemy upon their
very borders.  Francis I remained implacable for a time, and there was
a new French war; but in 1538 Charles won his rival over to a more
friendly attitude after ravaging the south of France.  Francis and
Charles then formed an alliance against the Turk.  But the Protestant
princes, the German princes who were resolved to break away from Rome,
had formed a league, the Schmalkaldic League, against the Emperor, and
in the place of a great campaign to recover Hungary for Christendom
Charles had to turn his mind to the gathering internal struggle in
Germany.  Of that struggle he saw only the opening war.  It was a
struggle, a sanguinary irrational bickering of princes, for ascendancy,
now flaming into war and destruction, now sinking back to intrigues and
diplomacies; it was a snake’s sack of princely policies that was to go
on writhing incurably right into the nineteenth century and to waste
and desolate Central Europe again and again.

The Emperor never seems to have grasped the true forces at work in
these gathering troubles.  He was for his time and station an
exceptionally worthy man, and he seems to have taken the religious
dissensions that were tearing Europe into warring fragments as genuine
theological differences.  He gathered diets and councils in futile
attempts at reconciliation.  Formulæ and confessions were tried over. 
The student of German history must struggle with the details of the
Religious Peace of Nuremberg, the settlement at the Diet of Ratisbon,
the Interim of Augsburg, and the like.  Here we do but mention them as
details in the worried life of this culminating Emperor.  As a matter
of fact, hardly one of the multifarious princes and rulers in Europe
seems to have been acting in good faith.  The widespread religious
trouble of the world, the desire of the common people for truth and
social righteousness, the spreading knowledge of the time, all those
things were merely counters in the imaginations of princely diplomacy. 
Henry VIII of England, who had begun his career with a book against
heresy, and who had been rewarded by the Pope with the title of
“Defender of the Faith,” being anxious to divorce his first wife in
favour of a young lady named Anne Boleyn, and wishing also to loot the
vast wealth of the church in England, joined the company of Protestant
princes in 1530. Sweden, Denmark and Norway had already gone over to
the Protestant side.

The German religious war began in 1546, a few months after the death of
Martin Luther.  We need not trouble about the incidents of the
campaign.  The Protestant Saxon army was badly beaten at Lochau.  By
something very like a breach of faith Philip of Hesse, the Emperor’s
chief remaining antagonist, was caught and imprisoned, and the Turks
were bought off by the promise of an annual tribute.  In 1547, to the
great relief of the Emperor, Francis I died.  So by 1547 Charles got to
a kind of settlement, and made his last efforts to effect peace where
there was no peace.  In 1552 all Germany was at war again, only a
precipitate flight from Innsbruck saved Charles from capture, and in
1552, with the treaty of Passau, came another unstable equilibrium ....

Such is the brief outline of the politics of the Empire for thirty-two
years.  It is interesting to note how entirely the European mind was
concentrated upon the struggle for European ascendancy.  Neither Turks,
French, English nor Germans had yet discovered any political interest
in the great continent of America, nor any significance in the new sea
routes to Asia.  Great things were happening in America; Cortez with a
mere handful of men had conquered the great Neolithic empire of Mexico
for Spain, Pizarro had crossed the Isthmus of Panama (1530) and
subjugated another wonder-land, Peru.  But as yet these events meant no
more to Europe than a useful and stimulating influx of silver to the
Spanish treasury.

It was after the treaty of Passau that Charles began to display his
distinctive originality of mind.  He was now entirely bored and
disillusioned by his imperial greatness. A sense of the intolerable
futility of these European rivalries came upon him.  He had never been
of a very sound constitution, he was naturally indolent and he was
suffering greatly from gout.  He abdicated.  He made over all his
sovereign rights in Germany to his brother Ferdinand, and Spain and the
Netherlands he resigned to his son Philip. Then in a sort of
magnificent dudgeon he retired to a monastery at Yuste, among the oak
and chestnut forests in the hills to the north of the Tagus valley. 
There he died in 1558.

Much has been written in a sentimental vein of this retirement, this
renunciation of the world by this tired majestic Titan, world-weary,
seeking in an austere solitude his peace with God.  But his retreat was
neither solitary nor austere; he had with him nearly a hundred and
fifty attendants: his establishment had all the splendour and
indulgences without the fatigues or a court, and Philip II was a
dutiful son to whom his father’s advice was a command.

INTERIOR OF ST. PETER’S, ROME, SHOWING THE HIGH ALTAR
INTERIOR OF ST. PETER’S, ROME, SHOWING THE HIGH ALTAR

_Photo:  Alinari_

And if Charles had lost his living interest in the administration of
European affairs, there were other motives of a more immediate sort to
stir him.  Says Prescott: “In the almost daily correspondence between
Quixada, or Gaztelu, and the Secretary of State at Valladolid, there is
scarcely a letter that does not turn more or less on the Emperor’s
eating or his illness.  The one seems naturally to follow, like a
running commentary, on the other.  It is rare that such topics have
formed the burden of communications with the department of state.  It
must have been no easy matter for the secretary to preserve his gravity
in the perusal of despatches in which politics and gastronomy were so
strangely mixed together.  The courier from Valladolid to Lisbon was
ordered to make a detour, so as to take Jarandilla in his route, and
bring supplies to the royal table.  On Thursdays he was to bring fish
to serve for the jour maigre that was to follow.  The trout in the
neighbourhood Charles thought too small, so others of a larger size
were to be sent from Valladolid.  Fish of every kind was to his taste,
as, indeed, was anything that in its nature or habits at all approached
to fish.  Eels, frogs, oysters, occupied an important place in the
royal bill of fare.  Potted fish, especially anchovies, found great
favour with him; and he regretted that he had not brought a better
supply of these from the Low Countries.  On an eel-pasty he
particularly doted.” ... [1]

In 1554 Charles had obtained a bull from Pope Julius III granting him a
dispensation from fasting, and allowing him to break his fast early in
the morning even when he was to take the sacrament.

Eating and doctoring! it was a return to elemental things. He had never
acquired the habit of reading, but he would be read aloud to at meals
after the fashion of Charlemagne, and would make what one narrator
describes as a “sweet and heavenly commentary.”  He also amused himself
with mechanical toys, by listening to music or sermons, and by
attending to the imperial business that still came drifting in to him. 
The death of the Empress, to whom he was greatly attached, had turned
his mind towards religion, which in his case took a punctilious and
ceremonial form; every Friday in Lent he scourged himself with the rest
of the monks with such good will as to draw blood.  These exercises and
the gout released a bigotry in Charles that had hitherto been
restrained by considerations of policy.  The appearance of Protestant
teaching close at hand in Valladolid roused him to fury.  “Tell the
grand inquisitor and his council from me to be at their posts, and to
lay the axe at the root of the evil before it spreads further.” . .. He
expressed a doubt whether it would not be well, in so black an affair,
to dispense with the ordinary course of justice, and to show no mercy;
“lest the criminal, if pardoned, should have the opportunity of
repeating his crime.”  He recommended, as an example, his own mode or
proceeding in the Netherlands, “where all who remained obstinate in
their errors were burned alive, and those who were admitted to
penitence were beheaded.”

And almost symbolical of his place and role in history was his
preoccupation with funerals.  He seems to have had an intuition that
something great was dead in Europe and sorely needed burial, that there
was a need to write Finis, overdue.  He not only attended every actual
funeral that was celebrated at Yuste, but he had services conducted for
the absent dead, he held a funeral service in memory of his wife on the
anniversary of her death, and finally he celebrated his own obsequies.

“The chapel was hung with black, and the blaze of hundreds of
wax-lights was scarcely sufficient to dispel the darkness.  The
brethren in their conventual dress, and all the Emperor’s household
clad in deep mourning, gathered round a huge catafalque, shrouded also
in black, which had been raised in the centre of the chapel.  The
service for the burial of the dead was then performed; and, amidst the
dismal wail of the monks, the prayers ascended for the departed spirit,
that it might be received into the mansions of the blessed.  The
sorrowful attendants were melted to tears, as the image of their
master’s death was presented to their minds—or they were touched, it
may be, with compassion by this pitiable display of weakness.  Charles,
muffled in a dark mantle, and bearing a lighted candle in his hand,
mingled with his household, the spectator of his own obsequies; and the
doleful ceremony was concluded by his placing the taper in the hands of
the priest, in sign of his surrendering up his soul to the Almighty.”

Within two months of this masquerade he was dead.  And the brief
greatness of the Holy Roman Empire died with him.  His realm was
already divided between his brother and his son. The Holy Roman Empire
struggled on indeed to the days of Napoleon I but as an invalid and
dying thing.  To this day its unburied tradition still poisons the
political air.

[1] Prescott’s Appendix to Robertson’s _History of Charles V_.

LII
THE AGE OF POLITICAL EXPERIMENTS; OF GRAND MONARCHY AND PARLIAMENTS AND
REPUBLICANISM IN EUROPE

The Latin Church was broken, the Holy Roman Empire was in extreme
decay; the history of Europe from the opening of the sixteenth century
onward is a story of peoples feeling their way darkly to some new
method of government, better adapted to the new conditions that were
arising. In the Ancient World, over long periods of time, there had
been changes of dynasty and even changes of ruling race and language,
but the form of government through monarch and temple remained fairly
stable, and still more stable was the ordinary way of living. In this
modern Europe since the sixteenth century the dynastic changes are
unimportant, and the interest of history lies in the wide and
increasing variety of experiments in political and social organization.', 2902)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('a53d1cb7-b116-4481-a65f-9c57062cb9e3', '8268eabe-4b74-414e-a1f6-5a266d184560', 52, 'LI The Emperor Charles V (2/2)', 'The political history of the world from the sixteenth century onward
was, we have said, an effort, a largely unconscious effort, of mankind
to adapt its political and social methods to certain new conditions
that had now arisen.  The effort to adapt was complicated by the fad
that the conditions themselves were changing with a steadily increasing
rapidity. The adaptation, mainly unconscious and almost always
unwilling (for man in general hates voluntary change), has lagged more
and more behind the alterations in conditions. From the sixteenth
century onward the history of mankind is a story of political and
social institutions becoming more and more plainly misfits, less
comfortable and more vexatious, and of the slow reluctant realization
of the need for a conscious and deliberate reconstruction of the whole
scheme of human societies in the face of needs and possibilities new to
all the former experiences of life.

What are these changes in the conditions of human life that have
disorganized that balance of empire, priest, peasant and trader, with
periodic refreshment by barbaric conquest, that has held human affairs
in the Old World in a sort of working rhythm for more than a hundred
centuries?

They are manifold and various, for human affairs are multitudinously
complex; but the main changes seem all to turn upon one cause, namely
the growth and extension of a knowledge of the nature of things,
beginning first of all in small groups of intelligent people and
spreading at first slowly, and in the last five hundred years very
rapidly, to larger and larger proportions of the general population.

But there has also been a great change in human conditions due to a
change in the spirit of human life.  This change has gone on side by
side with the increase and extension of knowledge, and is subtly
connected with it.  There has been an increasing disposition to treat a
life based on the common and more elementary desires and gratifications
as unsatisfactory, and to seek relationship with and service and
participation in a larger life.  This is the common characteristic of
all the great religions that have spread throughout the world in the
last twenty odd centuries, Buddhism, Christianity and Islam alike. 
They have had to do with the spirit of man in a way that the older
religions did not have to do.  They are forces quite different in their
nature and effect from the old fetishistic blood-sacrifice religions of
priest and temple that they have in part modified and in part replaced.
 They have gradually evolved a self-respect in the individual and a
sense of participation and responsibility in the common concerns of
mankind that did not exist among the populations of the earlier
civilizations.

The first considerable change in the conditions of political and social
life was the simplification and extended use of writing in the ancient
civilizations which made larger empires and wider political
understandings practicable and inevitable.  The next movement forward
came with the introduction of the horse, and later on of the camel as a
means of transport, the use of wheeled vehicles, the extension of roads
and the increased military efficiency due to the discovery of
terrestrial iron.  Then followed the profound economic disturbances due
to the device of coined money and the change in the nature of debt,
proprietorship and trade due to this convenient but dangerous
convention. The empires grew in size and range, and men’s ideas grew
likewise to correspond with these things.  Came the disappearance of
local gods, the age of theocrasia, and the teaching of the great world
religions.  Came also the beginnings of reasoned and recorded history
and geography, the first realization by man of his profound ignorance,
and the first systematic search for knowledge.

For a time the scientific process which began so brilliantly in Greece
and Alexandria was interrupted.  The raids of the Teutonic barbarians,
the westward drive of the Mongolian peoples, convulsive religious
reconstruction and great pestilences put enormous strains upon
political and social order.  When civilization emerged again from this
phase of conflict and confusion, slavery was no longer the basis of
economic life; and the first paper-mills were preparing a new medium
for collective information and co-operation in printed matter. 
Gradually at this point and that, the search for knowledge, the
systematic scientific process, was resumed.

And now from the sixteenth century onward, as an inevitable by-product
of systematic thought, appeared a steadily increasing series of
inventions and devices affecting the intercommunication and interaction
of men with one another. They all tended towards wider range of action,
greater mutual benefits or injuries, and increased co-operation, and
they came faster and faster.  Men’s minds had not been prepared for
anything of the sort, and until the great catastrophes at the beginning
of the twentieth century quickened men’s minds, the historian has very
little to tell of any intelligently planned attempts to meet the new
conditions this increasing flow of inventions was creating. The history
of mankind for the last four centuries is rather like that of an
imprisoned sleeper, stirring clumsily and uneasily while the prison
that restrains and shelters him catches fire, not waking but
incorporating the crackling and warmth of the fire with ancient and
incongruous dreams, than like that of a man consciously awake to danger
and opportunity.

Since history is the story not of individual lives but of communities,
it is inevitable that the inventions that figure most in the historical
record are inventions affecting communications.  In the sixteenth
century the chief new things that we have to note are the appearance of
printed paper and the sea-worthy, ocean-going sailing ship using the
new device of the mariner’s compass.  The former cheapened, spread, and
revolutionized teaching, public information and discussion, and the
fundamental operations of political activity.  The latter made the
round world one.  But almost equally important was the increased
utilization and improvement of guns and gunpowder which the Mongols had
first brought westward in the thirteenth century.  This destroyed the
practical immunity of barons in their castles and of walled cities. 
Guns swept away feudalism.  Constantinople fell to guns. Mexico and
Peru fell before the terror of the Spanish guns.

CROMWELL DISSOLVES THE LONG PARLIAMENT AND SO BECOMES AUTOCRAT OF THE
ENGLISH REPUBLIC
CROMWELL DISSOLVES THE LONG PARLIAMENT AND SO BECOMES AUTOCRAT OF THE
ENGLISH REPUBLIC

_(From a contemporary satirical print in the British Museum)_

The seventeenth century saw the development of systematic scientific
publication, a less conspicuous but ultimately far more pregnant
innovation.  Conspicuous among the leaders in this great forward step
was Sir Francis Bacon (1561-1626) afterwards Lord Verulam, Lord
Chancellor of England.  He was the pupil and perhaps the mouthpiece of
another Englishman; Dr. Gilbert, the experimental philosopher of
Colchester (1540-1603).  This second Bacon, like the first, preached
observation and experiment, and he used the inspiring and fruitful form
of a Utopian story, _The New Atlantis_, to express his dream of a great
service of scientific research.

Presently arose the Royal Society of London, the Florentine Society,
and later other national bodies for the encouragement of research and
the publication and exchange of knowledge.  These European scientific
societies became fountains not only of countless inventions but also of
a destructive criticism of the grotesque theological history of the
world that had dominated and crippled human thought for many centuries.

Neither the seventeenth nor the eighteenth century witnessed any
innovations so immediately revolutionary in human conditions as printed
paper and the ocean-going ship, but there was a steady accumulation of
knowledge and scientific energy that was to bear its full fruits in the
nineteenth century.  The exploration and mapping of the world went on.
Tasmania, Australia, New Zealand appeared on the map.  In Great Britain
in the eighteenth century coal coke began to be used for metallurgical
purposes, leading to a considerable cheapening of iron and to the
possibility of casting and using it in larger pieces than had been
possible before, when it had been smelted with wood charcoal.  Modern
machinery dawned.

Like the trees of the celestial city, science bears bud and flower and
fruit at the same time and continuously.  With the onset of the
nineteenth century the real fruition of science—which indeed henceforth
may never cease—began.  First came steam and steel, the railway, the
great liner, vast bridges and buildings, machinery of almost limitless
power, the possibility of a bountiful satisfaction of every material
human need, and then, still more wonderful, the hidden treasures of
electrical science were opened to men ....

We have compared the political and social life of man from the
sixteenth century onward to that of a sleeping prisoner who lies and
dreams while his prison burns about him.  In the sixteenth century the
European mind was still going on with its Latin Imperial dream, its
dream of a Holy Roman Empire, united under a Catholic Church.  But just
as some uncontrollable element in our composition will insist at times
upon introducing into our dreams the most absurd and destructive
comments, so thrust into this dream we find the sleeping face and
craving stomach of the Emperor Charles V, while Henry VIII of England
and Luther tear the unity of Catholicism to shreds.

THE COURT AT VERSAILLES
THE COURT AT VERSAILLES

_(From the print after Watteau in the British Museum)_

In the seventeenth and eighteenth centuries the dream turned to
personal monarchy.  The history of nearly all Europe during this period
tells with variations the story of an attempt to consolidate a
monarchy, to make it absolute and to extend its power over weaker
adjacent regions, and of the steady resistance, first of the landowners
and then with the increase of foreign trade and home industry, of the
growing trading and moneyed class, to the exaction and interference of
the crown.  There is no universal victory of either side; here it is
the King who gets the upper hand while there it is the man of private
property who beats the King.  In one case we find a King becoming the
sun and centre of his national world, while just over his borders a
sturdy mercantile class maintains a republic.  So wide a range of
variation shows how entirely experimental, what local accidents, were
all the various governments of this period.

A very common figure in these national dramas is the King’s minister,
often in the still Catholic countries a prelate, who stands behind the
King, serves him and dominates him by his indispensable services.

Here in the limits set to us it is impossible to tell these various
national dramas in detail.  The trading folk of Holland went Protestant
and republican, and cast off the rule of Philip II of Spain, the son of
the Emperor Charles V.  In England Henry VIII and his minister Wolsey,
Queen Elizabeth and her minister Burleigh, prepared the foundations of
an absolutism that was wrecked by the folly of James I and Charles I. 
Charles I was beheaded for treason to his people (1649), a new turn in
the political thought of Europe.  For a dozen years (until 1660)
Britain was a republic; and the crown was an unstable power, much
overshadowed by Parliament, until George III (1760-1820) made a
strenuous and partly successful effort to restore its predominance. 
The King of France, on the other hand, was the most successful of all
the European Kings in perfecting monarchy.  Two great ministers,
Richelieu (1585-1642) and Mazarin (1602-1661), built up the power of
the crown in that country, and the process was aided by the long reign
and very considerable abilities of King Louis XIV, “the Grand Monarque”
(1643-1715).

Louis XIV was indeed the pattern King of Europe.  He was, within his
limitations, an exceptionally capable King; his ambition was stronger
than his baser passions, and he guided his country towards bankruptcy
through the complication of a spirited foreign policy with an elaborate
dignity that still extorts our admiration.  His immediate desire was to
consolidate and extend France to the Rhine and Pyrenees, and to absorb
the Spanish Netherlands; his remoter view saw the French Kings as the
possible successors of Charlemagne in a recast Holy Roman Empire.  He
made bribery a state method almost more important than warfare. 
Charles II of England was in his pay, and so were most of the Polish
nobility, presently to be described.  His money, or rather the money of
the tax- paying classes in France, went everywhere.  But his prevailing
occupation was splendour.  His great palace at Versailles with its
salons, its corridors, its mirrors, its terraces and fountains and
parks and prospects, was the envy and admiration of the world.

THE SACK OF A VILLAGE DURING THE FRENCH REVOLUTION
THE SACK OF A VILLAGE DURING THE FRENCH REVOLUTION

_(From Callot’s “Miseres de la Guerre”) _

He provoked a universal imitation.  Every king and princelet in Europe
was building his own Versailles as much beyond his means as his
subjects and credits would permit.  Everywhere the nobility rebuilt or
extended their chateaux to the new pattern.  A great industry of
beautiful and elaborate fabrics and furnishings developed.  The
luxurious arts flourished everywhere; sculpture in alabaster, faience,
gilt woodwork, metal work, stamped leather, much music, magnificent
painting, beautiful printing and bindings, fine crockery, fine
vintages.  Amidst the mirrors and fine furniture went a strange race of
“gentlemen” in tall powdered wigs, silks and laces, poised upon high
red heels, supported by amazing canes; and still more wonderful
“ladies,” under towers of powdered hair and wearing vast expansions of
silk and satin sustained on wire. Through it all postured the great
Louis, the sun of his world, unaware of the meagre and sulky and bitter
faces that watched him from those lower darknesses to which his
sunshine did not penetrate.

Map: Central Europe after the Peace of Westphalia, 1648

The German people remained politically divided throughout this period
of the monarchies and experimental governments, and a considerable
number of ducal and princely courts aped the splendours of Versailles
on varying scales. The Thirty Years’ War (1618-48), a devastating
scramble among the Germans, Swedes and Bohemians for fluctuating
political advantages, sapped the energies of Germany for a century.  A
map must show the crazy patchwork in which this struggle ended, a map
of Europe according to the peace of Westphalia (1648).  One sees a
tangle of principalities, dukedoms, free states and the like, some
partly in and partly out of the Empire.  Sweden’s arm, the reader will
note, reached far into Germany; and except for a few islands of
territory within the imperial boundaries France was still far from the
Rhine.  Amidst this patchwork the Kingdom of Prussia—it became a
Kingdom in 1701—rose steadily to prominence and sustained a series of
successful wars. Frederick the Great of Prussia (1740-86) had his
Versailles at Potsdam, where his court spoke French, read French
literature and rivalled the culture of the French King.

In 1714 the Elector of Hanover became King of England, adding one more
to the list of monarchies half in and half out of the empire.

The Austrian branch of the descendants of Charles V retained the title
of Emperor; the Spanish branch retained Spain.  But now there was also
an Emperor of the East again.  After the fall of Constantinople (1453),
the grand duke of Moscow, Ivan the Great (1462-1505), claimed to be
heir to the Byzantine throne and adopted the Byzantine double-headed
eagle upon his arms.  His grandson, Ivan IV, Ivan the Terrible
(1533-1584), assumed the imperial title of Cæsar (Tsar).  But only in
the latter half of the seventeenth century did Russia cease to seem
remote and Asiatic to the European mind.  The Tsar Peter the Great
(1682-1725) brought Russia into the arena of Western affairs.  He built
a new capital for his empire, Petersburg upon the Neva, that played the
part of a window between Russia and Europe, and he set up his
Versailles at Peterhof eighteen miles away, employing a French
architect who gave him a terrace, fountains, cascades, picture gallery,
park and all the recognized appointments of Grand Monarchy. In Russia
as in Prussia French became the language of the court.

Unhappily placed between Austria, Prussia and Russia was the Polish
kingdom, an ill-organized state of great landed proprietors too jealous
of their own individual grandeur to permit more than a nominal kingship
to the monarch they elected.  Her fate was division among these three
neighbours, in spite of the efforts of France to retain her as an
independent ally.  Switzerland at this time was a group of republican
cantons; Venice was a republic; Italy like so much of Germany was
divided among minor dukes and princes.  The Pope ruled like a prince in
the papal states, too fearful now of losing the allegiance of the
remaining Catholic princes to interfere between them and their subjects
or to remind the world of the commonweal of Christendom. There remained
indeed no common political idea in Europe at all; Europe was given over
altogether to division and diversity.

All these sovereign princes and republics carried on schemes of
aggrandizement against each other.  Each one of them pursued a “foreign
policy” of aggression against its neighbours and of aggressive
alliances.  We Europeans still live to-day in the last phase of this
age of the multifarious sovereign states, and still suffer from the
hatreds, hostilities and suspicions it engendered.  The history of this
time becomes more and more manifestly “gossip,” more and more unmeaning
and wearisome to a modern intelligence.  You are told of how this war
was caused by this King’s mistress, and how the jealousy of one
minister for another caused that.  A tittle-tattle of bribes and
rivalries disgusts the intelligent student.  The more permanently
significant fact is that in spite of the obstruction of a score of
frontiers, reading and thought still spread and increased and
inventions multiplied.  The eighteenth century saw the appearance of a
literature profoundly sceptical and critical of the courts and policies
of the time.  In such a book as Voltaire’s _Candide_ we have the
expression of an infinite weariness with the planless confusion of the
European world.', 3016)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('48858e46-55ad-4673-a0f6-975e8e70fde4', '8268eabe-4b74-414e-a1f6-5a266d184560', 53, 'LIII The New Empires of the Europeans in Asia and Overseas', 'While Central Europe thus remained divided and confused, the Western
Europeans and particularly the Dutch, the Scandinavians, the Spanish,
the Portuguese, the French and the British were extending the area of
their struggles across the seas of all the world. The printing press
had dissolved the political ideas of Europe into a vast and at first
indeterminate fermentation, but that other great innovation, the
ocean-going sailing ship, was inexorably extending the range of
European experience to the furthermost limits of salt water.

The first overseas settlements of the Dutch and Northern Atlantic
Europeans were not for colonization but for trade and mining.  The
Spaniards were first in the field; they claimed dominion over the whole
of this new world of America. Very soon however the Portuguese asked
for a share.  The Pope—it was one of the last acts of Rome as mistress
of the world—divided the new continent between these two first-comers,
giving Portugal Brazil and everything else east of a line 370 leagues
west of the Cape Verde islands, and all the rest to Spain (1494).  The
Portuguese at this time were also pushing overseas enterprise southward
and eastward.  In 1497 Vasco da Gama had sailed from Lisbon round the
Cape to Zanzibar and then to Calicut in India.  In 1515 there were
Portuguese ships in Java and the Moluccas, and the Portuguese were
setting up and fortifying trading stations round and about the coasts
of the Indian Ocean.  Mozambique, Goa, and two smaller possessions in
India, Macao in China and a part of Timor are to this day Portuguese
possessions.

The nations excluded from America by the papal settlement paid little
heed to the rights of Spain and Portugal.  The English, the Danes and
Swedes, and presently the Dutch, were soon staking out claims in North
America and the West Indies, and his Most Catholic Majesty of France
heeded the papal settlement as little as any Protestant.  The wars of
Europe extended themselves to these claims and possessions.

Map: Central Europe after the Peace of Westphalia, 1648

In the long run the English were the most successful in this scramble
for overseas possessions. The Danes and Swedes were too deeply
entangled in the complicated affairs of Germany to sustain effective
expeditions abroad.  Sweden was wasted upon the German battlefields by
a picturesque king, Gustavus Adolphus, the Protestant “Lion of the
North.”  The Dutch were the heirs of such small settlements as Sweden
made in America, and the Dutch were too near French aggressions to hold
their own against the British.  In the far East the chief rivals for
empire were the British, Dutch and French, and in America the British,
French and Spanish.  The British had the supreme advantage of a water
frontier, the “silver streak” of the English Channel, against Europe. 
The tradition of the Latin Empire entangled them least.

EUROPEANS TIGER HUNTING IN INDIA
EUROPEANS TIGER HUNTING IN INDIA

_(From the engraving of the picture by Zoffany in the British Museum)_

France has always thought too much in terms of Europe. Throughout the
eighteenth century she was wasting her opportunities of expansion in
West and East alike in order to dominate Spain, Italy and the German
confusion.  The religious and political dissensions of Britain in the
seventeenth century had driven many of the English to seek a permanent
home in America.  They struck root and increased and multiplied, giving
the British a great advantage in the American struggle.  In 1756 and
1760 the French lost Canada to the British and their American
colonists, and a few years later the British trading company found
itself completely dominant over French, Dutch and Portuguese in the
peninsula of India.  The great Mongol Empire of Baber, Akbar and their
successors had now far gone in decay, and the story of its practical
capture by a London trading company, the British East India Company, is
one of the most extraordinary episodes in the whole history of
conquest.

THE LAST EFFORT AND FALL OF TIPPOO SULTAN
THE LAST EFFORT AND FALL OF TIPPOO SULTAN

_(From the engraving of the picture by Singleton in the British
Museum)_

This East India Company had been originally at the time of its
incorporation under Queen Elizabeth no more than a company of sea
adventurers.  Step by step they had been forced to raise troops and arm
their ships.  And now this trading company, with its tradition of gain,
found itself dealing not merely in spices and dyes and tea and jewels,
but in the revenues and territories of princes and the destinies of
India.  It had come to buy and sell, and it found itself achieving a
tremendous piracy.  There was no one to challenge its proceedings.  Is
it any wonder that its captains and commanders and officials, nay, even
its clerks and common soldiers, came back to England loaded with
spoils?

Men under such circumstances, with a great and wealthy land at their
mercy, could not determine what they might or might not do.  It was a
strange land to them, with a strange sunlight; its brown people seemed
a different race, outside their range of sympathy; its mysterious
temples sustained fantastic standards of behaviour.  Englishmen at home
were perplexed when presently these generals and officials came back to
make dark accusations against each other of extortions and cruelties. 
Upon Clive Parliament passed a vote of censure.  He committed suicide
in 1774.  In 1788 Warren Hastings, a second great Indian administrator,
was impeached and acquitted (1792).  It was a strange and unprecedented
situation in the world’s history.  The English Parliament found itself
ruling over a London trading company, which in its turn was dominating
an empire far greater and more populous than all the domains of the
British crown.  To the bulk of the English people India was a remote,
fantastic, almost inaccessible land, to which adventurous poor young
men went out, to return after many years very rich and very choleric
old gentlemen.  It was difficult for the English to conceive what the
life of these countless brown millions in the eastern sunshine could
be.  Their imaginations declined the task.  India remained romantically
unreal.  It was impossible for the English, therefore, to exert any
effective supervision and control over the company’s proceedings.

And while the Western European powers were thus fighting for these
fantastic overseas empires upon every ocean in the world, two great
land conquests were in progress in Asia. China had thrown off the
Mongol yoke in 1360, and flourished under the great native dynasty of
the Mings until 1644.  Then the Manchus, another Mongol people,
reconquered China and remained masters of China until 1912.  Meanwhile
Russia was pushing East and growing to greatness in the world’s
affairs.  The rise of this great central power of the old world, which
is neither altogether of the East nor altogether of the West, is one of
the utmost importance to our human destiny.  Its expansion is very
largely due to the appearance of a Christian steppe people, the
Cossacks, who formed a barrier between the feudal agriculture of Poland
and Hungary to the west and the Tartar to the east.  The Cossacks were
the wild east of Europe, and in many ways not unlike the wild west of
the United States in the middle nineteenth century. All who had made
Russia too hot to hold them, criminals as well as the persecuted
innocent, rebellious serfs, religious secretaries, thieves, vagabonds,
murderers, sought asylum in the southern steppes and there made a fresh
start and fought for life and freedom against Pole, Russian and Tartar
alike. Doubtless fugitives from the Tartars to the east also
contributed to the Cossack mixture.  Slowly these border folk were
incorporated in the Russian imperial service, much as the highland
clans of Scotland were converted into regiments by the British
government.  New lands were offered them in Asia.  They became a weapon
against the dwindling power of the Mongolian nomads, first in Turkestan
and then across Siberia as far as the Amur.

The decay of Mongol energy in the seventeenth and eighteenth centuries
is very difficult to explain.  Within two or three centuries from the
days of Jengis and Timurlane Central Asia had relapsed from a period of
world ascendancy to extreme political impotence.  Changes of climate,
unrecorded pestilences, infections of a malarial type, may have played
their part in this recession—which may be only a temporary recession
measured by the scale of universal history—of the Central Asian
peoples.  Some authorities think that the spread of Buddhist teaching
from China also had a pacifying influence upon them.  At any rate, by
the sixteenth century the Mongol, Tartar and Turkish peoples were no
longer pressing outward, but were being invaded, subjugated and pushed
back both by Christian Russia in the west and by China in the east.

All through the seventeenth century the Cossacks were spreading
eastward from European Russia, and settling wherever they found
agricultural conditions.  Cordons of forts and stations formed a moving
frontier to these settlements to the south, where the Turkomans were
still strong and active; to the north-east, however, Russia had no
frontier until she reached right to the Pacific....', 1523)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('cabefeb8-948b-405b-add3-81be8c738a70', '8268eabe-4b74-414e-a1f6-5a266d184560', 54, 'LIV The American War of Independence', 'The third quarter of the eighteenth century thus saw the remarkable and
unstable spectacle of a Europe divided against itself, and no longer
with any unifying political or religious idea, yet through the immense
stimulation of men’s imaginations by the printed book, the printed map,
and the opportunity of the new ocean-going shipping, able in a
disorganized and contentious manner to dominate all the coasts of the
world. It was a planless, incoherent ebullition of enterprise due to
temporary and almost accidental advantages over the rest of mankind. By
virtue of these advantages this new and still largely empty continent
of America was peopled mainly from Western European sources, and South
Africa and Australia and New Zealand marked down as prospective homes
for a European population.

The motive that had sent Columbus to America and Vasco da Gama to India
was the perennial first motive of all sailors since the beginning of
things—trade.  But while in the already populous and productive East
the trade motive remained dominant, and the European settlements
remained trading settlements from which the European inhabitants hoped
to return home to spend their money, the Europeans in America, dealing
with communities at a very much lower level of productive activity,
found a new inducement for persistence in the search for gold and
silver.  Particularly did the mines of Spanish America yield silver. 
The Europeans had to go to America not simply as armed merchants but as
prospectors, miners, searchers after natural products, and presently as
planters.  In the north they sought furs.  Mines and plantations
necessitated settlements.  They obliged people to set up permanent
overseas homes.  Finally in some cases, as when the English Puritans
went to New England in the early seventeenth 336}century to escape
religious persecution, when in the eighteenth Oglethorpe sent people
from the English debtors’ prisons to Georgia, and when in the end of
the eighteenth the Dutch sent orphans to the Cape of Good Hope, the
Europeans frankly crossed the seas to find new homes for good.  In the
nineteenth century, and especially after the coming of the steamship,
the stream of European emigration to the new empty lands of America and
Australia rose for some decades to the scale of a great migration.

So there grew up permanent overseas populations of Europeans, and the
European culture was transplanted to much larger areas than those in
which it had been developed.  These new communities bringing a
ready-made civilization with them to these new lands grew up, as it
were, unplanned and unperceived; the statecraft of Europe did not
foresee them, and was unprepared with any ideas about their treatment. 
The politicians and ministers of Europe continued to regard them as
essentially expeditionary establishments, sources of revenue,
“possessions” and “dependencies,” long after their peoples had
developed a keen sense of their separate social life.  And also they
continued to treat them as helplessly subject to the mother country
long after the population had spread inland out of reach of any
effectual punitive operations from the sea.

Because until right into the nineteenth century, it must be remembered,
the link of all these overseas empires was the oceangoing sailing ship.
 On land the swiftest thing was still the horse, and the cohesion and
unity of political systems on land was still limited by the limitations
of horse communications.

Now at the end of the third quarter of the eighteenth century the
northern two-thirds of North America was under the British crown. 
France had abandoned America.  Except for Brazil, which was Portuguese,
and one or two small islands and areas in French, British, Danish and
Dutch hands, Florida, Louisiana, California and all America to the
south was Spanish.  It was the British colonies south of Maine and Lake
Ontario that first demonstrated the inadequacy of the sailing ship to
hold overseas populations together in one political system.

These British colonies were very miscellaneous in their origin and
character.  There were French, Swedish and Dutch settlements as well as
British; there were British Catholics in Maryland and British
ultra-Protestants in New England, and while the New Englanders farmed
their own land and denounced slavery, the British in Virginia and the
south were planters employing a swelling multitude of imported negro
slaves.  There was no natural common unity in such states.  To get from
one to the other might mean a coasting voyage hardly less tedious than
the transatlantic crossing.  But the union that diverse origin and
natural conditions denied the British Americans was forced upon them by
the selfishness and stupidity of the British government in London. 
They were taxed without any voice in the spending of the taxes; their
trade was sacrificed to British interests; the highly profitable slave
trade was maintained by the British government in spite of the
opposition of the Virginians who—though quite willing to hold and use
slaves—feared to be swamped by an ever-growing barbaric black
population.

GEORGE WASHINGTON
GEORGE WASHINGTON

_(From a painting by Gilbert Stuart)_

Britain at that time was lapsing towards an intenser form of monarchy,
and the obstinate personality of George III (1760- 1820) did much to
force on a struggle between the home and the colonial governments.

The conflict was precipitated by legislation which favoured the London
East India Company at the expense of the American shipper.  Three
cargoes of tea which were imported under the new conditions were thrown
overboard in Boston harbour by a band of men disguised as Indians
(1773).  Fighting only began in 1775 when the British government
attempted to arrest two of the American leaders at Lexington near
Boston.  The first shots were fired in Lexington by the British; the
first fighting occurred at Concord.

THE BATTLE OF BUNKER HILL, NEAR BOSTON
THE BATTLE OF BUNKER HILL, NEAR BOSTON

_(From the engraving of the picture by John Trumbull in the British
Museum)_

So the American War of Independence began, though for more than a year
the colonists showed themselves extremely unwilling to sever their
links with the mother land.  It was not until the middle of 1776 that
the Congress of the insurgent states issued “The Declaration of
Independence.”  George Washington, who like many of the leading
colonists of the time had had a military training in the wars against
the French, was made commander-in-chief.  In 1777 a British general,
General Burgoyne, in an attempt to reach New York from Canada, was
defeated at Freemans Farm and obliged to surrender at Saratoga.  In the
same year the French and Spanish declared war upon Great Britain,
greatly hampering her sea communications.  A second British army under
General Cornwallis was caught in the Yorktown peninsula in Virginia and
obliged to capitulate in 1781.  In 1783 peace was made in Paris, and
the Thirteen Colonies from Maine to Georgia became a union of
independent sovereign States.  So the United States of America came
into existence.  Canada remained loyal to the British flag.

Map: The United States, showing extent of settlement in 1790

For four years these States had only a very feeble central government
under certain Articles of Confederation, and they seemed destined to
break up into separate independent communities.  Their immediate
separation was delayed by the hostility of the British and a certain
aggressiveness on the part of the French which brought home to them the
immediate dangers of division.  A Constitution was drawn up and
ratified in 1788 establishing a more efficient Federal government with
a President holding very considerable powers, and the weak sense of
national unity was invigorated by a second war with Britain in 1812. 
Nevertheless the area covered by the States was so wide and their
interests so diverse at that time, that—given only the means of
communication then available—a disintegration of the Union into
separate states on the European scale of size was merely a question of
time.  Attendance at Washington meant a long, tedious and insecure
journey for the senators and congressmen of the remoter districts, and
the mechanical impediments to the diffusion of a common education and a
common literature and intelligence were practically insurmountable. 
Forces were at work in the world however that were to arrest the
process of differentiation altogether.  Presently came the river
steamboat and then the railway and the telegraph to save the United
States from fragmentation, and weave its dispersed people together
again into the first of great modern nations.

Twenty-two years later the Spanish colonies in America were to follow
the example of the Thirteen and break their connection with Europe. 
But being more dispersed over the continent and separated by great
mountainous chains and deserts and forests and by the Portuguese Empire
of Brazil, they did not achieve a union among themselves.  They became
a constellation of republican states, very prone at first to wars among
themselves and to revolutions.

Brazil followed a rather different line towards the inevitable
separation.  In 1807 the French armies under Napoleon had occupied the
mother country of Portugal, and the monarchy had fled to Brazil.  From
that time on until they separated, Portugal was rather a dependency of
Brazil than Brazil of Portugal.  In 1822 Brazil declared itself a
separate Empire under Pedro I, a son of the Portuguese King. But the
new world has never been very favourable to monarchy. In 1889 the
Emperor of Brazil was shipped off quietly to Europe, and the United
States of Brazil fell into line with the rest of republican America.', 1566)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('0118a5cd-4c56-4bc4-ab83-c1b2b4ac85ae', '8268eabe-4b74-414e-a1f6-5a266d184560', 55, 'LV The French Revolution and the Restoration of Monarchy in France', 'Britain had hardly lost the Thirteen Colonies in America before a
profound social and political convulsion at the very heart of Grand
Monarchy was to remind Europe still more vividly of the essentially
temporary nature of the political arrangements of the world.

We have said that the French monarchy was the most successful of the
personal monarchies in Europe.  It was the envy and model of a
multitude of competing and minor courts.  But it flourished on a basis
of injustice that led to its dramatic collapse.  It was brilliant and
aggressive, but it was wasteful of the life and substance of its common
people.  The clergy and nobility were protected from taxation by a
system of exemption that threw the whole burden of the state upon the
middle and lower classes.  The peasants were ground down by taxation;
the middle classes were dominated and humiliated by the nobility.

In 1787 this French monarchy found itself bankrupt and obliged to call
representatives of the different classes of the realm into consultation
upon the perplexities of defective income and excessive expenditure. 
In 1789 the States General, a gathering of the nobles, clergy and
commons, roughly equivalent to the earlier form of the British
Parliament, was called together at Versailles.  It had not assembled
since 1610.  For all that time France had been an absolute monarchy. 
Now the people found a means of expressing their long fermenting
discontent.  Disputes immediately broke out between the three estates,
due to the resolve of the Third Estate, the Commons, to control the
Assembly.  The Commons got the better of these disputes and the States
General became a National Assembly, clearly resolved to keep the crown
in order, as the British Parliament kept the British crown in order. 
The king (Louis XVI) prepared for a struggle and brought up troops from
the provinces.  Whereupon Paris and France revolted.

The collapse of the absolute monarchy was very swift.  The grim-looking
prison of the Bastille was stormed by the people of Paris, and the
insurrection spread rapidly throughout France.  In the east and
north-west provinces many chateaux belonging to the nobility were burnt
by the peasants, their title-deeds carefully destroyed, and the owners
murdered or driven away.  In a month the ancient and decayed system of
the aristocratic order had collapsed.  Many of the leading princes and
courtiers of the queen’s party fled abroad. A provisional city
government was set up in Paris and in most of the other large cities,
and a new armed force, the National Guard, a force designed primarily
and plainly to resist the forces of the crown, was brought into
existence by these municipal bodies.  The National Assembly found
itself called upon to create a new political and social system for a
new age.

It was a task that tried the powers of that gathering to the utmost. 
It made a great sweep of the chief injustices of the absolutist regime;
it abolished tax exemptions, serfdom, aristocratic titles and
privileges and sought to establish a constitutional monarchy in Paris. 
The king abandoned Versailles and its splendours and kept a diminished
state in the palace of the Tuileries in Paris.

For two years it seemed that the National Assembly might struggle
through to an effective modernized government.  Much of its work was
sound and still endures, if much was experimental and had to be undone.
 Much was ineffective. There was a clearing up of the penal code;
torture, arbitrary imprisonment and persecutions for heresy were
abolished.  The ancient provinces of France, Normandy, Burgundy and the
like gave place to eighty departments.  Promotion to the highest ranks
in the army was laid open to men of every class.  An excellent and
simple system of law courts was set up, but its value was much vitiated
by having the judges appointed by popular election for short periods of
time.  This made the crowd a sort of final court of appeal, and the
judges, like the members of the Assembly, were forced to play to the
gallery.  And the whole vast property of the church was seized and
administered by the state; religious establishments not engaged in
education or works of charity were broken up, and the salaries of the
clergy made a charge upon the nation.  This in itself was not a bad
thing for the lower clergy in France, who were often scandalously
underpaid in comparison with the richer dignitaries.  But in addition
the choice of priests and bishops was made elective, which struck at
the very root idea of the Roman Church, which centred everything upon
the Pope, and in which all authority is from above downward. 
Practically the National Assembly wanted at one blow to make the church
in France Protestant, in organization if not in doctrine.  Everywhere
there were disputes and conflicts between the state priests created by
the National Assembly and the recalcitrant (non-juring) priests who
were loyal to Rome.

In 1791 the experiment of Constitutional monarchy in France was brought
to an abrupt end by the action of the king and queen, working in
concert with their aristocratic and monarchist friends abroad.  Foreign
armies gathered on the Eastern frontier and one night in June the king
and queen and their children slipped away from the Tuileries and fled
to join the foreigners and the aristocratic exiles.  They were caught
at Varennes and brought back to Paris, and an France flamed up into a
passion of patriotic republicanism.  A Republic was proclaimed, open
war with Austria and Prussia ensued, and the king was tried and
executed (January, 1793) on the model already set by England, for
treason to his people.

And now followed a strange phase in the history of the French people. 
There arose a great flame of enthusiasm for France and the Republic. 
There was to be an end to compromise at home and abroad; at home
royalists and every form of disloyalty were to be stamped out; abroad
France was to be the protector and helper of all revolutionaries.  All
Europe, all the world, was to become Republican.  The youth of France
poured into the Republican armies; a new and wonderful song spread
through the land, a song that still warms the blood like wine, the
Marseillaise.  Before that chant and the leaping columns of French
bayonets and their enthusiastically served guns the foreign armies
rolled back; before the end of 1792 the French armies had gone far
beyond the utmost achievements of Louis XIV; everywhere they stood on
foreign soil. They were in Brussels, they had overrun Savoy, they had
raided to Mayence; they had seized the Scheldt from Holland. Then the
French Government did an unwise thing.  It had been exasperated by the
expulsion of its representative from England upon the execution of
Louis, and it declared war against England.  It was an unwise thing to
do, because the revolution which had given France a new enthusiastic
infantry and a brilliant artillery released from its aristocratic
officers and many cramping conditions had destroyed the discipline of
the navy, and the English were supreme upon the sea.  And this
provocation united all England against France, whereas there had been
at first a very considerable liberal movement in Great Britain in
sympathy with the revolution.

THE TRIAL OF LOUIS XVI
THE TRIAL OF LOUIS XVI

_(From a print in the British Museum)_

Of the fight that France made in the next few years against a European
coalition we cannot tell in any detail.  She drove the Austrians for
ever out of Belgium, and made Holland a republic.  The Dutch fleet,
frozen in the Texel, surrendered to a handful of cavalry without firing
its guns. For some time the French thrust towards Italy was hung up,
and it was only in 1796 that a new general, Napoleon Bonaparte, led the
ragged and hungry republican armies in triumph across Piedmont to
Mantua and Verona.  Says C. F. Atkinson,  [1] “What astonished the
Allies most of all was the number and the velocity of the Republicans. 
These improvised armies had in fact nothing to delay them.  Tents were
unprocurable for want of money, untransportable for want of the
enormous number of wagons that would have been required, and also
unnecessary, for the discomfort that would have caused wholesale
desertion in professional armies was cheerfully borne by the men of
1793- 94.   Supplies for armies of then unheard-of size could not be
carried in convoys, and the French soon became familiar with ‘living on
the country.’  Thus 1793 saw the birth of the modern system of
war—rapidity of movement, full development of national strength,
bivouacs, requisitions and force as against cautious manœuvring, small
professional armies, tents and full rations, and chicane. The first
represented the decision-compelling spirit, the second the spirit of
risking little to gain a little ... .”

And while these ragged hosts of enthusiasts were chanting the
Marseillaise and fighting for _la France_, manifestly never quite clear
in their minds whether they were looting or liberating the countries
into which they poured, the republican enthusiasm in Paris was spending
itself in a far less glorious fashion.  The revolution was now under
the sway of a fanatical leader, Robespierre.  This man is difficult to
judge; he was a man of poor physique, naturally timid, and a prig.  But
he had that most necessary gift for power, faith. He set himself to
save the Republic as he conceived it, and he imagined it could be saved
by no other man than he.  So that to keep in power was to save the
Republic.  The living spirit of the Republic, it seemed, had sprung
from a slaughter of royalists and the execution of the king.  There
were insurrections; one in the west, in the district of La Vendée,
where the people rose against the conscription and against the
dispossession of the orthodox clergy, and were led by noblemen and
priests; one in the south, where Lyons and Marseilles had risen and the
royalists of Toulon had admitted an English and Spanish garrison.  To
which there seemed no more effectual reply than to go on killing
royalists.

The Revolutionary Tribunal went to work, and a steady slaughtering
began.  The invention of the guillotine was opportune to this mood. 
The queen was guillotined, most of Robespierre’s antagonists were
guillotined, atheists who argued that there was no Supreme Being were
guillotined; day by day, week by week, this infernal new machine
chopped off heads and more heads and more.  The reign of Robespierre
lived, it seemed, on blood; and needed more and more, as an opium-taker
needs more and more opium.

THE EXECUTION OF MARIE ANTOINETTE, QUEEN OF FRANCE, OCTOBER 16, 1793
THE EXECUTION OF MARIE ANTOINETTE, QUEEN OF FRANCE, OCTOBER 16, 1793

_(From a print in the British Museum)_

Finally in the summer of 1794 Robespierre himself was overthrown and
guillotined.  He was succeeded by a Directory of five men which carried
on the war of defence abroad and held France together at home for five
years.  Their reign formed a curious interlude in this history of
violent changes.  They took things as they found them.  The
propagandist zeal of the revolution carried the French armies into
Holland, Belgium, Switzerland, south Germany and north Italy. 
Everywhere kings were expelled and republics set up. But such
propagandist zeal as animated the Directorate did not prevent the
looting of the treasures of the liberated peoples to relieve the
financial embarrassment of the French Government.  Their wars became
less and less the holy wars of freedom, and more and more like the
aggressive wars of the ancient regime.  The last feature of Grand
Monarchy that France was disposed to discard was her tradition of
foreign policy.  One discovers it still as vigorous under the
Directorate as if there had been no revolution.

Unhappily for France and the world a man arose who embodied in its
intensest form this national egotism of the French. He gave that
country ten years of glory and the humiliation of a final defeat.  This
was that same Napoleon Bonaparte who had led the armies of the
Directory to victory in Italy.

Throughout the five years of the Directorate he had been scheming and
working for self-advancement.  Gradually he clambered to supreme power.
 He was a man of severely limited understanding but of ruthless
directness and great energy. He had begun life as an extremist of the
school of Robespierre; he owed his first promotion to that side; but he
had no real grasp of the new forces that were working in Europe.  His
utmost political imagination carried him to a belated and tawdry
attempt to restore the Western Empire.  He tried to destroy the remains
of the old Holy Roman Empire, intending to replace it by a new one
centring upon Paris. The Emperor in Vienna ceased to be the Holy Roman
Emperor and became simply Emperor of Austria.  Napoleon divorced his
French wife in order to marry an Austrian princess.

He became practically monarch of France as First Consul in 1799, and he
made himself Emperor of France in 1804 in direct imitation of
Charlemagne.  He was crowned by the Pope in Paris, taking the crown
from the Pope and putting it upon his own head himself as Charlemagne
had directed.  His son was crowned King of Rome.

For some years Napoleon’s reign was a career of victory.  He conquered
most of Italy and Spain, defeated Prussia and Austria, and dominated
all Europe west of Russia.  But he never won the command of the sea
from the British and his fleets sustained a conclusive defeat inflicted
by the British Admiral Nelson at Trafalgar (1805). Spain rose against
him in 1808 and a British army under Wellington thrust the French
armies slowly northward out of the peninsula.  In 1811 Napoleon came
into conflict with the Tsar Alexander I, and in 1812 he invaded Russia
with a great conglomerate army of 600,000 men, that was defeated and
largely destroyed by the Russians and the Russian winter. Germany rose
against him, Sweden turned against him.  The French armies were beaten
back and at Fontainebleau Napoleon abdicated (1814).  He was exiled to
Elba, returned to France for one last effort in 1815 and was defeated
by the allied British, Belgians and Prussians at Waterloo.  He died a
British prisoner at St. Helena in 1821.

The forces released by the French revolution were wasted and finished. 
A great Congress of the victorious allies met at Vienna to restore as
far as possible the state of affairs that the great storm had rent to
pieces.  For nearly forty years a sort of peace, a peace of exhausted
effort, was maintained in Europe.

[1] In his article, “French Revolutionary Wars,” in the Encyclopædia
Britannica.', 2456)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('b7520dd7-329d-4071-a969-cc04713c1bcb', '8268eabe-4b74-414e-a1f6-5a266d184560', 56, 'LVI The Uneasy Peace in Europe That Followed the Fall of Napoleon', 'Two main causes prevented that period from being a complete social and
international peace, and prepared the way for the cycle of wars between
1854 and 1871. The first of these was the tendency of the royal courts
concerned, towards the restoration of unfair privilege and interference
with freedom of thought and writing and teaching. The second was the
impossible system of boundaries drawn by the diplomatists of Vienna.

The inherent disposition of monarchy to march back towards past
conditions was first and most particularly manifest in Spain.  Here
even the Inquisition was restored.  Across the Atlantic the Spanish
colonies had followed the example of the United States and revolted
against the European Great Power System, when Napoleon set his brother
Joseph on the Spanish throne in 1810.  The George Washington of South
America was General Bolivar.  Spain was unable to suppress this revolt,
it dragged on much as the United States War of Independence had dragged
on, and at last the suggestion was made by Austria, in accordance with
the spirit of the Holy Alliance, that the European monarch should
assist Spain in this struggle.  This was opposed by Britain in Europe,
but it was the prompt action of President Monroe of the United States
in 1823 which conclusively warned off this projected monarchist
restoration.  He announced that the United States would regard any
extension of the European system in the Western Hemisphere as a hostile
act.  Thus arose the Monroe Doctrine, the doctrine that there must be
no extension of extra- American government in America, which has kept
the Great Power system out of America for nearly a hundred years and
permitted the new states of Spanish America to work out their destinies
along their own lines.

But if Spanish monarchism lost its colonies, it could at least, under
the protection of the Concert of Europe, do what it chose in Europe.  A
popular insurrection in Spain was crushed by a French army in 1823,
with a mandate from a European congress, and simultaneously Austria
suppressed a revolution in Naples.

In 1824 Louis XVIII died, and was succeeded by Charles X. Charles set
himself to destroy the liberty of the press and universities, and to
restore absolute government; the sum of a billion francs was voted to
compensate the nobles for the chateau burnings and sequestrations of
1789.  In 1830 Paris rose against this embodiment of the ancient
regime, and replaced him by Louis Philippe, the son of that Philip,
Duke of Orleans, who was executed during the Terror.  The other
continental monarchies, in face of the open approval of the revolution
by Great Britain and a strong liberal ferment in Germany and Austria,
did not interfere in this affair.  After all, France was still a
monarchy.  This man Louis Philippe (1830-48) remained the
constitutional King of France for eighteen years.

Such were the uneasy swayings of the peace of the Congress of Vienna,
which were provoked by the reactionary proceedings of the monarchists. 
The stresses that arose from the unscientific boundaries planned by the
diplomatists at Vienna gathered force more deliberately, but they were
even more dangerous to the peace of mankind.  It is extraordinarily
inconvenient to administer together the affairs of peoples speaking
different languages and so reading different literatures and having
different general ideas, especially if those differences are
exacerbated by religious disputes. Only some strong mutual interest,
such as the common defensive needs of the Swiss mountaineers, can
justify a close linking of peoples of dissimilar languages and faiths;
and even in Switzerland there is the utmost local autonomy. When, as in
Macedonia, populations are mixed in a patchwork of villages and
districts, the cantonal system is imperatively needed.  But if the
reader will look at the map of Europe as the Congress of Vienna drew
it, he will see that this gathering seems almost as if it had planned
the maximum of local exasperation.

It destroyed the Dutch Republic, quite needlessly, it lumped together
the Protestant Dutch with the French-speaking Catholics of the old
Spanish (Austrian) Netherlands, and set up a kingdom of the
Netherlands.  It handed over not merely the old republic of Venice, but
all of North Italy as far as Milan to the German-speaking Austrians. 
French-speaking Savoy it combined with pieces of Italy to restore the
kingdom of Sardinia.  Austria and Hungary, already a sufficiently
explosive mixture of discordant nationalities, Germans, Hungarians,
Czecho-Slovaks, Jugo-Slavs, Roumanians, and now Italians, was made
still more impossible by confirming Austria’s Polish acquisitions of
1772 and 1795.  The Catholic and republican-spirited Polish people were
chiefly given over to the less civilized rule of the Greek-orthodox
Tsar, but important districts went to Protestant Prussia. The Tsar was
also confirmed in his acquisition of the entirely alien Finns.  The
very dissimilar Norwegian and Swedish peoples were bound together under
one king.  Germany, the reader will see, was left in a particularly
dangerous state of muddle.  Prussia and Austria were both partly in and
partly out of a German confederation, which included a multitude of
minor states.  The King of Denmark came into the German confederation
by virtue of certain German-speaking possessions in Holstein. 
Luxembourg was included in the German confederation, though its ruler
was also King of the Netherlands, and though many of its peoples talked
French.

Here was a complete disregard of the fact that the people who talk
German and base their ideas on German literature, the people who talk
Italian and base their ideas on Italian literature, and the people who
talk Polish and base their ideas on Polish literature, will all be far
better off and most helpful and least obnoxious to the rest of mankind
if they conduct their own affairs in their own idiom within the
ring-fence of their own speech.  Is it any wonder that one of the most
popular songs in Germany during this period declared that wherever the
German tongue was spoken, there was the German Fatherland!

PORTRAIT OF NAPOLEON (CORONATION)
PORTRAIT OF NAPOLEON (CORONATION)

_(From a print in the British Museum)_

In 1830 French-speaking Belgium, stirred up by the current revolution
in France, revolted against its Dutch association in the kingdom of the
Netherlands.  The powers, terrified at the possibilities of a republic
or of annexation to France, hurried in to pacify this situation, and
gave the Belgians a monarch, Leopold I of Saxe-Coburg Gotha.  There
were also ineffectual revolts in Italy and Germany in 1830, and a much
more serious one in Russian Poland.  A republican government held out
in Warsaw for a year against Nicholas I (who succeeded Alexander in
1825), and was then stamped out of existence with great violence and
cruelty.  The Polish language was banned, and the Greek Orthodox church
was substituted for the Roman Catholic as the state religion ....

Map: Europe after the Congress of Vienna

In 1821 there was an insurrection of the Greeks against the Turks.  For
six years they fought a desperate war, while the governments of Europe
looked on.  Liberal opinion protested against this inactivity;
volunteers from every European country joined the insurgents, and at
last Britain, France and Russia took joint action.  The Turkish fleet
was destroyed by the French and English at the battle of Navarino
(1827), and the Tsar invaded Turkey.  By the treaty of Adrianople
(1829) Greece was declared free, but she was not permitted to resume
her ancient republican traditions.  A German king was found for Greece,
one Prince Otto of Bavaria, and Christian governors were set up in the
Danubian provinces (which are now Roumania) and Serbia (a part of the
Jugo-Slav region).  Much blood had still to run however before the Turk
was altogether expelled from these lands.', 1279)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('442cf7c6-3134-4389-a293-50eaadb105d5', '8268eabe-4b74-414e-a1f6-5a266d184560', 57, 'LVII The Development of Material Knowledge', 'Throughout the seventeenth and eighteenth centuries and the opening
years of the nineteenth century, while these conflicts of the powers
and princes were going on in Europe, and the patchwork of the treaty of
Westphalia (1648) was changing kaleidoscopically into the patchwork of
the treaty of Vienna (1815), and while the sailing ship was spreading
European influence throughout the world, a steady growth of knowledge
and a general clearing up of men’s ideas about the world in which they
lived was in progress in the European and Europeanized world.

It went on disconnected from political life, and producing throughout
the seventeenth and eighteenth centuries no striking immediate results
in political life.  Nor was it affecting popular thought very
profoundly during this period. These reactions were to come later, and
only in their full force in the latter half of the nineteenth century. 
It was a process that went on chiefly in a small world of prosperous
and independent-spirited people.  Without what the English call the
“private gentleman,” the scientific process could not have begun in
Greece, and could not have been renewed in Europe.  The universities
played a part but not a leading part in the philosophical and
scientific thought of this period.  Endowed learning is apt to be timid
and conservative learning, lacking in initiative and resistent to
innovation, unless it has the spur of contact with independent minds.

We have already noted the formation of the Royal Society in 1662 and
its work in realizing the dream of Bacon’s _New Atlantis_.  Throughout
the eighteenth century there was much clearing up of general ideas
about matter and motion, much mathematical advance, a systematic
development of the use of optical glass in microscope and telescope, a
renewed energy in classificatory natural history, a great revival of
anatomical science.  The science of geology—foreshadowed by Aristotle
and anticipated by Leonardo da Vinci (1452-1519)—began its great task
of interpreting the Record of the Rocks.

EARLY ROLLING STOCK ON THE LIVERPOOL AND MANCHESTER RAILWAY IN THE
FIRST DAYS OF THE RAILWAY
EARLY ROLLING STOCK ON THE LIVERPOOL AND MANCHESTER RAILWAY IN THE
FIRST DAYS OF THE RAILWAY

The progress of physical science reacted upon metallurgy. Improved
metallurgy, affording the possibility of a larger and bolder handling
of masses of metal and other materials, reacted upon practical
inventions.  Machinery on a new scale and in a new abundance appeared
to revolutionize industry.

In 1804 Trevithick adapted the Watt engine to transport and made the
first locomotive.  In 1825 the first railway, between Stockton and
Darlington, was opened, and Stephenson’s “Rocket,” with a thirteen-ton
train, got up to a speed of forty-four miles per hour.  From 1830
onward railways multiplied.  By the middle of the century a network of
railways had spread all over Europe.

EARLY TRAVELLING ON THE LIVERPOOL AND MANCHESTER RAILWAY, 1833
EARLY TRAVELLING ON THE LIVERPOOL AND MANCHESTER RAILWAY, 1833

Here was a sudden change in what had long been a fixed condition of
human life, the maximum rate of land transport. After the Russian
disaster, Napoleon travelled from near Vilna to Paris in 312 hours. 
This was a journey of about 1,400 miles.  He was travelling with every
conceivable advantage, and he averaged under 5 miles an hour.  An
ordinary traveller could not have done this distance in twice the time.
 These were about the same maximum rates of travel as held good between
Rome and Gaul in the first century A.D.  Then suddenly came this
tremendous change.  The railways reduced this journey for any ordinary
traveller to less than forty-eight hours.  That is to say, they reduced
the chief European distances to about a tenth of what they had been. 
They made it possible to carry out administrative work in areas ten
times as great as any that had hitherto been workable under one
administration.  The full significance of that possibility in Europe
still remains to be realized.  Europe is still netted in boundaries
drawn in the horse and road era.  In America the effects were
immediate.  To the United States of America, sprawling westward, it
meant the possibility of a continuous access to Washington, however far
the frontier travelled across the continent.  It meant unity, sustained
on a scale that would otherwise have been impossible.

THE STEAMBOAT: CLERMONT, 1807, U.S.A.
THE STEAMBOAT: _CLERMONT_, 1807, U.S.A.

The steamboat was, if anything, a little ahead of the steam engine in
its earlier phases.  There was a steamboat, the _Charlotte Dundas_, on
the Firth of Clyde Canal in 1802, and in 1807 an American named Fulton
had a steamer, the Clermont, with British-built engines, upon the
Hudson River above New York.  The first steamship to put to sea was
also an American, the Phœnix, which went from New York (Hoboken) to
Philadelphia.  So, too, was the first ship using steam (she also had
sails) to cross the Atlantic, the Savannah (1819).  All these were
paddle-wheel boats and paddle-wheel boats are not adapted to work in
heavy seas. The paddles smash too easily, and the boat is then
disabled. The screw steamship followed rather slowly.  Many
difficulties had to be surmounted before the screw was a practicable
thing.  Not until the middle of the century did the tonnage of
steamships upon the sea begin to overhaul that of sailing ships.  After
that the evolution in sea transport was rapid.  For the first time men
began to cross the seas and oceans with some certainty as to the date
of their arrival.  The transatlantic crossing, which had been an
uncertain adventure of several weeks—which might stretch to months—was
accelerated, until in 1910 it was brought down, in the case of the
fastest boats, to under five days, with a practically notifiable hour
of arrival.

Concurrently with the development of steam transport upon land and sea
a new and striking addition to the facilities of human intercourse
arose out of the investigations of Volta, Galvani and Faraday into
various electrical phenomena.  The electric telegraph came into
existence in 1835.  The first underseas cable was laid in 1851 between
France and England. In a few years the telegraph system had spread over
the civilized world, and news which had hitherto travelled slowly from
point to point became practically simultaneous throughout the earth.

These things, the steam railway and the electric telegraph, were to the
popular imagination of the middle nineteenth century the most striking
and revolutionary of inventions, but they were only the most
conspicuous and clumsy first fruits of a far more extensive process. 
Technical knowledge and skill were developing with an extraordinary
rapidity, and to an extraordinary extent measured by the progress of
any previous age.  Far less conspicuous at first in everyday life, but
finally far more important, was the extension of man’s power over
various structural materials.  Before the middle of the eighteenth
century iron was reduced from its ores by means of wood charcoal, was
handled in small pieces, and hammered and wrought into shape. It was
material for a craftsman.  Quality and treatment were enormously
dependent upon the experience and sagacity of the individual
iron-worker.  The largest masses of iron that could be dealt with under
those conditions amounted at most (in the sixteenth century) to two or
three tons.  (There was a very definite upward limit, therefore, to the
size of cannon.)  The blast-furnace rose in the eighteenth century and
developed with the use of coke.  Not before the eighteenth century do
we find rolled sheet iron (1728) and rolled rods and bars (1783). 
Nasmyth’s steam hammer came as late as 1838.

The ancient world, because of its metallurgical inferiority, could not
use steam.  The steam engine, even the primitive pumping engine, could
not develop before sheet iron was available.  The early engines seem to
the modern eye very pitiful and clumsy bits of ironmongery, but they
were the utmost that the metallurgical science of the time could do. As
late as 1856 came the Bessemer process, and presently (1864) the
open-hearth process, in which steel and every sort of iron could be
melted, purified and cast in a manner and upon a scale hitherto unheard
of.  To-day in the electric furnace one may see tons of incandescent
steel swirling about like boiling milk in a saucepan.  Nothing in the
previous practical advances of mankind is comparable in its
consequences to the complete mastery over enormous masses of steel and
iron and over their texture and quality which man has now achieved. 
The railways and early engines of all sorts were the mere first
triumphs of the new metallurgical methods.  Presently came ships of
iron and steel, vast bridges, and a new way of building with steel upon
a gigantic scale.  Men realized too late that they had planned their
railways with far too timid a gauge, that they could have organized
their travelling with far more steadiness and comfort upon a much
bigger scale.

Before the nineteenth century there were no ships in the world much
over 2,000 tons burthen; now there is nothing wonderful about a
50,000-ton liner.  There are people who sneer at this kind of progress
as being a progress in “mere size,” but that sort of sneering merely
marks the intellectual limitations of those who indulge in it.  The
great ship or the steel-frame building is not, as they imagine, a
magnified version of the small ship or building of the past; it is a
thing different in kind, more lightly and strongly built, of finer and
stronger materials; instead of being a thing of precedent and
rule-of-thumb, it is a thing of subtle and intricate calculation.  In
the old house or ship, matter was dominant—the material and its needs
had to be slavishly obeyed; in the new, matter had been captured,
changed, coerced.  Think of the coal and iron and sand dragged out of
the banks and pits, wrenched, wrought, molten and cast, to be flung at
last, a slender glittering pinnacle of steel and glass, six hundred
feet above the crowded city!

We have given these particulars of the advance in man’s knowledge of
the metallurgy of steel and its results by way of illustration.  A
parallel story could be told of the metallurgy of copper and tin, and
of a multitude of metals, nickel and aluminium to name but two, unknown
before the nineteenth century dawned.  It is in this great and growing
mastery over substances, over different sorts of glass, over rocks and
plasters and the like, over colours and textures, that the main
triumphs of the mechanical revolution have thus far been achieved.  Yet
we are still in the stage of the first fruits in the matter.  We have
the power, but we have still to learn how to use our power.  Many of
the first employments of these gifts of science have been vulgar,
tawdry, stupid or horrible.  The artist and the adaptor have still
hardly begun to work with the endless variety of substances now at
their disposal.

Parallel with this extension of mechanical possibilities the new
science of electricity grew up.  It was only in the eighties of the
nineteenth century that this body of enquiry began to yield results to
impress the vulgar mind.  Then suddenly came electric light and
electric traction, and the transmutation of forces, the possibility of
sending power, that could be changed into mechanical motion or light or
heat as one chose, along a copper wire, as water is sent along a pipe,
began to come through to the ideas of ordinary people....

The British and French were at first the leading peoples in this great
proliferation of knowledge; but presently the Germans, who had learnt
humility under Napoleon, showed such zeal and pertinacity in scientific
enquiry as to overhaul these leaders.  British science was largely the
creation of Englishmen and Scotchmen working outside the ordinary
centres of erudition.

EIGHTEENTH CENTURY SPINNING WHEEL
EIGHTEENTH CENTURY SPINNING WHEEL

_In the Ipswich Museum_

MODEL OF ARKWRIGHT’S SPINNING JENNY, 1769
MODEL OF ARKWRIGHT’S SPINNING JENNY, 1769

_From the specifications in the Patent Office_

The universities of Britain were at this time in a state of educational
retrogression, largely given over to a pedantic conning of the Latin
and Greek classics.  French education, too, was dominated by the
classical tradition of the Jesuit schools, and consequently it was not
difficult for the Germans to organize a body of investigators, small
indeed in relation to the possibilities of the case, but large in
proportion to the little band of British and French inventors and
experimentalists.  And though this work of research and experiment was
making Britain and France the most rich and powerful countries in the
world, it was not making scientific and inventive men rich and
powerful.  There is a necessary unworldliness about a sincere
scientific man; he is too preoccupied with his research to plan and
scheme how to make money out of it.  The economic exploitation of his
discoveries falls very easily and naturally, therefore, into the hands
of a more acquisitive type; and so we find that the crops of rich men
which every fresh phase of scientific and technical progress has
produced in Great Britain, though they have not displayed quite the
same passionate desire to insult and kill the goose that laid the
national golden eggs as the scholastic and clerical professions, have
been quite content to let that profitable creature starve.  Inventors
and discoverers came by nature, they thought, for cleverer people to
profit by.

In this matter the Germans were a little wiser.  The German “learned”
did not display the same vehement hatred of the new learning.  They
permitted its development. The German business man and manufacturer
again had not quite the same contempt for the man of science as had his
British competitor.  Knowledge, these Germans believed, might be a
cultivated crop, responsive to fertilizers.  They did concede,
therefore, a certain amount of opportunity to the scientific mind;
their public expenditure on scientific work was relatively greater, and
this expenditure was abundantly rewarded.  By the latter half of the
nineteenth century the German scientific worker had made German a
necessary language for every science student who wished to keep abreast
with the latest work in his department, and in certain branches, and
particularly in chemistry, Germany acquired a very great superiority
over her western neighbours.  The scientific effort of the sixties and
seventies in Germany began to tell after the eighties, and the German
gained steadily upon Britain and France in technical and industrial
prosperity.

A fresh phase in the history of invention opened when in the eighties a
new type of engine came into use, an engine in which the expansive
force of an explosive mixture replaced the expansive force of steam. 
The light, highly efficient engines that were thus made possible were
applied to the automobile, and developed at last to reach such a pitch
of lightness and efficiency as to render flight—long known to be
possible—a practical achievement.  A successful flying machine—but not
a machine large enough to take up a human body—was made by Professor
Langley of the Smithsonian Institute of Washington as early as 1897. 
By 1909 the aeroplane was available for human locomotion.  There had
seemed to be a pause in the increase of human speed with the perfection
of railways and automobile road traction, but with the flying machine
came fresh reductions in the effective distance between one point of
the earth’s surface and another.  In the eighteenth century the
distance from London to Edinburgh was an eight days’ journey; in 1918
the British Civil Air Transport Commission reported that the journey
from London to Melbourne, halfway round the earth, would probably in a
few years’ time be accomplished in that same period of eight days.

AN EARLY WEAVING MACHINE
AN EARLY WEAVING MACHINE

_From an engraving by W. Hincks in the British Museum_

Too much stress must not be laid upon these striking reductions in the
time distances of one place from another. They are merely one aspect of
a much profounder and more momentous enlargement of human possibility. 
The science of agriculture and agricultural chemistry, for instance,
made quite parallel advances during the nineteenth century.  Men learnt
so to fertilize the soil as to produce quadruple and quintuple the
crops got from the same area in the seventeenth century.  There was a
still more extraordinary advance in medical science; the average
duration of life rose, the daily efficiency increased, the waste of
life through ill-health diminished.

Now here altogether we have such a change in human life as to
constitute a fresh phase of history.  In a little more than a century
this mechanical revolution has been brought about. In that time man
made a stride in the material conditions of his life vaster than he had
done during the whole long interval between the palæolithic stage and
the age of cultivation, or between the days of Pepi in Egypt and those
of George III.  A new gigantic material framework for human affairs has
come into existence.  Clearly it demands great readjustments of our
social, economical and political methods.  But these readjustments have
necessarily waited upon the development of the mechanical revolution,
and they are still only in their opening stage to-day.', 2863)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('cd1a26fc-674a-48cc-ad74-423058cd121b', '8268eabe-4b74-414e-a1f6-5a266d184560', 58, 'LVIII The Industrial Revolution', 'There is a tendency in many histories to confuse together what we have
here called the mechanical revolution, which was an entirely new thing
in human experience arising out of the development of organized
science, a new step like the invention of agriculture or the discovery
of metals, with something else, quite different in its origins,
something for which there was already an historical precedent, the
social and financial development which is called the _industrial
revolution_. The two processes were going on together, they were
constantly reacting upon each other, but they were in root and essence
different. There would have been an industrial revolution of sorts if
there had been no coal, no steam, no machinery; but in that case it
would probably have followed far more closely upon the lines of the
social and financial developments of the later years of the Roman
Republic. It would have repeated the story of dispossessed free
cultivators, gang labour, great estates, great financial fortunes, and
a socially destructive financial process. Even the factory method came
before power and machinery. Factories were the product not of
machinery, but of the “division of labour.” Drilled and sweated workers
were making such things as millinery cardboard boxes and furniture, and
colouring maps and book illustrations and so forth, before even
water-wheels had been used for industrial purposes. There were
factories in Rome in the days of Augustus. New books, for instance,
were dictated to rows of copyists in the factories of the book-sellers.
The attentive student of Defoe and of the political pamphlets of
Fielding will realize that the idea of herding poor people into
establishments to work collectively for their living was already
current in Britain before the close of the seventeenth century. There
are intimations of it even as early as More’s _Utopia_ (1516). It was a
social and not a mechanical development.

Up to past the middle of the eighteenth century the social and economic
history of western Europe was in fact retreading the path along which
the Roman state had gone in the last three centuries B.C.  But the
political disunions of Europe, the political convulsions against
monarchy, the recalcitrance of the common folk and perhaps also the
greater accessibility of the western European intelligence to
mechanical ideas and inventions, turned the process into quite novel
directions.  Ideas of human solidarity, thanks to Christianity, were
far more widely diffused in the newer European world, political power
was not so concentrated, and the man of energy anxious to get rich
turned his mind, therefore, very willingly from the ideas of the slave
and of gang labour to the idea of mechanical power and the machine.

The mechanical revolution, the process of mechanical invention and
discovery, was a new thing in human experience and it went on
regardless of the social, political, economic and industrial
consequences it might produce.  The industrial revolution, on the other
hand, like most other human affairs, was and is more and more
profoundly changed and deflected by the constant variation in human
conditions caused by the mechanical revolution.  And the essential
difference between the amassing of riches, the extinction of small
farmers and small business men, and the phase of big finance in the
latter centuries of the Roman Republic on the one hand, and the very
similar concentration of capital in the eighteenth and nineteenth
centuries on the other, lies in the profound difference in the
character of labour that the mechanical revolution was bringing about. 
The power of the old world was human power; everything depended
ultimately upon the driving power of human muscle, the muscle of
ignorant and subjugated men.  A little animal muscle, supplied by draft
oxen, horse traction and the like, contributed.  Where a weight had to
be lifted, men lifted it; where a rock had to be quarried, men chipped
it out; where a field had to be ploughed, men and oxen ploughed it; the
Roman equivalent of the steamship was the galley with its bank of
sweating rowers.  A vast proportion of mankind in the early
civilizations were employed in purely mechanical drudgery. At its
onset, power-driven machinery did not seem to promise any release from
such unintelligent toil.  Great gangs of men were employed in
excavating canals, in making railway cuttings and embankments, and the
like.  The number of miners increased enormously.  But the extension of
facilities and the output of commodities increased much more.  And as
the nineteenth century went on, the plain logic of the new situation
asserted itself more clearly.  Human beings were no longer wanted as a
source of mere indiscriminated power.  What could be done mechanically
by a human being could be done faster and better by a machine.  The
human being was needed now only where choice and intelligence had to be
exercised.  Human beings were wanted only as human beings.  The drudge,
on whom all the previous civilizations had rested, the creature of mere
obedience, the man whose brains were superfluous, had become
unnecessary to the welfare of mankind.

INCIDENT IN THE DAYS OF THE SLAVE TRADE
INCIDENT IN THE DAYS OF THE SLAVE TRADE

_From a print after Morland in the British Museum_

This was as true of such ancient industries as agriculture and mining
as it was of the newest metallurgical processes. For ploughing, sowing
and harvesting, swift machines came forward to do the work of scores of
men.  The Roman civilization was built upon cheap and degraded human
beings; modern civilization is being rebuilt upon cheap mechanical
power.  For a hundred years power has been getting cheaper and labour
dearer.  If for a generation or so machinery has had to wait its turn
in the mine, it is simply because for a time men were cheaper than
machinery.

EARLY FACTORY, IN COLEBROOKDALE
EARLY FACTORY, IN COLEBROOKDALE

_From a print the British Museum_

Now here was a change-over of quite primary importance in human
affairs.  The chief solicitude of the rich and of the ruler in the old
civilization had been to keep up a supply of drudges.  As the
nineteenth century went on, it became more and more plain to the
intelligent directive people that the common man had now to be
something better than a drudge.  He had to be educated—if only to
secure “industrial efficiency.”  He had to understand what he was
about. From the days of the first Christian propaganda, popular
education had been smouldering in Europe, just as it had smouldered in
Asia wherever Islam has set its foot, because of the necessity of
making the believer understand a little of the belief by which he is
saved, and of enabling him to read a little in the sacred books by
which his belief is conveyed. Christian controversies, with their
competition for adherents, ploughed the ground for the harvest of
popular education.  In England, for instance, by the thirties and
forties of the nineteenth century, the disputes of the sects and the
necessity of catching adherents young had produced a series of
competing educational organizations for children, the church “National”
schools, the dissenting “British” schools, and even Roman Catholic
elementary schools.  The second half of the nineteenth century was a
period of rapid advance in popular education throughout all the
Westernized world.  There was no parallel advance in the education of
the upper classes—some advance, no doubt, but nothing to correspond—and
so the great gulf that had divided that world hitherto into the readers
and the non-reading mass became little more than a slightly perceptible
difference in educational level.  At the back of this process was the
mechanical revolution, apparently regardless of social conditions, but
really insisting inexorably upon the complete abolition of a totally
illiterate class throughout the world.

The economic revolution of the Roman Republic had never been clearly
apprehended by the common people of Rome.  The ordinary Roman citizen
never saw the changes through which he lived, clearly and
comprehensively as we see them.  But the industrial revolution, as it
went on towards the end of the nineteenth century, was more and more
distinctly _seen_ as one whole process by the common people it was
affecting, because presently they could read and discuss and
communicate, and because they went about and saw things as no
commonalty had ever done before.', 1378)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;
