-- ============================================================
-- NOI DUNG SACH — phan 14/20
-- Sinh tu tools/books/import_book.py, dung sua tay.
--
-- Chua: child-history-england
--
-- Chay books_schema.sql TRUOC, roi chay cac phan nay THEO THU TU.
-- An toan chay lai nhieu lan (uuid tat dinh + on conflict).
-- Cat nho vi SQL Editor cua Supabase tu choi cau lenh qua lon.
-- ============================================================

-- ===== A Child's History of England — Charles Dickens (1853) =====
-- Nguon: Project Gutenberg #699 (public domain)

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('5057e0cb-c02e-4206-a334-5310ef73cdef', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 38, 'Chapter XXIII. England Under Edward the Fourth', 'King Edward the Fourth was not quite twenty-one years of age when he
took that unquiet seat upon the throne of England. The Lancaster party,
the Red Roses, were then assembling in great numbers near York, and it
was necessary to give them battle instantly. But, the stout Earl of
Warwick leading for the young King, and the young King himself closely
following him, and the English people crowding round the Royal
standard, the White and the Red Roses met, on a wild March day when the
snow was falling heavily, at Towton; and there such a furious battle
raged between them, that the total loss amounted to forty thousand
men—all Englishmen, fighting, upon English ground, against one another.
The young King gained the day, took down the heads of his father and
brother from the walls of York, and put up the heads of some of the
most famous noblemen engaged in the battle on the other side. Then, he
went to London and was crowned with great splendour.

A new Parliament met. No fewer than one hundred and fifty of the
principal noblemen and gentlemen on the Lancaster side were declared
traitors, and the King—who had very little humanity, though he was
handsome in person and agreeable in manners—resolved to do all he
could, to pluck up the Red Rose root and branch.

Queen Margaret, however, was still active for her young son. She
obtained help from Scotland and from Normandy, and took several
important English castles. But, Warwick soon retook them; the Queen
lost all her treasure on board ship in a great storm; and both she and
her son suffered great misfortunes. Once, in the winter weather, as
they were riding through a forest, they were attacked and plundered by
a party of robbers; and, when they had escaped from these men and were
passing alone and on foot through a thick dark part of the wood, they
came, all at once, upon another robber. So the Queen, with a stout
heart, took the little Prince by the hand, and going straight up to
that robber, said to him, ‘My friend, this is the young son of your
lawful King! I confide him to your care.’ The robber was surprised, but
took the boy in his arms, and faithfully restored him and his mother to
their friends. In the end, the Queen’s soldiers being beaten and
dispersed, she went abroad again, and kept quiet for the present.

Now, all this time, the deposed King Henry was concealed by a Welsh
knight, who kept him close in his castle. But, next year, the Lancaster
party recovering their spirits, raised a large body of men, and called
him out of his retirement, to put him at their head. They were joined
by some powerful noblemen who had sworn fidelity to the new King, but
who were ready, as usual, to break their oaths, whenever they thought
there was anything to be got by it. One of the worst things in the
history of the war of the Red and White Roses, is the ease with which
these noblemen, who should have set an example of honour to the people,
left either side as they took slight offence, or were disappointed in
their greedy expectations, and joined the other. Well! Warwick’s
brother soon beat the Lancastrians, and the false noblemen, being
taken, were beheaded without a moment’s loss of time. The deposed King
had a narrow escape; three of his servants were taken, and one of them
bore his cap of estate, which was set with pearls and embroidered with
two golden crowns. However, the head to which the cap belonged, got
safely into Lancashire, and lay pretty quietly there (the people in the
secret being very true) for more than a year. At length, an old monk
gave such intelligence as led to Henry’s being taken while he was
sitting at dinner in a place called Waddington Hall. He was immediately
sent to London, and met at Islington by the Earl of Warwick, by whose
directions he was put upon a horse, with his legs tied under it, and
paraded three times round the pillory. Then, he was carried off to the
Tower, where they treated him well enough.

The White Rose being so triumphant, the young King abandoned himself
entirely to pleasure, and led a jovial life. But, thorns were springing
up under his bed of roses, as he soon found out. For, having been
privately married to Elizabeth Woodville, a young widow lady, very
beautiful and very captivating; and at last resolving to make his
secret known, and to declare her his Queen; he gave some offence to the
Earl of Warwick, who was usually called the King-Maker, because of his
power and influence, and because of his having lent such great help to
placing Edward on the throne. This offence was not lessened by the
jealousy with which the Nevil family (the Earl of Warwick’s) regarded
the promotion of the Woodville family. For, the young Queen was so bent
on providing for her relations, that she made her father an earl and a
great officer of state; married her five sisters to young noblemen of
the highest rank; and provided for her younger brother, a young man of
twenty, by marrying him to an immensely rich old duchess of eighty. The
Earl of Warwick took all this pretty graciously for a man of his proud
temper, until the question arose to whom the King’s sister, Margaret,
should be married. The Earl of Warwick said, ‘To one of the French
King’s sons,’ and was allowed to go over to the French King to make
friendly proposals for that purpose, and to hold all manner of friendly
interviews with him. But, while he was so engaged, the Woodville party
married the young lady to the Duke of Burgundy! Upon this he came back
in great rage and scorn, and shut himself up discontented, in his
Castle of Middleham.

A reconciliation, though not a very sincere one, was patched up between
the Earl of Warwick and the King, and lasted until the Earl married his
daughter, against the King’s wishes, to the Duke of Clarence. While the
marriage was being celebrated at Calais, the people in the north of
England, where the influence of the Nevil family was strongest, broke
out into rebellion; their complaint was, that England was oppressed and
plundered by the Woodville family, whom they demanded to have removed
from power. As they were joined by great numbers of people, and as they
openly declared that they were supported by the Earl of Warwick, the
King did not know what to do. At last, as he wrote to the earl
beseeching his aid, he and his new son-in-law came over to England, and
began to arrange the business by shutting the King up in Middleham
Castle in the safe keeping of the Archbishop of York; so England was
not only in the strange position of having two kings at once, but they
were both prisoners at the same time.

Even as yet, however, the King-Maker was so far true to the King, that
he dispersed a new rising of the Lancastrians, took their leader
prisoner, and brought him to the King, who ordered him to be
immediately executed. He presently allowed the King to return to
London, and there innumerable pledges of forgiveness and friendship
were exchanged between them, and between the Nevils and the Woodvilles;
the King’s eldest daughter was promised in marriage to the heir of the
Nevil family; and more friendly oaths were sworn, and more friendly
promises made, than this book would hold.

They lasted about three months. At the end of that time, the Archbishop
of York made a feast for the King, the Earl of Warwick, and the Duke of
Clarence, at his house, the Moor, in Hertfordshire. The King was
washing his hands before supper, when some one whispered him that a
body of a hundred men were lying in ambush outside the house. Whether
this were true or untrue, the King took fright, mounted his horse, and
rode through the dark night to Windsor Castle. Another reconciliation
was patched up between him and the King-Maker, but it was a short one,
and it was the last. A new rising took place in Lincolnshire, and the
King marched to repress it. Having done so, he proclaimed that both the
Earl of Warwick and the Duke of Clarence were traitors, who had
secretly assisted it, and who had been prepared publicly to join it on
the following day. In these dangerous circumstances they both took ship
and sailed away to the French court.

And here a meeting took place between the Earl of Warwick and his old
enemy, the Dowager Queen Margaret, through whom his father had had his
head struck off, and to whom he had been a bitter foe. But, now, when
he said that he had done with the ungrateful and perfidious Edward of
York, and that henceforth he devoted himself to the restoration of the
House of Lancaster, either in the person of her husband or of her
little son, she embraced him as if he had ever been her dearest friend.
She did more than that; she married her son to his second daughter, the
Lady Anne. However agreeable this marriage was to the new friends, it
was very disagreeable to the Duke of Clarence, who perceived that his
father-in-law, the King-Maker, would never make _him_ King, now. So,
being but a weak-minded young traitor, possessed of very little worth
or sense, he readily listened to an artful court lady sent over for the
purpose, and promised to turn traitor once more, and go over to his
brother, King Edward, when a fitting opportunity should come.

The Earl of Warwick, knowing nothing of this, soon redeemed his promise
to the Dowager Queen Margaret, by invading England and landing at
Plymouth, where he instantly proclaimed King Henry, and summoned all
Englishmen between the ages of sixteen and sixty, to join his banner.
Then, with his army increasing as he marched along, he went northward,
and came so near King Edward, who was in that part of the country, that
Edward had to ride hard for it to the coast of Norfolk, and thence to
get away in such ships as he could find, to Holland. Thereupon, the
triumphant King-Maker and his false son-in-law, the Duke of Clarence,
went to London, took the old King out of the Tower, and walked him in a
great procession to Saint Paul’s Cathedral with the crown upon his
head. This did not improve the temper of the Duke of Clarence, who saw
himself farther off from being King than ever; but he kept his secret,
and said nothing. The Nevil family were restored to all their honours
and glories, and the Woodvilles and the rest were disgraced. The
King-Maker, less sanguinary than the King, shed no blood except that of
the Earl of Worcester, who had been so cruel to the people as to have
gained the title of the Butcher. Him they caught hidden in a tree, and
him they tried and executed. No other death stained the King-Maker’s
triumph.

To dispute this triumph, back came King Edward again, next year,
landing at Ravenspur, coming on to York, causing all his men to cry
‘Long live King Henry!’ and swearing on the altar, without a blush,
that he came to lay no claim to the crown. Now was the time for the
Duke of Clarence, who ordered his men to assume the White Rose, and
declare for his brother. The Marquis of Montague, though the Earl of
Warwick’s brother, also declining to fight against King Edward, he went
on successfully to London, where the Archbishop of York let him into
the City, and where the people made great demonstrations in his favour.
For this they had four reasons. Firstly, there were great numbers of
the King’s adherents hiding in the City and ready to break out;
secondly, the King owed them a great deal of money, which they could
never hope to get if he were unsuccessful; thirdly, there was a young
prince to inherit the crown; and fourthly, the King was gay and
handsome, and more popular than a better man might have been with the
City ladies. After a stay of only two days with these worthy
supporters, the King marched out to Barnet Common, to give the Earl of
Warwick battle. And now it was to be seen, for the last time, whether
the King or the King-Maker was to carry the day.

While the battle was yet pending, the fainthearted Duke of Clarence
began to repent, and sent over secret messages to his father-in-law,
offering his services in mediation with the King. But, the Earl of
Warwick disdainfully rejected them, and replied that Clarence was false
and perjured, and that he would settle the quarrel by the sword. The
battle began at four o’clock in the morning and lasted until ten, and
during the greater part of the time it was fought in a thick
mist—absurdly supposed to be raised by a magician. The loss of life was
very great, for the hatred was strong on both sides. The King-Maker was
defeated, and the King triumphed. Both the Earl of Warwick and his
brother were slain, and their bodies lay in St. Paul’s, for some days,
as a spectacle to the people.

Margaret’s spirit was not broken even by this great blow. Within five
days she was in arms again, and raised her standard in Bath, whence she
set off with her army, to try and join Lord Pembroke, who had a force
in Wales. But, the King, coming up with her outside the town of
Tewkesbury, and ordering his brother, the Duke of Gloucester, who was a
brave soldier, to attack her men, she sustained an entire defeat, and
was taken prisoner, together with her son, now only eighteen years of
age. The conduct of the King to this poor youth was worthy of his cruel
character. He ordered him to be led into his tent. ‘And what,’ said he,
‘brought _you_ to England?’ ‘I came to England,’ replied the prisoner,
with a spirit which a man of spirit might have admired in a captive,
‘to recover my father’s kingdom, which descended to him as his right,
and from him descends to me, as mine.’ The King, drawing off his iron
gauntlet, struck him with it in the face; and the Duke of Clarence and
some other lords, who were there, drew their noble swords, and killed
him.

His mother survived him, a prisoner, for five years; after her ransom
by the King of France, she survived for six years more. Within three
weeks of this murder, Henry died one of those convenient sudden deaths
which were so common in the Tower; in plainer words, he was murdered by
the King’s order.

Having no particular excitement on his hands after this great defeat of
the Lancaster party, and being perhaps desirous to get rid of some of
his fat (for he was now getting too corpulent to be handsome), the King
thought of making war on France. As he wanted more money for this
purpose than the Parliament could give him, though they were usually
ready enough for war, he invented a new way of raising it, by sending
for the principal citizens of London, and telling them, with a grave
face, that he was very much in want of cash, and would take it very
kind in them if they would lend him some. It being impossible for them
safely to refuse, they complied, and the moneys thus forced from them
were called—no doubt to the great amusement of the King and the
Court—as if they were free gifts, ‘Benevolences.’ What with grants from
Parliament, and what with Benevolences, the King raised an army and
passed over to Calais. As nobody wanted war, however, the French King
made proposals of peace, which were accepted, and a truce was concluded
for seven long years. The proceedings between the Kings of France and
England on this occasion, were very friendly, very splendid, and very
distrustful. They finished with a meeting between the two Kings, on a
temporary bridge over the river Somme, where they embraced through two
holes in a strong wooden grating like a lion’s cage, and made several
bows and fine speeches to one another.

It was time, now, that the Duke of Clarence should be punished for his
treacheries; and Fate had his punishment in store. He was, probably,
not trusted by the King—for who could trust him who knew him!—and he
had certainly a powerful opponent in his brother Richard, Duke of
Gloucester, who, being avaricious and ambitious, wanted to marry that
widowed daughter of the Earl of Warwick’s who had been espoused to the
deceased young Prince, at Calais. Clarence, who wanted all the family
wealth for himself, secreted this lady, whom Richard found disguised as
a servant in the City of London, and whom he married; arbitrators
appointed by the King, then divided the property between the brothers.
This led to ill-will and mistrust between them. Clarence’s wife dying,
and he wishing to make another marriage, which was obnoxious to the
King, his ruin was hurried by that means, too. At first, the Court
struck at his retainers and dependents, and accused some of them of
magic and witchcraft, and similar nonsense. Successful against this
small game, it then mounted to the Duke himself, who was impeached by
his brother the King, in person, on a variety of such charges. He was
found guilty, and sentenced to be publicly executed. He never was
publicly executed, but he met his death somehow, in the Tower, and, no
doubt, through some agency of the King or his brother Gloucester, or
both. It was supposed at the time that he was told to choose the manner
of his death, and that he chose to be drowned in a butt of Malmsey
wine. I hope the story may be true, for it would have been a becoming
death for such a miserable creature.

The King survived him some five years. He died in the forty-second year
of his life, and the twenty-third of his reign. He had a very good
capacity and some good points, but he was selfish, careless, sensual,
and cruel. He was a favourite with the people for his showy manners;
and the people were a good example to him in the constancy of their
attachment. He was penitent on his death-bed for his ‘benevolences,’
and other extortions, and ordered restitution to be made to the people
who had suffered from them. He also called about his bed the enriched
members of the Woodville family, and the proud lords whose honours were
of older date, and endeavoured to reconcile them, for the sake of the
peaceful succession of his son and the tranquillity of England.', 3186)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('c396d557-26e0-4c21-a6c1-69771235da7e', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 39, 'Chapter XXIV. England Under Edward the Fifth', 'The late King’s eldest son, the Prince of Wales, called Edward after
him, was only thirteen years of age at his father’s death. He was at
Ludlow Castle with his uncle, the Earl of Rivers. The prince’s brother,
the Duke of York, only eleven years of age, was in London with his
mother. The boldest, most crafty, and most dreaded nobleman in England
at that time was their uncle Richard, Duke of Gloucester, and everybody
wondered how the two poor boys would fare with such an uncle for a
friend or a foe.

The Queen, their mother, being exceedingly uneasy about this, was
anxious that instructions should be sent to Lord Rivers to raise an
army to escort the young King safely to London. But, Lord Hastings, who
was of the Court party opposed to the Woodvilles, and who disliked the
thought of giving them that power, argued against the proposal, and
obliged the Queen to be satisfied with an escort of two thousand horse.
The Duke of Gloucester did nothing, at first, to justify suspicion. He
came from Scotland (where he was commanding an army) to York, and was
there the first to swear allegiance to his nephew. He then wrote a
condoling letter to the Queen-Mother, and set off to be present at the
coronation in London.

Now, the young King, journeying towards London too, with Lord Rivers
and Lord Gray, came to Stony Stratford, as his uncle came to
Northampton, about ten miles distant; and when those two lords heard
that the Duke of Gloucester was so near, they proposed to the young
King that they should go back and greet him in his name. The boy being
very willing that they should do so, they rode off and were received
with great friendliness, and asked by the Duke of Gloucester to stay
and dine with him. In the evening, while they were merry together, up
came the Duke of Buckingham with three hundred horsemen; and next
morning the two lords and the two dukes, and the three hundred
horsemen, rode away together to rejoin the King. Just as they were
entering Stony Stratford, the Duke of Gloucester, checking his horse,
turned suddenly on the two lords, charged them with alienating from him
the affections of his sweet nephew, and caused them to be arrested by
the three hundred horsemen and taken back. Then, he and the Duke of
Buckingham went straight to the King (whom they had now in their
power), to whom they made a show of kneeling down, and offering great
love and submission; and then they ordered his attendants to disperse,
and took him, alone with them, to Northampton.

A few days afterwards they conducted him to London, and lodged him in
the Bishop’s Palace. But, he did not remain there long; for, the Duke
of Buckingham with a tender face made a speech expressing how anxious
he was for the Royal boy’s safety, and how much safer he would be in
the Tower until his coronation, than he could be anywhere else. So, to
the Tower he was taken, very carefully, and the Duke of Gloucester was
named Protector of the State.

Although Gloucester had proceeded thus far with a very smooth
countenance—and although he was a clever man, fair of speech, and not
ill-looking, in spite of one of his shoulders being something higher
than the other—and although he had come into the City riding
bare-headed at the King’s side, and looking very fond of him—he had
made the King’s mother more uneasy yet; and when the Royal boy was
taken to the Tower, she became so alarmed that she took sanctuary in
Westminster with her five daughters.

Nor did she do this without reason, for, the Duke of Gloucester,
finding that the lords who were opposed to the Woodville family were
faithful to the young King nevertheless, quickly resolved to strike a
blow for himself. Accordingly, while those lords met in council at the
Tower, he and those who were in his interest met in separate council at
his own residence, Crosby Palace, in Bishopsgate Street. Being at last
quite prepared, he one day appeared unexpectedly at the council in the
Tower, and appeared to be very jocular and merry. He was particularly
gay with the Bishop of Ely: praising the strawberries that grew in his
garden on Holborn Hill, and asking him to have some gathered that he
might eat them at dinner. The Bishop, quite proud of the honour, sent
one of his men to fetch some; and the Duke, still very jocular and gay,
went out; and the council all said what a very agreeable duke he was!
In a little time, however, he came back quite altered—not at all
jocular—frowning and fierce—and suddenly said,—

‘What do those persons deserve who have compassed my destruction; I
being the King’s lawful, as well as natural, protector?’

To this strange question, Lord Hastings replied, that they deserved
death, whosoever they were.

‘Then,’ said the Duke, ‘I tell you that they are that sorceress my
brother’s wife;’ meaning the Queen: ‘and that other sorceress, Jane
Shore. Who, by witchcraft, have withered my body, and caused my arm to
shrink as I now show you.’

He then pulled up his sleeve and showed them his arm, which was
shrunken, it is true, but which had been so, as they all very well
knew, from the hour of his birth.

Jane Shore, being then the lover of Lord Hastings, as she had formerly
been of the late King, that lord knew that he himself was attacked. So,
he said, in some confusion, ‘Certainly, my Lord, if they have done
this, they be worthy of punishment.’

‘If?’ said the Duke of Gloucester; ‘do you talk to me of ifs? I tell
you that they _have_ so done, and I will make it good upon thy body,
thou traitor!’

With that, he struck the table a great blow with his fist. This was a
signal to some of his people outside to cry ‘Treason!’ They immediately
did so, and there was a rush into the chamber of so many armed men that
it was filled in a moment.

‘First,’ said the Duke of Gloucester to Lord Hastings, ‘I arrest thee,
traitor! And let him,’ he added to the armed men who took him, ‘have a
priest at once, for by St. Paul I will not dine until I have seen his
head of!’

Lord Hastings was hurried to the green by the Tower chapel, and there
beheaded on a log of wood that happened to be lying on the ground.
Then, the Duke dined with a good appetite, and after dinner summoning
the principal citizens to attend him, told them that Lord Hastings and
the rest had designed to murder both himself and the Duke if
Buckingham, who stood by his side, if he had not providentially
discovered their design. He requested them to be so obliging as to
inform their fellow-citizens of the truth of what he said, and issued a
proclamation (prepared and neatly copied out beforehand) to the same
effect.

On the same day that the Duke did these things in the Tower, Sir
Richard Ratcliffe, the boldest and most undaunted of his men, went down
to Pontefract; arrested Lord Rivers, Lord Gray, and two other
gentlemen; and publicly executed them on the scaffold, without any
trial, for having intended the Duke’s death. Three days afterwards the
Duke, not to lose time, went down the river to Westminster in his
barge, attended by divers bishops, lords, and soldiers, and demanded
that the Queen should deliver her second son, the Duke of York, into
his safe keeping. The Queen, being obliged to comply, resigned the
child after she had wept over him; and Richard of Gloucester placed him
with his brother in the Tower. Then, he seized Jane Shore, and, because
she had been the lover of the late King, confiscated her property, and
got her sentenced to do public penance in the streets by walking in a
scanty dress, with bare feet, and carrying a lighted candle, to St.
Paul’s Cathedral, through the most crowded part of the City.

Having now all things ready for his own advancement, he caused a friar
to preach a sermon at the cross which stood in front of St. Paul’s
Cathedral, in which he dwelt upon the profligate manners of the late
King, and upon the late shame of Jane Shore, and hinted that the
princes were not his children. ‘Whereas, good people,’ said the friar,
whose name was Shaw, ‘my Lord the Protector, the noble Duke of
Gloucester, that sweet prince, the pattern of all the noblest virtues,
is the perfect image and express likeness of his father.’ There had
been a little plot between the Duke and the friar, that the Duke should
appear in the crowd at this moment, when it was expected that the
people would cry ‘Long live King Richard!’ But, either through the
friar saying the words too soon, or through the Duke’s coming too late,
the Duke and the words did not come together, and the people only
laughed, and the friar sneaked off ashamed.

The Duke of Buckingham was a better hand at such business than the
friar, so he went to the Guildhall the next day, and addressed the
citizens in the Lord Protector’s behalf. A few dirty men, who had been
hired and stationed there for the purpose, crying when he had done,
‘God save King Richard!’ he made them a great bow, and thanked them
with all his heart. Next day, to make an end of it, he went with the
mayor and some lords and citizens to Bayard Castle, by the river, where
Richard then was, and read an address, humbly entreating him to accept
the Crown of England. Richard, who looked down upon them out of a
window and pretended to be in great uneasiness and alarm, assured them
there was nothing he desired less, and that his deep affection for his
nephews forbade him to think of it. To this the Duke of Buckingham
replied, with pretended warmth, that the free people of England would
never submit to his nephew’s rule, and that if Richard, who was the
lawful heir, refused the Crown, why then they must find some one else
to wear it. The Duke of Gloucester returned, that since he used that
strong language, it became his painful duty to think no more of
himself, and to accept the Crown.

Upon that, the people cheered and dispersed; and the Duke of Gloucester
and the Duke of Buckingham passed a pleasant evening, talking over the
play they had just acted with so much success, and every word of which
they had prepared together.', 1803)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('dd5c7f85-7066-4e4a-a749-20311fc31543', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 40, 'Chapter XXV. England Under Richard the Third', 'King Richard the Third was up betimes in the morning, and went to
Westminster Hall. In the Hall was a marble seat, upon which he sat
himself down between two great noblemen, and told the people that he
began the new reign in that place, because the first duty of a
sovereign was to administer the laws equally to all, and to maintain
justice. He then mounted his horse and rode back to the City, where he
was received by the clergy and the crowd as if he really had a right to
the throne, and really were a just man. The clergy and the crowd must
have been rather ashamed of themselves in secret, I think, for being
such poor-spirited knaves.

The new King and his Queen were soon crowned with a great deal of show
and noise, which the people liked very much; and then the King set
forth on a royal progress through his dominions. He was crowned a
second time at York, in order that the people might have show and noise
enough; and wherever he went was received with shouts of rejoicing—from
a good many people of strong lungs, who were paid to strain their
throats in crying, ‘God save King Richard!’ The plan was so successful
that I am told it has been imitated since, by other usurpers, in other
progresses through other dominions.

While he was on this journey, King Richard stayed a week at Warwick.
And from Warwick he sent instructions home for one of the wickedest
murders that ever was done—the murder of the two young princes, his
nephews, who were shut up in the Tower of London.

Sir Robert Brackenbury was at that time Governor of the Tower. To him,
by the hands of a messenger named John Green, did King Richard send a
letter, ordering him by some means to put the two young princes to
death. But Sir Robert—I hope because he had children of his own, and
loved them—sent John Green back again, riding and spurring along the
dusty roads, with the answer that he could not do so horrible a piece
of work. The King, having frowningly considered a little, called to him
Sir James Tyrrel, his master of the horse, and to him gave authority to
take command of the Tower, whenever he would, for twenty-four hours,
and to keep all the keys of the Tower during that space of time.
Tyrrel, well knowing what was wanted, looked about him for two hardened
ruffians, and chose John Dighton, one of his own grooms, and Miles
Forest, who was a murderer by trade. Having secured these two
assistants, he went, upon a day in August, to the Tower, showed his
authority from the King, took the command for four-and-twenty hours,
and obtained possession of the keys. And when the black night came he
went creeping, creeping, like a guilty villain as he was, up the dark,
stone winding stairs, and along the dark stone passages, until he came
to the door of the room where the two young princes, having said their
prayers, lay fast asleep, clasped in each other’s arms. And while he
watched and listened at the door, he sent in those evil demons, John
Dighton and Miles Forest, who smothered the two princes with the bed
and pillows, and carried their bodies down the stairs, and buried them
under a great heap of stones at the staircase foot. And when the day
came, he gave up the command of the Tower, and restored the keys, and
hurried away without once looking behind him; and Sir Robert
Brackenbury went with fear and sadness to the princes’ room, and found
the princes gone for ever.

You know, through all this history, how true it is that traitors are
never true, and you will not be surprised to learn that the Duke of
Buckingham soon turned against King Richard, and joined a great
conspiracy that was formed to dethrone him, and to place the crown upon
its rightful owner’s head. Richard had meant to keep the murder secret;
but when he heard through his spies that this conspiracy existed, and
that many lords and gentlemen drank in secret to the healths of the two
young princes in the Tower, he made it known that they were dead. The
conspirators, though thwarted for a moment, soon resolved to set up for
the crown against the murderous Richard, Henry Earl of Richmond,
grandson of Catherine: that widow of Henry the Fifth who married Owen
Tudor. And as Henry was of the house of Lancaster, they proposed that
he should marry the Princess Elizabeth, the eldest daughter of the late
King, now the heiress of the house of York, and thus by uniting the
rival families put an end to the fatal wars of the Red and White Roses.
All being settled, a time was appointed for Henry to come over from
Brittany, and for a great rising against Richard to take place in
several parts of England at the same hour. On a certain day, therefore,
in October, the revolt took place; but unsuccessfully. Richard was
prepared, Henry was driven back at sea by a storm, his followers in
England were dispersed, and the Duke of Buckingham was taken, and at
once beheaded in the market-place at Salisbury.

The time of his success was a good time, Richard thought, for summoning
a Parliament and getting some money. So, a Parliament was called, and
it flattered and fawned upon him as much as he could possibly desire,
and declared him to be the rightful King of England, and his only son
Edward, then eleven years of age, the next heir to the throne.

Richard knew full well that, let the Parliament say what it would, the
Princess Elizabeth was remembered by people as the heiress of the house
of York; and having accurate information besides, of its being designed
by the conspirators to marry her to Henry of Richmond, he felt that it
would much strengthen him and weaken them, to be beforehand with them,
and marry her to his son. With this view he went to the Sanctuary at
Westminster, where the late King’s widow and her daughter still were,
and besought them to come to Court: where (he swore by anything and
everything) they should be safely and honourably entertained. They
came, accordingly, but had scarcely been at Court a month when his son
died suddenly—or was poisoned—and his plan was crushed to pieces.

In this extremity, King Richard, always active, thought, ‘I must make
another plan.’ And he made the plan of marrying the Princess Elizabeth
himself, although she was his niece. There was one difficulty in the
way: his wife, the Queen Anne, was alive. But, he knew (remembering his
nephews) how to remove that obstacle, and he made love to the Princess
Elizabeth, telling her he felt perfectly confident that the Queen would
die in February. The Princess was not a very scrupulous young lady,
for, instead of rejecting the murderer of her brothers with scorn and
hatred, she openly declared she loved him dearly; and, when February
came and the Queen did not die, she expressed her impatient opinion
that she was too long about it. However, King Richard was not so far
out in his prediction, but, that she died in March—he took good care of
that—and then this precious pair hoped to be married. But they were
disappointed, for the idea of such a marriage was so unpopular in the
country, that the King’s chief counsellors, Ratcliffe and Catesby,
would by no means undertake to propose it, and the King was even
obliged to declare in public that he had never thought of such a thing.

He was, by this time, dreaded and hated by all classes of his subjects.
His nobles deserted every day to Henry’s side; he dared not call
another Parliament, lest his crimes should be denounced there; and for
want of money, he was obliged to get Benevolences from the citizens,
which exasperated them all against him. It was said too, that, being
stricken by his conscience, he dreamed frightful dreams, and started up
in the night-time, wild with terror and remorse. Active to the last,
through all this, he issued vigorous proclamations against Henry of
Richmond and all his followers, when he heard that they were coming
against him with a Fleet from France; and took the field as fierce and
savage as a wild boar—the animal represented on his shield.

Henry of Richmond landed with six thousand men at Milford Haven, and
came on against King Richard, then encamped at Leicester with an army
twice as great, through North Wales. On Bosworth Field the two armies
met; and Richard, looking along Henry’s ranks, and seeing them crowded
with the English nobles who had abandoned him, turned pale when he
beheld the powerful Lord Stanley and his son (whom he had tried hard to
retain) among them. But, he was as brave as he was wicked, and plunged
into the thickest of the fight. He was riding hither and thither,
laying about him in all directions, when he observed the Earl of
Northumberland—one of his few great allies—to stand inactive, and the
main body of his troops to hesitate. At the same moment, his desperate
glance caught Henry of Richmond among a little group of his knights.
Riding hard at him, and crying ‘Treason!’ he killed his
standard-bearer, fiercely unhorsed another gentleman, and aimed a
powerful stroke at Henry himself, to cut him down. But, Sir William
Stanley parried it as it fell, and before Richard could raise his arm
again, he was borne down in a press of numbers, unhorsed, and killed.
Lord Stanley picked up the crown, all bruised and trampled, and stained
with blood, and put it upon Richmond’s head, amid loud and rejoicing
cries of ‘Long live King Henry!’

That night, a horse was led up to the church of the Grey Friars at
Leicester; across whose back was tied, like some worthless sack, a
naked body brought there for burial. It was the body of the last of the
Plantagenet line, King Richard the Third, usurper and murderer, slain
at the battle of Bosworth Field in the thirty-second year of his age,
after a reign of two years.', 1727)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('a5955a2a-ce22-4f67-a05e-b42c64f19eb5', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 41, 'Chapter XXVI. England Under Henry the Seventh (1/2)', 'King Henry the Seventh did not turn out to be as fine a fellow as the
nobility and people hoped, in the first joy of their deliverance from
Richard the Third. He was very cold, crafty, and calculating, and would
do almost anything for money. He possessed considerable ability, but
his chief merit appears to have been that he was not cruel when there
was nothing to be got by it.

The new King had promised the nobles who had espoused his cause that he
would marry the Princess Elizabeth. The first thing he did, was, to
direct her to be removed from the castle of Sheriff Hutton in
Yorkshire, where Richard had placed her, and restored to the care of
her mother in London. The young Earl of Warwick, Edward Plantagenet,
son and heir of the late Duke of Clarence, had been kept a prisoner in
the same old Yorkshire Castle with her. This boy, who was now fifteen,
the new King placed in the Tower for safety. Then he came to London in
great state, and gratified the people with a fine procession; on which
kind of show he often very much relied for keeping them in good humour.
The sports and feasts which took place were followed by a terrible
fever, called the Sweating Sickness; of which great numbers of people
died. Lord Mayors and Aldermen are thought to have suffered most from
it; whether, because they were in the habit of over-eating themselves,
or because they were very jealous of preserving filth and nuisances in
the City (as they have been since), I don’t know.

The King’s coronation was postponed on account of the general
ill-health, and he afterwards deferred his marriage, as if he were not
very anxious that it should take place: and, even after that, deferred
the Queen’s coronation so long that he gave offence to the York party.
However, he set these things right in the end, by hanging some men and
seizing on the rich possessions of others; by granting more popular
pardons to the followers of the late King than could, at first, be got
from him; and, by employing about his Court, some very scrupulous
persons who had been employed in the previous reign.

As this reign was principally remarkable for two very curious
impostures which have become famous in history, we will make those two
stories its principal feature.

There was a priest at Oxford of the name of Simons, who had for a pupil
a handsome boy named Lambert Simnel, the son of a baker. Partly to
gratify his own ambitious ends, and partly to carry out the designs of
a secret party formed against the King, this priest declared that his
pupil, the boy, was no other than the young Earl of Warwick; who (as
everybody might have known) was safely locked up in the Tower of
London. The priest and the boy went over to Ireland; and, at Dublin,
enlisted in their cause all ranks of the people: who seem to have been
generous enough, but exceedingly irrational. The Earl of Kildare, the
governor of Ireland, declared that he believed the boy to be what the
priest represented; and the boy, who had been well tutored by the
priest, told them such things of his childhood, and gave them so many
descriptions of the Royal Family, that they were perpetually shouting
and hurrahing, and drinking his health, and making all kinds of noisy
and thirsty demonstrations, to express their belief in him. Nor was
this feeling confined to Ireland alone, for the Earl of Lincoln—whom
the late usurper had named as his successor—went over to the young
Pretender; and, after holding a secret correspondence with the Dowager
Duchess of Burgundy—the sister of Edward the Fourth, who detested the
present King and all his race—sailed to Dublin with two thousand German
soldiers of her providing. In this promising state of the boy’s
fortunes, he was crowned there, with a crown taken off the head of a
statue of the Virgin Mary; and was then, according to the Irish custom
of those days, carried home on the shoulders of a big chieftain
possessing a great deal more strength than sense. Father Simons, you
may be sure, was mighty busy at the coronation.

Ten days afterwards, the Germans, and the Irish, and the priest, and
the boy, and the Earl of Lincoln, all landed in Lancashire to invade
England. The King, who had good intelligence of their movements, set up
his standard at Nottingham, where vast numbers resorted to him every
day; while the Earl of Lincoln could gain but very few. With his small
force he tried to make for the town of Newark; but the King’s army
getting between him and that place, he had no choice but to risk a
battle at Stoke. It soon ended in the complete destruction of the
Pretender’s forces, one half of whom were killed; among them, the Earl
himself. The priest and the baker’s boy were taken prisoners. The
priest, after confessing the trick, was shut up in prison, where he
afterwards died—suddenly perhaps. The boy was taken into the King’s
kitchen and made a turnspit. He was afterwards raised to the station of
one of the King’s falconers; and so ended this strange imposition.

There seems reason to suspect that the Dowager Queen—always a restless
and busy woman—had had some share in tutoring the baker’s son. The King
was very angry with her, whether or no. He seized upon her property,
and shut her up in a convent at Bermondsey.

One might suppose that the end of this story would have put the Irish
people on their guard; but they were quite ready to receive a second
impostor, as they had received the first, and that same troublesome
Duchess of Burgundy soon gave them the opportunity. All of a sudden
there appeared at Cork, in a vessel arriving from Portugal, a young man
of excellent abilities, of very handsome appearance and most winning
manners, who declared himself to be Richard, Duke of York, the second
son of King Edward the Fourth. ‘O,’ said some, even of those ready
Irish believers, ‘but surely that young Prince was murdered by his
uncle in the Tower!’—‘It _is_ supposed so,’ said the engaging young
man; ‘and my brother _was_ killed in that gloomy prison; but I
escaped—it don’t matter how, at present—and have been wandering about
the world for seven long years.’ This explanation being quite
satisfactory to numbers of the Irish people, they began again to shout
and to hurrah, and to drink his health, and to make the noisy and
thirsty demonstrations all over again. And the big chieftain in Dublin
began to look out for another coronation, and another young King to be
carried home on his back.

Now, King Henry being then on bad terms with France, the French King,
Charles the Eighth, saw that, by pretending to believe in the handsome
young man, he could trouble his enemy sorely. So, he invited him over
to the French Court, and appointed him a body-guard, and treated him in
all respects as if he really were the Duke of York. Peace, however,
being soon concluded between the two Kings, the pretended Duke was
turned adrift, and wandered for protection to the Duchess of Burgundy.
She, after feigning to inquire into the reality of his claims, declared
him to be the very picture of her dear departed brother; gave him a
body-guard at her Court, of thirty halberdiers; and called him by the
sounding name of the White Rose of England.

The leading members of the White Rose party in England sent over an
agent, named Sir Robert Clifford, to ascertain whether the White Rose’s
claims were good: the King also sent over his agents to inquire into
the Rose’s history. The White Roses declared the young man to be really
the Duke of York; the King declared him to be Perkin Warbeck, the son
of a merchant of the city of Tournay, who had acquired his knowledge of
England, its language and manners, from the English merchants who
traded in Flanders; it was also stated by the Royal agents that he had
been in the service of Lady Brompton, the wife of an exiled English
nobleman, and that the Duchess of Burgundy had caused him to be trained
and taught, expressly for this deception. The King then required the
Archduke Philip—who was the sovereign of Burgundy—to banish this new
Pretender, or to deliver him up; but, as the Archduke replied that he
could not control the Duchess in her own land, the King, in revenge,
took the market of English cloth away from Antwerp, and prevented all
commercial intercourse between the two countries.

He also, by arts and bribes, prevailed on Sir Robert Clifford to betray
his employers; and he denouncing several famous English noblemen as
being secretly the friends of Perkin Warbeck, the King had three of the
foremost executed at once. Whether he pardoned the remainder because
they were poor, I do not know; but it is only too probable that he
refused to pardon one famous nobleman against whom the same Clifford
soon afterwards informed separately, because he was rich. This was no
other than Sir William Stanley, who had saved the King’s life at the
battle of Bosworth Field. It is very doubtful whether his treason
amounted to much more than his having said, that if he were sure the
young man was the Duke of York, he would not take arms against him.
Whatever he had done he admitted, like an honourable spirit; and he
lost his head for it, and the covetous King gained all his wealth.

Perkin Warbeck kept quiet for three years; but, as the Flemings began
to complain heavily of the loss of their trade by the stoppage of the
Antwerp market on his account, and as it was not unlikely that they
might even go so far as to take his life, or give him up, he found it
necessary to do something. Accordingly he made a desperate sally, and
landed, with only a few hundred men, on the coast of Deal. But he was
soon glad to get back to the place from whence he came; for the country
people rose against his followers, killed a great many, and took a
hundred and fifty prisoners: who were all driven to London, tied
together with ropes, like a team of cattle. Every one of them was
hanged on some part or other of the sea-shore; in order, that if any
more men should come over with Perkin Warbeck, they might see the
bodies as a warning before they landed.

Then the wary King, by making a treaty of commerce with the Flemings,
drove Perkin Warbeck out of that country; and, by completely gaining
over the Irish to his side, deprived him of that asylum too. He
wandered away to Scotland, and told his story at that Court. King James
the Fourth of Scotland, who was no friend to King Henry, and had no
reason to be (for King Henry had bribed his Scotch lords to betray him
more than once; but had never succeeded in his plots), gave him a great
reception, called him his cousin, and gave him in marriage the Lady
Catherine Gordon, a beautiful and charming creature related to the
royal house of Stuart.', 1908)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('ed89c5e4-ba26-46ec-a448-7f9d184c296c', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 42, 'Chapter XXVI. England Under Henry the Seventh (2/2)', 'Alarmed by this successful reappearance of the Pretender, the King
still undermined, and bought, and bribed, and kept his doings and
Perkin Warbeck’s story in the dark, when he might, one would imagine,
have rendered the matter clear to all England. But, for all this
bribing of the Scotch lords at the Scotch King’s Court, he could not
procure the Pretender to be delivered up to him. James, though not very
particular in many respects, would not betray him; and the ever-busy
Duchess of Burgundy so provided him with arms, and good soldiers, and
with money besides, that he had soon a little army of fifteen hundred
men of various nations. With these, and aided by the Scottish King in
person, he crossed the border into England, and made a proclamation to
the people, in which he called the King ‘Henry Tudor;’ offered large
rewards to any who should take or distress him; and announced himself
as King Richard the Fourth come to receive the homage of his faithful
subjects. His faithful subjects, however, cared nothing for him, and
hated his faithful troops: who, being of different nations, quarrelled
also among themselves. Worse than this, if worse were possible, they
began to plunder the country; upon which the White Rose said, that he
would rather lose his rights, than gain them through the miseries of
the English people. The Scottish King made a jest of his scruples; but
they and their whole force went back again without fighting a battle.

The worst consequence of this attempt was, that a rising took place
among the people of Cornwall, who considered themselves too heavily
taxed to meet the charges of the expected war. Stimulated by Flammock,
a lawyer, and Joseph, a blacksmith, and joined by Lord Audley and some
other country gentlemen, they marched on all the way to Deptford
Bridge, where they fought a battle with the King’s army. They were
defeated—though the Cornish men fought with great bravery—and the lord
was beheaded, and the lawyer and the blacksmith were hanged, drawn, and
quartered. The rest were pardoned. The King, who believed every man to
be as avaricious as himself, and thought that money could settle
anything, allowed them to make bargains for their liberty with the
soldiers who had taken them.

Perkin Warbeck, doomed to wander up and down, and never to find rest
anywhere—a sad fate: almost a sufficient punishment for an imposture,
which he seems in time to have half believed himself—lost his Scottish
refuge through a truce being made between the two Kings; and found
himself, once more, without a country before him in which he could lay
his head. But James (always honourable and true to him, alike when he
melted down his plate, and even the great gold chain he had been used
to wear, to pay soldiers in his cause; and now, when that cause was
lost and hopeless) did not conclude the treaty, until he had safely
departed out of the Scottish dominions. He, and his beautiful wife, who
was faithful to him under all reverses, and left her state and home to
follow his poor fortunes, were put aboard ship with everything
necessary for their comfort and protection, and sailed for Ireland.

But, the Irish people had had enough of counterfeit Earls of Warwick
and Dukes of York, for one while; and would give the White Rose no aid.
So, the White Rose—encircled by thorns indeed—resolved to go with his
beautiful wife to Cornwall as a forlorn resource, and see what might be
made of the Cornish men, who had risen so valiantly a little while
before, and who had fought so bravely at Deptford Bridge.

To Whitsand Bay, in Cornwall, accordingly, came Perkin Warbeck and his
wife; and the lovely lady he shut up for safety in the Castle of St.
Michael’s Mount, and then marched into Devonshire at the head of three
thousand Cornishmen. These were increased to six thousand by the time
of his arrival in Exeter; but, there the people made a stout
resistance, and he went on to Taunton, where he came in sight of the
King’s army. The stout Cornish men, although they were few in number,
and badly armed, were so bold, that they never thought of retreating;
but bravely looked forward to a battle on the morrow. Unhappily for
them, the man who was possessed of so many engaging qualities, and who
attracted so many people to his side when he had nothing else with
which to tempt them, was not as brave as they. In the night, when the
two armies lay opposite to each other, he mounted a swift horse and
fled. When morning dawned, the poor confiding Cornish men, discovering
that they had no leader, surrendered to the King’s power. Some of them
were hanged, and the rest were pardoned and went miserably home.

Before the King pursued Perkin Warbeck to the sanctuary of Beaulieu in
the New Forest, where it was soon known that he had taken refuge, he
sent a body of horsemen to St. Michael’s Mount, to seize his wife. She
was soon taken and brought as a captive before the King. But she was so
beautiful, and so good, and so devoted to the man in whom she believed,
that the King regarded her with compassion, treated her with great
respect, and placed her at Court, near the Queen’s person. And many
years after Perkin Warbeck was no more, and when his strange story had
become like a nursery tale, _she_ was called the White Rose, by the
people, in remembrance of her beauty.

The sanctuary at Beaulieu was soon surrounded by the King’s men; and
the King, pursuing his usual dark, artful ways, sent pretended friends
to Perkin Warbeck to persuade him to come out and surrender himself.
This he soon did; the King having taken a good look at the man of whom
he had heard so much—from behind a screen—directed him to be well
mounted, and to ride behind him at a little distance, guarded, but not
bound in any way. So they entered London with the King’s favourite
show—a procession; and some of the people hooted as the Pretender rode
slowly through the streets to the Tower; but the greater part were
quiet, and very curious to see him. From the Tower, he was taken to the
Palace at Westminster, and there lodged like a gentleman, though
closely watched. He was examined every now and then as to his
imposture; but the King was so secret in all he did, that even then he
gave it a consequence, which it cannot be supposed to have in itself
deserved.

At last Perkin Warbeck ran away, and took refuge in another sanctuary
near Richmond in Surrey. From this he was again persuaded to deliver
himself up; and, being conveyed to London, he stood in the stocks for a
whole day, outside Westminster Hall, and there read a paper purporting
to be his full confession, and relating his history as the King’s
agents had originally described it. He was then shut up in the Tower
again, in the company of the Earl of Warwick, who had now been there
for fourteen years: ever since his removal out of Yorkshire, except
when the King had had him at Court, and had shown him to the people, to
prove the imposture of the Baker’s boy. It is but too probable, when we
consider the crafty character of Henry the Seventh, that these two were
brought together for a cruel purpose. A plot was soon discovered
between them and the keepers, to murder the Governor, get possession of
the keys, and proclaim Perkin Warbeck as King Richard the Fourth. That
there was some such plot, is likely; that they were tempted into it, is
at least as likely; that the unfortunate Earl of Warwick—last male of
the Plantagenet line—was too unused to the world, and too ignorant and
simple to know much about it, whatever it was, is perfectly certain;
and that it was the King’s interest to get rid of him, is no less so.
He was beheaded on Tower Hill, and Perkin Warbeck was hanged at Tyburn.

Such was the end of the pretended Duke of York, whose shadowy history
was made more shadowy—and ever will be—by the mystery and craft of the
King. If he had turned his great natural advantages to a more honest
account, he might have lived a happy and respected life, even in those
days. But he died upon a gallows at Tyburn, leaving the Scottish lady,
who had loved him so well, kindly protected at the Queen’s Court. After
some time she forgot her old loves and troubles, as many people do with
Time’s merciful assistance, and married a Welsh gentleman. Her second
husband, Sir Matthew Cradoc, more honest and more happy than her first,
lies beside her in a tomb in the old church of Swansea.

The ill-blood between France and England in this reign, arose out of
the continued plotting of the Duchess of Burgundy, and disputes
respecting the affairs of Brittany. The King feigned to be very
patriotic, indignant, and warlike; but he always contrived so as never
to make war in reality, and always to make money. His taxation of the
people, on pretence of war with France, involved, at one time, a very
dangerous insurrection, headed by Sir John Egremont, and a common man
called John à Chambre. But it was subdued by the royal forces, under
the command of the Earl of Surrey. The knighted John escaped to the
Duchess of Burgundy, who was ever ready to receive any one who gave the
King trouble; and the plain John was hanged at York, in the midst of a
number of his men, but on a much higher gibbet, as being a greater
traitor. Hung high or hung low, however, hanging is much the same to
the person hung.

Within a year after her marriage, the Queen had given birth to a son,
who was called Prince Arthur, in remembrance of the old British prince
of romance and story; and who, when all these events had happened,
being then in his fifteenth year, was married to Catherine, the
daughter of the Spanish monarch, with great rejoicings and bright
prospects; but in a very few months he sickened and died. As soon as
the King had recovered from his grief, he thought it a pity that the
fortune of the Spanish Princess, amounting to two hundred thousand
crowns, should go out of the family; and therefore arranged that the
young widow should marry his second son Henry, then twelve years of
age, when he too should be fifteen. There were objections to this
marriage on the part of the clergy; but, as the infallible Pope was
gained over, and, as he _must_ be right, that settled the business for
the time. The King’s eldest daughter was provided for, and a long
course of disturbance was considered to be set at rest, by her being
married to the Scottish King.

And now the Queen died. When the King had got over that grief too, his
mind once more reverted to his darling money for consolation, and he
thought of marrying the Dowager Queen of Naples, who was immensely
rich: but, as it turned out not to be practicable to gain the money
however practicable it might have been to gain the lady, he gave up the
idea. He was not so fond of her but that he soon proposed to marry the
Dowager Duchess of Savoy; and, soon afterwards, the widow of the King
of Castile, who was raving mad. But he made a money-bargain instead,
and married neither.

The Duchess of Burgundy, among the other discontented people to whom
she had given refuge, had sheltered Edmund de la Pole (younger brother
of that Earl of Lincoln who was killed at Stoke), now Earl of Suffolk.
The King had prevailed upon him to return to the marriage of Prince
Arthur; but, he soon afterwards went away again; and then the King,
suspecting a conspiracy, resorted to his favourite plan of sending him
some treacherous friends, and buying of those scoundrels the secrets
they disclosed or invented. Some arrests and executions took place in
consequence. In the end, the King, on a promise of not taking his life,
obtained possession of the person of Edmund de la Pole, and shut him up
in the Tower.

This was his last enemy. If he had lived much longer he would have made
many more among the people, by the grinding exaction to which he
constantly exposed them, and by the tyrannical acts of his two prime
favourites in all money-raising matters, Edmund Dudley and Richard
Empson. But Death—the enemy who is not to be bought off or deceived,
and on whom no money, and no treachery has any effect—presented himself
at this juncture, and ended the King’s reign. He died of the gout, on
the twenty-second of April, one thousand five hundred and nine, and in
the fifty-third year of his age, after reigning twenty-four years; he
was buried in the beautiful Chapel of Westminster Abbey, which he had
himself founded, and which still bears his name.

It was in this reign that the great Christopher Columbus, on behalf of
Spain, discovered what was then called The New World. Great wonder,
interest, and hope of wealth being awakened in England thereby, the
King and the merchants of London and Bristol fitted out an English
expedition for further discoveries in the New World, and entrusted it
to Sebastian Cabot, of Bristol, the son of a Venetian pilot there. He
was very successful in his voyage, and gained high reputation, both for
himself and England.', 2302)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('e91423c0-7e9d-4134-a12d-9a62332005c2', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 43, 'Chapter XXVII (1/2)', 'ENGLAND UNDER HENRY THE EIGHTH, CALLED BLUFF KING HAL AND BURLY KING
HARRY

PART THE FIRST

We now come to King Henry the Eighth, whom it has been too much the
fashion to call ‘Bluff King Hal,’ and ‘Burly King Harry,’ and other
fine names; but whom I shall take the liberty to call, plainly, one of
the most detestable villains that ever drew breath. You will be able to
judge, long before we come to the end of his life, whether he deserves
the character.

He was just eighteen years of age when he came to the throne. People
said he was handsome then; but I don’t believe it. He was a big, burly,
noisy, small-eyed, large-faced, double-chinned, swinish-looking fellow
in later life (as we know from the likenesses of him, painted by the
famous Hans Holbein), and it is not easy to believe that so bad a
character can ever have been veiled under a prepossessing appearance.

He was anxious to make himself popular; and the people, who had long
disliked the late King, were very willing to believe that he deserved
to be so. He was extremely fond of show and display, and so were they.
Therefore there was great rejoicing when he married the Princess
Catherine, and when they were both crowned. And the King fought at
tournaments and always came off victorious—for the courtiers took care
of that—and there was a general outcry that he was a wonderful man.
Empson, Dudley, and their supporters were accused of a variety of
crimes they had never committed, instead of the offences of which they
really had been guilty; and they were pilloried, and set upon horses
with their faces to the tails, and knocked about and beheaded, to the
satisfaction of the people, and the enrichment of the King.

The Pope, so indefatigable in getting the world into trouble, had mixed
himself up in a war on the continent of Europe, occasioned by the
reigning Princes of little quarrelling states in Italy having at
various times married into other Royal families, and so led to _their_
claiming a share in those petty Governments. The King, who discovered
that he was very fond of the Pope, sent a herald to the King of France,
to say that he must not make war upon that holy personage, because he
was the father of all Christians. As the French King did not mind this
relationship in the least, and also refused to admit a claim King Henry
made to certain lands in France, war was declared between the two
countries. Not to perplex this story with an account of the tricks and
designs of all the sovereigns who were engaged in it, it is enough to
say that England made a blundering alliance with Spain, and got
stupidly taken in by that country; which made its own terms with France
when it could and left England in the lurch. Sir Edward Howard, a bold
admiral, son of the Earl of Surrey, distinguished himself by his
bravery against the French in this business; but, unfortunately, he was
more brave than wise, for, skimming into the French harbour of Brest
with only a few row-boats, he attempted (in revenge for the defeat and
death of Sir Thomas Knyvett, another bold English admiral) to take some
strong French ships, well defended with batteries of cannon. The upshot
was, that he was left on board of one of them (in consequence of its
shooting away from his own boat), with not more than about a dozen men,
and was thrown into the sea and drowned: though not until he had taken
from his breast his gold chain and gold whistle, which were the signs
of his office, and had cast them into the sea to prevent their being
made a boast of by the enemy. After this defeat—which was a great one,
for Sir Edward Howard was a man of valour and fame—the King took it
into his head to invade France in person; first executing that
dangerous Earl of Suffolk whom his father had left in the Tower, and
appointing Queen Catherine to the charge of his kingdom in his absence.
He sailed to Calais, where he was joined by Maximilian, Emperor of
Germany, who pretended to be his soldier, and who took pay in his
service: with a good deal of nonsense of that sort, flattering enough
to the vanity of a vain blusterer. The King might be successful enough
in sham fights; but his idea of real battles chiefly consisted in
pitching silken tents of bright colours that were ignominiously blown
down by the wind, and in making a vast display of gaudy flags and
golden curtains. Fortune, however, favoured him better than he
deserved; for, after much waste of time in tent pitching, flag flying,
gold curtaining, and other such masquerading, he gave the French battle
at a place called Guinegate: where they took such an unaccountable
panic, and fled with such swiftness, that it was ever afterwards called
by the English the Battle of Spurs. Instead of following up his
advantage, the King, finding that he had had enough of real fighting,
came home again.

The Scottish King, though nearly related to Henry by marriage, had
taken part against him in this war. The Earl of Surrey, as the English
general, advanced to meet him when he came out of his own dominions and
crossed the river Tweed. The two armies came up with one another when
the Scottish King had also crossed the river Till, and was encamped
upon the last of the Cheviot Hills, called the Hill of Flodden. Along
the plain below it, the English, when the hour of battle came,
advanced. The Scottish army, which had been drawn up in five great
bodies, then came steadily down in perfect silence. So they, in their
turn, advanced to meet the English army, which came on in one long
line; and they attacked it with a body of spearmen, under Lord Home. At
first they had the best of it; but the English recovered themselves so
bravely, and fought with such valour, that, when the Scottish King had
almost made his way up to the Royal Standard, he was slain, and the
whole Scottish power routed. Ten thousand Scottish men lay dead that
day on Flodden Field; and among them, numbers of the nobility and
gentry. For a long time afterwards, the Scottish peasantry used to
believe that their King had not been really killed in this battle,
because no Englishman had found an iron belt he wore about his body as
a penance for having been an unnatural and undutiful son. But, whatever
became of his belt, the English had his sword and dagger, and the ring
from his finger, and his body too, covered with wounds. There is no
doubt of it; for it was seen and recognised by English gentlemen who
had known the Scottish King well.

When King Henry was making ready to renew the war in France, the French
King was contemplating peace. His queen, dying at this time, he
proposed, though he was upwards of fifty years old, to marry King
Henry’s sister, the Princess Mary, who, besides being only sixteen, was
betrothed to the Duke of Suffolk. As the inclinations of young
Princesses were not much considered in such matters, the marriage was
concluded, and the poor girl was escorted to France, where she was
immediately left as the French King’s bride, with only one of all her
English attendants. That one was a pretty young girl named Anne Boleyn,
niece of the Earl of Surrey, who had been made Duke of Norfolk, after
the victory of Flodden Field. Anne Boleyn’s is a name to be remembered,
as you will presently find.

And now the French King, who was very proud of his young wife, was
preparing for many years of happiness, and she was looking forward, I
dare say, to many years of misery, when he died within three months,
and left her a young widow. The new French monarch, Francis the First,
seeing how important it was to his interests that she should take for
her second husband no one but an Englishman, advised her first lover,
the Duke of Suffolk, when King Henry sent him over to France to fetch
her home, to marry her. The Princess being herself so fond of that
Duke, as to tell him that he must either do so then, or for ever lose
her, they were wedded; and Henry afterwards forgave them. In making
interest with the King, the Duke of Suffolk had addressed his most
powerful favourite and adviser, Thomas Wolsey—a name very famous in
history for its rise and downfall.

Wolsey was the son of a respectable butcher at Ipswich, in Suffolk and
received so excellent an education that he became a tutor to the family
of the Marquis of Dorset, who afterwards got him appointed one of the
late King’s chaplains. On the accession of Henry the Eighth, he was
promoted and taken into great favour. He was now Archbishop of York;
the Pope had made him a Cardinal besides; and whoever wanted influence
in England or favour with the King—whether he were a foreign monarch or
an English nobleman—was obliged to make a friend of the great Cardinal
Wolsey.

He was a gay man, who could dance and jest, and sing and drink; and
those were the roads to so much, or rather so little, of a heart as
King Henry had. He was wonderfully fond of pomp and glitter, and so was
the King. He knew a good deal of the Church learning of that time; much
of which consisted in finding artful excuses and pretences for almost
any wrong thing, and in arguing that black was white, or any other
colour. This kind of learning pleased the King too. For many such
reasons, the Cardinal was high in estimation with the King; and, being
a man of far greater ability, knew as well how to manage him, as a
clever keeper may know how to manage a wolf or a tiger, or any other
cruel and uncertain beast, that may turn upon him and tear him any day.
Never had there been seen in England such state as my Lord Cardinal
kept. His wealth was enormous; equal, it was reckoned, to the riches of
the Crown. His palaces were as splendid as the King’s, and his retinue
was eight hundred strong. He held his Court, dressed out from top to
toe in flaming scarlet; and his very shoes were golden, set with
precious stones. His followers rode on blood horses; while he, with a
wonderful affectation of humility in the midst of his great splendour,
ambled on a mule with a red velvet saddle and bridle and golden
stirrups.

Through the influence of this stately priest, a grand meeting was
arranged to take place between the French and English Kings in France;
but on ground belonging to England. A prodigious show of friendship and
rejoicing was to be made on the occasion; and heralds were sent to
proclaim with brazen trumpets through all the principal cities of
Europe, that, on a certain day, the Kings of France and England, as
companions and brothers in arms, each attended by eighteen followers,
would hold a tournament against all knights who might choose to come.

Charles, the new Emperor of Germany (the old one being dead), wanted to
prevent too cordial an alliance between these sovereigns, and came over
to England before the King could repair to the place of meeting; and,
besides making an agreeable impression upon him, secured Wolsey’s
interest by promising that his influence should make him Pope when the
next vacancy occurred. On the day when the Emperor left England, the
King and all the Court went over to Calais, and thence to the place of
meeting, between Ardres and Guisnes, commonly called the Field of the
Cloth of Gold. Here, all manner of expense and prodigality was lavished
on the decorations of the show; many of the knights and gentlemen being
so superbly dressed that it was said they carried their whole estates
upon their shoulders.

There were sham castles, temporary chapels, fountains running wine,
great cellars full of wine free as water to all comers, silk tents,
gold lace and foil, gilt lions, and such things without end; and, in
the midst of all, the rich Cardinal out-shone and out-glittered all the
noblemen and gentlemen assembled. After a treaty made between the two
Kings with as much solemnity as if they had intended to keep it, the
lists—nine hundred feet long, and three hundred and twenty broad—were
opened for the tournament; the Queens of France and England looking on
with great array of lords and ladies. Then, for ten days, the two
sovereigns fought five combats every day, and always beat their polite
adversaries; though they _do_ write that the King of England, being
thrown in a wrestle one day by the King of France, lost his kingly
temper with his brother-in-arms, and wanted to make a quarrel of it.
Then, there is a great story belonging to this Field of the Cloth of
Gold, showing how the English were distrustful of the French, and the
French of the English, until Francis rode alone one morning to Henry’s
tent; and, going in before he was out of bed, told him in joke that he
was his prisoner; and how Henry jumped out of bed and embraced Francis;
and how Francis helped Henry to dress, and warmed his linen for him;
and how Henry gave Francis a splendid jewelled collar, and how Francis
gave Henry, in return, a costly bracelet. All this and a great deal
more was so written about, and sung about, and talked about at that
time (and, indeed, since that time too), that the world has had good
cause to be sick of it, for ever.', 2337)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('3fe26f55-fa26-495b-a005-82650f017350', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 44, 'Chapter XXVII (2/2)', 'Of course, nothing came of all these fine doings but a speedy renewal
of the war between England and France, in which the two Royal
companions and brothers in arms longed very earnestly to damage one
another. But, before it broke out again, the Duke of Buckingham was
shamefully executed on Tower Hill, on the evidence of a discharged
servant—really for nothing, except the folly of having believed in a
friar of the name of Hopkins, who had pretended to be a prophet, and
who had mumbled and jumbled out some nonsense about the Duke’s son
being destined to be very great in the land. It was believed that the
unfortunate Duke had given offence to the great Cardinal by expressing
his mind freely about the expense and absurdity of the whole business
of the Field of the Cloth of Gold. At any rate, he was beheaded, as I
have said, for nothing. And the people who saw it done were very angry,
and cried out that it was the work of ‘the butcher’s son!’

The new war was a short one, though the Earl of Surrey invaded France
again, and did some injury to that country. It ended in another treaty
of peace between the two kingdoms, and in the discovery that the
Emperor of Germany was not such a good friend to England in reality, as
he pretended to be. Neither did he keep his promise to Wolsey to make
him Pope, though the King urged him. Two Popes died in pretty quick
succession; but the foreign priests were too much for the Cardinal, and
kept him out of the post. So the Cardinal and King together found out
that the Emperor of Germany was not a man to keep faith with; broke off
a projected marriage between the King’s daughter Mary, Princess of
Wales, and that sovereign; and began to consider whether it might not
be well to marry the young lady, either to Francis himself, or to his
eldest son.

There now arose at Wittemberg, in Germany, the great leader of the
mighty change in England which is called The Reformation, and which set
the people free from their slavery to the priests. This was a learned
Doctor, named Martin Luther, who knew all about them, for he had been a
priest, and even a monk, himself. The preaching and writing of
Wickliffe had set a number of men thinking on this subject; and Luther,
finding one day to his great surprise, that there really was a book
called the New Testament which the priests did not allow to be read,
and which contained truths that they suppressed, began to be very
vigorous against the whole body, from the Pope downward. It happened,
while he was yet only beginning his vast work of awakening the nation,
that an impudent fellow named Tetzel, a friar of very bad character,
came into his neighbourhood selling what were called Indulgences, by
wholesale, to raise money for beautifying the great Cathedral of St.
Peter’s, at Rome. Whoever bought an Indulgence of the Pope was supposed
to buy himself off from the punishment of Heaven for his offences.
Luther told the people that these Indulgences were worthless bits of
paper, before God, and that Tetzel and his masters were a crew of
impostors in selling them.

The King and the Cardinal were mightily indignant at this presumption;
and the King (with the help of Sir Thomas More, a wise man, whom he
afterwards repaid by striking off his head) even wrote a book about it,
with which the Pope was so well pleased that he gave the King the title
of Defender of the Faith. The King and the Cardinal also issued flaming
warnings to the people not to read Luther’s books, on pain of
excommunication. But they did read them for all that; and the rumour of
what was in them spread far and wide.

When this great change was thus going on, the King began to show
himself in his truest and worst colours. Anne Boleyn, the pretty little
girl who had gone abroad to France with his sister, was by this time
grown up to be very beautiful, and was one of the ladies in attendance
on Queen Catherine. Now, Queen Catherine was no longer young or
handsome, and it is likely that she was not particularly good-tempered;
having been always rather melancholy, and having been made more so by
the deaths of four of her children when they were very young. So, the
King fell in love with the fair Anne Boleyn, and said to himself, ‘How
can I be best rid of my own troublesome wife whom I am tired of, and
marry Anne?’

You recollect that Queen Catherine had been the wife of Henry’s
brother. What does the King do, after thinking it over, but calls his
favourite priests about him, and says, O! his mind is in such a
dreadful state, and he is so frightfully uneasy, because he is afraid
it was not lawful for him to marry the Queen! Not one of those priests
had the courage to hint that it was rather curious he had never thought
of that before, and that his mind seemed to have been in a tolerably
jolly condition during a great many years, in which he certainly had
not fretted himself thin; but, they all said, Ah! that was very true,
and it was a serious business; and perhaps the best way to make it
right, would be for his Majesty to be divorced! The King replied, Yes,
he thought that would be the best way, certainly; so they all went to
work.

If I were to relate to you the intrigues and plots that took place in
the endeavour to get this divorce, you would think the History of
England the most tiresome book in the world. So I shall say no more,
than that after a vast deal of negotiation and evasion, the Pope issued
a commission to Cardinal Wolsey and Cardinal Campeggio (whom he sent
over from Italy for the purpose), to try the whole case in England. It
is supposed—and I think with reason—that Wolsey was the Queen’s enemy,
because she had reproved him for his proud and gorgeous manner of life.
But, he did not at first know that the King wanted to marry Anne
Boleyn; and when he did know it, he even went down on his knees, in the
endeavour to dissuade him.

The Cardinals opened their court in the Convent of the Black Friars,
near to where the bridge of that name in London now stands; and the
King and Queen, that they might be near it, took up their lodgings at
the adjoining palace of Bridewell, of which nothing now remains but a
bad prison. On the opening of the court, when the King and Queen were
called on to appear, that poor ill-used lady, with a dignity and
firmness and yet with a womanly affection worthy to be always admired,
went and kneeled at the King’s feet, and said that she had come, a
stranger, to his dominions; that she had been a good and true wife to
him for twenty years; and that she could acknowledge no power in those
Cardinals to try whether she should be considered his wife after all
that time, or should be put away. With that, she got up and left the
court, and would never afterwards come back to it.

The King pretended to be very much overcome, and said, O! my lords and
gentlemen, what a good woman she was to be sure, and how delighted he
would be to live with her unto death, but for that terrible uneasiness
in his mind which was quite wearing him away! So, the case went on, and
there was nothing but talk for two months. Then Cardinal Campeggio,
who, on behalf of the Pope, wanted nothing so much as delay, adjourned
it for two more months; and before that time was elapsed, the Pope
himself adjourned it indefinitely, by requiring the King and Queen to
come to Rome and have it tried there. But by good luck for the King,
word was brought to him by some of his people, that they had happened
to meet at supper, Thomas Cranmer, a learned Doctor of Cambridge, who
had proposed to urge the Pope on, by referring the case to all the
learned doctors and bishops, here and there and everywhere, and getting
their opinions that the King’s marriage was unlawful. The King, who was
now in a hurry to marry Anne Boleyn, thought this such a good idea,
that he sent for Cranmer, post haste, and said to Lord Rochfort, Anne
Boleyn’s father, ‘Take this learned Doctor down to your country-house,
and there let him have a good room for a study, and no end of books out
of which to prove that I may marry your daughter.’ Lord Rochfort, not
at all reluctant, made the learned Doctor as comfortable as he could;
and the learned Doctor went to work to prove his case. All this time,
the King and Anne Boleyn were writing letters to one another almost
daily, full of impatience to have the case settled; and Anne Boleyn was
showing herself (as I think) very worthy of the fate which afterwards
befel her.

It was bad for Cardinal Wolsey that he had left Cranmer to render this
help. It was worse for him that he had tried to dissuade the King from
marrying Anne Boleyn. Such a servant as he, to such a master as Henry,
would probably have fallen in any case; but, between the hatred of the
party of the Queen that was, and the hatred of the party of the Queen
that was to be, he fell suddenly and heavily. Going down one day to the
Court of Chancery, where he now presided, he was waited upon by the
Dukes of Norfolk and Suffolk, who told him that they brought an order
to him to resign that office, and to withdraw quietly to a house he had
at Esher, in Surrey. The Cardinal refusing, they rode off to the King;
and next day came back with a letter from him, on reading which, the
Cardinal submitted. An inventory was made out of all the riches in his
palace at York Place (now Whitehall), and he went sorrowfully up the
river, in his barge, to Putney. An abject man he was, in spite of his
pride; for being overtaken, riding out of that place towards Esher, by
one of the King’s chamberlains who brought him a kind message and a
ring, he alighted from his mule, took off his cap, and kneeled down in
the dirt. His poor Fool, whom in his prosperous days he had always kept
in his palace to entertain him, cut a far better figure than he; for,
when the Cardinal said to the chamberlain that he had nothing to send
to his lord the King as a present, but that jester who was a most
excellent one, it took six strong yeomen to remove the faithful fool
from his master.

The once proud Cardinal was soon further disgraced, and wrote the most
abject letters to his vile sovereign; who humbled him one day and
encouraged him the next, according to his humour, until he was at last
ordered to go and reside in his diocese of York. He said he was too
poor; but I don’t know how he made that out, for he took a hundred and
sixty servants with him, and seventy-two cart-loads of furniture, food,
and wine. He remained in that part of the country for the best part of
a year, and showed himself so improved by his misfortunes, and was so
mild and so conciliating, that he won all hearts. And indeed, even in
his proud days, he had done some magnificent things for learning and
education. At last, he was arrested for high treason; and, coming
slowly on his journey towards London, got as far as Leicester. Arriving
at Leicester Abbey after dark, and very ill, he said—when the monks
came out at the gate with lighted torches to receive him—that he had
come to lay his bones among them. He had indeed; for he was taken to a
bed, from which he never rose again. His last words were, ‘Had I but
served God as diligently as I have served the King, He would not have
given me over, in my grey hairs. Howbeit, this is my just reward for my
pains and diligence, not regarding my service to God, but only my duty
to my prince.’ The news of his death was quickly carried to the King,
who was amusing himself with archery in the garden of the magnificent
Palace at Hampton Court, which that very Wolsey had presented to him.
The greatest emotion his royal mind displayed at the loss of a servant
so faithful and so ruined, was a particular desire to lay hold of
fifteen hundred pounds which the Cardinal was reported to have hidden
somewhere.

The opinions concerning the divorce, of the learned doctors and bishops
and others, being at last collected, and being generally in the King’s
favour, were forwarded to the Pope, with an entreaty that he would now
grant it. The unfortunate Pope, who was a timid man, was half
distracted between his fear of his authority being set aside in England
if he did not do as he was asked, and his dread of offending the
Emperor of Germany, who was Queen Catherine’s nephew. In this state of
mind he still evaded and did nothing. Then, Thomas Cromwell, who had
been one of Wolsey’s faithful attendants, and had remained so even in
his decline, advised the King to take the matter into his own hands,
and make himself the head of the whole Church. This, the King by
various artful means, began to do; but he recompensed the clergy by
allowing them to burn as many people as they pleased, for holding
Luther’s opinions. You must understand that Sir Thomas More, the wise
man who had helped the King with his book, had been made Chancellor in
Wolsey’s place. But, as he was truly attached to the Church as it was
even in its abuses, he, in this state of things, resigned.

Being now quite resolved to get rid of Queen Catherine, and to marry
Anne Boleyn without more ado, the King made Cranmer Archbishop of
Canterbury, and directed Queen Catherine to leave the Court. She
obeyed; but replied that wherever she went, she was Queen of England
still, and would remain so, to the last. The King then married Anne
Boleyn privately; and the new Archbishop of Canterbury, within half a
year, declared his marriage with Queen Catherine void, and crowned Anne
Boleyn Queen.

She might have known that no good could ever come from such wrong, and
that the corpulent brute who had been so faithless and so cruel to his
first wife, could be more faithless and more cruel to his second. She
might have known that, even when he was in love with her, he had been a
mean and selfish coward, running away, like a frightened cur, from her
society and her house, when a dangerous sickness broke out in it, and
when she might easily have taken it and died, as several of the
household did. But, Anne Boleyn arrived at all this knowledge too late,
and bought it at a dear price. Her bad marriage with a worse man came
to its natural end. Its natural end was not, as we shall too soon see,
a natural death for her.', 2632)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('2859e9c8-d558-4288-a6bc-abb9a50e0870', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 45, 'Chapter XXVIII. England Under Henry the Eighth (1/2)', 'PART THE SECOND

The Pope was thrown into a very angry state of mind when he heard of
the King’s marriage, and fumed exceedingly. Many of the English monks
and friars, seeing that their order was in danger, did the same; some
even declaimed against the King in church before his face, and were not
to be stopped until he himself roared out ‘Silence!’ The King, not much
the worse for this, took it pretty quietly; and was very glad when his
Queen gave birth to a daughter, who was christened Elizabeth, and
declared Princess of Wales as her sister Mary had already been.

One of the most atrocious features of this reign was that Henry the
Eighth was always trimming between the reformed religion and the
unreformed one; so that the more he quarrelled with the Pope, the more
of his own subjects he roasted alive for not holding the Pope’s
opinions. Thus, an unfortunate student named John Frith, and a poor
simple tailor named Andrew Hewet who loved him very much, and said that
whatever John Frith believed _he_ believed, were burnt in Smithfield—to
show what a capital Christian the King was.

But, these were speedily followed by two much greater victims, Sir
Thomas More, and John Fisher, the Bishop of Rochester. The latter, who
was a good and amiable old man, had committed no greater offence than
believing in Elizabeth Barton, called the Maid of Kent—another of those
ridiculous women who pretended to be inspired, and to make all sorts of
heavenly revelations, though they indeed uttered nothing but evil
nonsense. For this offence—as it was pretended, but really for denying
the King to be the supreme Head of the Church—he got into trouble, and
was put in prison; but, even then, he might have been suffered to die
naturally (short work having been made of executing the Kentish Maid
and her principal followers), but that the Pope, to spite the King,
resolved to make him a cardinal. Upon that the King made a ferocious
joke to the effect that the Pope might send Fisher a red hat—which is
the way they make a cardinal—but he should have no head on which to
wear it; and he was tried with all unfairness and injustice, and
sentenced to death. He died like a noble and virtuous old man, and left
a worthy name behind him. The King supposed, I dare say, that Sir
Thomas More would be frightened by this example; but, as he was not to
be easily terrified, and, thoroughly believing in the Pope, had made up
his mind that the King was not the rightful Head of the Church, he
positively refused to say that he was. For this crime he too was tried
and sentenced, after having been in prison a whole year. When he was
doomed to death, and came away from his trial with the edge of the
executioner’s axe turned towards him—as was always done in those times
when a state prisoner came to that hopeless pass—he bore it quite
serenely, and gave his blessing to his son, who pressed through the
crowd in Westminster Hall and kneeled down to receive it. But, when he
got to the Tower Wharf on his way back to his prison, and his favourite
daughter, Margaret Roper, a very good woman, rushed through the guards
again and again, to kiss him and to weep upon his neck, he was overcome
at last. He soon recovered, and never more showed any feeling but
cheerfulness and courage. When he was going up the steps of the
scaffold to his death, he said jokingly to the Lieutenant of the Tower,
observing that they were weak and shook beneath his tread, ‘I pray you,
master Lieutenant, see me safe up; and, for my coming down, I can shift
for myself.’ Also he said to the executioner, after he had laid his
head upon the block, ‘Let me put my beard out of the way; for that, at
least, has never committed any treason.’ Then his head was struck off
at a blow. These two executions were worthy of King Henry the Eighth.
Sir Thomas More was one of the most virtuous men in his dominions, and
the Bishop was one of his oldest and truest friends. But to be a friend
of that fellow was almost as dangerous as to be his wife.

When the news of these two murders got to Rome, the Pope raged against
the murderer more than ever Pope raged since the world began, and
prepared a Bull, ordering his subjects to take arms against him and
dethrone him. The King took all possible precautions to keep that
document out of his dominions, and set to work in return to suppress a
great number of the English monasteries and abbeys.

This destruction was begun by a body of commissioners, of whom Cromwell
(whom the King had taken into great favour) was the head; and was
carried on through some few years to its entire completion. There is no
doubt that many of these religious establishments were religious in
nothing but in name, and were crammed with lazy, indolent, and sensual
monks. There is no doubt that they imposed upon the people in every
possible way; that they had images moved by wires, which they pretended
were miraculously moved by Heaven; that they had among them a whole tun
measure full of teeth, all purporting to have come out of the head of
one saint, who must indeed have been a very extraordinary person with
that enormous allowance of grinders; that they had bits of coal which
they said had fried Saint Lawrence, and bits of toe-nails which they
said belonged to other famous saints; penknives, and boots, and
girdles, which they said belonged to others; and that all these bits of
rubbish were called Relics, and adored by the ignorant people. But, on
the other hand, there is no doubt either, that the King’s officers and
men punished the good monks with the bad; did great injustice;
demolished many beautiful things and many valuable libraries; destroyed
numbers of paintings, stained glass windows, fine pavements, and
carvings; and that the whole court were ravenously greedy and rapacious
for the division of this great spoil among them. The King seems to have
grown almost mad in the ardour of this pursuit; for he declared Thomas
à Becket a traitor, though he had been dead so many years, and had his
body dug up out of his grave. He must have been as miraculous as the
monks pretended, if they had told the truth, for he was found with one
head on his shoulders, and they had shown another as his undoubted and
genuine head ever since his death; it had brought them vast sums of
money, too. The gold and jewels on his shrine filled two great chests,
and eight men tottered as they carried them away. How rich the
monasteries were you may infer from the fact that, when they were all
suppressed, one hundred and thirty thousand pounds a year—in those days
an immense sum—came to the Crown.

These things were not done without causing great discontent among the
people. The monks had been good landlords and hospitable entertainers
of all travellers, and had been accustomed to give away a great deal of
corn, and fruit, and meat, and other things. In those days it was
difficult to change goods into money, in consequence of the roads being
very few and very bad, and the carts, and waggons of the worst
description; and they must either have given away some of the good
things they possessed in enormous quantities, or have suffered them to
spoil and moulder. So, many of the people missed what it was more
agreeable to get idly than to work for; and the monks who were driven
out of their homes and wandered about encouraged their discontent; and
there were, consequently, great risings in Lincolnshire and Yorkshire.
These were put down by terrific executions, from which the monks
themselves did not escape, and the King went on grunting and growling
in his own fat way, like a Royal pig.

I have told all this story of the religious houses at one time, to make
it plainer, and to get back to the King’s domestic affairs.

The unfortunate Queen Catherine was by this time dead; and the King was
by this time as tired of his second Queen as he had been of his first.
As he had fallen in love with Anne when she was in the service of
Catherine, so he now fell in love with another lady in the service of
Anne. See how wicked deeds are punished, and how bitterly and
self-reproachfully the Queen must now have thought of her own rise to
the throne! The new fancy was a Lady Jane Seymour; and the King no
sooner set his mind on her, than he resolved to have Anne Boleyn’s
head. So, he brought a number of charges against Anne, accusing her of
dreadful crimes which she had never committed, and implicating in them
her own brother and certain gentlemen in her service: among whom one
Norris, and Mark Smeaton a musician, are best remembered. As the lords
and councillors were as afraid of the King and as subservient to him as
the meanest peasant in England was, they brought in Anne Boleyn guilty,
and the other unfortunate persons accused with her, guilty too. Those
gentlemen died like men, with the exception of Smeaton, who had been
tempted by the King into telling lies, which he called confessions, and
who had expected to be pardoned; but who, I am very glad to say, was
not. There was then only the Queen to dispose of. She had been
surrounded in the Tower with women spies; had been monstrously
persecuted and foully slandered; and had received no justice. But her
spirit rose with her afflictions; and, after having in vain tried to
soften the King by writing an affecting letter to him which still
exists, ‘from her doleful prison in the Tower,’ she resigned herself to
death. She said to those about her, very cheerfully, that she had heard
say the executioner was a good one, and that she had a little neck (she
laughed and clasped it with her hands as she said that), and would soon
be out of her pain. And she _was_ soon out of her pain, poor creature,
on the Green inside the Tower, and her body was flung into an old box
and put away in the ground under the chapel.

There is a story that the King sat in his palace listening very
anxiously for the sound of the cannon which was to announce this new
murder; and that, when he heard it come booming on the air, he rose up
in great spirits and ordered out his dogs to go a-hunting. He was bad
enough to do it; but whether he did it or not, it is certain that he
married Jane Seymour the very next day.

I have not much pleasure in recording that she lived just long enough
to give birth to a son who was christened Edward, and then to die of a
fever: for, I cannot but think that any woman who married such a
ruffian, and knew what innocent blood was on his hands, deserved the
axe that would assuredly have fallen on the neck of Jane Seymour, if
she had lived much longer.', 1927)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('1ed1503c-802f-4a25-a887-18f9204f35b6', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 46, 'Chapter XXVIII. England Under Henry the Eighth (2/2)', 'Cranmer had done what he could to save some of the Church property for
purposes of religion and education; but, the great families had been so
hungry to get hold of it, that very little could be rescued for such
objects. Even Miles Coverdale, who did the people the inestimable
service of translating the Bible into English (which the unreformed
religion never permitted to be done), was left in poverty while the
great families clutched the Church lands and money. The people had been
told that when the Crown came into possession of these funds, it would
not be necessary to tax them; but they were taxed afresh directly
afterwards. It was fortunate for them, indeed, that so many nobles were
so greedy for this wealth; since, if it had remained with the Crown,
there might have been no end to tyranny for hundreds of years. One of
the most active writers on the Church’s side against the King was a
member of his own family—a sort of distant cousin, Reginald Pole by
name—who attacked him in the most violent manner (though he received a
pension from him all the time), and fought for the Church with his pen,
day and night. As he was beyond the King’s reach—being in Italy—the
King politely invited him over to discuss the subject; but he, knowing
better than to come, and wisely staying where he was, the King’s rage
fell upon his brother Lord Montague, the Marquis of Exeter, and some
other gentlemen: who were tried for high treason in corresponding with
him and aiding him—which they probably did—and were all executed. The
Pope made Reginald Pole a cardinal; but, so much against his will, that
it is thought he even aspired in his own mind to the vacant throne of
England, and had hopes of marrying the Princess Mary. His being made a
high priest, however, put an end to all that. His mother, the venerable
Countess of Salisbury—who was, unfortunately for herself, within the
tyrant’s reach—was the last of his relatives on whom his wrath fell.
When she was told to lay her grey head upon the block, she answered the
executioner, ‘No! My head never committed treason, and if you want it,
you shall seize it.’ So, she ran round and round the scaffold with the
executioner striking at her, and her grey hair bedabbled with blood;
and even when they held her down upon the block she moved her head
about to the last, resolved to be no party to her own barbarous murder.
All this the people bore, as they had borne everything else.

Indeed they bore much more; for the slow fires of Smithfield were
continually burning, and people were constantly being roasted to
death—still to show what a good Christian the King was. He defied the
Pope and his Bull, which was now issued, and had come into England; but
he burned innumerable people whose only offence was that they differed
from the Pope’s religious opinions. There was a wretched man named
Lambert, among others, who was tried for this before the King, and with
whom six bishops argued one after another. When he was quite exhausted
(as well he might be, after six bishops), he threw himself on the
King’s mercy; but the King blustered out that he had no mercy for
heretics. So, _he_ too fed the fire.

All this the people bore, and more than all this yet. The national
spirit seems to have been banished from the kingdom at this time. The
very people who were executed for treason, the very wives and friends
of the ‘bluff’ King, spoke of him on the scaffold as a good prince, and
a gentle prince—just as serfs in similar circumstances have been known
to do, under the Sultan and Bashaws of the East, or under the fierce
old tyrants of Russia, who poured boiling and freezing water on them
alternately, until they died. The Parliament were as bad as the rest,
and gave the King whatever he wanted; among other vile accommodations,
they gave him new powers of murdering, at his will and pleasure, any
one whom he might choose to call a traitor. But the worst measure they
passed was an Act of Six Articles, commonly called at the time ‘the
whip with six strings;’ which punished offences against the Pope’s
opinions, without mercy, and enforced the very worst parts of the
monkish religion. Cranmer would have modified it, if he could; but,
being overborne by the Romish party, had not the power. As one of the
articles declared that priests should not marry, and as he was married
himself, he sent his wife and children into Germany, and began to
tremble at his danger; none the less because he was, and had long been,
the King’s friend. This whip of six strings was made under the King’s
own eye. It should never be forgotten of him how cruelly he supported
the worst of the Popish doctrines when there was nothing to be got by
opposing them.

This amiable monarch now thought of taking another wife. He proposed to
the French King to have some of the ladies of the French Court
exhibited before him, that he might make his Royal choice; but the
French King answered that he would rather not have his ladies trotted
out to be shown like horses at a fair. He proposed to the Dowager
Duchess of Milan, who replied that she might have thought of such a
match if she had had two heads; but, that only owning one, she must beg
to keep it safe. At last Cromwell represented that there was a
Protestant Princess in Germany—those who held the reformed religion
were called Protestants, because their leaders had Protested against
the abuses and impositions of the unreformed Church—named Anne of
Cleves, who was beautiful, and would answer the purpose admirably. The
King said was she a large woman, because he must have a fat wife? ‘O
yes,’ said Cromwell; ‘she was very large, just the thing.’ On hearing
this the King sent over his famous painter, Hans Holbein, to take her
portrait. Hans made her out to be so good-looking that the King was
satisfied, and the marriage was arranged. But, whether anybody had paid
Hans to touch up the picture; or whether Hans, like one or two other
painters, flattered a princess in the ordinary way of business, I
cannot say: all I know is, that when Anne came over and the King went
to Rochester to meet her, and first saw her without her seeing him, he
swore she was ‘a great Flanders mare,’ and said he would never marry
her. Being obliged to do it now matters had gone so far, he would not
give her the presents he had prepared, and would never notice her. He
never forgave Cromwell his part in the affair. His downfall dates from
that time.

It was quickened by his enemies, in the interests of the unreformed
religion, putting in the King’s way, at a state dinner, a niece of the
Duke of Norfolk, Catherine Howard, a young lady of fascinating manners,
though small in stature and not particularly beautiful. Falling in love
with her on the spot, the King soon divorced Anne of Cleves after
making her the subject of much brutal talk, on pretence that she had
been previously betrothed to some one else—which would never do for one
of his dignity—and married Catherine. It is probable that on his
wedding day, of all days in the year, he sent his faithful Cromwell to
the scaffold, and had his head struck off. He further celebrated the
occasion by burning at one time, and causing to be drawn to the fire on
the same hurdles, some Protestant prisoners for denying the Pope’s
doctrines, and some Roman Catholic prisoners for denying his own
supremacy. Still the people bore it, and not a gentleman in England
raised his hand.

But, by a just retribution, it soon came out that Catherine Howard,
before her marriage, had been really guilty of such crimes as the King
had falsely attributed to his second wife Anne Boleyn; so, again the
dreadful axe made the King a widower, and this Queen passed away as so
many in that reign had passed away before her. As an appropriate
pursuit under the circumstances, Henry then applied himself to
superintending the composition of a religious book called ‘A necessary
doctrine for any Christian Man.’ He must have been a little confused in
his mind, I think, at about this period; for he was so false to himself
as to be true to some one: that some one being Cranmer, whom the Duke
of Norfolk and others of his enemies tried to ruin; but to whom the
King was steadfast, and to whom he one night gave his ring, charging
him when he should find himself, next day, accused of treason, to show
it to the council board. This Cranmer did to the confusion of his
enemies. I suppose the King thought he might want him a little longer.

He married yet once more. Yes, strange to say, he found in England
another woman who would become his wife, and she was Catherine Parr,
widow of Lord Latimer. She leaned towards the reformed religion; and it
is some comfort to know, that she tormented the King considerably by
arguing a variety of doctrinal points with him on all possible
occasions. She had very nearly done this to her own destruction. After
one of these conversations the King in a very black mood actually
instructed Gardiner, one of his Bishops who favoured the Popish
opinions, to draw a bill of accusation against her, which would have
inevitably brought her to the scaffold where her predecessors had died,
but that one of her friends picked up the paper of instructions which
had been dropped in the palace, and gave her timely notice. She fell
ill with terror; but managed the King so well when he came to entrap
her into further statements—by saying that she had only spoken on such
points to divert his mind and to get some information from his
extraordinary wisdom—that he gave her a kiss and called her his
sweetheart. And, when the Chancellor came next day actually to take her
to the Tower, the King sent him about his business, and honoured him
with the epithets of a beast, a knave, and a fool. So near was
Catherine Parr to the block, and so narrow was her escape!

There was war with Scotland in this reign, and a short clumsy war with
France for favouring Scotland; but, the events at home were so
dreadful, and leave such an enduring stain on the country, that I need
say no more of what happened abroad.

A few more horrors, and this reign is over. There was a lady, Anne
Askew, in Lincolnshire, who inclined to the Protestant opinions, and
whose husband being a fierce Catholic, turned her out of his house. She
came to London, and was considered as offending against the six
articles, and was taken to the Tower, and put upon the rack—probably
because it was hoped that she might, in her agony, criminate some
obnoxious persons; if falsely, so much the better. She was tortured
without uttering a cry, until the Lieutenant of the Tower would suffer
his men to torture her no more; and then two priests who were present
actually pulled off their robes, and turned the wheels of the rack with
their own hands, so rending and twisting and breaking her that she was
afterwards carried to the fire in a chair. She was burned with three
others, a gentleman, a clergyman, and a tailor; and so the world went
on.

Either the King became afraid of the power of the Duke of Norfolk, and
his son the Earl of Surrey, or they gave him some offence, but he
resolved to pull _them_ down, to follow all the rest who were gone. The
son was tried first—of course for nothing—and defended himself bravely;
but of course he was found guilty, and of course he was executed. Then
his father was laid hold of, and left for death too.

But the King himself was left for death by a Greater King, and the
earth was to be rid of him at last. He was now a swollen, hideous
spectacle, with a great hole in his leg, and so odious to every sense
that it was dreadful to approach him. When he was found to be dying,
Cranmer was sent for from his palace at Croydon, and came with all
speed, but found him speechless. Happily, in that hour he perished. He
was in the fifty-sixth year of his age, and the thirty-eighth of his
reign.

Henry the Eighth has been favoured by some Protestant writers, because
the Reformation was achieved in his time. But the mighty merit of it
lies with other men and not with him; and it can be rendered none the
worse by this monster’s crimes, and none the better by any defence of
them. The plain truth is, that he was a most intolerable ruffian, a
disgrace to human nature, and a blot of blood and grease upon the
History of England.', 2225)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('9934cfc6-9cc1-43e0-ab90-a81062166539', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 47, 'Chapter XXIX. England Under Edward the Sixth', 'Henry the Eighth had made a will, appointing a council of sixteen to
govern the kingdom for his son while he was under age (he was now only
ten years old), and another council of twelve to help them. The most
powerful of the first council was the Earl of Hertford, the young
King’s uncle, who lost no time in bringing his nephew with great state
up to Enfield, and thence to the Tower. It was considered at the time a
striking proof of virtue in the young King that he was sorry for his
father’s death; but, as common subjects have that virtue too,
sometimes, we will say no more about it.

There was a curious part of the late King’s will, requiring his
executors to fulfil whatever promises he had made. Some of the court
wondering what these might be, the Earl of Hertford and the other
noblemen interested, said that they were promises to advance and enrich
_them_. So, the Earl of Hertford made himself Duke of Somerset, and
made his brother Edward Seymour a baron; and there were various similar
promotions, all very agreeable to the parties concerned, and very
dutiful, no doubt, to the late King’s memory. To be more dutiful still,
they made themselves rich out of the Church lands, and were very
comfortable. The new Duke of Somerset caused himself to be declared
Protector of the kingdom, and was, indeed, the King.

As young Edward the Sixth had been brought up in the principles of the
Protestant religion, everybody knew that they would be maintained. But
Cranmer, to whom they were chiefly entrusted, advanced them steadily
and temperately. Many superstitious and ridiculous practices were
stopped; but practices which were harmless were not interfered with.

The Duke of Somerset, the Protector, was anxious to have the young King
engaged in marriage to the young Queen of Scotland, in order to prevent
that princess from making an alliance with any foreign power; but, as a
large party in Scotland were unfavourable to this plan, he invaded that
country. His excuse for doing so was, that the Border men—that is, the
Scotch who lived in that part of the country where England and Scotland
joined—troubled the English very much. But there were two sides to this
question; for the English Border men troubled the Scotch too; and,
through many long years, there were perpetual border quarrels which
gave rise to numbers of old tales and songs. However, the Protector
invaded Scotland; and Arran, the Scottish Regent, with an army twice as
large as his, advanced to meet him. They encountered on the banks of
the river Esk, within a few miles of Edinburgh; and there, after a
little skirmish, the Protector made such moderate proposals, in
offering to retire if the Scotch would only engage not to marry their
princess to any foreign prince, that the Regent thought the English
were afraid. But in this he made a horrible mistake; for the English
soldiers on land, and the English sailors on the water, so set upon the
Scotch, that they broke and fled, and more than ten thousand of them
were killed. It was a dreadful battle, for the fugitives were slain
without mercy. The ground for four miles, all the way to Edinburgh, was
strewn with dead men, and with arms, and legs, and heads. Some hid
themselves in streams and were drowned; some threw away their armour
and were killed running, almost naked; but in this battle of Pinkey the
English lost only two or three hundred men. They were much better
clothed than the Scotch; at the poverty of whose appearance and country
they were exceedingly astonished.

A Parliament was called when Somerset came back, and it repealed the
whip with six strings, and did one or two other good things; though it
unhappily retained the punishment of burning for those people who did
not make believe to believe, in all religious matters, what the
Government had declared that they must and should believe. It also made
a foolish law (meant to put down beggars), that any man who lived idly
and loitered about for three days together, should be burned with a hot
iron, made a slave, and wear an iron fetter. But this savage absurdity
soon came to an end, and went the way of a great many other foolish
laws.

The Protector was now so proud that he sat in Parliament before all the
nobles, on the right hand of the throne. Many other noblemen, who only
wanted to be as proud if they could get a chance, became his enemies of
course; and it is supposed that he came back suddenly from Scotland
because he had received news that his brother, Lord Seymour, was
becoming dangerous to him. This lord was now High Admiral of England; a
very handsome man, and a great favourite with the Court ladies—even
with the young Princess Elizabeth, who romped with him a little more
than young princesses in these times do with any one. He had married
Catherine Parr, the late King’s widow, who was now dead; and, to
strengthen his power, he secretly supplied the young King with money.
He may even have engaged with some of his brother’s enemies in a plot
to carry the boy off. On these and other accusations, at any rate, he
was confined in the Tower, impeached, and found guilty; his own
brother’s name being—unnatural and sad to tell—the first signed to the
warrant of his execution. He was executed on Tower Hill, and died
denying his treason. One of his last proceedings in this world was to
write two letters, one to the Princess Elizabeth, and one to the
Princess Mary, which a servant of his took charge of, and concealed in
his shoe. These letters are supposed to have urged them against his
brother, and to revenge his death. What they truly contained is not
known; but there is no doubt that he had, at one time, obtained great
influence over the Princess Elizabeth.

All this while, the Protestant religion was making progress. The images
which the people had gradually come to worship, were removed from the
churches; the people were informed that they need not confess
themselves to priests unless they chose; a common prayer-book was drawn
up in the English language, which all could understand, and many other
improvements were made; still moderately. For Cranmer was a very
moderate man, and even restrained the Protestant clergy from violently
abusing the unreformed religion—as they very often did, and which was
not a good example. But the people were at this time in great distress.
The rapacious nobility who had come into possession of the Church
lands, were very bad landlords. They enclosed great quantities of
ground for the feeding of sheep, which was then more profitable than
the growing of crops; and this increased the general distress. So the
people, who still understood little of what was going on about them,
and still readily believed what the homeless monks told them—many of
whom had been their good friends in their better days—took it into
their heads that all this was owing to the reformed religion, and
therefore rose, in many parts of the country.

The most powerful risings were in Devonshire and Norfolk. In
Devonshire, the rebellion was so strong that ten thousand men united
within a few days, and even laid siege to Exeter. But Lord Russell,
coming to the assistance of the citizens who defended that town,
defeated the rebels; and, not only hanged the Mayor of one place, but
hanged the vicar of another from his own church steeple. What with
hanging and killing by the sword, four thousand of the rebels are
supposed to have fallen in that one county. In Norfolk (where the
rising was more against the enclosure of open lands than against the
reformed religion), the popular leader was a man named Robert Ket, a
tanner of Wymondham. The mob were, in the first instance, excited
against the tanner by one John Flowerdew, a gentleman who owed him a
grudge: but the tanner was more than a match for the gentleman, since
he soon got the people on his side, and established himself near
Norwich with quite an army. There was a large oak-tree in that place,
on a spot called Moushold Hill, which Ket named the Tree of
Reformation; and under its green boughs, he and his men sat, in the
midsummer weather, holding courts of justice, and debating affairs of
state. They were even impartial enough to allow some rather tiresome
public speakers to get up into this Tree of Reformation, and point out
their errors to them, in long discourses, while they lay listening (not
always without some grumbling and growling) in the shade below. At
last, one sunny July day, a herald appeared below the tree, and
proclaimed Ket and all his men traitors, unless from that moment they
dispersed and went home: in which case they were to receive a pardon.
But, Ket and his men made light of the herald and became stronger than
ever, until the Earl of Warwick went after them with a sufficient
force, and cut them all to pieces. A few were hanged, drawn, and
quartered, as traitors, and their limbs were sent into various country
places to be a terror to the people. Nine of them were hanged upon nine
green branches of the Oak of Reformation; and so, for the time, that
tree may be said to have withered away.

The Protector, though a haughty man, had compassion for the real
distresses of the common people, and a sincere desire to help them. But
he was too proud and too high in degree to hold even their favour
steadily; and many of the nobles always envied and hated him, because
they were as proud and not as high as he. He was at this time building
a great Palace in the Strand: to get the stone for which he blew up
church steeples with gunpowder, and pulled down bishops’ houses: thus
making himself still more disliked. At length, his principal enemy, the
Earl of Warwick—Dudley by name, and the son of that Dudley who had made
himself so odious with Empson, in the reign of Henry the Seventh—joined
with seven other members of the Council against him, formed a separate
Council; and, becoming stronger in a few days, sent him to the Tower
under twenty-nine articles of accusation. After being sentenced by the
Council to the forfeiture of all his offices and lands, he was
liberated and pardoned, on making a very humble submission. He was even
taken back into the Council again, after having suffered this fall, and
married his daughter, Lady Anne Seymour, to Warwick’s eldest son. But
such a reconciliation was little likely to last, and did not outlive a
year. Warwick, having got himself made Duke of Northumberland, and
having advanced the more important of his friends, then finished the
history by causing the Duke of Somerset and his friend Lord Grey, and
others, to be arrested for treason, in having conspired to seize and
dethrone the King. They were also accused of having intended to seize
the new Duke of Northumberland, with his friends Lord Northampton and
Lord Pembroke; to murder them if they found need; and to raise the City
to revolt. All this the fallen Protector positively denied; except that
he confessed to having spoken of the murder of those three noblemen,
but having never designed it. He was acquitted of the charge of
treason, and found guilty of the other charges; so when the people—who
remembered his having been their friend, now that he was disgraced and
in danger, saw him come out from his trial with the axe turned from
him—they thought he was altogether acquitted, and sent up a loud shout
of joy.

But the Duke of Somerset was ordered to be beheaded on Tower Hill, at
eight o’clock in the morning, and proclamations were issued bidding the
citizens keep at home until after ten. They filled the streets,
however, and crowded the place of execution as soon as it was light;
and, with sad faces and sad hearts, saw the once powerful Protector
ascend the scaffold to lay his head upon the dreadful block. While he
was yet saying his last words to them with manly courage, and telling
them, in particular, how it comforted him, at that pass, to have
assisted in reforming the national religion, a member of the Council
was seen riding up on horseback. They again thought that the Duke was
saved by his bringing a reprieve, and again shouted for joy. But the
Duke himself told them they were mistaken, and laid down his head and
had it struck off at a blow.

Many of the bystanders rushed forward and steeped their handkerchiefs
in his blood, as a mark of their affection. He had, indeed, been
capable of many good acts, and one of them was discovered after he was
no more. The Bishop of Durham, a very good man, had been informed
against to the Council, when the Duke was in power, as having answered
a treacherous letter proposing a rebellion against the reformed
religion. As the answer could not be found, he could not be declared
guilty; but it was now discovered, hidden by the Duke himself among
some private papers, in his regard for that good man. The Bishop lost
his office, and was deprived of his possessions.

It is not very pleasant to know that while his uncle lay in prison
under sentence of death, the young King was being vastly entertained by
plays, and dances, and sham fights: but there is no doubt of it, for he
kept a journal himself. It is pleasanter to know that not a single
Roman Catholic was burnt in this reign for holding that religion;
though two wretched victims suffered for heresy. One, a woman named
Joan Bocher, for professing some opinions that even she could only
explain in unintelligible jargon. The other, a Dutchman, named Von
Paris, who practised as a surgeon in London. Edward was, to his credit,
exceedingly unwilling to sign the warrant for the woman’s execution:
shedding tears before he did so, and telling Cranmer, who urged him to
do it (though Cranmer really would have spared the woman at first, but
for her own determined obstinacy), that the guilt was not his, but that
of the man who so strongly urged the dreadful act. We shall see, too
soon, whether the time ever came when Cranmer is likely to have
remembered this with sorrow and remorse.

Cranmer and Ridley (at first Bishop of Rochester, and afterwards Bishop
of London) were the most powerful of the clergy of this reign. Others
were imprisoned and deprived of their property for still adhering to
the unreformed religion; the most important among whom were Gardiner
Bishop of Winchester, Heath Bishop of Worcester, Day Bishop of
Chichester, and Bonner that Bishop of London who was superseded by
Ridley. The Princess Mary, who inherited her mother’s gloomy temper,
and hated the reformed religion as connected with her mother’s wrongs
and sorrows—she knew nothing else about it, always refusing to read a
single book in which it was truly described—held by the unreformed
religion too, and was the only person in the kingdom for whom the old
Mass was allowed to be performed; nor would the young King have made
that exception even in her favour, but for the strong persuasions of
Cranmer and Ridley. He always viewed it with horror; and when he fell
into a sickly condition, after having been very ill, first of the
measles and then of the small-pox, he was greatly troubled in mind to
think that if he died, and she, the next heir to the throne, succeeded,
the Roman Catholic religion would be set up again.

This uneasiness, the Duke of Northumberland was not slow to encourage:
for, if the Princess Mary came to the throne, he, who had taken part
with the Protestants, was sure to be disgraced. Now, the Duchess of
Suffolk was descended from King Henry the Seventh; and, if she resigned
what little or no right she had, in favour of her daughter Lady Jane
Grey, that would be the succession to promote the Duke’s greatness;
because Lord Guilford Dudley, one of his sons, was, at this very time,
newly married to her. So, he worked upon the King’s fears, and
persuaded him to set aside both the Princess Mary and the Princess
Elizabeth, and assert his right to appoint his successor. Accordingly
the young King handed to the Crown lawyers a writing signed half a
dozen times over by himself, appointing Lady Jane Grey to succeed to
the Crown, and requiring them to have his will made out according to
law. They were much against it at first, and told the King so; but the
Duke of Northumberland—being so violent about it that the lawyers even
expected him to beat them, and hotly declaring that, stripped to his
shirt, he would fight any man in such a quarrel—they yielded. Cranmer,
also, at first hesitated; pleading that he had sworn to maintain the
succession of the Crown to the Princess Mary; but, he was a weak man in
his resolutions, and afterwards signed the document with the rest of
the council.

It was completed none too soon; for Edward was now sinking in a rapid
decline; and, by way of making him better, they handed him over to a
woman-doctor who pretended to be able to cure it. He speedily got
worse. On the sixth of July, in the year one thousand five hundred and
fifty-three, he died, very peaceably and piously, praying God, with his
last breath, to protect the reformed religion.

This King died in the sixteenth year of his age, and in the seventh of
his reign. It is difficult to judge what the character of one so young
might afterwards have become among so many bad, ambitious, quarrelling
nobles. But, he was an amiable boy, of very good abilities, and had
nothing coarse or cruel or brutal in his disposition—which in the son
of such a father is rather surprising.', 3056)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('cbe5ff88-645e-423a-a192-0d2e46de4757', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 48, 'Chapter XXX. England Under Mary (1/2)', 'The Duke of Northumberland was very anxious to keep the young King’s
death a secret, in order that he might get the two Princesses into his
power. But, the Princess Mary, being informed of that event as she was
on her way to London to see her sick brother, turned her horse’s head,
and rode away into Norfolk. The Earl of Arundel was her friend, and it
was he who sent her warning of what had happened.

As the secret could not be kept, the Duke of Northumberland and the
council sent for the Lord Mayor of London and some of the aldermen, and
made a merit of telling it to them. Then, they made it known to the
people, and set off to inform Lady Jane Grey that she was to be Queen.

She was a pretty girl of only sixteen, and was amiable, learned, and
clever. When the lords who came to her, fell on their knees before her,
and told her what tidings they brought, she was so astonished that she
fainted. On recovering, she expressed her sorrow for the young King’s
death, and said that she knew she was unfit to govern the kingdom; but
that if she must be Queen, she prayed God to direct her. She was then
at Sion House, near Brentford; and the lords took her down the river in
state to the Tower, that she might remain there (as the custom was)
until she was crowned. But the people were not at all favourable to
Lady Jane, considering that the right to be Queen was Mary’s, and
greatly disliking the Duke of Northumberland. They were not put into a
better humour by the Duke’s causing a vintner’s servant, one Gabriel
Pot, to be taken up for expressing his dissatisfaction among the crowd,
and to have his ears nailed to the pillory, and cut off. Some powerful
men among the nobility declared on Mary’s side. They raised troops to
support her cause, had her proclaimed Queen at Norwich, and gathered
around her at the castle of Framlingham, which belonged to the Duke of
Norfolk. For, she was not considered so safe as yet, but that it was
best to keep her in a castle on the sea-coast, from whence she might be
sent abroad, if necessary.

The Council would have despatched Lady Jane’s father, the Duke of
Suffolk, as the general of the army against this force; but, as Lady
Jane implored that her father might remain with her, and as he was
known to be but a weak man, they told the Duke of Northumberland that
he must take the command himself. He was not very ready to do so, as he
mistrusted the Council much; but there was no help for it, and he set
forth with a heavy heart, observing to a lord who rode beside him
through Shoreditch at the head of the troops, that, although the people
pressed in great numbers to look at them, they were terribly silent.

And his fears for himself turned out to be well founded. While he was
waiting at Cambridge for further help from the Council, the Council
took it into their heads to turn their backs on Lady Jane’s cause, and
to take up the Princess Mary’s. This was chiefly owing to the
before-mentioned Earl of Arundel, who represented to the Lord Mayor and
aldermen, in a second interview with those sagacious persons, that, as
for himself, he did not perceive the Reformed religion to be in much
danger—which Lord Pembroke backed by flourishing his sword as another
kind of persuasion. The Lord Mayor and aldermen, thus enlightened, said
there could be no doubt that the Princess Mary ought to be Queen. So,
she was proclaimed at the Cross by St. Paul’s, and barrels of wine were
given to the people, and they got very drunk, and danced round blazing
bonfires—little thinking, poor wretches, what other bonfires would soon
be blazing in Queen Mary’s name.

After a ten days’ dream of royalty, Lady Jane Grey resigned the Crown
with great willingness, saying that she had only accepted it in
obedience to her father and mother; and went gladly back to her
pleasant house by the river, and her books. Mary then came on towards
London; and at Wanstead in Essex, was joined by her half-sister, the
Princess Elizabeth. They passed through the streets of London to the
Tower, and there the new Queen met some eminent prisoners then confined
in it, kissed them, and gave them their liberty. Among these was that
Gardiner, Bishop of Winchester, who had been imprisoned in the last
reign for holding to the unreformed religion. Him she soon made
chancellor.

The Duke of Northumberland had been taken prisoner, and, together with
his son and five others, was quickly brought before the Council. He,
not unnaturally, asked that Council, in his defence, whether it was
treason to obey orders that had been issued under the great seal; and,
if it were, whether they, who had obeyed them too, ought to be his
judges? But they made light of these points; and, being resolved to
have him out of the way, soon sentenced him to death. He had risen into
power upon the death of another man, and made but a poor show (as might
be expected) when he himself lay low. He entreated Gardiner to let him
live, if it were only in a mouse’s hole; and, when he ascended the
scaffold to be beheaded on Tower Hill, addressed the people in a
miserable way, saying that he had been incited by others, and exhorting
them to return to the unreformed religion, which he told them was his
faith. There seems reason to suppose that he expected a pardon even
then, in return for this confession; but it matters little whether he
did or not. His head was struck off.

Mary was now crowned Queen. She was thirty-seven years of age, short
and thin, wrinkled in the face, and very unhealthy. But she had a great
liking for show and for bright colours, and all the ladies of her Court
were magnificently dressed. She had a great liking too for old customs,
without much sense in them; and she was oiled in the oldest way, and
blessed in the oldest way, and done all manner of things to in the
oldest way, at her coronation. I hope they did her good.

She soon began to show her desire to put down the Reformed religion,
and put up the unreformed one: though it was dangerous work as yet, the
people being something wiser than they used to be. They even cast a
shower of stones—and among them a dagger—at one of the royal chaplains
who attacked the Reformed religion in a public sermon. But the Queen
and her priests went steadily on. Ridley, the powerful bishop of the
last reign, was seized and sent to the Tower. Latimer, also celebrated
among the Clergy of the last reign, was likewise sent to the Tower, and
Cranmer speedily followed. Latimer was an aged man; and, as his guards
took him through Smithfield, he looked round it, and said, ‘This is a
place that hath long groaned for me.’ For he knew well, what kind of
bonfires would soon be burning. Nor was the knowledge confined to him.
The prisons were fast filled with the chief Protestants, who were there
left rotting in darkness, hunger, dirt, and separation from their
friends; many, who had time left them for escape, fled from the
kingdom; and the dullest of the people began, now, to see what was
coming.

It came on fast. A Parliament was got together; not without strong
suspicion of unfairness; and they annulled the divorce, formerly
pronounced by Cranmer between the Queen’s mother and King Henry the
Eighth, and unmade all the laws on the subject of religion that had
been made in the last King Edward’s reign. They began their
proceedings, in violation of the law, by having the old mass said
before them in Latin, and by turning out a bishop who would not kneel
down. They also declared guilty of treason, Lady Jane Grey for aspiring
to the Crown; her husband, for being her husband; and Cranmer, for not
believing in the mass aforesaid. They then prayed the Queen graciously
to choose a husband for herself, as soon as might be.

Now, the question who should be the Queen’s husband had given rise to a
great deal of discussion, and to several contending parties. Some said
Cardinal Pole was the man—but the Queen was of opinion that he was
_not_ the man, he being too old and too much of a student. Others said
that the gallant young Courtenay, whom the Queen had made Earl of
Devonshire, was the man—and the Queen thought so too, for a while; but
she changed her mind. At last it appeared that Philip, Prince of Spain,
was certainly the man—though certainly not the people’s man; for they
detested the idea of such a marriage from the beginning to the end, and
murmured that the Spaniard would establish in England, by the aid of
foreign soldiers, the worst abuses of the Popish religion, and even the
terrible Inquisition itself.

These discontents gave rise to a conspiracy for marrying young
Courtenay to the Princess Elizabeth, and setting them up, with popular
tumults all over the kingdom, against the Queen. This was discovered in
time by Gardiner; but in Kent, the old bold county, the people rose in
their old bold way. Sir Thomas Wyat, a man of great daring, was their
leader. He raised his standard at Maidstone, marched on to Rochester,
established himself in the old castle there, and prepared to hold out
against the Duke of Norfolk, who came against him with a party of the
Queen’s guards, and a body of five hundred London men. The London men,
however, were all for Elizabeth, and not at all for Mary. They
declared, under the castle walls, for Wyat; the Duke retreated; and
Wyat came on to Deptford, at the head of fifteen thousand men.

But these, in their turn, fell away. When he came to Southwark, there
were only two thousand left. Not dismayed by finding the London
citizens in arms, and the guns at the Tower ready to oppose his
crossing the river there, Wyat led them off to Kingston-upon-Thames,
intending to cross the bridge that he knew to be in that place, and so
to work his way round to Ludgate, one of the old gates of the City. He
found the bridge broken down, but mended it, came across, and bravely
fought his way up Fleet Street to Ludgate Hill. Finding the gate closed
against him, he fought his way back again, sword in hand, to Temple
Bar. Here, being overpowered, he surrendered himself, and three or four
hundred of his men were taken, besides a hundred killed. Wyat, in a
moment of weakness (and perhaps of torture) was afterwards made to
accuse the Princess Elizabeth as his accomplice to some very small
extent. But his manhood soon returned to him, and he refused to save
his life by making any more false confessions. He was quartered and
distributed in the usual brutal way, and from fifty to a hundred of his
followers were hanged. The rest were led out, with halters round their
necks, to be pardoned, and to make a parade of crying out, ‘God save
Queen Mary!’

In the danger of this rebellion, the Queen showed herself to be a woman
of courage and spirit. She disdained to retreat to any place of safety,
and went down to the Guildhall, sceptre in hand, and made a gallant
speech to the Lord Mayor and citizens. But on the day after Wyat’s
defeat, she did the most cruel act, even of her cruel reign, in signing
the warrant for the execution of Lady Jane Grey.

They tried to persuade Lady Jane to accept the unreformed religion; but
she steadily refused. On the morning when she was to die, she saw from
her window the bleeding and headless body of her husband brought back
in a cart from the scaffold on Tower Hill where he had laid down his
life. But, as she had declined to see him before his execution, lest
she should be overpowered and not make a good end, so, she even now
showed a constancy and calmness that will never be forgotten. She came
up to the scaffold with a firm step and a quiet face, and addressed the
bystanders in a steady voice. They were not numerous; for she was too
young, too innocent and fair, to be murdered before the people on Tower
Hill, as her husband had just been; so, the place of her execution was
within the Tower itself. She said that she had done an unlawful act in
taking what was Queen Mary’s right; but that she had done so with no
bad intent, and that she died a humble Christian. She begged the
executioner to despatch her quickly, and she asked him, ‘Will you take
my head off before I lay me down?’ He answered, ‘No, Madam,’ and then
she was very quiet while they bandaged her eyes. Being blinded, and
unable to see the block on which she was to lay her young head, she was
seen to feel about for it with her hands, and was heard to say,
confused, ‘O what shall I do! Where is it?’ Then they guided her to the
right place, and the executioner struck off her head. You know too
well, now, what dreadful deeds the executioner did in England, through
many, many years, and how his axe descended on the hateful block
through the necks of some of the bravest, wisest, and best in the land.
But it never struck so cruel and so vile a blow as this.', 2331)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('5cd5b154-96c4-45e3-a57d-a952eadc10ea', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 49, 'Chapter XXX. England Under Mary (2/2)', 'The father of Lady Jane soon followed, but was little pitied. Queen
Mary’s next object was to lay hold of Elizabeth, and this was pursued
with great eagerness. Five hundred men were sent to her retired house
at Ashridge, by Berkhampstead, with orders to bring her up, alive or
dead. They got there at ten at night, when she was sick in bed. But,
their leaders followed her lady into her bedchamber, whence she was
brought out betimes next morning, and put into a litter to be conveyed
to London. She was so weak and ill, that she was five days on the road;
still, she was so resolved to be seen by the people that she had the
curtains of the litter opened; and so, very pale and sickly, passed
through the streets. She wrote to her sister, saying she was innocent
of any crime, and asking why she was made a prisoner; but she got no
answer, and was ordered to the Tower. They took her in by the Traitor’s
Gate, to which she objected, but in vain. One of the lords who conveyed
her offered to cover her with his cloak, as it was raining, but she put
it away from her, proudly and scornfully, and passed into the Tower,
and sat down in a court-yard on a stone. They besought her to come in
out of the wet; but she answered that it was better sitting there, than
in a worse place. At length she went to her apartment, where she was
kept a prisoner, though not so close a prisoner as at Woodstock,
whither she was afterwards removed, and where she is said to have one
day envied a milkmaid whom she heard singing in the sunshine as she
went through the green fields. Gardiner, than whom there were not many
worse men among the fierce and sullen priests, cared little to keep
secret his stern desire for her death: being used to say that it was of
little service to shake off the leaves, and lop the branches of the
tree of heresy, if its root, the hope of heretics, were left. He
failed, however, in his benevolent design. Elizabeth was, at length,
released; and Hatfield House was assigned to her as a residence, under
the care of one Sir Thomas Pope.

It would seem that Philip, the Prince of Spain, was a main cause of
this change in Elizabeth’s fortunes. He was not an amiable man, being,
on the contrary, proud, overbearing, and gloomy; but he and the Spanish
lords who came over with him, assuredly did discountenance the idea of
doing any violence to the Princess. It may have been mere prudence, but
we will hope it was manhood and honour. The Queen had been expecting
her husband with great impatience, and at length he came, to her great
joy, though he never cared much for her. They were married by Gardiner,
at Winchester, and there was more holiday-making among the people; but
they had their old distrust of this Spanish marriage, in which even the
Parliament shared. Though the members of that Parliament were far from
honest, and were strongly suspected to have been bought with Spanish
money, they would pass no bill to enable the Queen to set aside the
Princess Elizabeth and appoint her own successor.

Although Gardiner failed in this object, as well as in the darker one
of bringing the Princess to the scaffold, he went on at a great pace in
the revival of the unreformed religion. A new Parliament was packed, in
which there were no Protestants. Preparations were made to receive
Cardinal Pole in England as the Pope’s messenger, bringing his holy
declaration that all the nobility who had acquired Church property,
should keep it—which was done to enlist their selfish interest on the
Pope’s side. Then a great scene was enacted, which was the triumph of
the Queen’s plans. Cardinal Pole arrived in great splendour and
dignity, and was received with great pomp. The Parliament joined in a
petition expressive of their sorrow at the change in the national
religion, and praying him to receive the country again into the Popish
Church. With the Queen sitting on her throne, and the King on one side
of her, and the Cardinal on the other, and the Parliament present,
Gardiner read the petition aloud. The Cardinal then made a great
speech, and was so obliging as to say that all was forgotten and
forgiven, and that the kingdom was solemnly made Roman Catholic again.

Everything was now ready for the lighting of the terrible bonfires. The
Queen having declared to the Council, in writing, that she would wish
none of her subjects to be burnt without some of the Council being
present, and that she would particularly wish there to be good sermons
at all burnings, the Council knew pretty well what was to be done next.
So, after the Cardinal had blessed all the bishops as a preface to the
burnings, the Chancellor Gardiner opened a High Court at Saint Mary
Overy, on the Southwark side of London Bridge, for the trial of
heretics. Here, two of the late Protestant clergymen, Hooper, Bishop of
Gloucester, and Rogers, a Prebendary of St. Paul’s, were brought to be
tried. Hooper was tried first for being married, though a priest, and
for not believing in the mass. He admitted both of these accusations,
and said that the mass was a wicked imposition. Then they tried Rogers,
who said the same. Next morning the two were brought up to be
sentenced; and then Rogers said that his poor wife, being a German
woman and a stranger in the land, he hoped might be allowed to come to
speak to him before he died. To this the inhuman Gardiner replied, that
she was not his wife. ‘Yea, but she is, my lord,’ said Rogers, ‘and she
hath been my wife these eighteen years.’ His request was still refused,
and they were both sent to Newgate; all those who stood in the streets
to sell things, being ordered to put out their lights that the people
might not see them. But, the people stood at their doors with candles
in their hands, and prayed for them as they went by. Soon afterwards,
Rogers was taken out of jail to be burnt in Smithfield; and, in the
crowd as he went along, he saw his poor wife and his ten children, of
whom the youngest was a little baby. And so he was burnt to death.

The next day, Hooper, who was to be burnt at Gloucester, was brought
out to take his last journey, and was made to wear a hood over his face
that he might not be known by the people. But, they did know him for
all that, down in his own part of the country; and, when he came near
Gloucester, they lined the road, making prayers and lamentations. His
guards took him to a lodging, where he slept soundly all night. At nine
o’clock next morning, he was brought forth leaning on a staff; for he
had taken cold in prison, and was infirm. The iron stake, and the iron
chain which was to bind him to it, were fixed up near a great elm-tree
in a pleasant open place before the cathedral, where, on peaceful
Sundays, he had been accustomed to preach and to pray, when he was
bishop of Gloucester. This tree, which had no leaves then, it being
February, was filled with people; and the priests of Gloucester College
were looking complacently on from a window, and there was a great
concourse of spectators in every spot from which a glimpse of the
dreadful sight could be beheld. When the old man kneeled down on the
small platform at the foot of the stake, and prayed aloud, the nearest
people were observed to be so attentive to his prayers that they were
ordered to stand farther back; for it did not suit the Romish Church to
have those Protestant words heard. His prayers concluded, he went up to
the stake and was stripped to his shirt, and chained ready for the
fire. One of his guards had such compassion on him that, to shorten his
agonies, he tied some packets of gunpowder about him. Then they heaped
up wood and straw and reeds, and set them all alight. But, unhappily,
the wood was green and damp, and there was a wind blowing that blew
what flame there was, away. Thus, through three-quarters of an hour,
the good old man was scorched and roasted and smoked, as the fire rose
and sank; and all that time they saw him, as he burned, moving his lips
in prayer, and beating his breast with one hand, even after the other
was burnt away and had fallen off.

Cranmer, Ridley, and Latimer, were taken to Oxford to dispute with a
commission of priests and doctors about the mass. They were shamefully
treated; and it is recorded that the Oxford scholars hissed and howled
and groaned, and misconducted themselves in an anything but a scholarly
way. The prisoners were taken back to jail, and afterwards tried in St.
Mary’s Church. They were all found guilty. On the sixteenth of the
month of October, Ridley and Latimer were brought out, to make another
of the dreadful bonfires.

The scene of the suffering of these two good Protestant men was in the
City ditch, near Baliol College. On coming to the dreadful spot, they
kissed the stakes, and then embraced each other. And then a learned
doctor got up into a pulpit which was placed there, and preached a
sermon from the text, ‘Though I give my body to be burned, and have not
charity, it profiteth me nothing.’ When you think of the charity of
burning men alive, you may imagine that this learned doctor had a
rather brazen face. Ridley would have answered his sermon when it came
to an end, but was not allowed. When Latimer was stripped, it appeared
that he had dressed himself under his other clothes, in a new shroud;
and, as he stood in it before all the people, it was noted of him, and
long remembered, that, whereas he had been stooping and feeble but a
few minutes before, he now stood upright and handsome, in the knowledge
that he was dying for a just and a great cause. Ridley’s brother-in-law
was there with bags of gunpowder; and when they were both chained up,
he tied them round their bodies. Then, a light was thrown upon the pile
to fire it. ‘Be of good comfort, Master Ridley,’ said Latimer, at that
awful moment, ‘and play the man! We shall this day light such a candle,
by God’s grace, in England, as I trust shall never be put out.’ And
then he was seen to make motions with his hands as if he were washing
them in the flames, and to stroke his aged face with them, and was
heard to cry, ‘Father of Heaven, receive my soul!’ He died quickly, but
the fire, after having burned the legs of Ridley, sunk. There he
lingered, chained to the iron post, and crying, ‘O! I cannot burn! O!
for Christ’s sake let the fire come unto me!’ And still, when his
brother-in-law had heaped on more wood, he was heard through the
blinding smoke, still dismally crying, ‘O! I cannot burn, I cannot
burn!’ At last, the gunpowder caught fire, and ended his miseries.

Five days after this fearful scene, Gardiner went to his tremendous
account before God, for the cruelties he had so much assisted in
committing.

Cranmer remained still alive and in prison. He was brought out again in
February, for more examining and trying, by Bonner, Bishop of London:
another man of blood, who had succeeded to Gardiner’s work, even in his
lifetime, when Gardiner was tired of it. Cranmer was now degraded as a
priest, and left for death; but, if the Queen hated any one on earth,
she hated him, and it was resolved that he should be ruined and
disgraced to the utmost. There is no doubt that the Queen and her
husband personally urged on these deeds, because they wrote to the
Council, urging them to be active in the kindling of the fearful fires.
As Cranmer was known not to be a firm man, a plan was laid for
surrounding him with artful people, and inducing him to recant to the
unreformed religion. Deans and friars visited him, played at bowls with
him, showed him various attentions, talked persuasively with him, gave
him money for his prison comforts, and induced him to sign, I fear, as
many as six recantations. But when, after all, he was taken out to be
burnt, he was nobly true to his better self, and made a glorious end.

After prayers and a sermon, Dr. Cole, the preacher of the day (who had
been one of the artful priests about Cranmer in prison), required him
to make a public confession of his faith before the people. This, Cole
did, expecting that he would declare himself a Roman Catholic. ‘I will
make a profession of my faith,’ said Cranmer, ‘and with a good will
too.’

Then, he arose before them all, and took from the sleeve of his robe a
written prayer and read it aloud. That done, he kneeled and said the
Lord’s Prayer, all the people joining; and then he arose again and told
them that he believed in the Bible, and that in what he had lately
written, he had written what was not the truth, and that, because his
right hand had signed those papers, he would burn his right hand first
when he came to the fire. As for the Pope, he did refuse him and
denounce him as the enemy of Heaven. Hereupon the pious Dr. Cole cried
out to the guards to stop that heretic’s mouth and take him away.

So they took him away, and chained him to the stake, where he hastily
took off his own clothes to make ready for the flames. And he stood
before the people with a bald head and a white and flowing beard. He
was so firm now when the worst was come, that he again declared against
his recantation, and was so impressive and so undismayed, that a
certain lord, who was one of the directors of the execution, called out
to the men to make haste! When the fire was lighted, Cranmer, true to
his latest word, stretched out his right hand, and crying out, ‘This
hand hath offended!’ held it among the flames, until it blazed and
burned away. His heart was found entire among his ashes, and he left at
last a memorable name in English history. Cardinal Pole celebrated the
day by saying his first mass, and next day he was made Archbishop of
Canterbury in Cranmer’s place.

The Queen’s husband, who was now mostly abroad in his own dominions,
and generally made a coarse jest of her to his more familiar courtiers,
was at war with France, and came over to seek the assistance of
England. England was very unwilling to engage in a French war for his
sake; but it happened that the King of France, at this very time, aided
a descent upon the English coast. Hence, war was declared, greatly to
Philip’s satisfaction; and the Queen raised a sum of money with which
to carry it on, by every unjustifiable means in her power. It met with
no profitable return, for the French Duke of Guise surprised Calais,
and the English sustained a complete defeat. The losses they met with
in France greatly mortified the national pride, and the Queen never
recovered the blow.

There was a bad fever raging in England at this time, and I am glad to
write that the Queen took it, and the hour of her death came. ‘When I
am dead and my body is opened,’ she said to those around those around
her, ‘ye shall find Calais written on my heart.’ I should have thought,
if anything were written on it, they would have found the words—Jane
Grey, Hooper, Rogers, Ridley, Latimer, Cranmer, and three hundred
people burnt alive within four years of my wicked reign, including
sixty women and forty little children. But it is enough that their
deaths were written in Heaven.

The Queen died on the seventeenth of November, fifteen hundred and
fifty-eight, after reigning not quite five years and a half, and in the
forty-fourth year of her age. Cardinal Pole died of the same fever next
day.

As Bloody Queen Mary, this woman has become famous, and as Bloody Queen
Mary, she will ever be justly remembered with horror and detestation in
Great Britain. Her memory has been held in such abhorrence that some
writers have arisen in later years to take her part, and to show that
she was, upon the whole, quite an amiable and cheerful sovereign! ‘By
their fruits ye shall know them,’ said Our Saviour. The stake and the
fire were the fruits of this reign, and you will judge this Queen by
nothing else.', 2884)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;
