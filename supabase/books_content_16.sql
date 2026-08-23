-- ============================================================
-- NOI DUNG SACH — phan 16/20
-- Sinh tu tools/books/import_book.py, dung sua tay.
--
-- Chua: child-history-england, short-history-world
--
-- Chay books_schema.sql TRUOC, roi chay cac phan nay THEO THU TU.
-- An toan chay lai nhieu lan (uuid tat dinh + on conflict).
-- Cat nho vi SQL Editor cua Supabase tu choi cau lenh qua lon.
-- ============================================================

-- ===== A Child's History of England — Charles Dickens (1853) =====
-- Nguon: Project Gutenberg #699 (public domain)

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('e488fe07-b0bf-4032-a74f-bd97e0a88f5e', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 59, 'Chapter XXXIV. England Under Oliver Cromwell (1/2)', 'Before sunset on the memorable day on which King Charles the First was
executed, the House of Commons passed an act declaring it treason in
any one to proclaim the Prince of Wales—or anybody else—King of
England. Soon afterwards, it declared that the House of Lords was
useless and dangerous, and ought to be abolished; and directed that the
late King’s statue should be taken down from the Royal Exchange in the
City and other public places. Having laid hold of some famous Royalists
who had escaped from prison, and having beheaded the Duke Of Hamilton,
Lord Holland, and Lord Capel, in Palace Yard (all of whom died very
courageously), they then appointed a Council of State to govern the
country. It consisted of forty-one members, of whom five were peers.
Bradshaw was made president. The House of Commons also re-admitted
members who had opposed the King’s death, and made up its numbers to
about a hundred and fifty.

But, it still had an army of more than forty thousand men to deal with,
and a very hard task it was to manage them. Before the King’s
execution, the army had appointed some of its officers to remonstrate
between them and the Parliament; and now the common soldiers began to
take that office upon themselves. The regiments under orders for
Ireland mutinied; one troop of horse in the city of London seized their
own flag, and refused to obey orders. For this, the ringleader was
shot: which did not mend the matter, for, both his comrades and the
people made a public funeral for him, and accompanied the body to the
grave with sound of trumpets and with a gloomy procession of persons
carrying bundles of rosemary steeped in blood. Oliver was the only man
to deal with such difficulties as these, and he soon cut them short by
bursting at midnight into the town of Burford, near Salisbury, where
the mutineers were sheltered, taking four hundred of them prisoners,
and shooting a number of them by sentence of court-martial. The
soldiers soon found, as all men did, that Oliver was not a man to be
trifled with. And there was an end of the mutiny.

The Scottish Parliament did not know Oliver yet; so, on hearing of the
King’s execution, it proclaimed the Prince of Wales King Charles the
Second, on condition of his respecting the Solemn League and Covenant.
Charles was abroad at that time, and so was Montrose, from whose help
he had hopes enough to keep him holding on and off with commissioners
from Scotland, just as his father might have done. These hopes were
soon at an end; for, Montrose, having raised a few hundred exiles in
Germany, and landed with them in Scotland, found that the people there,
instead of joining him, deserted the country at his approach. He was
soon taken prisoner and carried to Edinburgh. There he was received
with every possible insult, and carried to prison in a cart, his
officers going two and two before him. He was sentenced by the
Parliament to be hanged on a gallows thirty feet high, to have his head
set on a spike in Edinburgh, and his limbs distributed in other places,
according to the old barbarous manner. He said he had always acted
under the Royal orders, and only wished he had limbs enough to be
distributed through Christendom, that it might be the more widely known
how loyal he had been. He went to the scaffold in a bright and
brilliant dress, and made a bold end at thirty-eight years of age. The
breath was scarcely out of his body when Charles abandoned his memory,
and denied that he had ever given him orders to rise in his behalf. O
the family failing was strong in that Charles then!

Oliver had been appointed by the Parliament to command the army in
Ireland, where he took a terrible vengeance for the sanguinary
rebellion, and made tremendous havoc, particularly in the siege of
Drogheda, where no quarter was given, and where he found at least a
thousand of the inhabitants shut up together in the great church: every
one of whom was killed by his soldiers, usually known as Oliver’s
Ironsides. There were numbers of friars and priests among them, and
Oliver gruffly wrote home in his despatch that these were ‘knocked on
the head’ like the rest.

But, Charles having got over to Scotland where the men of the Solemn
League and Covenant led him a prodigiously dull life and made him very
weary with long sermons and grim Sundays, the Parliament called the
redoubtable Oliver home to knock the Scottish men on the head for
setting up that Prince. Oliver left his son-in-law, Ireton, as general
in Ireland in his stead (he died there afterwards), and he imitated the
example of his father-in-law with such good will that he brought the
country to subjection, and laid it at the feet of the Parliament. In
the end, they passed an act for the settlement of Ireland, generally
pardoning all the common people, but exempting from this grace such of
the wealthier sort as had been concerned in the rebellion, or in any
killing of Protestants, or who refused to lay down their arms. Great
numbers of Irish were got out of the country to serve under Catholic
powers abroad, and a quantity of land was declared to have been
forfeited by past offences, and was given to people who had lent money
to the Parliament early in the war. These were sweeping measures; but,
if Oliver Cromwell had had his own way fully, and had stayed in
Ireland, he would have done more yet.

However, as I have said, the Parliament wanted Oliver for Scotland; so,
home Oliver came, and was made Commander of all the Forces of the
Commonwealth of England, and in three days away he went with sixteen
thousand soldiers to fight the Scottish men. Now, the Scottish men,
being then—as you will generally find them now—mighty cautious,
reflected that the troops they had were not used to war like the
Ironsides, and would be beaten in an open fight. Therefore they said,
‘If we live quiet in our trenches in Edinburgh here, and if all the
farmers come into the town and desert the country, the Ironsides will
be driven out by iron hunger and be forced to go away.’ This was, no
doubt, the wisest plan; but as the Scottish clergy _would_ interfere
with what they knew nothing about, and would perpetually preach long
sermons exhorting the soldiers to come out and fight, the soldiers got
it in their heads that they absolutely must come out and fight.
Accordingly, in an evil hour for themselves, they came out of their
safe position. Oliver fell upon them instantly, and killed three
thousand, and took ten thousand prisoners.

To gratify the Scottish Parliament, and preserve their favour, Charles
had signed a declaration they laid before him, reproaching the memory
of his father and mother, and representing himself as a most religious
Prince, to whom the Solemn League and Covenant was as dear as life. He
meant no sort of truth in this, and soon afterwards galloped away on
horseback to join some tiresome Highland friends, who were always
flourishing dirks and broadswords. He was overtaken and induced to
return; but this attempt, which was called ‘The Start,’ did him just so
much service, that they did not preach quite such long sermons at him
afterwards as they had done before.

On the first of January, one thousand six hundred and fifty-one, the
Scottish people crowned him at Scone. He immediately took the chief
command of an army of twenty thousand men, and marched to Stirling. His
hopes were heightened, I dare say, by the redoubtable Oliver being ill
of an ague; but Oliver scrambled out of bed in no time, and went to
work with such energy that he got behind the Royalist army and cut it
off from all communication with Scotland. There was nothing for it
then, but to go on to England; so it went on as far as Worcester, where
the mayor and some of the gentry proclaimed King Charles the Second
straightway. His proclamation, however, was of little use to him, for
very few Royalists appeared; and, on the very same day, two people were
publicly beheaded on Tower Hill for espousing his cause. Up came Oliver
to Worcester too, at double quick speed, and he and his Ironsides so
laid about them in the great battle which was fought there, that they
completely beat the Scottish men, and destroyed the Royalist army;
though the Scottish men fought so gallantly that it took five hours to
do.

The escape of Charles after this battle of Worcester did him good
service long afterwards, for it induced many of the generous English
people to take a romantic interest in him, and to think much better of
him than he ever deserved. He fled in the night, with not more than
sixty followers, to the house of a Catholic lady in Staffordshire.
There, for his greater safety, the whole sixty left him. He cropped his
hair, stained his face and hands brown as if they were sunburnt, put on
the clothes of a labouring countryman, and went out in the morning with
his axe in his hand, accompanied by four wood-cutters who were
brothers, and another man who was their brother-in-law. These good
fellows made a bed for him under a tree, as the weather was very bad;
and the wife of one of them brought him food to eat; and the old mother
of the four brothers came and fell down on her knees before him in the
wood, and thanked God that her sons were engaged in saving his life. At
night, he came out of the forest and went on to another house which was
near the river Severn, with the intention of passing into Wales; but
the place swarmed with soldiers, and the bridges were guarded, and all
the boats were made fast. So, after lying in a hayloft covered over
with hay, for some time, he came out of his place, attended by Colonel
Careless, a Catholic gentleman who had met him there, and with whom he
lay hid, all next day, up in the shady branches of a fine old oak. It
was lucky for the King that it was September-time, and that the leaves
had not begun to fall, since he and the Colonel, perched up in this
tree, could catch glimpses of the soldiers riding about below, and
could hear the crash in the wood as they went about beating the boughs.

After this, he walked and walked until his feet were all blistered;
and, having been concealed all one day in a house which was searched by
the troopers while he was there, went with Lord Wilmot, another of his
good friends, to a place called Bentley, where one Miss Lane, a
Protestant lady, had obtained a pass to be allowed to ride through the
guards to see a relation of hers near Bristol. Disguised as a servant,
he rode in the saddle before this young lady to the house of Sir John
Winter, while Lord Wilmot rode there boldly, like a plain country
gentleman, with dogs at his heels. It happened that Sir John Winter’s
butler had been servant in Richmond Palace, and knew Charles the moment
he set eyes upon him; but, the butler was faithful and kept the secret.
As no ship could be found to carry him abroad, it was planned that he
should go—still travelling with Miss Lane as her servant—to another
house, at Trent near Sherborne in Dorsetshire; and then Miss Lane and
her cousin, Mr. Lascelles, who had gone on horseback beside her all the
way, went home. I hope Miss Lane was going to marry that cousin, for I
am sure she must have been a brave, kind girl. If I had been that
cousin, I should certainly have loved Miss Lane.

When Charles, lonely for the loss of Miss Lane, was safe at Trent, a
ship was hired at Lyme, the master of which engaged to take two
gentlemen to France. In the evening of the same day, the King—now
riding as servant before another young lady—set off for a public-house
at a place called Charmouth, where the captain of the vessel was to
take him on board. But, the captain’s wife, being afraid of her husband
getting into trouble, locked him up and would not let him sail. Then
they went away to Bridport; and, coming to the inn there, found the
stable-yard full of soldiers who were on the look-out for Charles, and
who talked about him while they drank. He had such presence of mind,
that he led the horses of his party through the yard as any other
servant might have done, and said, ‘Come out of the way, you soldiers;
let us have room to pass here!’ As he went along, he met a half-tipsy
ostler, who rubbed his eyes and said to him, ‘Why, I was formerly
servant to Mr. Potter at Exeter, and surely I have sometimes seen you
there, young man?’ He certainly had, for Charles had lodged there. His
ready answer was, ‘Ah, I did live with him once; but I have no time to
talk now. We’ll have a pot of beer together when I come back.’

From this dangerous place he returned to Trent, and lay there concealed
several days. Then he escaped to Heale, near Salisbury; where, in the
house of a widow lady, he was hidden five days, until the master of a
collier lying off Shoreham in Sussex, undertook to convey a ‘gentleman’
to France. On the night of the fifteenth of October, accompanied by two
colonels and a merchant, the King rode to Brighton, then a little
fishing village, to give the captain of the ship a supper before going
on board; but, so many people knew him, that this captain knew him too,
and not only he, but the landlord and landlady also. Before he went
away, the landlord came behind his chair, kissed his hand, and said he
hoped to live to be a lord and to see his wife a lady; at which Charles
laughed. They had had a good supper by this time, and plenty of smoking
and drinking, at which the King was a first-rate hand; so, the captain
assured him that he would stand by him, and he did. It was agreed that
the captain should pretend to sail to Deal, and that Charles should
address the sailors and say he was a gentleman in debt who was running
away from his creditors, and that he hoped they would join him in
persuading the captain to put him ashore in France. As the King acted
his part very well indeed, and gave the sailors twenty shillings to
drink, they begged the captain to do what such a worthy gentleman
asked. He pretended to yield to their entreaties, and the King got safe
to Normandy.

Ireland being now subdued, and Scotland kept quiet by plenty of forts
and soldiers put there by Oliver, the Parliament would have gone on
quietly enough, as far as fighting with any foreign enemy went, but for
getting into trouble with the Dutch, who in the spring of the year one
thousand six hundred and fifty-one sent a fleet into the Downs under
their Admiral Van Tromp, to call upon the bold English Admiral Blake
(who was there with half as many ships as the Dutch) to strike his
flag. Blake fired a raging broadside instead, and beat off Van Tromp;
who, in the autumn, came back again with seventy ships, and challenged
the bold Blake—who still was only half as strong—to fight him. Blake
fought him all day; but, finding that the Dutch were too many for him,
got quietly off at night. What does Van Tromp upon this, but goes
cruising and boasting about the Channel, between the North Foreland and
the Isle of Wight, with a great Dutch broom tied to his masthead, as a
sign that he could and would sweep the English of the sea! Within three
months, Blake lowered his tone though, and his broom too; for, he and
two other bold commanders, Dean and Monk, fought him three whole days,
took twenty-three of his ships, shivered his broom to pieces, and
settled his business.

Things were no sooner quiet again, than the army began to complain to
the Parliament that they were not governing the nation properly, and to
hint that they thought they could do it better themselves. Oliver, who
had now made up his mind to be the head of the state, or nothing at
all, supported them in this, and called a meeting of officers and his
own Parliamentary friends, at his lodgings in Whitehall, to consider
the best way of getting rid of the Parliament. It had now lasted just
as many years as the King’s unbridled power had lasted, before it came
into existence. The end of the deliberation was, that Oliver went down
to the House in his usual plain black dress, with his usual grey
worsted stockings, but with an unusual party of soldiers behind him.
These last he left in the lobby, and then went in and sat down.
Presently he got up, made the Parliament a speech, told them that the
Lord had done with them, stamped his foot and said, ‘You are no
Parliament. Bring them in! Bring them in!’ At this signal the door flew
open, and the soldiers appeared. ‘This is not honest,’ said Sir Harry
Vane, one of the members. ‘Sir Harry Vane!’ cried Cromwell; ‘O, Sir
Harry Vane! The Lord deliver me from Sir Harry Vane!’ Then he pointed
out members one by one, and said this man was a drunkard, and that man
a dissipated fellow, and that man a liar, and so on. Then he caused the
Speaker to be walked out of his chair, told the guard to clear the
House, called the mace upon the table—which is a sign that the House is
sitting—‘a fool’s bauble,’ and said, ‘here, carry it away!’ Being
obeyed in all these orders, he quietly locked the door, put the key in
his pocket, walked back to Whitehall again, and told his friends, who
were still assembled there, what he had done.

They formed a new Council of State after this extraordinary proceeding,
and got a new Parliament together in their own way: which Oliver
himself opened in a sort of sermon, and which he said was the beginning
of a perfect heaven upon earth. In this Parliament there sat a
well-known leather-seller, who had taken the singular name of Praise
God Barebones, and from whom it was called, for a joke, Barebones’s
Parliament, though its general name was the Little Parliament. As it
soon appeared that it was not going to put Oliver in the first place,
it turned out to be not at all like the beginning of heaven upon earth,
and Oliver said it really was not to be borne with. So he cleared off
that Parliament in much the same way as he had disposed of the other;
and then the council of officers decided that he must be made the
supreme authority of the kingdom, under the title of the Lord Protector
of the Commonwealth.', 3265)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('1a05914d-092c-47cb-a0dd-43c6018da0ad', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 60, 'Chapter XXXIV. England Under Oliver Cromwell (2/2)', 'So, on the sixteenth of December, one thousand six hundred and
fifty-three, a great procession was formed at Oliver’s door, and he
came out in a black velvet suit and a big pair of boots, and got into
his coach and went down to Westminster, attended by the judges, and the
lord mayor, and the aldermen, and all the other great and wonderful
personages of the country. There, in the Court of Chancery, he publicly
accepted the office of Lord Protector. Then he was sworn, and the City
sword was handed to him, and the seal was handed to him, and all the
other things were handed to him which are usually handed to Kings and
Queens on state occasions. When Oliver had handed them all back, he was
quite made and completely finished off as Lord Protector; and several
of the Ironsides preached about it at great length, all the evening.

SECOND PART

Oliver Cromwell—whom the people long called Old Noll—in accepting the
office of Protector, had bound himself by a certain paper which was
handed to him, called ‘the Instrument,’ to summon a Parliament,
consisting of between four and five hundred members, in the election of
which neither the Royalists nor the Catholics were to have any share.
He had also pledged himself that this Parliament should not be
dissolved without its own consent until it had sat five months.

When this Parliament met, Oliver made a speech to them of three hours
long, very wisely advising them what to do for the credit and happiness
of the country. To keep down the more violent members, he required them
to sign a recognition of what they were forbidden by ‘the Instrument’
to do; which was, chiefly, to take the power from one single person at
the head of the state or to command the army. Then he dismissed them to
go to work. With his usual vigour and resolution he went to work
himself with some frantic preachers—who were rather overdoing their
sermons in calling him a villain and a tyrant—by shutting up their
chapels, and sending a few of them off to prison.

There was not at that time, in England or anywhere else, a man so able
to govern the country as Oliver Cromwell. Although he ruled with a
strong hand, and levied a very heavy tax on the Royalists (but not
until they had plotted against his life), he ruled wisely, and as the
times required. He caused England to be so respected abroad, that I
wish some lords and gentlemen who have governed it under kings and
queens in later days would have taken a leaf out of Oliver Cromwell’s
book. He sent bold Admiral Blake to the Mediterranean Sea, to make the
Duke of Tuscany pay sixty thousand pounds for injuries he had done to
British subjects, and spoliation he had committed on English merchants.
He further despatched him and his fleet to Algiers, Tunis, and Tripoli,
to have every English ship and every English man delivered up to him
that had been taken by pirates in those parts. All this was gloriously
done; and it began to be thoroughly well known, all over the world,
that England was governed by a man in earnest, who would not allow the
English name to be insulted or slighted anywhere.

These were not all his foreign triumphs. He sent a fleet to sea against
the Dutch; and the two powers, each with one hundred ships upon its
side, met in the English Channel off the North Foreland, where the
fight lasted all day long. Dean was killed in this fight; but Monk, who
commanded in the same ship with him, threw his cloak over his body,
that the sailors might not know of his death, and be disheartened. Nor
were they. The English broadsides so exceedingly astonished the Dutch
that they sheered off at last, though the redoubtable Van Tromp fired
upon them with his own guns for deserting their flag. Soon afterwards,
the two fleets engaged again, off the coast of Holland. There, the
valiant Van Tromp was shot through the heart, and the Dutch gave in,
and peace was made.

Further than this, Oliver resolved not to bear the domineering and
bigoted conduct of Spain, which country not only claimed a right to all
the gold and silver that could be found in South America, and treated
the ships of all other countries who visited those regions, as pirates,
but put English subjects into the horrible Spanish prisons of the
Inquisition. So, Oliver told the Spanish ambassador that English ships
must be free to go wherever they would, and that English merchants must
not be thrown into those same dungeons, no, not for the pleasure of all
the priests in Spain. To this, the Spanish ambassador replied that the
gold and silver country, and the Holy Inquisition, were his King’s two
eyes, neither of which he could submit to have put out. Very well, said
Oliver, then he was afraid he (Oliver) must damage those two eyes
directly.

So, another fleet was despatched under two commanders, Penn and
Venables, for Hispaniola; where, however, the Spaniards got the better
of the fight. Consequently, the fleet came home again, after taking
Jamaica on the way. Oliver, indignant with the two commanders who had
not done what bold Admiral Blake would have done, clapped them both
into prison, declared war against Spain, and made a treaty with France,
in virtue of which it was to shelter the King and his brother the Duke
of York no longer. Then, he sent a fleet abroad under bold Admiral
Blake, which brought the King of Portugal to his senses—just to keep
its hand in—and then engaged a Spanish fleet, sunk four great ships,
and took two more, laden with silver to the value of two millions of
pounds: which dazzling prize was brought from Portsmouth to London in
waggons, with the populace of all the towns and villages through which
the waggons passed, shouting with all their might. After this victory,
bold Admiral Blake sailed away to the port of Santa Cruz to cut off the
Spanish treasure-ships coming from Mexico. There, he found them, ten in
number, with seven others to take care of them, and a big castle, and
seven batteries, all roaring and blazing away at him with great guns.
Blake cared no more for great guns than for pop-guns—no more for their
hot iron balls than for snow-balls. He dashed into the harbour,
captured and burnt every one of the ships, and came sailing out again
triumphantly, with the victorious English flag flying at his masthead.
This was the last triumph of this great commander, who had sailed and
fought until he was quite worn out. He died, as his successful ship was
coming into Plymouth Harbour amidst the joyful acclamations of the
people, and was buried in state in Westminster Abbey. Not to lie there,
long.

Over and above all this, Oliver found that the Vaudois, or Protestant
people of the valleys of Lucerne, were insolently treated by the
Catholic powers, and were even put to death for their religion, in an
audacious and bloody manner. Instantly, he informed those powers that
this was a thing which Protestant England would not allow; and he
speedily carried his point, through the might of his great name, and
established their right to worship God in peace after their own
harmless manner.

Lastly, his English army won such admiration in fighting with the
French against the Spaniards, that, after they had assaulted the town
of Dunkirk together, the French King in person gave it up to the
English, that it might be a token to them of their might and valour.

There were plots enough against Oliver among the frantic religionists
(who called themselves Fifth Monarchy Men), and among the disappointed
Republicans. He had a difficult game to play, for the Royalists were
always ready to side with either party against him. The ‘King over the
water,’ too, as Charles was called, had no scruples about plotting with
any one against his life; although there is reason to suppose that he
would willingly have married one of his daughters, if Oliver would have
had such a son-in-law. There was a certain Colonel Saxby of the army,
once a great supporter of Oliver’s but now turned against him, who was
a grievous trouble to him through all this part of his career; and who
came and went between the discontented in England and Spain, and
Charles who put himself in alliance with Spain on being thrown off by
France. This man died in prison at last; but not until there had been
very serious plots between the Royalists and Republicans, and an actual
rising of them in England, when they burst into the city of Salisbury,
on a Sunday night, seized the judges who were going to hold the assizes
there next day, and would have hanged them but for the merciful
objections of the more temperate of their number. Oliver was so
vigorous and shrewd that he soon put this revolt down, as he did most
other conspiracies; and it was well for one of its chief managers—that
same Lord Wilmot who had assisted in Charles’s flight, and was now Earl
of Rochester—that he made his escape. Oliver seemed to have eyes and
ears everywhere, and secured such sources of information as his enemies
little dreamed of. There was a chosen body of six persons, called the
Sealed Knot, who were in the closest and most secret confidence of
Charles. One of the foremost of these very men, a Sir Richard Willis,
reported to Oliver everything that passed among them, and had two
hundred a year for it.

Miles Syndarcomb, also of the old army, was another conspirator against
the Protector. He and a man named Cecil, bribed one of his Life Guards
to let them have good notice when he was going out—intending to shoot
him from a window. But, owing either to his caution or his good
fortune, they could never get an aim at him. Disappointed in this
design, they got into the chapel in Whitehall, with a basketful of
combustibles, which were to explode by means of a slow match in six
hours; then, in the noise and confusion of the fire, they hoped to kill
Oliver. But, the Life Guardsman himself disclosed this plot; and they
were seized, and Miles died (or killed himself in prison) a little
while before he was ordered for execution. A few such plotters Oliver
caused to be beheaded, a few more to be hanged, and many more,
including those who rose in arms against him, to be sent as slaves to
the West Indies. If he were rigid, he was impartial too, in asserting
the laws of England. When a Portuguese nobleman, the brother of the
Portuguese ambassador, killed a London citizen in mistake for another
man with whom he had had a quarrel, Oliver caused him to be tried
before a jury of Englishmen and foreigners, and had him executed in
spite of the entreaties of all the ambassadors in London.

One of Oliver’s own friends, the Duke of Oldenburgh, in sending him a
present of six fine coach-horses, was very near doing more to please
the Royalists than all the plotters put together. One day, Oliver went
with his coach, drawn by these six horses, into Hyde Park, to dine with
his secretary and some of his other gentlemen under the trees there.
After dinner, being merry, he took it into his head to put his friends
inside and to drive them home: a postillion riding one of the foremost
horses, as the custom was. On account of Oliver’s being too free with
the whip, the six fine horses went off at a gallop, the postillion got
thrown, and Oliver fell upon the coach-pole and narrowly escaped being
shot by his own pistol, which got entangled with his clothes in the
harness, and went off. He was dragged some distance by the foot, until
his foot came out of the shoe, and then he came safely to the ground
under the broad body of the coach, and was very little the worse. The
gentlemen inside were only bruised, and the discontented people of all
parties were much disappointed.

The rest of the history of the Protectorate of Oliver Cromwell is a
history of his Parliaments. His first one not pleasing him at all, he
waited until the five months were out, and then dissolved it. The next
was better suited to his views; and from that he desired to get—if he
could with safety to himself—the title of King. He had had this in his
mind some time: whether because he thought that the English people,
being more used to the title, were more likely to obey it; or whether
because he really wished to be a king himself, and to leave the
succession to that title in his family, is far from clear. He was
already as high, in England and in all the world, as he would ever be,
and I doubt if he cared for the mere name. However, a paper, called the
‘Humble Petition and Advice,’ was presented to him by the House of
Commons, praying him to take a high title and to appoint his successor.
That he would have taken the title of King there is no doubt, but for
the strong opposition of the army. This induced him to forbear, and to
assent only to the other points of the petition. Upon which occasion
there was another grand show in Westminster Hall, when the Speaker of
the House of Commons formally invested him with a purple robe lined
with ermine, and presented him with a splendidly bound Bible, and put a
golden sceptre in his hand. The next time the Parliament met, he called
a House of Lords of sixty members, as the petition gave him power to
do; but as that Parliament did not please him either, and would not
proceed to the business of the country, he jumped into a coach one
morning, took six Guards with him, and sent them to the right-about. I
wish this had been a warning to Parliaments to avoid long speeches, and
do more work.

It was the month of August, one thousand six hundred and fifty-eight,
when Oliver Cromwell’s favourite daughter, Elizabeth Claypole (who had
lately lost her youngest son), lay very ill, and his mind was greatly
troubled, because he loved her dearly. Another of his daughters was
married to Lord Falconberg, another to the grandson of the Earl of
Warwick, and he had made his son Richard one of the Members of the
Upper House. He was very kind and loving to them all, being a good
father and a good husband; but he loved this daughter the best of the
family, and went down to Hampton Court to see her, and could hardly be
induced to stir from her sick room until she died. Although his
religion had been of a gloomy kind, his disposition had been always
cheerful. He had been fond of music in his home, and had kept open
table once a week for all officers of the army not below the rank of
captain, and had always preserved in his house a quiet, sensible
dignity. He encouraged men of genius and learning, and loved to have
them about him. Milton was one of his great friends. He was good
humoured too, with the nobility, whose dresses and manners were very
different from his; and to show them what good information he had, he
would sometimes jokingly tell them when they were his guests, where
they had last drunk the health of the ‘King over the water,’ and would
recommend them to be more private (if they could) another time. But he
had lived in busy times, had borne the weight of heavy State affairs,
and had often gone in fear of his life. He was ill of the gout and
ague; and when the death of his beloved child came upon him in
addition, he sank, never to raise his head again. He told his
physicians on the twenty-fourth of August that the Lord had assured him
that he was not to die in that illness, and that he would certainly get
better. This was only his sick fancy, for on the third of September,
which was the anniversary of the great battle of Worcester, and the day
of the year which he called his fortunate day, he died, in the sixtieth
year of his age. He had been delirious, and had lain insensible some
hours, but he had been overheard to murmur a very good prayer the day
before. The whole country lamented his death. If you want to know the
real worth of Oliver Cromwell, and his real services to his country,
you can hardly do better than compare England under him, with England
under Charles the Second.

He had appointed his son Richard to succeed him, and after there had
been, at Somerset House in the Strand, a lying in state more splendid
than sensible—as all such vanities after death are, I think—Richard
became Lord Protector. He was an amiable country gentleman, but had
none of his father’s great genius, and was quite unfit for such a post
in such a storm of parties. Richard’s Protectorate, which only lasted a
year and a half, is a history of quarrels between the officers of the
army and the Parliament, and between the officers among themselves; and
of a growing discontent among the people, who had far too many long
sermons and far too few amusements, and wanted a change. At last,
General Monk got the army well into his own hands, and then in
pursuance of a secret plan he seems to have entertained from the time
of Oliver’s death, declared for the King’s cause. He did not do this
openly; but, in his place in the House of Commons, as one of the
members for Devonshire, strongly advocated the proposals of one Sir
John Greenville, who came to the House with a letter from Charles,
dated from Breda, and with whom he had previously been in secret
communication. There had been plots and counterplots, and a recall of
the last members of the Long Parliament, and an end of the Long
Parliament, and risings of the Royalists that were made too soon; and
most men being tired out, and there being no one to head the country
now great Oliver was dead, it was readily agreed to welcome Charles
Stuart. Some of the wiser and better members said—what was most
true—that in the letter from Breda, he gave no real promise to govern
well, and that it would be best to make him pledge himself beforehand
as to what he should be bound to do for the benefit of the kingdom.
Monk said, however, it would be all right when he came, and he could
not come too soon.

So, everybody found out all in a moment that the country _must_ be
prosperous and happy, having another Stuart to condescend to reign over
it; and there was a prodigious firing off of guns, lighting of
bonfires, ringing of bells, and throwing up of caps. The people drank
the King’s health by thousands in the open streets, and everybody
rejoiced. Down came the Arms of the Commonwealth, up went the Royal
Arms instead, and out came the public money. Fifty thousand pounds for
the King, ten thousand pounds for his brother the Duke of York, five
thousand pounds for his brother the Duke of Gloucester. Prayers for
these gracious Stuarts were put up in all the churches; commissioners
were sent to Holland (which suddenly found out that Charles was a great
man, and that it loved him) to invite the King home; Monk and the
Kentish grandees went to Dover, to kneel down before him as he landed.
He kissed and embraced Monk, made him ride in the coach with himself
and his brothers, came on to London amid wonderful shoutings, and
passed through the army at Blackheath on the twenty-ninth of May (his
birthday), in the year one thousand six hundred and sixty. Greeted by
splendid dinners under tents, by flags and tapestry streaming from all
the houses, by delighted crowds in all the streets, by troops of
noblemen and gentlemen in rich dresses, by City companies, train-bands,
drummers, trumpeters, the great Lord Mayor, and the majestic Aldermen,
the King went on to Whitehall. On entering it, he commemorated his
Restoration with the joke that it really would seem to have been his
own fault that he had not come long ago, since everybody told him that
he had always wished for him with all his heart.', 3489)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('194fac4d-91a3-4541-a0a1-a487ad99e1ff', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 61, 'Chapter XXXV (1/3)', 'ENGLAND UNDER CHARLES THE SECOND, CALLED THE MERRY MONARCH

There never were such profligate times in England as under Charles the
Second. Whenever you see his portrait, with his swarthy, ill-looking
face and great nose, you may fancy him in his Court at Whitehall,
surrounded by some of the very worst vagabonds in the kingdom (though
they were lords and ladies), drinking, gambling, indulging in vicious
conversation, and committing every kind of profligate excess. It has
been a fashion to call Charles the Second ‘The Merry Monarch.’ Let me
try to give you a general idea of some of the merry things that were
done, in the merry days when this merry gentleman sat upon his merry
throne, in merry England.

The first merry proceeding was—of course—to declare that he was one of
the greatest, the wisest, and the noblest kings that ever shone, like
the blessed sun itself, on this benighted earth. The next merry and
pleasant piece of business was, for the Parliament, in the humblest
manner, to give him one million two hundred thousand pounds a year, and
to settle upon him for life that old disputed tonnage and poundage
which had been so bravely fought for. Then, General Monk being made
Earl of Albemarle, and a few other Royalists similarly rewarded, the
law went to work to see what was to be done to those persons (they were
called Regicides) who had been concerned in making a martyr of the late
King. Ten of these were merrily executed; that is to say, six of the
judges, one of the council, Colonel Hacker and another officer who had
commanded the Guards, and Hugh Peters, a preacher who had preached
against the martyr with all his heart. These executions were so
extremely merry, that every horrible circumstance which Cromwell had
abandoned was revived with appalling cruelty. The hearts of the
sufferers were torn out of their living bodies; their bowels were
burned before their faces; the executioner cut jokes to the next
victim, as he rubbed his filthy hands together, that were reeking with
the blood of the last; and the heads of the dead were drawn on sledges
with the living to the place of suffering. Still, even so merry a
monarch could not force one of these dying men to say that he was sorry
for what he had done. Nay, the most memorable thing said among them
was, that if the thing were to do again they would do it.

Sir Harry Vane, who had furnished the evidence against Strafford, and
was one of the most staunch of the Republicans, was also tried, found
guilty, and ordered for execution. When he came upon the scaffold on
Tower Hill, after conducting his own defence with great power, his
notes of what he had meant to say to the people were torn away from
him, and the drums and trumpets were ordered to sound lustily and drown
his voice; for, the people had been so much impressed by what the
Regicides had calmly said with their last breath, that it was the
custom now, to have the drums and trumpets always under the scaffold,
ready to strike up. Vane said no more than this: ‘It is a bad cause
which cannot bear the words of a dying man:’ and bravely died.

These merry scenes were succeeded by another, perhaps even merrier. On
the anniversary of the late King’s death, the bodies of Oliver
Cromwell, Ireton, and Bradshaw, were torn out of their graves in
Westminster Abbey, dragged to Tyburn, hanged there on a gallows all day
long, and then beheaded. Imagine the head of Oliver Cromwell set upon a
pole to be stared at by a brutal crowd, not one of whom would have
dared to look the living Oliver in the face for half a moment! Think,
after you have read this reign, what England was under Oliver Cromwell
who was torn out of his grave, and what it was under this merry monarch
who sold it, like a merry Judas, over and over again.

Of course, the remains of Oliver’s wife and daughter were not to be
spared either, though they had been most excellent women. The base
clergy of that time gave up their bodies, which had been buried in the
Abbey, and—to the eternal disgrace of England—they were thrown into a
pit, together with the mouldering bones of Pym and of the brave and
bold old Admiral Blake.

The clergy acted this disgraceful part because they hoped to get the
nonconformists, or dissenters, thoroughly put down in this reign, and
to have but one prayer-book and one service for all kinds of people, no
matter what their private opinions were. This was pretty well, I think,
for a Protestant Church, which had displaced the Romish Church because
people had a right to their own opinions in religious matters. However,
they carried it with a high hand, and a prayer-book was agreed upon, in
which the extremest opinions of Archbishop Laud were not forgotten. An
Act was passed, too, preventing any dissenter from holding any office
under any corporation. So, the regular clergy in their triumph were
soon as merry as the King. The army being by this time disbanded, and
the King crowned, everything was to go on easily for evermore.

I must say a word here about the King’s family. He had not been long
upon the throne when his brother the Duke of Gloucester, and his sister
the Princess of Orange, died within a few months of each other, of
small-pox. His remaining sister, the Princess Henrietta, married the
Duke of Orleans, the brother of Louis the Fourteenth, King of France.
His brother James, Duke of York, was made High Admiral, and by-and-by
became a Catholic. He was a gloomy, sullen, bilious sort of man, with a
remarkable partiality for the ugliest women in the country. He married,
under very discreditable circumstances, Anne Hyde, the daughter of Lord
Clarendon, then the King’s principal Minister—not at all a delicate
minister either, but doing much of the dirty work of a very dirty
palace. It became important now that the King himself should be
married; and divers foreign Monarchs, not very particular about the
character of their son-in-law, proposed their daughters to him. The
King of Portugal offered his daughter, Catherine of Braganza, and fifty
thousand pounds: in addition to which, the French King, who was
favourable to that match, offered a loan of another fifty thousand. The
King of Spain, on the other hand, offered any one out of a dozen of
Princesses, and other hopes of gain. But the ready money carried the
day, and Catherine came over in state to her merry marriage.

The whole Court was a great flaunting crowd of debauched men and
shameless women; and Catherine’s merry husband insulted and outraged
her in every possible way, until she consented to receive those
worthless creatures as her very good friends, and to degrade herself by
their companionship. A Mrs. Palmer, whom the King made Lady
Castlemaine, and afterwards Duchess of Cleveland, was one of the most
powerful of the bad women about the Court, and had great influence with
the King nearly all through his reign. Another merry lady named Moll
Davies, a dancer at the theatre, was afterwards her rival. So was Nell
Gwyn, first an orange girl and then an actress, who really had good in
her, and of whom one of the worst things I know is, that actually she
does seem to have been fond of the King. The first Duke of St. Albans
was this orange girl’s child. In like manner the son of a merry
waiting-lady, whom the King created Duchess Of Portsmouth, became the
Duke of Richmond. Upon the whole it is not so bad a thing to be a
commoner.

The Merry Monarch was so exceedingly merry among these merry ladies,
and some equally merry (and equally infamous) lords and gentlemen, that
he soon got through his hundred thousand pounds, and then, by way of
raising a little pocket-money, made a merry bargain. He sold Dunkirk to
the French King for five millions of livres. When I think of the
dignity to which Oliver Cromwell raised England in the eyes of foreign
powers, and when I think of the manner in which he gained for England
this very Dunkirk, I am much inclined to consider that if the Merry
Monarch had been made to follow his father for this action, he would
have received his just deserts.

Though he was like his father in none of that father’s greater
qualities, he was like him in being worthy of no trust. When he sent
that letter to the Parliament, from Breda, he did expressly promise
that all sincere religious opinions should be respected. Yet he was no
sooner firm in his power than he consented to one of the worst Acts of
Parliament ever passed. Under this law, every minister who should not
give his solemn assent to the Prayer-Book by a certain day, was
declared to be a minister no longer, and to be deprived of his church.
The consequence of this was that some two thousand honest men were
taken from their congregations, and reduced to dire poverty and
distress. It was followed by another outrageous law, called the
Conventicle Act, by which any person above the age of sixteen who was
present at any religious service not according to the Prayer-Book, was
to be imprisoned three months for the first offence, six for the
second, and to be transported for the third. This Act alone filled the
prisons, which were then most dreadful dungeons, to overflowing.

The Covenanters in Scotland had already fared no better. A base
Parliament, usually known as the Drunken Parliament, in consequence of
its principal members being seldom sober, had been got together to make
laws against the Covenanters, and to force all men to be of one mind in
religious matters. The Marquis of Argyle, relying on the King’s honour,
had given himself up to him; but, he was wealthy, and his enemies
wanted his wealth. He was tried for treason, on the evidence of some
private letters in which he had expressed opinions—as well he
might—more favourable to the government of the late Lord Protector than
of the present merry and religious King. He was executed, as were two
men of mark among the Covenanters; and Sharp, a traitor who had once
been the friend of the Presbyterians and betrayed them, was made
Archbishop of St. Andrew’s, to teach the Scotch how to like bishops.

Things being in this merry state at home, the Merry Monarch undertook a
war with the Dutch; principally because they interfered with an African
company, established with the two objects of buying gold-dust and
slaves, of which the Duke of York was a leading member. After some
preliminary hostilities, the said Duke sailed to the coast of Holland
with a fleet of ninety-eight vessels of war, and four fire-ships. This
engaged with the Dutch fleet, of no fewer than one hundred and thirteen
ships. In the great battle between the two forces, the Dutch lost
eighteen ships, four admirals, and seven thousand men. But, the English
on shore were in no mood of exultation when they heard the news.

For, this was the year and the time of the Great Plague in London.
During the winter of one thousand six hundred and sixty-four it had
been whispered about, that some few people had died here and there of
the disease called the Plague, in some of the unwholesome suburbs
around London. News was not published at that time as it is now, and
some people believed these rumours, and some disbelieved them, and they
were soon forgotten. But, in the month of May, one thousand six hundred
and sixty-five, it began to be said all over the town that the disease
had burst out with great violence in St. Giles’s, and that the people
were dying in great numbers. This soon turned out to be awfully true.
The roads out of London were choked up by people endeavouring to escape
from the infected city, and large sums were paid for any kind of
conveyance. The disease soon spread so fast, that it was necessary to
shut up the houses in which sick people were, and to cut them off from
communication with the living. Every one of these houses was marked on
the outside of the door with a red cross, and the words, Lord, have
mercy upon us! The streets were all deserted, grass grew in the public
ways, and there was a dreadful silence in the air. When night came on,
dismal rumblings used to be heard, and these were the wheels of the
death-carts, attended by men with veiled faces and holding cloths to
their mouths, who rang doleful bells and cried in a loud and solemn
voice, ‘Bring out your dead!’ The corpses put into these carts were
buried by torchlight in great pits; no service being performed over
them; all men being afraid to stay for a moment on the brink of the
ghastly graves. In the general fear, children ran away from their
parents, and parents from their children. Some who were taken ill, died
alone, and without any help. Some were stabbed or strangled by hired
nurses who robbed them of all their money, and stole the very beds on
which they lay. Some went mad, dropped from the windows, ran through
the streets, and in their pain and frenzy flung themselves into the
river.

These were not all the horrors of the time. The wicked and dissolute,
in wild desperation, sat in the taverns singing roaring songs, and were
stricken as they drank, and went out and died. The fearful and
superstitious persuaded themselves that they saw supernatural
sights—burning swords in the sky, gigantic arms and darts. Others
pretended that at nights vast crowds of ghosts walked round and round
the dismal pits. One madman, naked, and carrying a brazier full of
burning coals upon his head, stalked through the streets, crying out
that he was a Prophet, commissioned to denounce the vengeance of the
Lord on wicked London. Another always went to and fro, exclaiming, ‘Yet
forty days, and London shall be destroyed!’ A third awoke the echoes in
the dismal streets, by night and by day, and made the blood of the sick
run cold, by calling out incessantly, in a deep hoarse voice, ‘O, the
great and dreadful God!’

Through the months of July and August and September, the Great Plague
raged more and more. Great fires were lighted in the streets, in the
hope of stopping the infection; but there was a plague of rain too, and
it beat the fires out. At last, the winds which usually arise at that
time of the year which is called the equinox, when day and night are of
equal length all over the world, began to blow, and to purify the
wretched town. The deaths began to decrease, the red crosses slowly to
disappear, the fugitives to return, the shops to open, pale frightened
faces to be seen in the streets. The Plague had been in every part of
England, but in close and unwholesome London it had killed one hundred
thousand people.

All this time, the Merry Monarch was as merry as ever, and as worthless
as ever. All this time, the debauched lords and gentlemen and the
shameless ladies danced and gamed and drank, and loved and hated one
another, according to their merry ways.

So little humanity did the government learn from the late affliction,
that one of the first things the Parliament did when it met at Oxford
(being as yet afraid to come to London), was to make a law, called the
Five Mile Act, expressly directed against those poor ministers who, in
the time of the Plague, had manfully come back to comfort the unhappy
people. This infamous law, by forbidding them to teach in any school,
or to come within five miles of any city, town, or village, doomed them
to starvation and death.

The fleet had been at sea, and healthy. The King of France was now in
alliance with the Dutch, though his navy was chiefly employed in
looking on while the English and Dutch fought. The Dutch gained one
victory; and the English gained another and a greater; and Prince
Rupert, one of the English admirals, was out in the Channel one windy
night, looking for the French Admiral, with the intention of giving him
something more to do than he had had yet, when the gale increased to a
storm, and blew him into Saint Helen’s. That night was the third of
September, one thousand six hundred and sixty-six, and that wind fanned
the Great Fire of London.', 2822)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('ed423018-983b-440f-abf9-4bf3c2390997', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 62, 'Chapter XXXV (2/3)', 'It broke out at a baker’s shop near London Bridge, on the spot on which
the Monument now stands as a remembrance of those raging flames. It
spread and spread, and burned and burned, for three days. The nights
were lighter than the days; in the daytime there was an immense cloud
of smoke, and in the night-time there was a great tower of fire
mounting up into the sky, which lighted the whole country landscape for
ten miles round. Showers of hot ashes rose into the air and fell on
distant places; flying sparks carried the conflagration to great
distances, and kindled it in twenty new spots at a time; church
steeples fell down with tremendous crashes; houses crumbled into
cinders by the hundred and the thousand. The summer had been intensely
hot and dry, the streets were very narrow, and the houses mostly built
of wood and plaster. Nothing could stop the tremendous fire, but the
want of more houses to burn; nor did it stop until the whole way from
the Tower to Temple Bar was a desert, composed of the ashes of thirteen
thousand houses and eighty-nine churches.

This was a terrible visitation at the time, and occasioned great loss
and suffering to the two hundred thousand burnt-out people, who were
obliged to lie in the fields under the open night sky, or in
hastily-made huts of mud and straw, while the lanes and roads were
rendered impassable by carts which had broken down as they tried to
save their goods. But the Fire was a great blessing to the City
afterwards, for it arose from its ruins very much improved—built more
regularly, more widely, more cleanly and carefully, and therefore much
more healthily. It might be far more healthy than it is, but there are
some people in it still—even now, at this time, nearly two hundred
years later—so selfish, so pig-headed, and so ignorant, that I doubt if
even another Great Fire would warm them up to do their duty.

The Catholics were accused of having wilfully set London in flames; one
poor Frenchman, who had been mad for years, even accused himself of
having with his own hand fired the first house. There is no reasonable
doubt, however, that the fire was accidental. An inscription on the
Monument long attributed it to the Catholics; but it is removed now,
and was always a malicious and stupid untruth.

SECOND PART

That the Merry Monarch might be very merry indeed, in the merry times
when his people were suffering under pestilence and fire, he drank and
gambled and flung away among his favourites the money which the
Parliament had voted for the war. The consequence of this was that the
stout-hearted English sailors were merrily starving of want, and dying
in the streets; while the Dutch, under their admirals De Witt and De
Ruyter, came into the River Thames, and up the River Medway as far as
Upnor, burned the guard-ships, silenced the weak batteries, and did
what they would to the English coast for six whole weeks. Most of the
English ships that could have prevented them had neither powder nor
shot on board; in this merry reign, public officers made themselves as
merry as the King did with the public money; and when it was entrusted
to them to spend in national defences or preparations, they put it into
their own pockets with the merriest grace in the world.

Lord Clarendon had, by this time, run as long a course as is usually
allotted to the unscrupulous ministers of bad kings. He was impeached
by his political opponents, but unsuccessfully. The King then commanded
him to withdraw from England and retire to France, which he did, after
defending himself in writing. He was no great loss at home, and died
abroad some seven years afterwards.

There then came into power a ministry called the Cabal Ministry,
because it was composed of Lord Clifford, the Earl of Arlington, the
Duke of Buckingham (a great rascal, and the King’s most powerful
favourite), Lord Ashley, and the Duke of Lauderdale, c. a. b. a. l. As
the French were making conquests in Flanders, the first Cabal
proceeding was to make a treaty with the Dutch, for uniting with Spain
to oppose the French. It was no sooner made than the Merry Monarch, who
always wanted to get money without being accountable to a Parliament
for his expenditure, apologised to the King of France for having had
anything to do with it, and concluded a secret treaty with him, making
himself his infamous pensioner to the amount of two millions of livres
down, and three millions more a year; and engaging to desert that very
Spain, to make war against those very Dutch, and to declare himself a
Catholic when a convenient time should arrive. This religious king had
lately been crying to his Catholic brother on the subject of his strong
desire to be a Catholic; and now he merrily concluded this treasonable
conspiracy against the country he governed, by undertaking to become
one as soon as he safely could. For all of which, though he had had ten
merry heads instead of one, he richly deserved to lose them by the
headsman’s axe.

As his one merry head might have been far from safe, if these things
had been known, they were kept very quiet, and war was declared by
France and England against the Dutch. But, a very uncommon man,
afterwards most important to English history and to the religion and
liberty of this land, arose among them, and for many long years
defeated the whole projects of France. This was William of Nassau,
Prince of Orange, son of the last Prince of Orange of the same name,
who married the daughter of Charles the First of England. He was a
young man at this time, only just of age; but he was brave, cool,
intrepid, and wise. His father had been so detested that, upon his
death, the Dutch had abolished the authority to which this son would
have otherwise succeeded (Stadtholder it was called), and placed the
chief power in the hands of John de Witt, who educated this young
prince. Now, the Prince became very popular, and John de Witt’s brother
Cornelius was sentenced to banishment on a false accusation of
conspiring to kill him. John went to the prison where he was, to take
him away to exile, in his coach; and a great mob who collected on the
occasion, then and there cruelly murdered both the brothers. This left
the government in the hands of the Prince, who was really the choice of
the nation; and from this time he exercised it with the greatest
vigour, against the whole power of France, under its famous generals
Condé and Turenne, and in support of the Protestant religion. It was
full seven years before this war ended in a treaty of peace made at
Nimeguen, and its details would occupy a very considerable space. It is
enough to say that William of Orange established a famous character
with the whole world; and that the Merry Monarch, adding to and
improving on his former baseness, bound himself to do everything the
King of France liked, and nothing the King of France did not like, for
a pension of one hundred thousand pounds a year, which was afterwards
doubled. Besides this, the King of France, by means of his corrupt
ambassador—who wrote accounts of his proceedings in England, which are
not always to be believed, I think—bought our English members of
Parliament, as he wanted them. So, in point of fact, during a
considerable portion of this merry reign, the King of France was the
real King of this country.

But there was a better time to come, and it was to come (though his
royal uncle little thought so) through that very William, Prince of
Orange. He came over to England, saw Mary, the elder daughter of the
Duke of York, and married her. We shall see by-and-by what came of that
marriage, and why it is never to be forgotten.

This daughter was a Protestant, but her mother died a Catholic. She and
her sister Anne, also a Protestant, were the only survivors of eight
children. Anne afterwards married George, Prince of Denmark, brother to
the King of that country.

Lest you should do the Merry Monarch the injustice of supposing that he
was even good humoured (except when he had everything his own way), or
that he was high spirited and honourable, I will mention here what was
done to a member of the House of Commons, Sir John Coventry. He made a
remark in a debate about taxing the theatres, which gave the King
offence. The King agreed with his illegitimate son, who had been born
abroad, and whom he had made Duke of Monmouth, to take the following
merry vengeance. To waylay him at night, fifteen armed men to one, and
to slit his nose with a penknife. Like master, like man. The King’s
favourite, the Duke of Buckingham, was strongly suspected of setting on
an assassin to murder the Duke of Ormond as he was returning home from
a dinner; and that Duke’s spirited son, Lord Ossory, was so persuaded
of his guilt, that he said to him at Court, even as he stood beside the
King, ‘My lord, I know very well that you are at the bottom of this
late attempt upon my father. But I give you warning, if he ever come to
a violent end, his blood shall be upon you, and wherever I meet you I
will pistol you! I will do so, though I find you standing behind the
King’s chair; and I tell you this in his Majesty’s presence, that you
may be quite sure of my doing what I threaten.’ Those were merry times
indeed.

There was a fellow named Blood, who was seized for making, with two
companions, an audacious attempt to steal the crown, the globe, and
sceptre, from the place where the jewels were kept in the Tower. This
robber, who was a swaggering ruffian, being taken, declared that he was
the man who had endeavoured to kill the Duke of Ormond, and that he had
meant to kill the King too, but was overawed by the majesty of his
appearance, when he might otherwise have done it, as he was bathing at
Battersea. The King being but an ill-looking fellow, I don’t believe a
word of this. Whether he was flattered, or whether he knew that
Buckingham had really set Blood on to murder the Duke, is uncertain.
But it is quite certain that he pardoned this thief, gave him an estate
of five hundred a year in Ireland (which had had the honour of giving
him birth), and presented him at Court to the debauched lords and the
shameless ladies, who made a great deal of him—as I have no doubt they
would have made of the Devil himself, if the King had introduced him.

Infamously pensioned as he was, the King still wanted money, and
consequently was obliged to call Parliaments. In these, the great
object of the Protestants was to thwart the Catholic Duke of York, who
married a second time; his new wife being a young lady only fifteen
years old, the Catholic sister of the Duke of Modena. In this they were
seconded by the Protestant Dissenters, though to their own
disadvantage: since, to exclude Catholics from power, they were even
willing to exclude themselves. The King’s object was to pretend to be a
Protestant, while he was really a Catholic; to swear to the bishops
that he was devoutly attached to the English Church, while he knew he
had bargained it away to the King of France; and by cheating and
deceiving them, and all who were attached to royalty, to become
despotic and be powerful enough to confess what a rascal he was.
Meantime, the King of France, knowing his merry pensioner well,
intrigued with the King’s opponents in Parliament, as well as with the
King and his friends.

The fears that the country had of the Catholic religion being restored,
if the Duke of York should come to the throne, and the low cunning of
the King in pretending to share their alarms, led to some very terrible
results. A certain Dr. Tonge, a dull clergyman in the City, fell into
the hands of a certain Titus Oates, a most infamous character, who
pretended to have acquired among the Jesuits abroad a knowledge of a
great plot for the murder of the King, and the re-establishment of the
Catholic religion. Titus Oates, being produced by this unlucky Dr.
Tonge and solemnly examined before the council, contradicted himself in
a thousand ways, told the most ridiculous and improbable stories, and
implicated Coleman, the Secretary of the Duchess of York. Now, although
what he charged against Coleman was not true, and although you and I
know very well that the real dangerous Catholic plot was that one with
the King of France of which the Merry Monarch was himself the head,
there happened to be found among Coleman’s papers, some letters, in
which he did praise the days of Bloody Queen Mary, and abuse the
Protestant religion. This was great good fortune for Titus, as it
seemed to confirm him; but better still was in store. Sir Edmundbury
Godfrey, the magistrate who had first examined him, being unexpectedly
found dead near Primrose Hill, was confidently believed to have been
killed by the Catholics. I think there is no doubt that he had been
melancholy mad, and that he killed himself; but he had a great
Protestant funeral, and Titus was called the Saver of the Nation, and
received a pension of twelve hundred pounds a year.

As soon as Oates’s wickedness had met with this success, up started
another villain, named William Bedloe, who, attracted by a reward of
five hundred pounds offered for the apprehension of the murderers of
Godfrey, came forward and charged two Jesuits and some other persons
with having committed it at the Queen’s desire. Oates, going into
partnership with this new informer, had the audacity to accuse the poor
Queen herself of high treason. Then appeared a third informer, as bad
as either of the two, and accused a Catholic banker named Stayley of
having said that the King was the greatest rogue in the world (which
would not have been far from the truth), and that he would kill him
with his own hand. This banker, being at once tried and executed,
Coleman and two others were tried and executed. Then, a miserable
wretch named Prance, a Catholic silversmith, being accused by Bedloe,
was tortured into confessing that he had taken part in Godfrey’s
murder, and into accusing three other men of having committed it. Then,
five Jesuits were accused by Oates, Bedloe, and Prance together, and
were all found guilty, and executed on the same kind of contradictory
and absurd evidence. The Queen’s physician and three monks were next
put on their trial; but Oates and Bedloe had for the time gone far
enough and these four were acquitted. The public mind, however, was so
full of a Catholic plot, and so strong against the Duke of York, that
James consented to obey a written order from his brother, and to go
with his family to Brussels, provided that his rights should never be
sacrificed in his absence to the Duke of Monmouth. The House of
Commons, not satisfied with this as the King hoped, passed a bill to
exclude the Duke from ever succeeding to the throne. In return, the
King dissolved the Parliament. He had deserted his old favourite, the
Duke of Buckingham, who was now in the opposition.', 2649)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('db168461-a688-4cd1-a53b-ebe73ed15031', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 63, 'Chapter XXXV (3/3)', 'To give any sufficient idea of the miseries of Scotland in this merry
reign, would occupy a hundred pages. Because the people would not have
bishops, and were resolved to stand by their solemn League and
Covenant, such cruelties were inflicted upon them as make the blood run
cold. Ferocious dragoons galloped through the country to punish the
peasants for deserting the churches; sons were hanged up at their
fathers’ doors for refusing to disclose where their fathers were
concealed; wives were tortured to death for not betraying their
husbands; people were taken out of their fields and gardens, and shot
on the public roads without trial; lighted matches were tied to the
fingers of prisoners, and a most horrible torment called the Boot was
invented, and constantly applied, which ground and mashed the victims’
legs with iron wedges. Witnesses were tortured as well as prisoners.
All the prisons were full; all the gibbets were heavy with bodies;
murder and plunder devastated the whole country. In spite of all, the
Covenanters were by no means to be dragged into the churches, and
persisted in worshipping God as they thought right. A body of ferocious
Highlanders, turned upon them from the mountains of their own country,
had no greater effect than the English dragoons under Grahame of
Claverhouse, the most cruel and rapacious of all their enemies, whose
name will ever be cursed through the length and breadth of Scotland.
Archbishop Sharp had ever aided and abetted all these outrages. But he
fell at last; for, when the injuries of the Scottish people were at
their height, he was seen, in his coach-and-six coming across a moor,
by a body of men, headed by one John Balfour, who were waiting for
another of their oppressors. Upon this they cried out that Heaven had
delivered him into their hands, and killed him with many wounds. If
ever a man deserved such a death, I think Archbishop Sharp did.

It made a great noise directly, and the Merry Monarch—strongly
suspected of having goaded the Scottish people on, that he might have
an excuse for a greater army than the Parliament were willing to give
him—sent down his son, the Duke of Monmouth, as commander-in-chief,
with instructions to attack the Scottish rebels, or Whigs as they were
called, whenever he came up with them. Marching with ten thousand men
from Edinburgh, he found them, in number four or five thousand, drawn
up at Bothwell Bridge, by the Clyde. They were soon dispersed; and
Monmouth showed a more humane character towards them, than he had shown
towards that Member of Parliament whose nose he had caused to be slit
with a penknife. But the Duke of Lauderdale was their bitter foe, and
sent Claverhouse to finish them.

As the Duke of York became more and more unpopular, the Duke of
Monmouth became more and more popular. It would have been decent in the
latter not to have voted in favour of the renewed bill for the
exclusion of James from the throne; but he did so, much to the King’s
amusement, who used to sit in the House of Lords by the fire, hearing
the debates, which he said were as good as a play. The House of Commons
passed the bill by a large majority, and it was carried up to the House
of Lords by Lord Russell, one of the best of the leaders on the
Protestant side. It was rejected there, chiefly because the bishops
helped the King to get rid of it; and the fear of Catholic plots
revived again. There had been another got up, by a fellow out of
Newgate, named Dangerfield, which is more famous than it deserves to
be, under the name of the Meal-Tub Plot. This jail-bird having been got
out of Newgate by a Mrs. Cellier, a Catholic nurse, had turned Catholic
himself, and pretended that he knew of a plot among the Presbyterians
against the King’s life. This was very pleasant to the Duke of York,
who hated the Presbyterians, who returned the compliment. He gave
Dangerfield twenty guineas, and sent him to the King his brother. But
Dangerfield, breaking down altogether in his charge, and being sent
back to Newgate, almost astonished the Duke out of his five senses by
suddenly swearing that the Catholic nurse had put that false design
into his head, and that what he really knew about, was, a Catholic plot
against the King; the evidence of which would be found in some papers,
concealed in a meal-tub in Mrs. Cellier’s house. There they were, of
course—for he had put them there himself—and so the tub gave the name
to the plot. But, the nurse was acquitted on her trial, and it came to
nothing.

Lord Ashley, of the Cabal, was now Lord Shaftesbury, and was strong
against the succession of the Duke of York. The House of Commons,
aggravated to the utmost extent, as we may well suppose, by suspicions
of the King’s conspiracy with the King of France, made a desperate
point of the exclusion, still, and were bitter against the Catholics
generally. So unjustly bitter were they, I grieve to say, that they
impeached the venerable Lord Stafford, a Catholic nobleman seventy
years old, of a design to kill the King. The witnesses were that
atrocious Oates and two other birds of the same feather. He was found
guilty, on evidence quite as foolish as it was false, and was beheaded
on Tower Hill. The people were opposed to him when he first appeared
upon the scaffold; but, when he had addressed them and shown them how
innocent he was and how wickedly he was sent there, their better nature
was aroused, and they said, ‘We believe you, my Lord. God bless you, my
Lord!’

The House of Commons refused to let the King have any money until he
should consent to the Exclusion Bill; but, as he could get it and did
get it from his master the King of France, he could afford to hold them
very cheap. He called a Parliament at Oxford, to which he went down
with a great show of being armed and protected as if he were in danger
of his life, and to which the opposition members also went armed and
protected, alleging that they were in fear of the Papists, who were
numerous among the King’s guards. However, they went on with the
Exclusion Bill, and were so earnest upon it that they would have
carried it again, if the King had not popped his crown and state robes
into a sedan-chair, bundled himself into it along with them, hurried
down to the chamber where the House of Lords met, and dissolved the
Parliament. After which he scampered home, and the members of
Parliament scampered home too, as fast as their legs could carry them.

The Duke of York, then residing in Scotland, had, under the law which
excluded Catholics from public trust, no right whatever to public
employment. Nevertheless, he was openly employed as the King’s
representative in Scotland, and there gratified his sullen and cruel
nature to his heart’s content by directing the dreadful cruelties
against the Covenanters. There were two ministers named Cargill and
Cameron who had escaped from the battle of Bothwell Bridge, and who
returned to Scotland, and raised the miserable but still brave and
unsubdued Covenanters afresh, under the name of Cameronians. As Cameron
publicly posted a declaration that the King was a forsworn tyrant, no
mercy was shown to his unhappy followers after he was slain in battle.
The Duke of York, who was particularly fond of the Boot and derived
great pleasure from having it applied, offered their lives to some of
these people, if they would cry on the scaffold ‘God save the King!’
But their relations, friends, and countrymen, had been so barbarously
tortured and murdered in this merry reign, that they preferred to die,
and did die. The Duke then obtained his merry brother’s permission to
hold a Parliament in Scotland, which first, with most shameless deceit,
confirmed the laws for securing the Protestant religion against Popery,
and then declared that nothing must or should prevent the succession of
the Popish Duke. After this double-faced beginning, it established an
oath which no human being could understand, but which everybody was to
take, as a proof that his religion was the lawful religion. The Earl of
Argyle, taking it with the explanation that he did not consider it to
prevent him from favouring any alteration either in the Church or State
which was not inconsistent with the Protestant religion or with his
loyalty, was tried for high treason before a Scottish jury of which the
Marquis of Montrose was foreman, and was found guilty. He escaped the
scaffold, for that time, by getting away, in the disguise of a page, in
the train of his daughter, Lady Sophia Lindsay. It was absolutely
proposed, by certain members of the Scottish Council, that this lady
should be whipped through the streets of Edinburgh. But this was too
much even for the Duke, who had the manliness then (he had very little
at most times) to remark that Englishmen were not accustomed to treat
ladies in that manner. In those merry times nothing could equal the
brutal servility of the Scottish fawners, but the conduct of similar
degraded beings in England.

After the settlement of these little affairs, the Duke returned to
England, and soon resumed his place at the Council, and his office of
High Admiral—all this by his brother’s favour, and in open defiance of
the law. It would have been no loss to the country, if he had been
drowned when his ship, in going to Scotland to fetch his family, struck
on a sand-bank, and was lost with two hundred souls on board. But he
escaped in a boat with some friends; and the sailors were so brave and
unselfish, that, when they saw him rowing away, they gave three cheers,
while they themselves were going down for ever.

The Merry Monarch, having got rid of his Parliament, went to work to
make himself despotic, with all speed. Having had the villainy to order
the execution of Oliver Plunket, Bishop of Armagh, falsely accused of a
plot to establish Popery in that country by means of a French army—the
very thing this royal traitor was himself trying to do at home—and
having tried to ruin Lord Shaftesbury, and failed—he turned his hand to
controlling the corporations all over the country; because, if he could
only do that, he could get what juries he chose, to bring in perjured
verdicts, and could get what members he chose returned to Parliament.
These merry times produced, and made Chief Justice of the Court of
King’s Bench, a drunken ruffian of the name of Jeffreys; a red-faced,
swollen, bloated, horrible creature, with a bullying, roaring voice,
and a more savage nature perhaps than was ever lodged in any human
breast. This monster was the Merry Monarch’s especial favourite, and he
testified his admiration of him by giving him a ring from his own
finger, which the people used to call Judge Jeffreys’s Bloodstone. Him
the King employed to go about and bully the corporations, beginning
with London; or, as Jeffreys himself elegantly called it, ‘to give them
a lick with the rough side of his tongue.’ And he did it so thoroughly,
that they soon became the basest and most sycophantic bodies in the
kingdom—except the University of Oxford, which, in that respect, was
quite pre-eminent and unapproachable.

Lord Shaftesbury (who died soon after the King’s failure against him),
Lord William Russell, the Duke of Monmouth, Lord Howard, Lord Jersey,
Algernon Sidney, John Hampden (grandson of the great Hampden), and some
others, used to hold a council together after the dissolution of the
Parliament, arranging what it might be necessary to do, if the King
carried his Popish plot to the utmost height. Lord Shaftesbury having
been much the most violent of this party, brought two violent men into
their secrets—Rumsey, who had been a soldier in the Republican army;
and West, a lawyer. These two knew an old officer of Cromwell’s, called
Rumbold, who had married a maltster’s widow, and so had come into
possession of a solitary dwelling called the Rye House, near Hoddesdon,
in Hertfordshire. Rumbold said to them what a capital place this house
of his would be from which to shoot at the King, who often passed there
going to and fro from Newmarket. They liked the idea, and entertained
it. But, one of their body gave information; and they, together with
Shepherd a wine merchant, Lord Russell, Algernon Sidney, Lord Essex,
Lord Howard, and Hampden, were all arrested.

Lord Russell might have easily escaped, but scorned to do so, being
innocent of any wrong; Lord Essex might have easily escaped, but
scorned to do so, lest his flight should prejudice Lord Russell. But it
weighed upon his mind that he had brought into their council, Lord
Howard—who now turned a miserable traitor—against a great dislike Lord
Russell had always had of him. He could not bear the reflection, and
destroyed himself before Lord Russell was brought to trial at the Old
Bailey.

He knew very well that he had nothing to hope, having always been
manful in the Protestant cause against the two false brothers, the one
on the throne, and the other standing next to it. He had a wife, one of
the noblest and best of women, who acted as his secretary on his trial,
who comforted him in his prison, who supped with him on the night
before he died, and whose love and virtue and devotion have made her
name imperishable. Of course, he was found guilty, and was sentenced to
be beheaded in Lincoln’s Inn-fields, not many yards from his own house.
When he had parted from his children on the evening before his death,
his wife still stayed with him until ten o’clock at night; and when
their final separation in this world was over, and he had kissed her
many times, he still sat for a long while in his prison, talking of her
goodness. Hearing the rain fall fast at that time, he calmly said,
‘Such a rain to-morrow will spoil a great show, which is a dull thing
on a rainy day.’ At midnight he went to bed, and slept till four; even
when his servant called him, he fell asleep again while his clothes
were being made ready. He rode to the scaffold in his own carriage,
attended by two famous clergymen, Tillotson and Burnet, and sang a
psalm to himself very softly, as he went along. He was as quiet and as
steady as if he had been going out for an ordinary ride. After saying
that he was surprised to see so great a crowd, he laid down his head
upon the block, as if upon the pillow of his bed, and had it struck off
at the second blow. His noble wife was busy for him even then; for that
true-hearted lady printed and widely circulated his last words, of
which he had given her a copy. They made the blood of all the honest
men in England boil.

The University of Oxford distinguished itself on the very same day by
pretending to believe that the accusation against Lord Russell was
true, and by calling the King, in a written paper, the Breath of their
Nostrils and the Anointed of the Lord. This paper the Parliament
afterwards caused to be burned by the common hangman; which I am sorry
for, as I wish it had been framed and glazed and hung up in some public
place, as a monument of baseness for the scorn of mankind.

Next, came the trial of Algernon Sidney, at which Jeffreys presided,
like a great crimson toad, sweltering and swelling with rage. ‘I pray
God, Mr. Sidney,’ said this Chief Justice of a merry reign, after
passing sentence, ‘to work in you a temper fit to go to the other
world, for I see you are not fit for this.’ ‘My lord,’ said the
prisoner, composedly holding out his arm, ‘feel my pulse, and see if I
be disordered. I thank Heaven I never was in better temper than I am
now.’ Algernon Sidney was executed on Tower Hill, on the seventh of
December, one thousand six hundred and eighty-three. He died a hero,
and died, in his own words, ‘For that good old cause in which he had
been engaged from his youth, and for which God had so often and so
wonderfully declared himself.’

The Duke of Monmouth had been making his uncle, the Duke of York, very
jealous, by going about the country in a royal sort of way, playing at
the people’s games, becoming godfather to their children, and even
touching for the King’s evil, or stroking the faces of the sick to cure
them—though, for the matter of that, I should say he did them about as
much good as any crowned king could have done. His father had got him
to write a letter, confessing his having had a part in the conspiracy,
for which Lord Russell had been beheaded; but he was ever a weak man,
and as soon as he had written it, he was ashamed of it and got it back
again. For this, he was banished to the Netherlands; but he soon
returned and had an interview with his father, unknown to his uncle. It
would seem that he was coming into the Merry Monarch’s favour again,
and that the Duke of York was sliding out of it, when Death appeared to
the merry galleries at Whitehall, and astonished the debauched lords
and gentlemen, and the shameless ladies, very considerably.

On Monday, the second of February, one thousand six hundred and
eighty-five, the merry pensioner and servant of the King of France fell
down in a fit of apoplexy. By the Wednesday his case was hopeless, and
on the Thursday he was told so. As he made a difficulty about taking
the sacrament from the Protestant Bishop of Bath, the Duke of York got
all who were present away from the bed, and asked his brother, in a
whisper, if he should send for a Catholic priest? The King replied,
‘For God’s sake, brother, do!’ The Duke smuggled in, up the back
stairs, disguised in a wig and gown, a priest named Huddleston, who had
saved the King’s life after the battle of Worcester: telling him that
this worthy man in the wig had once saved his body, and was now come to
save his soul.

The Merry Monarch lived through that night, and died before noon on the
next day, which was Friday, the sixth. Two of the last things he said
were of a human sort, and your remembrance will give him the full
benefit of them. When the Queen sent to say she was too unwell to
attend him and to ask his pardon, he said, ‘Alas! poor woman, _she_ beg
_my_ pardon! I beg hers with all my heart. Take back that answer to
her.’ And he also said, in reference to Nell Gwyn, ‘Do not let poor
Nelly starve.’

He died in the fifty-fifth year of his age, and the twenty-fifth of his
reign.', 3243)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('cb9579f4-5869-4608-adbc-63c0393d9977', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 64, 'Chapter XXXVI. England Under James the Second (1/2)', 'King James the Second was a man so very disagreeable, that even the
best of historians has favoured his brother Charles, as becoming, by
comparison, quite a pleasant character. The one object of his short
reign was to re-establish the Catholic religion in England; and this he
doggedly pursued with such a stupid obstinacy, that his career very
soon came to a close.

The first thing he did, was, to assure his council that he would make
it his endeavour to preserve the Government, both in Church and State,
as it was by law established; and that he would always take care to
defend and support the Church. Great public acclamations were raised
over this fair speech, and a great deal was said, from the pulpits and
elsewhere, about the word of a King which was never broken, by
credulous people who little supposed that he had formed a secret
council for Catholic affairs, of which a mischievous Jesuit, called
Father Petre, was one of the chief members. With tears of joy in his
eyes, he received, as the beginning of _his_ pension from the King of
France, five hundred thousand livres; yet, with a mixture of meanness
and arrogance that belonged to his contemptible character, he was
always jealous of making some show of being independent of the King of
France, while he pocketed his money. As—notwithstanding his publishing
two papers in favour of Popery (and not likely to do it much service, I
should think) written by the King, his brother, and found in his
strong-box; and his open display of himself attending mass—the
Parliament was very obsequious, and granted him a large sum of money,
he began his reign with a belief that he could do what he pleased, and
with a determination to do it.

Before we proceed to its principal events, let us dispose of Titus
Oates. He was tried for perjury, a fortnight after the coronation, and
besides being very heavily fined, was sentenced to stand twice in the
pillory, to be whipped from Aldgate to Newgate one day, and from
Newgate to Tyburn two days afterwards, and to stand in the pillory five
times a year as long as he lived. This fearful sentence was actually
inflicted on the rascal. Being unable to stand after his first
flogging, he was dragged on a sledge from Newgate to Tyburn, and
flogged as he was drawn along. He was so strong a villain that he did
not die under the torture, but lived to be afterwards pardoned and
rewarded, though not to be ever believed in any more. Dangerfield, the
only other one of that crew left alive, was not so fortunate. He was
almost killed by a whipping from Newgate to Tyburn, and, as if that
were not punishment enough, a ferocious barrister of Gray’s Inn gave
him a poke in the eye with his cane, which caused his death; for which
the ferocious barrister was deservedly tried and executed.

As soon as James was on the throne, Argyle and Monmouth went from
Brussels to Rotterdam, and attended a meeting of Scottish exiles held
there, to concert measures for a rising in England. It was agreed that
Argyle should effect a landing in Scotland, and Monmouth in England;
and that two Englishmen should be sent with Argyle to be in his
confidence, and two Scotchmen with the Duke of Monmouth.

Argyle was the first to act upon this contract. But, two of his men
being taken prisoners at the Orkney Islands, the Government became
aware of his intention, and was able to act against him with such
vigour as to prevent his raising more than two or three thousand
Highlanders, although he sent a fiery cross, by trusty messengers, from
clan to clan and from glen to glen, as the custom then was when those
wild people were to be excited by their chiefs. As he was moving
towards Glasgow with his small force, he was betrayed by some of his
followers, taken, and carried, with his hands tied behind his back, to
his old prison in Edinburgh Castle. James ordered him to be executed,
on his old shamefully unjust sentence, within three days; and he
appears to have been anxious that his legs should have been pounded
with his old favourite the boot. However, the boot was not applied; he
was simply beheaded, and his head was set upon the top of Edinburgh
Jail. One of those Englishmen who had been assigned to him was that old
soldier Rumbold, the master of the Rye House. He was sorely wounded,
and within a week after Argyle had suffered with great courage, was
brought up for trial, lest he should die and disappoint the King. He,
too, was executed, after defending himself with great spirit, and
saying that he did not believe that God had made the greater part of
mankind to carry saddles on their backs and bridles in their mouths,
and to be ridden by a few, booted and spurred for the purpose—in which
I thoroughly agree with Rumbold.

The Duke of Monmouth, partly through being detained and partly through
idling his time away, was five or six weeks behind his friend when he
landed at Lyme, in Dorset: having at his right hand an unlucky nobleman
called Lord Grey of Werk, who of himself would have ruined a far more
promising expedition. He immediately set up his standard in the
market-place, and proclaimed the King a tyrant, and a Popish usurper,
and I know not what else; charging him, not only with what he had done,
which was bad enough, but with what neither he nor anybody else had
done, such as setting fire to London, and poisoning the late King.
Raising some four thousand men by these means, he marched on to
Taunton, where there were many Protestant dissenters who were strongly
opposed to the Catholics. Here, both the rich and poor turned out to
receive him, ladies waved a welcome to him from all the windows as he
passed along the streets, flowers were strewn in his way, and every
compliment and honour that could be devised was showered upon him.
Among the rest, twenty young ladies came forward, in their best
clothes, and in their brightest beauty, and gave him a Bible ornamented
with their own fair hands, together with other presents.

Encouraged by this homage, he proclaimed himself King, and went on to
Bridgewater. But, here the Government troops, under the Earl of
Feversham, were close at hand; and he was so dispirited at finding that
he made but few powerful friends after all, that it was a question
whether he should disband his army and endeavour to escape. It was
resolved, at the instance of that unlucky Lord Grey, to make a night
attack on the King’s army, as it lay encamped on the edge of a morass
called Sedgemoor. The horsemen were commanded by the same unlucky lord,
who was not a brave man. He gave up the battle almost at the first
obstacle—which was a deep drain; and although the poor countrymen, who
had turned out for Monmouth, fought bravely with scythes, poles,
pitchforks, and such poor weapons as they had, they were soon dispersed
by the trained soldiers, and fled in all directions. When the Duke of
Monmouth himself fled, was not known in the confusion; but the unlucky
Lord Grey was taken early next day, and then another of the party was
taken, who confessed that he had parted from the Duke only four hours
before. Strict search being made, he was found disguised as a peasant,
hidden in a ditch under fern and nettles, with a few peas in his pocket
which he had gathered in the fields to eat. The only other articles he
had upon him were a few papers and little books: one of the latter
being a strange jumble, in his own writing, of charms, songs, recipes,
and prayers. He was completely broken. He wrote a miserable letter to
the King, beseeching and entreating to be allowed to see him. When he
was taken to London, and conveyed bound into the King’s presence, he
crawled to him on his knees, and made a most degrading exhibition. As
James never forgave or relented towards anybody, he was not likely to
soften towards the issuer of the Lyme proclamation, so he told the
suppliant to prepare for death.

On the fifteenth of July, one thousand six hundred and eighty-five,
this unfortunate favourite of the people was brought out to die on
Tower Hill. The crowd was immense, and the tops of all the houses were
covered with gazers. He had seen his wife, the daughter of the Duke of
Buccleuch, in the Tower, and had talked much of a lady whom he loved
far better—the Lady Harriet Wentworth—who was one of the last persons
he remembered in this life. Before laying down his head upon the block
he felt the edge of the axe, and told the executioner that he feared it
was not sharp enough, and that the axe was not heavy enough. On the
executioner replying that it was of the proper kind, the Duke said, ‘I
pray you have a care, and do not use me so awkwardly as you used my
Lord Russell.’ The executioner, made nervous by this, and trembling,
struck once and merely gashed him in the neck. Upon this, the Duke of
Monmouth raised his head and looked the man reproachfully in the face.
Then he struck twice, and then thrice, and then threw down the axe, and
cried out in a voice of horror that he could not finish that work. The
sheriffs, however, threatening him with what should be done to himself
if he did not, he took it up again and struck a fourth time and a fifth
time. Then the wretched head at last fell off, and James, Duke of
Monmouth, was dead, in the thirty-sixth year of his age. He was a
showy, graceful man, with many popular qualities, and had found much
favour in the open hearts of the English.

The atrocities, committed by the Government, which followed this
Monmouth rebellion, form the blackest and most lamentable page in
English history. The poor peasants, having been dispersed with great
loss, and their leaders having been taken, one would think that the
implacable King might have been satisfied. But no; he let loose upon
them, among other intolerable monsters, a Colonel Kirk, who had served
against the Moors, and whose soldiers—called by the people Kirk’s
lambs, because they bore a lamb upon their flag, as the emblem of
Christianity—were worthy of their leader. The atrocities committed by
these demons in human shape are far too horrible to be related here. It
is enough to say, that besides most ruthlessly murdering and robbing
them, and ruining them by making them buy their pardons at the price of
all they possessed, it was one of Kirk’s favourite amusements, as he
and his officers sat drinking after dinner, and toasting the King, to
have batches of prisoners hanged outside the windows for the company’s
diversion; and that when their feet quivered in the convulsions of
death, he used to swear that they should have music to their dancing,
and would order the drums to beat and the trumpets to play. The
detestable King informed him, as an acknowledgment of these services,
that he was ‘very well satisfied with his proceedings.’ But the King’s
great delight was in the proceedings of Jeffreys, now a peer, who went
down into the west, with four other judges, to try persons accused of
having had any share in the rebellion. The King pleasantly called this
‘Jeffreys’s campaign.’ The people down in that part of the country
remember it to this day as The Bloody Assize.

It began at Winchester, where a poor deaf old lady, Mrs. Alicia Lisle,
the widow of one of the judges of Charles the First (who had been
murdered abroad by some Royalist assassins), was charged with having
given shelter in her house to two fugitives from Sedgemoor. Three times
the jury refused to find her guilty, until Jeffreys bullied and
frightened them into that false verdict. When he had extorted it from
them, he said, ‘Gentlemen, if I had been one of you, and she had been
my own mother, I would have found her guilty;’—as I dare say he would.
He sentenced her to be burned alive, that very afternoon. The clergy of
the cathedral and some others interfered in her favour, and she was
beheaded within a week. As a high mark of his approbation, the King
made Jeffreys Lord Chancellor; and he then went on to Dorchester, to
Exeter, to Taunton, and to Wells. It is astonishing, when we read of
the enormous injustice and barbarity of this beast, to know that no one
struck him dead on the judgment-seat. It was enough for any man or
woman to be accused by an enemy, before Jeffreys, to be found guilty of
high treason. One man who pleaded not guilty, he ordered to be taken
out of court upon the instant, and hanged; and this so terrified the
prisoners in general that they mostly pleaded guilty at once. At
Dorchester alone, in the course of a few days, Jeffreys hanged eighty
people; besides whipping, transporting, imprisoning, and selling as
slaves, great numbers. He executed, in all, two hundred and fifty, or
three hundred.

These executions took place, among the neighbours and friends of the
sentenced, in thirty-six towns and villages. Their bodies were mangled,
steeped in caldrons of boiling pitch and tar, and hung up by the
roadsides, in the streets, over the very churches. The sight and smell
of heads and limbs, the hissing and bubbling of the infernal caldrons,
and the tears and terrors of the people, were dreadful beyond all
description. One rustic, who was forced to steep the remains in the
black pot, was ever afterwards called ‘Tom Boilman.’ The hangman has
ever since been called Jack Ketch, because a man of that name went
hanging and hanging, all day long, in the train of Jeffreys. You will
hear much of the horrors of the great French Revolution. Many and
terrible they were, there is no doubt; but I know of nothing worse,
done by the maddened people of France in that awful time, than was done
by the highest judge in England, with the express approval of the King
of England, in The Bloody Assize.', 2432)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('aa69bcfc-ac3c-469c-afdd-764c12edee46', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 65, 'Chapter XXXVI. England Under James the Second (2/2)', 'Nor was even this all. Jeffreys was as fond of money for himself as of
misery for others, and he sold pardons wholesale to fill his pockets.
The King ordered, at one time, a thousand prisoners to be given to
certain of his favourites, in order that they might bargain with them
for their pardons. The young ladies of Taunton who had presented the
Bible, were bestowed upon the maids of honour at court; and those
precious ladies made very hard bargains with them indeed. When The
Bloody Assize was at its most dismal height, the King was diverting
himself with horse-races in the very place where Mrs. Lisle had been
executed. When Jeffreys had done his worst, and came home again, he was
particularly complimented in the Royal Gazette; and when the King heard
that through drunkenness and raging he was very ill, his odious Majesty
remarked that such another man could not easily be found in England.
Besides all this, a former sheriff of London, named Cornish, was hanged
within sight of his own house, after an abominably conducted trial, for
having had a share in the Rye House Plot, on evidence given by Rumsey,
which that villain was obliged to confess was directly opposed to the
evidence he had given on the trial of Lord Russell. And on the very
same day, a worthy widow, named Elizabeth Gaunt, was burned alive at
Tyburn, for having sheltered a wretch who himself gave evidence against
her. She settled the fuel about herself with her own hands, so that the
flames should reach her quickly: and nobly said, with her last breath,
that she had obeyed the sacred command of God, to give refuge to the
outcast, and not to betray the wanderer.

After all this hanging, beheading, burning, boiling, mutilating,
exposing, robbing, transporting, and selling into slavery, of his
unhappy subjects, the King not unnaturally thought that he could do
whatever he would. So, he went to work to change the religion of the
country with all possible speed; and what he did was this.

He first of all tried to get rid of what was called the Test Act—which
prevented the Catholics from holding public employments—by his own
power of dispensing with the penalties. He tried it in one case, and,
eleven of the twelve judges deciding in his favour, he exercised it in
three others, being those of three dignitaries of University College,
Oxford, who had become Papists, and whom he kept in their places and
sanctioned. He revived the hated Ecclesiastical Commission, to get rid
of Compton, Bishop of London, who manfully opposed him. He solicited
the Pope to favour England with an ambassador, which the Pope (who was
a sensible man then) rather unwillingly did. He flourished Father Petre
before the eyes of the people on all possible occasions. He favoured
the establishment of convents in several parts of London. He was
delighted to have the streets, and even the court itself, filled with
Monks and Friars in the habits of their orders. He constantly
endeavoured to make Catholics of the Protestants about him. He held
private interviews, which he called ‘closetings,’ with those Members of
Parliament who held offices, to persuade them to consent to the design
he had in view. When they did not consent, they were removed, or
resigned of themselves, and their places were given to Catholics. He
displaced Protestant officers from the army, by every means in his
power, and got Catholics into their places too. He tried the same thing
with the corporations, and also (though not so successfully) with the
Lord Lieutenants of counties. To terrify the people into the endurance
of all these measures, he kept an army of fifteen thousand men encamped
on Hounslow Heath, where mass was openly performed in the General’s
tent, and where priests went among the soldiers endeavouring to
persuade them to become Catholics. For circulating a paper among those
men advising them to be true to their religion, a Protestant clergyman,
named Johnson, the chaplain of the late Lord Russell, was actually
sentenced to stand three times in the pillory, and was actually whipped
from Newgate to Tyburn. He dismissed his own brother-in-law from his
Council because he was a Protestant, and made a Privy Councillor of the
before-mentioned Father Petre. He handed Ireland over to Richard
Talbot, Earl of Tyrconnell, a worthless, dissolute knave, who played
the same game there for his master, and who played the deeper game for
himself of one day putting it under the protection of the French King.
In going to these extremities, every man of sense and judgment among
the Catholics, from the Pope to a porter, knew that the King was a mere
bigoted fool, who would undo himself and the cause he sought to
advance; but he was deaf to all reason, and, happily for England ever
afterwards, went tumbling off his throne in his own blind way.

A spirit began to arise in the country, which the besotted blunderer
little expected. He first found it out in the University of Cambridge.
Having made a Catholic a dean at Oxford without any opposition, he
tried to make a monk a master of arts at Cambridge: which attempt the
University resisted, and defeated him. He then went back to his
favourite Oxford. On the death of the President of Magdalen College, he
commanded that there should be elected to succeed him, one Mr. Anthony
Farmer, whose only recommendation was, that he was of the King’s
religion. The University plucked up courage at last, and refused. The
King substituted another man, and it still refused, resolving to stand
by its own election of a Mr. Hough. The dull tyrant, upon this,
punished Mr. Hough, and five-and-twenty more, by causing them to be
expelled and declared incapable of holding any church preferment; then
he proceeded to what he supposed to be his highest step, but to what
was, in fact, his last plunge head-foremost in his tumble off his
throne.

He had issued a declaration that there should be no religious tests or
penal laws, in order to let in the Catholics more easily; but the
Protestant dissenters, unmindful of themselves, had gallantly joined
the regular church in opposing it tooth and nail. The King and Father
Petre now resolved to have this read, on a certain Sunday, in all the
churches, and to order it to be circulated for that purpose by the
bishops. The latter took counsel with the Archbishop of Canterbury, who
was in disgrace; and they resolved that the declaration should not be
read, and that they would petition the King against it. The Archbishop
himself wrote out the petition, and six bishops went into the King’s
bedchamber the same night to present it, to his infinite astonishment.
Next day was the Sunday fixed for the reading, and it was only read by
two hundred clergymen out of ten thousand. The King resolved against
all advice to prosecute the bishops in the Court of King’s Bench, and
within three weeks they were summoned before the Privy Council, and
committed to the Tower. As the six bishops were taken to that dismal
place, by water, the people who were assembled in immense numbers fell
upon their knees, and wept for them, and prayed for them. When they got
to the Tower, the officers and soldiers on guard besought them for
their blessing. While they were confined there, the soldiers every day
drank to their release with loud shouts. When they were brought up to
the Court of King’s Bench for their trial, which the Attorney-General
said was for the high offence of censuring the Government, and giving
their opinion about affairs of state, they were attended by similar
multitudes, and surrounded by a throng of noblemen and gentlemen. When
the jury went out at seven o’clock at night to consider of their
verdict, everybody (except the King) knew that they would rather starve
than yield to the King’s brewer, who was one of them, and wanted a
verdict for his customer. When they came into court next morning, after
resisting the brewer all night, and gave a verdict of not guilty, such
a shout rose up in Westminster Hall as it had never heard before; and
it was passed on among the people away to Temple Bar, and away again to
the Tower. It did not pass only to the east, but passed to the west
too, until it reached the camp at Hounslow, where the fifteen thousand
soldiers took it up and echoed it. And still, when the dull King, who
was then with Lord Feversham, heard the mighty roar, asked in alarm
what it was, and was told that it was ‘nothing but the acquittal of the
bishops,’ he said, in his dogged way, ‘Call you that nothing? It is so
much the worse for them.’

Between the petition and the trial, the Queen had given birth to a son,
which Father Petre rather thought was owing to Saint Winifred. But I
doubt if Saint Winifred had much to do with it as the King’s friend,
inasmuch as the entirely new prospect of a Catholic successor (for both
the King’s daughters were Protestants) determined the Earls of
Shrewsbury, Danby, and Devonshire, Lord Lumley, the Bishop of London,
Admiral Russell, and Colonel Sidney, to invite the Prince of Orange
over to England. The Royal Mole, seeing his danger at last, made, in
his fright, many great concessions, besides raising an army of forty
thousand men; but the Prince of Orange was not a man for James the
Second to cope with. His preparations were extraordinarily vigorous,
and his mind was resolved.

For a fortnight after the Prince was ready to sail for England, a great
wind from the west prevented the departure of his fleet. Even when the
wind lulled, and it did sail, it was dispersed by a storm, and was
obliged to put back to refit. At last, on the first of November, one
thousand six hundred and eighty-eight, the Protestant east wind, as it
was long called, began to blow; and on the third, the people of Dover
and the people of Calais saw a fleet twenty miles long sailing
gallantly by, between the two places. On Monday, the fifth, it anchored
at Torbay in Devonshire, and the Prince, with a splendid retinue of
officers and men, marched into Exeter. But the people in that western
part of the country had suffered so much in The Bloody Assize, that
they had lost heart. Few people joined him; and he began to think of
returning, and publishing the invitation he had received from those
lords, as his justification for having come at all. At this crisis,
some of the gentry joined him; the Royal army began to falter; an
engagement was signed, by which all who set their hand to it declared
that they would support one another in defence of the laws and
liberties of the three Kingdoms, of the Protestant religion, and of the
Prince of Orange. From that time, the cause received no check; the
greatest towns in England began, one after another, to declare for the
Prince; and he knew that it was all safe with him when the University
of Oxford offered to melt down its plate, if he wanted any money.

By this time the King was running about in a pitiable way, touching
people for the King’s evil in one place, reviewing his troops in
another, and bleeding from the nose in a third. The young Prince was
sent to Portsmouth, Father Petre went off like a shot to France, and
there was a general and swift dispersal of all the priests and friars.
One after another, the King’s most important officers and friends
deserted him and went over to the Prince. In the night, his daughter
Anne fled from Whitehall Palace; and the Bishop of London, who had once
been a soldier, rode before her with a drawn sword in his hand, and
pistols at his saddle. ‘God help me,’ cried the miserable King: ‘my
very children have forsaken me!’ In his wildness, after debating with
such lords as were in London, whether he should or should not call a
Parliament, and after naming three of them to negotiate with the
Prince, he resolved to fly to France. He had the little Prince of Wales
brought back from Portsmouth; and the child and the Queen crossed the
river to Lambeth in an open boat, on a miserable wet night, and got
safely away. This was on the night of the ninth of December.

At one o’clock on the morning of the eleventh, the King, who had, in
the meantime, received a letter from the Prince of Orange, stating his
objects, got out of bed, told Lord Northumberland who lay in his room
not to open the door until the usual hour in the morning, and went down
the back stairs (the same, I suppose, by which the priest in the wig
and gown had come up to his brother) and crossed the river in a small
boat: sinking the great seal of England by the way. Horses having been
provided, he rode, accompanied by Sir Edward Hales, to Feversham, where
he embarked in a Custom House Hoy. The master of this Hoy, wanting more
ballast, ran into the Isle of Sheppy to get it, where the fishermen and
smugglers crowded about the boat, and informed the King of their
suspicions that he was a ‘hatchet-faced Jesuit.’ As they took his money
and would not let him go, he told them who he was, and that the Prince
of Orange wanted to take his life; and he began to scream for a
boat—and then to cry, because he had lost a piece of wood on his ride
which he called a fragment of Our Saviour’s cross. He put himself into
the hands of the Lord Lieutenant of the county, and his detention was
made known to the Prince of Orange at Windsor—who, only wanting to get
rid of him, and not caring where he went, so that he went away, was
very much disconcerted that they did not let him go. However, there was
nothing for it but to have him brought back, with some state in the way
of Life Guards, to Whitehall. And as soon as he got there, in his
infatuation, he heard mass, and set a Jesuit to say grace at his public
dinner.

The people had been thrown into the strangest state of confusion by his
flight, and had taken it into their heads that the Irish part of the
army were going to murder the Protestants. Therefore, they set the
bells a ringing, and lighted watch-fires, and burned Catholic Chapels,
and looked about in all directions for Father Petre and the Jesuits,
while the Pope’s ambassador was running away in the dress of a footman.
They found no Jesuits; but a man, who had once been a frightened
witness before Jeffreys in court, saw a swollen, drunken face looking
through a window down at Wapping, which he well remembered. The face
was in a sailor’s dress, but he knew it to be the face of that accursed
judge, and he seized him. The people, to their lasting honour, did not
tear him to pieces. After knocking him about a little, they took him,
in the basest agonies of terror, to the Lord Mayor, who sent him, at
his own shrieking petition, to the Tower for safety. There, he died.

Their bewilderment continuing, the people now lighted bonfires and made
rejoicings, as if they had any reason to be glad to have the King back
again. But, his stay was very short, for the English guards were
removed from Whitehall, Dutch guards were marched up to it, and he was
told by one of his late ministers that the Prince would enter London,
next day, and he had better go to Ham. He said, Ham was a cold, damp
place, and he would rather go to Rochester. He thought himself very
cunning in this, as he meant to escape from Rochester to France. The
Prince of Orange and his friends knew that, perfectly well, and desired
nothing more. So, he went to Gravesend, in his royal barge, attended by
certain lords, and watched by Dutch troops, and pitied by the generous
people, who were far more forgiving than he had ever been, when they
saw him in his humiliation. On the night of the twenty-third of
December, not even then understanding that everybody wanted to get rid
of him, he went out, absurdly, through his Rochester garden, down to
the Medway, and got away to France, where he rejoined the Queen.

There had been a council in his absence, of the lords, and the
authorities of London. When the Prince came, on the day after the
King’s departure, he summoned the Lords to meet him, and soon
afterwards, all those who had served in any of the Parliaments of King
Charles the Second. It was finally resolved by these authorities that
the throne was vacant by the conduct of King James the Second; that it
was inconsistent with the safety and welfare of this Protestant
kingdom, to be governed by a Popish prince; that the Prince and
Princess of Orange should be King and Queen during their lives and the
life of the survivor of them; and that their children should succeed
them, if they had any. That if they had none, the Princess Anne and her
children should succeed; that if she had none, the heirs of the Prince
of Orange should succeed.

On the thirteenth of January, one thousand six hundred and eighty-nine,
the Prince and Princess, sitting on a throne in Whitehall, bound
themselves to these conditions. The Protestant religion was established
in England, and England’s great and glorious Revolution was complete.', 2998)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('22498b00-f4a4-4647-ac89-bc608bf2dfd3', 'e2960e44-7498-4fa8-a1d8-f552af12b49a', 66, 'Chapter XXXVII', 'I have now arrived at the close of my little history. The events which
succeeded the famous Revolution of one thousand six hundred and
eighty-eight, would neither be easily related nor easily understood in
such a book as this.

William and Mary reigned together, five years. After the death of his
good wife, William occupied the throne, alone, for seven years longer.
During his reign, on the sixteenth of September, one thousand seven
hundred and one, the poor weak creature who had once been James the
Second of England, died in France. In the meantime he had done his
utmost (which was not much) to cause William to be assassinated, and to
regain his lost dominions. James’s son was declared, by the French
King, the rightful King of England; and was called in France The
Chevalier Saint George, and in England The Pretender. Some infatuated
people in England, and particularly in Scotland, took up the
Pretender’s cause from time to time—as if the country had not had
Stuarts enough!—and many lives were sacrificed, and much misery was
occasioned. King William died on Sunday, the seventh of March, one
thousand seven hundred and two, of the consequences of an accident
occasioned by his horse stumbling with him. He was always a brave,
patriotic Prince, and a man of remarkable abilities. His manner was
cold, and he made but few friends; but he had truly loved his queen.
When he was dead, a lock of her hair, in a ring, was found tied with a
black ribbon round his left arm.

He was succeeded by the Princess Anne, a popular Queen, who reigned
twelve years. In her reign, in the month of May, one thousand seven
hundred and seven, the Union between England and Scotland was effected,
and the two countries were incorporated under the name of Great
Britain. Then, from the year one thousand seven hundred and fourteen to
the year one thousand, eight hundred and thirty, reigned the four
Georges.

It was in the reign of George the Second, one thousand seven hundred
and forty-five, that the Pretender did his last mischief, and made his
last appearance. Being an old man by that time, he and the Jacobites—as
his friends were called—put forward his son, Charles Edward, known as
the young Chevalier. The Highlanders of Scotland, an extremely
troublesome and wrong-headed race on the subject of the Stuarts,
espoused his cause, and he joined them, and there was a Scottish
rebellion to make him king, in which many gallant and devoted gentlemen
lost their lives. It was a hard matter for Charles Edward to escape
abroad again, with a high price on his head; but the Scottish people
were extraordinarily faithful to him, and, after undergoing many
romantic adventures, not unlike those of Charles the Second, he escaped
to France. A number of charming stories and delightful songs arose out
of the Jacobite feelings, and belong to the Jacobite times. Otherwise I
think the Stuarts were a public nuisance altogether.

It was in the reign of George the Third that England lost North
America, by persisting in taxing her without her own consent. That
immense country, made independent under Washington, and left to itself,
became the United States; one of the greatest nations of the earth. In
these times in which I write, it is honourably remarkable for
protecting its subjects, wherever they may travel, with a dignity and a
determination which is a model for England. Between you and me, England
has rather lost ground in this respect since the days of Oliver
Cromwell.

The Union of Great Britain with Ireland—which had been getting on very
ill by itself—took place in the reign of George the Third, on the
second of July, one thousand seven hundred and ninety-eight.

William the Fourth succeeded George the Fourth, in the year one
thousand eight hundred and thirty, and reigned seven years. Queen
Victoria, his niece, the only child of the Duke of Kent, the fourth son
of George the Third, came to the throne on the twentieth of June, one
thousand eight hundred and thirty-seven. She was married to Prince
Albert of Saxe Gotha on the tenth of February, one thousand eight
hundred and forty. She is very good, and much beloved. So I end, like
the crier, with

God Save the Queen!', 721)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

-- ===== A Short History of the World — H. G. Wells (1922) =====
-- Nguon: Project Gutenberg #35461 (public domain)

insert into public.books (id, slug, title, author, year, level, blurb, cover_emoji, word_count, chapter_count, gutenberg_id, sort_order) values
  ('8268eabe-4b74-414e-a1f6-5a266d184560', 'short-history-world', 'A Short History of the World', 'H. G. Wells', 1922, 'C1', 'Cả lịch sử thế giới trong 66 chương ngắn. Chương gọn nhưng dày tên riêng (Babylon, Assyria...) nên đọc chậm hơn tiểu thuyết.', '🌍', 107372, 68, 35461, 6)
on conflict (id) do update set word_count = excluded.word_count, chapter_count = excluded.chapter_count, blurb = excluded.blurb;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('d3e32092-4bf1-4ea6-a83c-2934f4dbfe91', '8268eabe-4b74-414e-a1f6-5a266d184560', 1, 'I The World in Space', 'The story of our world is a story that is still very imperfectly known.
A couple of hundred years ago men possessed the history of little more
than the last three thousand years. What happened before that time was
a matter of legend and speculation.  Over a large part of the civilized
world it was believed and taught that the world had been created
suddenly in 4004 B.C., though authorities differed as to whether this
had occurred in the spring or autumn of that year. This fantastically
precise misconception was based upon a too literal interpretation of
the Hebrew Bible, and upon rather arbitrary theological assumptions
connected therewith.  Such ideas have long since been abandoned by
religious teachers, and it is universally recognized that the universe
in which we live has to all appearances existed for an enormous period
of time and possibly for endless time.  Of course there may be
deception in these appearances, as a room may be made to seem endless
by putting mirrors facing each other at either end. But that the
universe in which we live has existed only for six or seven thousand
years may be regarded as an altogether exploded idea.

The earth, as everybody knows nowadays, is a spheroid, a sphere
slightly compressed, orange fashion, with a diameter of nearly 8,000
miles.  Its spherical shape has been known at least to a limited number
of intelligent people for nearly 2,500 years, but before that time it
was supposed to be flat, and various ideas which now seem fantastic
were entertained about its relations to the sky and the stars and
planets.  We know now that it rotates upon its axis (which is about 24
miles shorter than its equatorial diameter) every twenty-four hours,
and that this is the cause of the alternations of day and night, that
it circles about the sun in a slightly distorted and slowly variable
oval path in a year. Its distance from the sun varies between
ninety-one and a half millions at its nearest and ninety-four and a
half million miles.

LUMINOUS SPIRAL CLOUDS OF MATTER
“LUMINOUS SPIRAL CLOUDS OF MATTER”

(Nebula photographed 1910)

_Photo: G. W. Ritchey_

About the earth circles a smaller sphere, the moon, at an average
distance  of 239,000 miles. Earth and moon are not the only bodies to
travel round  the sun.  There are also the planets, Mercury and Venus,
at distances of  thirty-six and sixty-seven millions of miles; and
beyond the circle of the  earth and disregarding a belt of numerous
smaller bodies, the planetoids,  there are Mars, Jupiter, Saturn,
Uranus and Neptune at mean distances of 141, 483, 886, 1,782, and 1,793
millions of miles respectively. These figures in millions of miles are
very difficult for the mind to grasp.  It may help the reader’s
imagination if we reduce the sun and planets to a smaller, more
conceivable scale.

THE NEBULA SEEN EDGE ON
THE NEBULA SEEN EDGE-ON

Note the central core which, through millions of years, is cooling to
solidity

_Photo: G. W. Ritchey_

If, then, we represent our earth as a little ball of one inch diameter,
 the sun would be a big globe nine feet across and 323 yards away, that
 is about a fifth of a mile, four or five minutes’ walking.  The  moon
would be a small pea two feet and a half from the world.  Between earth
and sun there would be the two inner planets, Mercury and Venus,  at
distances of one hundred and twenty-five and two hundred and fifty 
yards from the sun. All round and about these bodies there would be 
emptiness until you came to Mars, a hundred and seventy-five feet
beyond the earth; Jupiter nearly a mile away, a foot in diameter;
Saturn, a little smaller, two miles off; Uranus four miles off and
Neptune six miles off. Then nothingness and nothingness except for
small particles and drifting scraps of attenuated vapour for thousands
of miles.  The nearest star to earth on this scale would be 40,000
miles away.

These figures will serve perhaps to give one some conception of the
immense emptiness of space in which the drama of life goes on.

For in all this enormous vacancy of space we know certainly of life
only  upon the surface of our earth. It does not penetrate much more
than three miles down into the 4,000 miles that separate us from the
centre of our globe, and it does not reach more than five miles above
its surface.  Apparently all the limitlessness of space is otherwise
empty and dead.

The deepest ocean dredgings go down to five miles. The highest recorded
flight of an aeroplane is little more than four miles. Men have reached
to seven miles up in balloons, but at a cost of great suffering.  No
bird can fly so high as five miles, and small birds and insects which
have been carried up by aeroplanes drop off insensible far below that
level.', 826)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('4321cddb-9dc0-47ee-a0f9-6bc7ea9c0238', '8268eabe-4b74-414e-a1f6-5a266d184560', 2, 'II The World in Time', 'In the last fifty years there has been much very fine and interesting
speculation on the part of scientific men upon the age and origin of
our earth. Here we cannot pretend to give even a summary of such
speculations because they involve the most subtle mathematical and
physical considerations. The truth is that the physical and
astronomical sciences are still too undeveloped as yet to make anything
of the sort more than an illustrative guesswork. The general tendency
has been to make the estimated age of our globe longer and longer. It
now seems probable that the earth has had an independent existence as a
spinning planet flying round and round the sun for a longer period than
2,000,000,000 years. It may have been much longer than that. This is a
length of time that absolutely overpowers the imagination.

Before that vast period of separate existence, the sun and earth and
the other planets that circulate round the sun may have been a great
swirl of diffused matter in space.  The telescope reveals to us in
various parts of the heavens luminous spiral clouds of matter, the
spiral nebulæ, which appear to be in rotation about a centre. It is
supposed by many astronomers that the sun and its planets were once
such a spiral, and that their matter has undergone concentration into
its present form. Through majestic æons that concentration went on
until in that vast remoteness of the past for which we have given
figures, the world and its moon were distinguishable.  They were
spinning then much faster than they are spinning now; they were at a
lesser distance from the sun; they travelled round it very much faster,
and they were probably incandescent or molten at the surface.  The sun
itself was a much greater blaze in the heavens.

THE GREAT SPIRAL NEBULA
THE GREAT SPIRAL NEBULA

_Photo: G. W. Ritchey_

If we could go back through that infinitude of time and see the earth
in this earlier stage of its history, we should behold a scene more
like the interior of a blast furnace or the surface of a lava flow
before it cools and cakes over than any other contemporary scene.  No
water would be visible because all the water there was would still be
superheated steam in a stormy atmosphere of sulphurous and metallic
vapours.  Beneath this would swirl and boil an ocean of molten rock
substance.  Across a sky of fiery clouds the glare of the hurrying sun
and moon would sweep swiftly like hot breaths of flame.

A DARK NEBULA
A DARK NEBULA
_Taken in 1920 with the aid of the largest telescope in the world. One
of the first photographs taken by the Mount Wilson telescope._

There are dark nebulæ and bright nebulæ.  Prof. Henry Norris Russell,
against the British theory, holds that the dark nebulæ preceded the
bright nebulæ.

_Photo: Prof. Hale_

Slowly by degrees as one million of years followed another, this fiery
scene would lose its eruptive incandescence.  The vapours in the sky
would rain down and become less dense overhead; great slaggy cakes of
solidifying rock would appear upon the surface of the molten sea, and
sink under it, to be replaced by other floating masses.  The sun and
moon growing now each more distant and each smaller, would rush with
diminishing swiftness across the heavens. The moon now, because of its
smaller size, would be already cooled far below incandescence, and
would be alternately obstructing and reflecting the sunlight in a
series of eclipses and full moons.

ANOTHER SPIRAL NEBULA
ANOTHER SPIRAL NEBULA

_Photo: G. W. Ritchey_

And so with a tremendous slowness through the vastness of time, the
earth would grow more and more like the earth on which we live, until
at last an age would come when, in the cooling air, steam would begin
to condense into clouds, and the first rain would fall hissing upon the
first rocks below.  For endless millenia the greater part of the
earth’s water would still be vaporized in the atmosphere, but there
would now be hot streams running over the crystallizing rocks below and
pools and lakes into which these streams would be carrying detritus and
depositing sediment.

LANDSCAPE BEFORE LIFE
LANDSCAPE BEFORE LIFE
“Great lava-like masses of rock without traces of soil”

At last a condition of things must have been attained in which a man
might have stood up on earth and looked about him and lived. If we
could have visited the earth at that time we should have stood on great
lava-like masses of rock without a trace of soil or touch of living
vegetation, under a storm-rent sky.  Hot and violent winds, exceeding
the fiercest tornado that ever blows, and downpours of rain such as our
milder, slower earth to-day knows nothing of, might have assailed us. 
The water of the downpour would have rushed by us, muddy with the
spoils of the rocks, coming together into torrents, cutting deep gorges
and canyons as they hurried past to deposit their sediment in the
earliest seas.  Through the clouds we should have glimpsed a great sun
moving visibly across the sky, and in its wake and in the wake of the
moon would have come a diurnal tide of earthquake and upheaval. And

the moon, which nowadays keeps one constant face to earth, would then
have been rotating visibly and showing the side it now hides so
inexorably.

The earth aged.  One million years followed another, and the day
lengthened, the sun grew more distant and milder, the moon’s pace in
the sky slackened; the intensity of rain and storm diminished and the
water in the first seas increased and ran together into the ocean
garment our planet henceforth wore.

But there was no life as yet upon the earth; the seas were lifeless,
and the rocks were barren.', 978)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('46758106-33ec-4194-a1db-8efee566b4dd', '8268eabe-4b74-414e-a1f6-5a266d184560', 3, 'III The Beginnings of Life', 'As everybody knows nowadays, the knowledge we possess of life before
the beginnings of human memory and tradition is derived from the
markings and fossils of living things in the stratified rocks. We find
preserved in shale and slate, limestone, and sandstone, bones, shells,
fibres, stems, fruits, footmarks, scratchings and the like, side by
side with the ripple marks of the earliest tides and the pittings of
the earliest rain-falls. It is by the sedulous examination of this
Record of the Rocks that the past history of the earth’s life has been
pieced together.  That much nearly everybody knows to-day.  The
sedimentary rocks do not lie neatly stratum above stratum; they have
been crumpled, bent, thrust about, distorted and mixed together like
the leaves of a library that has been repeatedly looted and burnt, and
it is only as a result of many devoted lifetimes of work that the
record has been put into order and read.  The whole compass of time
represented by the record of the rocks is now estimated as
1,600,000,000 years.

The earliest rocks in the record are called by geologists the Azoic
rocks, because they show no traces of life.  Great areas of these Azoic
rocks lie uncovered in North America, and they are of such a thickness
that geologists consider that they represent a period of at least half
of the 1,600,000,000 which they assign to the whole geological record. 
Let me repeat this profoundly significant fact. Half the great interval
of time since land and sea were first distinguishable on earth has left
us no traces of life.  There are ripplings and rain marks still to be
found in these rocks, but no marks nor vestiges of any living thing.

MARINE LIFE IN THE CAMBRIAN PERIOD
MARINE LIFE IN THE CAMBRIAN PERIOD
1 and 8, Jellyfishes;  2, Hyolithes (swimming snail);  3, Humenocaris; 
4, Protospongia; 5, Lampshells (Obolella);  6, Orthoceras;  7,
Trilobite (Paradoxides) — see fossil on page 13; 9, Coral
(Archæocyathus);  10, Bryograptus;  11, Trilobite (Olenellus); 12,
Palesterina

Then, as we come up the record, signs of past life appear and increase.
 The age of the world’s history in which we find these past traces is
called by geologists the Lower Palæozoic age. The first indications
that life was astir are vestiges of comparatively simple and lowly
things: the shells of small shellfish, the stems and flowerlike heads
of zoophytes, seaweeds and the tracks and remains of sea worms and
crustacea.  Very early appear certain creatures rather like plant-lice,
crawling creatures which could roll themselves up into balls as the
plant-lice do, the trilobites.  Later by a few million years or so come
certain sea scorpions, more mobile and powerful creatures than the
world had ever seen before.

FOSSIL TRILOBITE (SLIGHTLY MAGNIFIED)
FOSSIL TRILOBITE (SLIGHTLY MAGNIFIED)
_Photo: John J. Ward, F.E.S._

None of these creatures were of very great size.  Among the largest
were certain of the sea scorpions, which measured nine feet in length. 
There are no signs whatever of land life of any sort, plant or animal;
there are no fishes nor any vertebrated creatures in this part of the
record.  Essentially all the plants and creatures which have left us
their traces from this period of the earth’s history are shallow-water
and intertidal beings.  If we wished to parallel the flora and fauna of
the Lower Palæozoic rocks on the earth to-day, we should do it best,
except in the matter of size, by taking a drop of water from a rock
pool or scummy ditch and examining it under a microscope.  The little
crustacea, the small shellfish, the zoophytes and algæ we should find
there would display a quite striking resemblance to these clumsier,
larger prototypes that once were the crown of life upon our planet.

EARLY PALÆOLITHIC FOSSILS OF VARIOUS SPECIES OF LINGULA
EARLY PALÆOLITHIC FOSSILS OF VARIOUS SPECIES OF LINGULA

Species of this most ancient genus of shellfish still live to-day

_(In Natural History Museum, London)_

It is well, however, to bear in mind that the Lower Palæozoic rocks
probably do not give us anything at all representative of the first
beginnings of life on our planet. Unless a creature has bones or other
hard parts, unless it wears a shell or is big enough and heavy enough
to make characteristic footprints and trails in mud, it is unlikely to
leave any fossilized traces of its existence behind.  To-day there are
hundreds of thousands of species of small soft-bodied creatures in our
world which it is inconceivable can ever leave any mark for future
geologists to discover.  In the world’s past, millions of millions of
species of such creatures may have lived and multiplied and flourished
and passed away without a trace remaining.  The waters of the warm and
shallow lakes and seas of the so-called Azoic period may have teemed
with an infinite variety of lowly, jelly-like, shell-less and boneless
creatures, and a multitude of green scummy plants may have spread over
the sunlit intertidal rocks and beaches.  The Record of the Rocks is no
more a complete record of life in the past than the books of a bank are
a record of the existence of everybody in the neighbourhood.  It is
only when a species begins to secrete a shell or a spicule or a
carapace or a lime-supported stem, and so put by something for the
future, that it goes upon the Record.  But in rocks of an age prior to
those which bear any fossil traces, graphite, a form of uncombined
carbon, is sometimes found, and some authorities consider that it may
have been separated out from combination through the vital activities
of unknown living things.

 FOSSILIZED FOOTPRINTS OF A LABYRINTHODONT CHEIROTHERIUM
FOSSILIZED FOOTPRINTS OF A LABYRINTHODONT CHEIROTHERIUM

_(In Natural History Museum, London)_', 961)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('2105c4dc-b1d0-4ae5-a75c-f1ca1248f71f', '8268eabe-4b74-414e-a1f6-5a266d184560', 4, 'IV The Age of Fishes', 'In the days when the world was supposed to have endured for only a few
thousand years, it was supposed that the different species of plants
and animals were fixed and final; they had all been created exactly as
they are to-day, each species by itself.  But as men began to discover
and study the Record of the Rocks this belief gave place to the
suspicion that many species had changed and developed slowly through
the course of ages, and this again expanded into a belief in what is
called Organic Evolution, a belief that all species of life upon earth,
animal and vegetable alike, are descended by slow continuous processes
of change from some very simple ancestral form of life, some almost
structureless living substance, far back in the so-called Azoic seas.

This question of Organic Evolution, like the question of the age of the
earth, has in the past been the subject of much bitter controversy. 
There was a time when a belief in organic evolution was for rather
obscure reasons supposed to be incompatible with sound Christian,
Jewish and Moslem doctrine.  That time has passed, and the men of the
most orthodox Catholic, Protestant, Jewish and Mohammedan belief are
now free to accept this newer and broader view of a common origin of
all living things.  No life seems to have happened suddenly upon earth.
 Life grew and grows.  Age by age through gulfs of time at which
imagination reels, life has been growing from a mere stirring in the
intertidal slime towards freedom, power and consciousness.

Life consists of individuals. These individuals are definite things,
they are not like the lumps and masses, nor even the limitless and
motionless crystals, of non-living matter, and they have two
characteristics no dead matter possesses.  They can assimilate other
matter into themselves and make it part of themselves, and they can
reproduce themselves.  They eat and they breed.  They can give rise to
other individuals, for the most part like themselves, but always also a
little different from themselves.  There is a specific and family
resemblance between an individual and its offspring, and there is an
individual difference between every parent and every offspring it
produces, and this is true in every species and at every stage of life.

SPECIMEN OF THE PTERICHTHYS MILLERI OR SEA SCORPION SHOWING BODY ARMOUR
SPECIMEN OF THE PTERICHTHYS MILLERI OR SEA SCORPION SHOWING BODY ARMOUR

Now scientific men are not able to explain to us either why offspring
should resemble nor why they should differ from their parents.  But
seeing that offspring do at once resemble and differ, it is a matter
rather of common sense than of scientific knowledge that, if the
conditions under which a species live are changed, the species should
undergo some correlated changes.  Because in any generation of the
species there must be a number of individuals whose individual
differences make them better adapted to the new conditions under which
the species has to live, and a number whose individuals whose
individual differences make it rather harder for them to live.  And on
the whole the former sort will live longer, bear more offspring, and
reproduce themselves more abundantly than the latter, and so generation
by generation the average of the species will change in the favourable
direction.  This process, which is called Natural Selection, is not so
much a scientific theory as a necessary deduction from the facts of
reproduction and individual difference.  There may be many forces at
work varying, destroying and preserving species, about which science
may still be unaware or undecided, but the man who can deny the
operation of this process of natural selection upon life since its
beginning must be either ignorant of the elementary facts of life or
incapable of ordinary thought.

Many scientific men have speculated about the first beginning of life
and their speculations are often of great interest, but there is
absolutely no definite knowledge and no convincing guess yet of the way
in which life began.  But nearly all authorities are agreed that it
probably began upon mud or sand in warm sunlit shallow brackish water,
and that it spread up the beaches to the intertidal lines and out to
the open waters.

FOSSIL OF THE CLADOSELACHE, A DEVONIAN SHARK
FOSSIL OF THE CLADOSELACHE, A DEVONIAN SHARK

_Nat. Hist. Mus._

That early world was a world of strong tides and currents.  An
incessant destruction of individuals must have been going on through
their being swept up the beaches and dried, or by their being swept out
to sea and sinking down out of reach of air and sun.  Early conditions
favoured the development of every tendency to root and hold on, every
tendency to form an outer skin and casing to protect the stranded
individual from immediate desiccation.  From the very earliest any
tendency to sensitiveness to taste would turn the individual in the
direction of food, and any sensitiveness to light would assist it to
struggle back out of the darkness of the sea deeps and caverns or to
wriggle back out of the excessive glare of the dangerous shallows.

Probably the first shells and body armour of living things were
protections against drying rather than against active enemies. But
tooth and claw come early into our earthly history.

We have already noted the size of the earlier water scorpions.  For
long ages such creatures were the supreme lords of life. Then in a
division of these Palæozoic rocks called the Silurian division, which
many geologists now suppose to be as old as five hundred million years,
there appears a new type of being, equipped with eyes and teeth and
swimming powers of an altogether more powerful kind.  These were the
first known backboned animals, the earliest fishes, the first known
Vertebrata.

SHARKS AND GANOIDS OF THE DEVONIAN PERIOD
SHARKS AND GANOIDS OF THE DEVONIAN PERIOD

_By Alice Woodward_

These fishes increase greatly in the next division of rocks, the rocks
known as the Devonian system.  They are so prevalent that this period
of the Record of the Rocks has been called the Age of Fishes.  Fishes
of a pattern now gone from the earth, and fishes allied to the sharks
and sturgeons of to-day, rushed through the waters, leapt in the air,
browsed among the seaweeds, pursued and preyed upon one another, and
gave a new liveliness to the waters of the world. None of these were
excessively big by our present standards.  Few of them were more than
two or three feet long, but there were exceptional forms which were as
long as twenty feet.

We know nothing from geology of the ancestors of these fishes.  They do
not appear to be related to any of the forms that preceded them.
Zoologists have the most interesting views of their ancestry, but these
they derive from the study of the development of the eggs of their
still living relations, and from other sources.  Apparently the
ancestors of the vertebrata were soft-bodied and perhaps quite small
swimming creatures who began first to develop hard parts as teeth round
and about their mouths.  The teeth of a skate or dogfish cover the roof
and floor of its mouth and pass at the lip into the flattened toothlike
scales that encase most of its body. As the fishes develop these teeth
scales in the geological record, they swim out of the hidden darkness
of the past into the light, the first vertebrated animals visible in
the record.', 1249)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('2605964d-1c64-4504-ad18-5bb8cb02a87b', '8268eabe-4b74-414e-a1f6-5a266d184560', 5, 'V The Age of the Coal Swamps', 'The land during this Age of Fishes was apparently quite lifeless. Crags
and uplands of barren rock lay under the sun and rain. There was no
real soil—for as yet there were no earthworms which help to make a
soil, and no plants to break up the rock particles into mould; there
was no trace of moss or lichen. Life was still only in the sea.

Over this world of barren rock played great changes of climate. The
causes of these changes of climate were very complex and they have
still to be properly estimated.  The changing shape of the earth’s
orbit, the gradual shifting of the poles of rotation, changes in the
shapes of the continents, probably even fluctuations in the warmth of
the sun, now conspired to plunge great areas of the earth’s surface
into long periods of cold and ice and now again for millions of years
spread a warm or equable climate over this planet.  There seem to have
been phases of great internal activity in the world’s history, when in
the course of a few million years accumulated upthrusts would break out
in lines of volcanic eruption and upheaval and rearrange the mountain
and continental outlines of the globe, increasing the depth of the sea
and the height of the mountains and exaggerating the extremes of
climate.  And these would be followed by vast ages of comparative
quiescence, when frost, rain and river would wear down the mountain
heights and carry great masses of silt to fill and raise the sea
bottoms and spread the seas, ever shallower and wider, over more and
more of the land.  There have been “high and deep” ages in the world’s
history and “low and level” ages.  The reader must dismiss from his
mind any idea that the surface of the earth has been growing steadily
cooler since its crust grew solid.  After that much cooling had been
achieved, the internal temperature ceased to affect surface conditions.
There are traces of periods of superabundant ice and snow, of “Glacial
Ages,” that is, even in the Azoic period.

It was only towards the close of the Age of Fishes, in a period of
extensive shallow seas and lagoons, that life spread itself out in any
effectual way from the waters on to the land.  No doubt the earlier
types of the forms that now begin to appear in great abundance had
already been developing in a rare and obscure manner for many scores of
millions of years.  But now came their opportunity.

A CARBONIFEROUS SWAMP
A CARBONIFEROUS SWAMP

_A Coal Seam in the Making_

Plants no doubt preceded animal forms in this invasion of the land, but
the animals probably followed up the plant emigration very closely. The
first problem that the plant had to solve was the problem of some
sustaining stiff support to hold up its fronds to the sunlight when the
buoyant water was withdrawn; the second was the problem of getting
water from the swampy ground below to the tissues of the plant, now
that it was no longer close at hand.  The two problems were solved by
the development of woody tissue which both sustained the plant and
acted as water carrier to the leaves.  The Record of the Rocks is
suddenly crowded by a vast variety of woody swamp plants, many of them
of great size, big tree mosses, tree ferns, gigantic horsetails and the
like.  And with these, age by age, there crawled out of the water a
great variety of animal forms. There were centipedes and millipedes;
there were the first primitive insects; there were creatures related to
the ancient king crabs and sea scorpions which became the earliest
spiders and land scorpions, and presently there were vertebrated
animals.

SKULL OF A LABYRINTHODONT, CAPITOSAURUS
SKULL OF A LABYRINTHODONT, CAPITOSAURUS

_Nat. Hist. Mus._

Some of the earlier insects were very large. There were dragon flies in
this period with wings that spread out to twenty-nine inches.

In various ways these new orders and genera had adapted themselves to
breathing air.  Hitherto all animals had breathed air dissolved in
water, and that indeed is what all animals still have to do. But now in
divers fashions the animal kingdom was acquiring the power of supplying
its own moisture where it was needed.  A man with a perfectly dry lung
would suffocate to-day; his lung surfaces must be moist in order that
air may pass through them into his blood.  The adaptation to air
breathing consists in all cases either in the development of a cover to
the old-fashioned gills to stop evaporation, or in the development of
tubes or other new breathing organs lying deep inside the body and
moistened by a watery secretion.  The old gills with which the
ancestral fish of the vertebrated line had breathed were inadaptable to
breathing upon land, and in the case of this division of the animal
kingdom it is the swimming bladder of the fish which becomes a new,
deep-seated breathing organ, the lung.  The kind of animals known as
amphibia, the frogs and newts of to-day, begin their lives in the water
and breathe by gills; and subsequently the lung, developing in the same
way as the swimming bladder of many fishes do, as a baglike outgrowth
from the throat, takes over the business of breathing, the animal comes
out on land, and the gills dwindle and the gill slits disappear.  (All
except an outgrowth of one gill slit, which becomes the passage of the
ear and ear-drum.)  The animal can now live only in the air, but it
must return at least to the edge of the water to lay its eggs and
reproduce its kind.

SKELETON OF A LABYRINTHODONT: THE ERYOPS
SKELETON OF A LABYRINTHODONT: THE ERYOPS

_Nat. Hist. Mus._

All the air-breathing vertebrata of this age of swamps and plants
belonged to the class amphibia.  They were nearly all of them forms
related to the newts of to-day, and some of them attained a
considerable size.  They were land animals, it is true, but they were
land animals needing to live in and near moist and swampy places, and
all the great trees of this period were equally amphibious in their
habits.  None of them had yet developed fruits and seeds of a kind that
could fall on land and develop with the help only of such moisture as
dew and rain could bring.  They all had to shed their spores in water,
it would seem, if they were to germinate.

It is one of the most beautiful interests of that beautiful science,
comparative anatomy, to trace the complex and wonderful adaptations of
living things to the necessities of existence in air.  All living
things, plants and animals alike, are primarily water things.  For
example all the higher vertebrated animals above the fishes, up to and
including man, pass through a stage in their development in the egg or
before birth in which they have gill slits which are obliterated before
the young emerge.  The bare, water-washed eye of the fish is protected
in the higher forms from drying up by eyelids and glands which secrete
moisture.  The weaker sound vibrations of air necessitate an ear-drum. 
In nearly every organ of the body similar modifications and adaptations
are to be detected, similar patchings-up to meet aerial conditions.

This Carboniferous age, this age of the amphibia, was an age of life in
the swamps and lagoons and on the low banks among these waters. Thus
far life had now extended.  The hills and high lands were still quite
barren and lifeless.  Life had learnt to breathe air indeed, but it
still had its roots in its native water; it still had to return to the
water to reproduce its kind.', 1297)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('e45f9d54-80cd-446c-a8f9-4d3b42a4119e', '8268eabe-4b74-414e-a1f6-5a266d184560', 6, 'VI The Age of Reptiles', 'The abundant life of the Carboniferous period was succeeded by a vast
cycle of dry and bitter ages.  They are represented in the Record of
the Rocks by thick deposits of sandstones and the like, in which
fossils are comparatively few. The temperature of the world fluctuated
widely, and there were long periods of glacial cold. Over great areas
the former profusion of swamp vegetation ceased, and, overlaid by these
newer deposits, it began that process of compression and mineralization
that gave the world most of the coal deposits of to-day.

But it is during periods of change that life undergoes its most rapid
modifications, and under hardship that it learns its hardest lessons. 
As conditions revert towards warmth and moisture again we find a new
series of animal and plant forms established,  We find in the record
the remains of vertebrated animals that laid eggs which, instead of
hatching out tadpoles which needed to live for a time in water, carried
on their development before hatching to a stage so nearly like the
adult form that the young could live in air from the first moment of
independent existence.  Gills had been cut out altogether, and the gill
slits only appeared as an embryonic phase.

These new creatures without a tadpole stage were the Reptiles.
Concurrently there had been a development of seed-bearing trees, which
could spread their seed, independently of swamp or lakes. There were
now palmlike cycads and many tropical conifers, though as yet there
were no flowering plants and no grasses.  There was a great number of
ferns.  And there was now also an increased variety of insects.  There
were beetles, though bees and butterflies had yet to come.  But all the
fundamental forms of a new real land fauna and flora had been laid down
during these vast ages of severity.  This new land life needed only the
opportunity of favourable conditions to flourish and prevail.

A FOSSIL ICHTHYOSAURUS, A MESOZOIC FISH-LIZARD
A FOSSIL ICHTHYOSAURUS, A MESOZOIC FISH-LIZARD

Found in the Lower Lias in Somersetshire

_Nat. Hist. Mus._

Age by age and with abundant fluctuations that mitigation came.  The
still incalculable movements of the earth’s crust, the changes in its
orbit, the increase and diminution of the mutual inclination of orbit
and pole, worked together to produce a great spell of widely diffused
warm conditions.  The period lasted altogether, it is now supposed,
upwards of two hundred million years.  It is called the Mesozoic
period, to distinguish it from the altogether vaster Palæozoic and
Azoic periods (together fourteen hundred millions) that preceded it,
and from the Cainozoic or new life period that intervened between its
close and the present time, and it is also called the Age of Reptiles
because of the astonishing predominance and variety of this form of
life.  It came to an end some eighty million  years ago.

In the world to-day the genera of Reptiles are comparatively few and
their distribution is very limited.  They are more various, it is true,
than are the few surviving members of the order of the amphibia which
once in the Carboniferous period ruled the world.  We still have the
snakes, the turtles and tortoises (the Chelonia), the alligators and
crocodiles, and the lizards.  Without exception they are creatures
requiring warmth all the year round; they cannot stand exposure to
cold, and it is probable that all the reptilian beings of the Mesozoic
suffered under the same limitation.  It was a hothouse fauna, living
amidst a hothouse flora.  It endured no frosts.  But the world had at
least attained a real dry land fauna and flora as distinguished from
the mud and swamp fauna and flora of the previous heyday of life upon
earth.

A PTERODACTYL
A PTERODACTYL

_Nat. Hist. Mus._

All the sorts of reptile we know now were much more abundantly
represented then, great turtles and tortoises, big crocodiles and many
lizards and snakes, but in addition there was a number of series of
wonderful creatures that have now vanished altogether from the earth. 
There was a vast variety of beings called the Dinosaurs. Vegetation was
now spreading over the lower levels of the world, reeds, brakes of fern
and the like; and browsing upon this abundance came a multitude of
herbivorous reptiles, which increased in size as the Mesozoic period
rose to its climax.  Some of these beasts exceeded in size any other
land animals that have ever lived; they were as large as whales.  The
_Diplodocus Carnegii_ for example measured eighty-four feet from snout
to tail; the Gigantosaurus was even greater; it measured a hundred
feet.  Living upon these monsters was a swarm of carnivorous Dinosaurs
of a corresponding size.  One of these, the Tyrannosaurus, is figured
and described in many books as the last word in reptilian
frightfulness.

A BIG SWAMP-INHABITING DINOSAUR, THE DIPLODOCUS, OVER EIGHTY FEET FROM
SNOUT TO TAIL-TIP
A BIG SWAMP-INHABITING DINOSAUR, THE DIPLODOCUS, OVER EIGHTY FEET FROM
SNOUT TO TAIL-TIP

_Nat. Hist. Mus._

While these great creatures pastured and pursued amidst the fronds and
evergreens of the Mesozoic jungles, another now vanished tribe of
reptiles, with a bat-like development of the fore limbs, pursued
insects and one another, first leapt and parachuted and presently flew
amidst the fronds and branches of the forest trees.  These were the
Pterodactyls. These were the first flying creatures with backbones;
they mark a new achievement in the growing powers of vertebrated life.

Moreover some of the reptiles were returning to the sea waters. Three
groups of big swimming beings had invaded the sea from which their
ancestors had come: the Mososaurs, the Plesiosaurs, and Ichthyosaurs. 
Some of these again approached the proportions of our present whales. 
The Ichthyosaurs seem to have been quite seagoing creatures, but the
Plesiosaurs were a type of animal that has no cognate form to-day.  The
body was stout and big with paddles, adapted either for swimming or
crawling through marshes, or along the bottom of shallow waters.  The
comparatively small head was poised on a vast snake of neck, altogether
outdoing the neck of the swan. Either the Plesiosaur swam and searched
for food under the water and fed as the swan will do, or it lurked
under water and snatched at passing fish or beast.

Such was the predominant land life throughout the Mesozoic age.  It was
by our human standards an advance upon anything that had preceded it. 
It had produced land animals greater in size, range, power and
activity, more “vital” as people say, than anything the world had seen
before.  In the seas there had been no such advance but a great
proliferation of new forms of life.  An enormous variety of squid-like
creatures with chambered shells, for the most part coiled, had appeared
in the shallow seas, the Ammonites.  They had had predecessors in the
Palæozoic seas, but now was their age of glory.  To-day they have left
no survivors at all; their nearest relation is the pearly Nautilus, an
inhabitant of tropical waters.  And a new and more prolific type of
fish with lighter, finer scales than the plate-like and tooth-like
coverings that had hitherto prevailed, became and has since remained
predominant in the seas and rivers.', 1198)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('e628d70c-adbe-4b4c-a37b-09ed99cdeedf', '8268eabe-4b74-414e-a1f6-5a266d184560', 7, 'VII The First Birds and the First Mammals', 'In a few paragraphs a picture of the lush vegetation and swarming
reptiles of that first great summer of life, the Mesozoic period, has
been sketched.  But while the Dinosaurs lorded it over the hot selvas
and marshy plains and the Pterodactyls filled the forests with their
flutterings and possibly with shrieks and croakings as they pursued the
humming insect life of the still flowerless shrubs and trees, some less
conspicuous and less abundant forms upon the margins of this abounding
life were acquiring certain powers and learning certain lessons of
endurance, that were to be of the utmost value to their race when at
last the smiling generosity of sun and earth began to fade.

A group of tribes and genera of hopping reptiles, small creatures of
the dinosaur type, seem to have been pushed by competition and the
pursuit of their enemies towards the alternatives of extinction or
adaptation to colder conditions in the higher hills or by the sea.
Among these distressed tribes there was developed a new type of
scale—scales that were elongated into quill-like forms and that
presently branched into the crude beginnings of feathers. These
quill-like scales layover one another and formed a heat-retaining
covering more efficient than any reptilian covering that had hitherto
existed.  So they permitted an invasion of colder regions that were
otherwise uninhabited.  Perhaps simultaneously with these changes there
arose in these creatures a greater solicitude for their eggs.  Most
reptiles are apparently quite careless about their eggs, which are left
for sun and season to hatch.  But some of the varieties upon this new
branch of the tree of life were acquiring a habit of guarding their
eggs and keeping them warm with the warmth of their bodies.

With these adaptations to cold other internal modifications were going
on that made these creatures, the primitive birds, warm-blooded and
independent of basking.  The very earliest birds seem to have been
seabirds living upon fish, and their fore limbs were not wings but
paddles rather after the penguin type.  That peculiarly primitive bird,
the New Zealand Ki-Wi, has feathers of a very simple sort, and neither
flies nor appears to be descended from flying ancestors.  In the
development of the birds, feathers came before wings.  But once the
feather was developed the possibility of making a light spread of
feathers led inevitably to the wing.  We know of the fossil remains of
one bird at least which had reptilian teeth in its jaw and a long
reptilian tail, but which also had a true bird’s wing and which
certainly flew and held its own among the pterodactyls of the Mesozoic
time.  Nevertheless birds were neither varied nor abundant in Mesozoic
times.  If a man could go back to typical Mesozoic country, he might
walk for days and never see or hear such a thing as a bird, though he
would see a great abundance of pterodactyls and insects among the
fronds and reeds.

FOSSIL OF THE ARCHEOPTERYX; ONE OF THE EARLIEST BIRDS
FOSSIL OF THE ARCHEOPTERYX; ONE OF THE EARLIEST BIRDS

_Nat. Hist. Mus._

And another thing he would probably never see, and that would be any
sign of a mammal.  Probably the first mammals were in existence
millions of years before the first thing one could call a bird, but
they were altogether too small and obscure and remote for attention.

HESPERORNIS IN ITS NATIVE SEAS
HESPERORNIS IN ITS NATIVE SEAS

The earliest mammals, like the earliest birds, were creatures driven by
competition and pursuit into a life of hardship and adaptation to cold.
 With them also the scale became quill-like, and was developed into a
heat-retaining covering; and they too underwent modifications, similar
in kind though different in detail, to become warm-blooded and
independent of basking.  Instead of feathers they developed hairs, and
instead of guarding and incubating their eggs they kept them warm and
safe by retaining them inside their bodies until they were almost
mature.  Most of them became altogether vivaparous and brought their
young into the world alive.  And even after their young were born they
tended to maintain a protective and nutritive association with them. 
Most but not all mammals to-day have mammæ and suckle their young.  Two
mammals still live which lay eggs and which have not proper mammæ,
though they nourish their young by a nutritive secretion of the under
skin; these are the duck-billed platypus and the echidna.  The echidna
lays leathery eggs and then puts them into a pouch under its belly, and
so carries them about warm and safe until they hatch.

But just as a visitor to the Mesozoic world might have searched for
days and weeks before finding a bird, so, unless he knew exactly where
to go and look, he might have searched in vain for any traces of a
mammal.  Both birds and mammals would have seemed very eccentric and
secondary and unimportant creatures in Mesozoic times.

THE KI-WI, APTERYX, STILL FOUND IN NEW ZEALAND
THE KI-WI, APTERYX, STILL FOUND IN NEW ZEALAND
_Photo: Autotype Fine Art Co._

SLAB OF LOWER PLIOCENE MARL
SLAB OF LOWER PLIOCENE MARL
Discovered in Greece; it is rich in fossilized bones of early mammals

The Age of Reptiles lasted, it is now guessed, eighty million years.
Had any quasi-human intelligence been watching the world through that
inconceivable length of time, how safe and eternal the sunshine and
abundance must have seemed, how assured the wallowing prosperity of the
dinosaurs and the flapping abundance of the flying lizards! And then
the mysterious rhythms and accumulating forces of the universe began to
turn against that quasi-eternal stability.  That run of luck for life
was running out.  Age by age, myriad of years after myriad of years,
with halts no doubt and retrogressions, came a change towards hardship
and extreme conditions, came great alterations of level and great
redistributions of mountain and sea.  We find one thing in the Record
of the Rocks during the decadence of the long Mesozoic age of
prosperity that is very significant of steadily sustained changes of
condition, and that is a violent fluctuation of living forms and the
appearance of new and strange species. Under the gathering threat of
extinction the older orders and genera are displaying their utmost
capacity for variation and adaptation.  The Ammonites for example in
these last pages of the Mesozoic chapter exhibit a multitude of
fantastic forms.  Under settled conditions there is no encouragement
for novelties; they do not develop, they are suppressed; what is best
adapted is already there.  Under novel conditions it is the ordinary
type that suffers, and the novelty that may have a better chance to
survive and establish itself....

There comes a break in the Record of the Rocks that may represent
several million years.  There is a veil here still, over even the
outline of the history of life.  When it lifts again, the Age of
Reptiles is at an end; the Dinosaurs, the Plesiosaurs and Ichthyosaurs,
the Pterodactyls, the innumerable genera and species of Ammonite have
all gone absolutely.  In all their stupendous variety they have died
out and left no descendants.  The cold has killed them.  All their
final variations were insufficient; they had never hit upon survival
conditions.  The world had passed through a phase of extreme conditions
beyond their powers of endurance, a slow and complete massacre of
Mesozoic life has occurred, and we find now a new scene, a new and
hardier flora, and a new and hardier fauna in possession of the world.

It is still a bleak and impoverished scene with which this new volume
of the book of life begins. The cycads and tropical conifers have given
place very largely to trees that shed their leaves to avoid destruction
by the snows of winter and to flowering plants and shrubs, and where
there was formerly a profusion of reptiles, an increasing variety of
birds and mammals is entering into their inheritance.', 1323)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;
