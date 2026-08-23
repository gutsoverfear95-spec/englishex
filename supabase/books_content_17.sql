-- ============================================================
-- NOI DUNG SACH — phan 17/20
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
  ('37deff08-27b5-446a-add0-e59eb8870559', '8268eabe-4b74-414e-a1f6-5a266d184560', 8, 'VIII The Age of Mammals', 'The opening of the next great period in the life of the earth, the
Cainozoic period, was a period of upheaval and extreme volcanic
activity. Now it was that the vast masses of the Alps and Himalayas and
the mountain backbone of the Rockies and Andes were thrust up, and that
the rude outlines of our present oceans and continents appeared. The
map of the world begins to display a first dim resemblance to the map
of to-day. It is estimated now that between forty and eighty million
years have elapsed from the beginnings of the Cainozoic period to the
present time.

At the outset of the Cainozoic period the climate of the world was
austere.  It grew generally warmer until a fresh phase of great
abundance was reached, after which conditions grew hard again and the
earth passed into a series of extremely cold cycles, the Glacial Ages,
from which apparently it is now slowly emerging.

But we do not know sufficient of the causes of climatic change at
present to forecast the possible fluctuations of climatic conditions
that lie before us.  We may be moving towards increasing sunshine or
lapsing towards another glacial age; volcanic activity and the upheaval
of mountain masses may be increasing or diminishing; we do not know; we
lack sufficient science.

With the opening of this period the grasses appear; for the first time
there is pasture in the world; and with the full development of the
once obscure mammalian type, appear a number of interesting grazing
animals and of carnivorous types which prey upon these.

At first these early mammals seem to differ only in a few characters
from the great herbivorous and carnivorous reptiles that ages before
had flourished and then vanished from the earth.  A careless observer
might suppose that in this second long age of warmth and plenty that
was now beginning, nature was merely repeating the first, with
herbivorous and carnivorous mammals to parallel the herbivorous and
carnivorous dinosaurs, with birds replacing pterodactyls and so on. 
But this would be an altogether superficial comparison.  The variety of
the universe is infinite and incessant; it progresses eternally;
history never repeats itself and no parallels are precisely true. The
differences between the life of the Cainozoic and Mesozoic periods are
far profounder than the resemblances.

A MAMMAL OF THE EARLY CAINOZOIC PERIOD
A MAMMAL OF THE EARLY CAINOZOIC PERIOD

The Titanotherum (Brontops) Robustum

The most fundamental of all these differences lies in the mental life
of the two periods.  It arises essentially out of the continuing
contact of parent and offspring which distinguishes mammalian and in a
lesser degree bird life, from the life of the reptile.  With very few
exceptions the reptile abandons its egg to hatch alone.  The young
reptile has no knowledge whatever of its parent; its mental life, such
as it is, begins and ends with its own experiences. It may tolerate the
existence of its fellows but it has no communication with them; it
never imitates, never learns from them, is incapable of concerted
action with them.  Its life is that of an isolated individual.  But
with the suckling and cherishing of young which was distinctive of the
new mammalian and avian strains arose the possibility of learning by
imitation, of communication, by warning cries and other concerted
action, of mutual control and instruction.  A teachable type of life
had come into the world.

The earliest mammals of the Cainozoic period are but little superior in
brain size to the more active carnivorous dinosaurs, but as we read on
through the record towards modern times we find, in every tribe and
race of the mammalian animals, a steady universal increase in brain
capacity.  For instance we find at a comparatively early stage that
rhinoceros-like beasts appear.  There is a creature, the Titanotherium,
which lived in the earliest division of this period.  It was probably
very like a modern rhinoceros in its habits and needs.  But its brain
capacity was not one tenth that of its living successor.

The earlier mammals probably parted from their offspring as soon as
suckling was over, but, once the capacity for mutual understanding has
arisen, the advantages of continuing the association are very great;
and we presently find a number of mammalian species displaying the
beginnings of a true social life and keeping together in herds, packs
and flocks, watching each other, imitating each other, taking warning
from each other’s acts and cries.  This is something that the world had
not seen before among vertebrated animals. Reptiles and fish may no
doubt be found in swarms and shoals; they have been hatched in
quantities and similar conditions have kept them together, but in the
case of the social and gregarious mammals the association arises not
simply from a community of external forces, it is sustained by an inner
impulse.  They are not merely like one another and so found in the same
places at the same times; they like one another and so they keep
together.

STENOMYLUS HITCHCOCKI--A GIRAFFE-CAMEL
STENOMYLUS HITCHCOCKI—A GIRAFFE-CAMEL

_Nat. Hist. Mus._

SKELETON OF PROTOHIPPUS VENTICOLUS—EARLY HORSE
SKELETON OF PROTOHIPPUS VENTICOLUS--EARLY HORSE

_Nat. Hist. Mus._

This difference between the reptile world and the world of our human
minds is one our sympathies seem unable to pass. We cannot conceive in
ourselves the swift uncomplicated urgency of a reptile’s instinctive
motives, its appetites, fears and hates.  We cannot understand them in
their simplicity because all our motives are complicated; our’s are
balances and resultants and not simple urgencies.  But the mammals and
birds have self-restraint and consideration for other individuals, a
social appeal, a self- control that is, at its lower level, after our
own fashion. We can in consequence establish relations with almost all
sorts of them.  When they suffer they utter cries and make movements
that rouse our feelings.  We can make understanding pets of them with a
mutual recognition.  They can be tamed to self-restraint towards us,
domesticated and taught.

COMPARATIVE SIZES OF BRAINS OF RHINOCEROS AND DINOCERAS
COMPARATIVE SIZES OF BRAINS OF RHINOCEROS AND DINOCERAS

_Nat. Hist. Mus._

That unusual growth of brain which is the central fact of Cainozoic
times marks a new communication and interdependence of individuals.  It
foreshadows the development of human societies of which we shall soon
be telling.

As the Cainozoic period unrolled, the resemblance of its flora and
fauna to the plants and animals that inhabit the world to-day
increased.  The big clumsy Uintatheres and Titanotheres, the
Entelodonts and Hyracodons, big clumsy brutes like nothing living,
disappeared.  On the other hand a series of forms led up by steady
degrees from grotesque and clumsy predecessors to the giraffes, camels,
horses, elephants, deer, dogs and lions and tigers of the existing
world.  The evolution of the horse is particularly legible upon the
geological record.  We have a fairly complete series of forms from a
small tapir-like ancestor in the early Cainozoic.  Another line of
development that has now been pieced together with some precision is
that of the llamas and camels.', 1171)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('6e40f8b6-0bd7-46b2-a4bd-cd6e857a5f02', '8268eabe-4b74-414e-a1f6-5a266d184560', 9, 'IX Monkeys, Apes and Sub-men', 'Naturalists divide the class _Mammalia_ into a number of orders. At the
head of these is the order _Primates_, which includes the lemurs, the
monkeys, apes and man. Their classification was based originally upon
anatomical resemblances and took no account of any mental qualities.

Now the past history of the Primates is one very difficult to decipher
in the geological record.  They are for the most part animals which
live in forests like the lemurs and monkeys or in bare rocky places
like the baboons.  They are rarely drowned and covered up by sediment,
nor are most of them very numerous species, and so they do not figure
so largely among the fossils as the ancestors of the horses, camels and
so forth do.  But we know that quite early in the Cainozoic period,
that is to say some forty million years ago or so, primitive monkeys
and lemuroid creatures had appeared, poorer in brain and not so
specialized as their later successors.

The great world summer of the middle Cainozoic period drew at last to
an end.  It was to follow those other two great summers in the history
of life, the summer of the Coal Swamps and the vast summer of the Age
of Reptiles.  Once more the earth spun towards an ice age.  The world
chilled, grew milder for a time and chilled again.  In the warm past
hippopotami had wallowed through a lush sub-tropical vegetation, and a
tremendous tiger with fangs like sabres, the sabre-toothed tiger, had
hunted its prey where now the journalists of Fleet Street go to and
fro.  Now came a bleaker age and still bleaker ages.  A great weeding
and extinction of species occurred.  A woolly rhinoceros, adapted to a
cold climate, and the mammoth, a big woolly cousin of the elephants,
the Arctic musk ox and the reindeer passed across the scene.  Then
century by century the Arctic ice cap, the wintry death of the great
Ice Age, crept southward.  In England it came almost down to the
Thames, in America it reached Ohio.  There would be warmer spells of a
few thousand years and relapses towards a bitterer cold.

Geologists talk of these wintry phases as the First, Second, Third and
Fourth Glacial Ages, and of the interludes as Interglacial periods.  We
live to-day in a world that is still impoverished and scarred by that
terrible winter.  The First Glacial Age was coming on 600,000 years
ago; the Fourth Glacial Age reached its bitterest some fifty thousand
years ago.  And it was amidst the snows of this long universal winter
that the first man-like beings lived upon our planet.

A MAMMOTH
A MAMMOTH

By the middle Cainozoic period there have appeared various apes with
many quasi-human attributes of the jaws and leg bones, but it is only
as we approach these Glacial Ages that we find traces of creatures that
we can speak of as “almost human.”  These traces are not bones but
implements.  In Europe, in deposits of this period, between half a
million and a million years old, we find flints and stones that have
evidently been chipped intentionally by some handy creature desirous of
hammering, scraping or fighting with the sharpened edge.  These things
have been called “Eoliths” (dawn stones).  In Europe there are no bones
nor other remains of the creature which made these objects, simply the
objects themselves.  For all the certainty we have it may have been
some entirely un-human but intelligent monkey.  But at Trinil in Java,
in accumulations of this age, a piece of a skull and various teeth and
bones have been found of a sort of ape man, with a brain case bigger
than that of any living apes, which seems to have walked erect.  This
creature is now called _Pithecanthropus erectus_, the walking ape man,
and the little trayful of its bones is the only help our imaginations
have as yet in figuring to, ourselves the makers of the Eoliths.

FLINT IMPLEMENTS FOUND IN PILTDOWN REGION
FLINT IMPLEMENTS FOUND IN PILTDOWN REGION

_Nat. Hist. Mus._

It is not until we come to sands that are almost a quarter of a million
years old that we find any other particle of a sub- human being.  But
there are plenty of implements, and they are steadily improving in
quality as we read on through the record.  They are no longer clumsy
Eoliths; they are now shapely instruments made with considerable skill.
 _And they are much bigger than the similar implements afterwards made
by true man._  Then, in a sandpit at Heidelberg, appears a single
quasi-human jaw-bone, a clumsy jaw-bone, absolutely chinless, far
heavier than a true human jaw-bone and narrower, so that it is
improbable the creature’s tongue could have moved about for articulate
speech.  On the strength of this jaw-bone, scientific men suppose this
creature to have been a heavy, almost human monster, possibly with huge
limbs and hands, possibly with a thick felt of hair, and they call it
the Heidelberg Man.

A THEORETICAL RESTORATION OF THE PITHECANTHROPUS ERECTUS BY PROF. RUTOT
A THEORETICAL RESTORATION OF THE PITHECANTHROPUS ERECTUS BY PROF. RUTOT

This jaw-bone is, I think, one of the most tormenting objects in the
world to our human curiosity.  To see it is like looking through a
defective glass into the past and catching just one blurred and
tantalizing glimpse of this Thing, shambling through the bleak
wilderness, clambering to avoid the sabre- toothed tiger, watching the
woolly rhinoceros in the woods. Then before we can scrutinize the
monster, he vanishes.  Yet the soil is littered abundantly with the
indestructible implements he chipped out for his uses.

THE HEIDELBERG MAN
THE HEIDELBERG MAN

The Heidelberg Man, as modelled under the supervision of Prof. Rutot

Still more fascinatingly enigmatical are the remains of a creature
found at Piltdown in Sussex in a deposit that may indicate an age
between a hundred and a hundred and fifty thousand years ago, though
some authorities would put these particular remains back in time to
before the Heidelberg jaw- bone. Here there are the remains of a thick
sub-human skull much larger than any existing ape’s, and a
chimpanzee-like jaw-bone which may or may not belong to it, and, in
addition, a bat-shaped piece of elephant bone evidently carefully
manufactured, through which a hole had apparently been bored.  There is
also the thigh-bone of a deer with cuts upon it like a tally.  That is
all.

THE PILTDOWN SKULL, AS RECONSTRUCTED FROM ORIGINAL FRAGMENT
THE PILTDOWN SKULL, AS RECONSTRUCTED FROM ORIGINAL FRAGMENT

_Nat. Hist. Mus._

What sort of beast was this creature which sat and bored holes in
bones?

Scientific men have named him Eoanthropus, the Dawn Man.  He stands
apart from his kindred; a very different being either from the
Heidelberg creature or from any living ape.  No other vestige like him
is known.  But the gravels and deposits of from one hundred thousand
years onward are increasingly rich in implements of flint and similar
stone. And these implements are no longer rude “Eoliths.” The
archæologists are presently able to distinguish scrapers, borers,
knives, darts, throwing stones and hand axes ....

We are drawing very near to man.  In our next section we shall have to
describe the strangest of all these precursors of humanity, the
Neanderthalers, the men who were almost, but not quite, true men.

But it may be well perhaps to state quite clearly here that no
scientific man supposes either of these creatures, the Heidelberg Man
or _Eoanthropus_, to be direct ancestors of the men of to-day.  These
are, at the closest, related forms.', 1266)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('43358920-4239-4838-a7dd-91718fb287a3', '8268eabe-4b74-414e-a1f6-5a266d184560', 10, 'X The Neanderthaler and the Rhodesian Man', 'About fifty or sixty thousand years ago, before the climax of the
Fourth Glacial Age, there lived a creature on earth so like a man that
until a few years ago its remains were considered to be altogether
human. We have skulls and bones of it and a great accumulation of the
large implements it made and used. It made fires. It sheltered in caves
from the cold. It probably dressed skins roughly and wore them. It was
right-handed as men are.

Yet now the ethnologists tell us these creatures were not true men. 
They were of a different species of the same genus.  They had heavy
protruding jaws and great brow ridges above the eyes and very low
foreheads.  Their thumbs were not opposable to the fingers as men’s
are; their necks were so poised that they could not turn back their
heads and look up to the sky.  They probably slouched along, head down
and forward.  Their chinless jaw-bones resemble the Heidelberg jaw-bone
and are markedly unlike human jaw-bones.  And there were great
differences from the human pattern in their teeth. Their cheek teeth
were more complicated in structure than ours, more complicated and not
less so; they had not the long fangs of our cheek teeth; and also these
quasi-men had not the marked canines (dog teeth) of an ordinary human
being. The capacity of their skulls was quite human, but the brain was
bigger behind and lower in front than the human brain. Their
intellectual faculties were differently arranged.  They were not
ancestral to the human line. Mentally and physically they were upon a
different line from the human line.

Skulls and bones of this extinct species of man were found at
Neanderthal among other places, and from that place these strange
proto-men have been christened Neanderthal Men, or Neanderthalers. They
must have endured in Europe for many hundreds or even thousands of
years.

THE NEANDERTHALER, ACCORDING TO PROF. RUTOT
THE NEANDERTHALER, ACCORDING TO PROF. RUTOT

At that time the climate and geography of our world was very different
from what they are at the present time. Europe for example was covered
with ice reaching as far south as the Thames and into Central Germany
and Russia; there was no Channel separating Britain from France; the
Mediterranean and the Red Sea were great valleys, with perhaps a chain
of lakes in their deeper portions, and a great inland sea spread from
the present Black Sea across South Russia and far into Central Asia. 
Spain and all of Europe not actually under ice consisted of bleak
uplands under a harder climate than that of Labrador, and it was only
when North Africa was reached that one would have found a temperate
climate.  Across the cold steppes of Southern Europe with its sparse
arctic vegetation, drifted such hardy creatures as the woolly mammoth,
and woolly rhinoceros, great oxen and reindeer, no doubt following the
vegetation northward in spring and southward in autumn.

Map: Possible Outline of Europe and Western Asia at the Maximum of the
Fourth Ice Age (about 50,000 years ago)

Such was the scene through which the Neanderthaler wandered, gathering
such subsistence as he could from small game or fruits and berries and
roots.  Possibly he was mainly a vegetarian, chewing twigs and roots. 
His level elaborate teeth suggest a largely vegetarian dietary.  But we
also find the long marrow bones of great animals in his caves, cracked
to extract the marrow.  His weapons could not have been of much avail
in open conflict with great beasts, but it is supposed that he attacked
them with spears at difficult river crossings and even constructed
pitfalls for them.  Possibly he followed the herds and preyed upon any
dead that were killed in fights, and perhaps he played the part of
jackal to the sabre-toothed tiger which still survived in his day. 
Possibly in the bitter hardships of the Glacial Ages this creature had
taken to attacking animals after long ages of vegetarian adaptation.

We cannot guess what this Neanderthal man looked like. He may have been
very hairy and very unhuman-looking indeed.  It is even doubtful if he
went erect.  He may have used his knuckles as well as his feet to hold
himself up. Probably he went about alone or in small family groups.  It
is inferred from the structure of his jaw that he was incapable of
speech as we understand it.

For thousands of years these Neanderthalers were the highest animals
that the European area had ever seen; and then some thirty or
thirty-five thousand years ago as the climate grew warmer a race of
kindred beings, more intelligent, knowing more, talking and
co-operating together, came drifting into the Neanderthaler’s world
from the south.  They ousted the Neanderthalers from their caves and
squatting places; they hunted the same food; they probably made war
upon their grisly predecessors and killed them off.  These newcomers
from the south or the east—for at present we do not know their region
of origin—who at last drove the Neanderthalers out of existence
altogether, were beings of our own blood and kin, the first True Men. 
Their brain-cases and thumbs and necks and teeth were anatomically the
same as our own.  In a cave at Cro-Magnon and in another at Grimaldi, a
number of skeletons have been found, the earliest truly human remains
that are so far known.

So it is our race comes into the Record of the Rocks, and the story of
mankind begins.

COMPARISON OF (1) MODERN SKULL AND (2) RHODESIAN SKULL
COMPARISON OF (1) MODERN SKULL AND (2) RHODESIAN SKULL

_Nat. Hist. Mus._

The world was growing liker our own in those days though the climate
was still austere.  The glaciers of the Ice Age were receding in
Europe; the reindeer of France and Spain presently gave way to great
herds of horses as grass increased upon the steppes, and the mammoth
became more and more rare in southern Europe and finally receded
northward altogether ....

We do not know where the True Men first originated.  But in the summer
of 1921, an extremely interesting skull was found together with pieces
of a skeleton at Broken Hill in South Africa, which seems to be a relic
of a third sort of man, intermediate in its characteristics between the
Neanderthaler and the human being.  The brain-case indicates a brain
bigger in front and smaller behind than the Neanderthaler’s, and the
skull was poised erect upon the backbone in a quite human way.  The
teeth also and the bones are quite human. But the face must have been
ape-like with enormous brow ridges and a ridge along the middle of the
skull.  The creature was indeed a true man, so to speak, with an ape-
like, Neanderthaler face.  This Rhodesian Man is evidently still closer
to real men than the Neanderthal Man.

This Rhodesian skull is probably only the second of what in the end may
prove to be a long list of finds of sub-human species which lived on
the earth in the vast interval of time between the beginnings of the
Ice Age and the appearance of their common heir, and perhaps their
common exterminator, the True Man.  The Rhodesian skull itself may not
be very ancient.  Up to the time of publishing this book there has been
no exact determination of its probable age. It may be that this
sub-human creature survived in South Africa until quite recent times.', 1244)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('79f669e3-f75d-4bcb-aa48-b3f03e2221ed', '8268eabe-4b74-414e-a1f6-5a266d184560', 11, 'XI The First True Men', 'The earliest signs and traces at present known to science, of a
humanity which is indisputably kindred with ourselves, have been found
in western Europe and particularly in France and Spain. Bones, weapons,
scratchings upon bone and rock, carved fragments of bone, and paintings
in caves and upon rock surfaces dating. it is supposed. from 30,000
years ago or more, have been discovered in both these countries. Spain
is at present the richest country in the world in these first relics of
our real human ancestors.

Of course our present collections of these things are the merest
beginnings of the accumulations we may hope for in the future, when
there are searchers enough to make a thorough examination of all
possible sources and when other countries in the world, now
inaccessible to archæologists, have been explored in some detail.  The
greater part of Africa and Asia has never even been traversed yet by a
trained observer interested in these matters and free to explore, and
we must be very careful therefore not to conclude that the early true
men were distinctively inhabitants of western Europe or that they first
appeared in that region.

In Asia or Africa or submerged beneath the sea of to-day there may be
richer and much earlier deposits of real human remains than anything
that has yet come to light.  I write in Asia or Africa, and I do not
mention America because so far there have been no finds at all of any
of the higher Primates, either of great apes, sub-men, Neanderthalers
nor early true men.  This development of life seems to have been an
exclusively old world development, and it was only apparently at the
end of the Old Stone Age that human beings first made their way across
the land connexion that is now cut by Behring Straits, into the
American continent.

ONE OF THE MARVELLOUS CAVE PAINTINGS OF ALTAMIRA, NORTH SPAIN
ONE OF THE MARVELLOUS CAVE PAINTINGS OF ALTAMIRA, NORTH SPAIN

The Walls of the Caves are covered in these representations of Bulls,
etc., painted in the soft tones of red shaded to black. They may be
fifteen or twenty thousand years old

These first real human beings we know of in Europe appear already to
have belonged to one or other of at least two very distinct races. One
of these races was of a very high type indeed; it was tall and big
brained.  One of the women’s skulls found exceeds in capacity that of
the average man of to-day.  One of the men’s skeletons is over six feet
in height.  The physical type resembled that of the North American
Indian.  From the Cro-Magnon cave in which the first skeletons were
found these people have been called Cro-Magnards.  They were savages,
but savages of a high order. The second race, the race of the Grimaldi
cave remains, was distinctly negroid in its characters.  Its nearest
living affinities are the Bushmen and Hottentots of South Africa.  It
is interesting to find at the very outset of the known human story,
that mankind was already racially divided into at least two main
varieties; and one is tempted to such unwarrantable guesses as that the
former race was probably brownish rather than black and that it came
from the East or North, and that the latter was blackish rather than
brown and came from the equatorial south.

BONE CARVINGS OF THE PALÆOLITHIC PERIOD
BONE CARVINGS OF THE PALÆOLITHIC PERIOD

(1 and 2) Mammoth tusk carved to shape of Reindeer, (3) Dagger Handle
representing Mammoth, and (4) Bone engraved with Horses’ Heads

_Brit. Mus._

And these savages of perhaps forty thousand years ago were so human
that they pierced shells to make necklaces, painted themselves, carved
images of bone and stone, scratched figures on rocks and bones, and
painted rude but often very able sketches of beasts and the like upon
the smooth walls of caves and upon inviting rock surfaces.  They made a
great variety of implements, much smaller in scale and finer than those
of the Neanderthal men.  We have now in our museums great quantities of
their implements, their statuettes, their rock drawings and the like.

The earliest of them were hunters.  Their chief pursuit was the wild
horse, the little bearded pony of that time.  They followed it as it
moved after pasture.  And also they followed the bison.  They knew the
mammoth, because they have left us strikingly effective pictures of
that creature.  To judge by one rather ambiguous drawing they trapped
and killed it.

They hunted with spears and throwing stones.  They do not seem to have
had the bow, and it is doubtful if they had yet learnt to tame any
animals.  They had no dogs.  There is one carving of a horse’s head and
one or two drawings that suggest a bridled horse, with a twisted skin
or tendon round it.  But the little horses of that age and region could
not have carried a man, and if the horse was domesticated it was used
as a led horse.  It is doubtful and improbable that they had yet learnt
the rather unnatural use of animal’s milk as food.

They do not seem to have erected any buildings though they may have had
tents of skins, and though they made clay figures they never rose to
the making of pottery.  Since they had no cooking implements their
cookery must have been rudimentary or nonexistent.  They knew nothing
of cultivation and nothing of any sort of basket work or woven cloth.
Except for their robes of skin or fur they were naked painted savages.

These earliest known men hunted the open steppes of Europe for a
hundred centuries perhaps, and then slowly drifted and changed before a
change of climate.  Europe, century by century, was growing milder and
damper. Reindeer receded northward and eastward, and bison and horse
followed.  The steppes gave way to forests, and red deer took the place
of horse and bison. There is a change in the character of the
implements with this change in their application.  River and lake
fishing becomes of great importance to men, and fine implements of bone
increased.  “The bone needles of this age,” says de Mortillet, “are
much superior to those of later, even historical times, down to the
Renaissance.  The Romans, for example, never had needles comparable to
those of this epoch.”

THE RUTOT BUST OF A CRO-MAGNON MAN
THE RUTOT BUST OF A CRO-MAGNON MAN

Almost fifteen or twelve thousand years ago a fresh people drifted into
the south of Spain, and left very remarkable drawings of themselves
upon exposed rock faces there.  These were the Azilians (named from the
Mas d’Azil cave). They had the bow; they seem to have worn feather
headdresses; they drew vividly; but also they had reduced their
drawings to a sort of symbolism—a man for instance would be represented
by a vertical dab with two or three horizontal dabs—that suggest the
dawn of the writing idea. Against hunting sketches there are often
marks like tallies. One drawing shows two men smoking out a bees’ nest.

FIGHT OF BOWMEN
Among the most recent discoveries of Palæolithic Art are these
specimens found in 1920 in Spain.  They are probably ten or twelve
thousand years old

These are the latest of the men that we call Palæolithic (Old Stone
Age) because they had only chipped implements.  By ten or twelve
thousand years a new sort of life has dawned in Europe, men have learnt
not only to chip but to polish and grind stone implements, and they
have begun cultivation.  The Neolithic Age (New Stone Age) was
beginning.

It is interesting to note that less than a century ago there still
survived in a remote part of the world, in Tasmania, a race of human
beings at a lower level of physical and intellectual development than
any of these earliest races of mankind who have left traces in Europe. 
These people had long ago been cut off by geographical changes from the
rest of the species, and from stimulation and improvement.  They seem
to have degenerated rather than developed.  They lived a base life
subsisting upon shellfish and small game.  They had no habitations but
only squatting places.  They were real men of our species, but they had
neither the manual dexterity nor the artistic powers of the first true
men.', 1399)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('dc4a2672-2280-41cb-abb0-1f8e5f06379b', '8268eabe-4b74-414e-a1f6-5a266d184560', 12, 'XII Primitive Thought', 'And now let us indulge in a very interesting speculation; how did it
feel to be a man in those early days of the human adventure? How did
men think and what did they think in those remote days of hunting and
wandering four hundred centuries ago before seed time and harvest
began. Those were days long before the written record of any human
impressions, and we are left almost entirely to inference and guesswork
in our answers to these questions.

The sources to which scientific men have gone in their attempts to
reconstruct that primitive mentality are very various.  Recently the
science of psycho-analysis, which analyzes the way in which the
egotistic and passionate impulses of the child are restrained,
suppressed, modified or overlaid, to adapt them to the needs of social
life, seems to have thrown a considerable amount of light upon the
history of primitive society; and another fruitful source of suggestion
has been the study of the ideas and customs of such contemporary
savages as still survive.  Again there is a sort of mental
fossilization which we find in folk-lore and the deep-lying irrational
superstitions and prejudices that still survive among modern civilized
people.  And finally we have in the increasingly numerous pictures,
statues, carvings, symbols and the like, as we draw near to our own
time, clearer and clearer indications of what man found interesting and
worthy of record and representation.

Primitive man probably thought very much as a child thinks, that is to
say in a series of imaginative pictures.  He conjured up images or
images presented themselves to his mind, and he acted in accordance
with the emotions they aroused.  So a child or an uneducated person
does to-day. Systematic thinking is apparently a comparatively late
development in human experience; it has not played any great part in
human life until within the last three thousand years.  And even to-day
those who really control and order their thoughts are but a small
minority of mankind.  Most of the world still lives by imagination and
passion.

Probably the earliest human societies, in the opening stages of the
true human story, were small family groups.  Just as the flocks and
herds of the earlier mammals arose out of families which remained
together and multiplied, so probably did the earliest tribes.  But
before this could happen a certain restraint upon the primitive
egotisms of the individual had to be established.  The fear of the
father and respect for the mother had to be extended into adult life,
and the natural jealousy of the old man of the group for the younger
males as they grew up had to be mitigated.  The mother on the other
hand was the natural adviser and protector of the young.  Human social
life grew up out of the reaction between the crude instinct of the
young to go off and pair by themselves as they grew up, on the one
hand, and the dangers and disadvantages of separation on the other.  An
anthropological writer of great genius, J. J. Atkinson, in his _Primal
Law_, has shown how much of the customary law of savages, the _Tabus_,
that are so remarkable a fact in tribal life, can be ascribed to such a
mental adjustment of the needs of the primitive human animal to a
developing social life, and the later work of the psycho- analysts has
done much to confirm his interpretation of these possibilities.

Some speculative writers would have us believe that respect and fear of
the Old Man and the emotional reaction of the primitive savage to older
protective women, exaggerated in dreams and enriched by fanciful mental
play, played a large part in the beginnings of primitive religion and
in the conception of gods and goddesses.  Associated with this respect
for powerful or helpful personalities was a dread and exaltation of
such personages after their deaths, due to their reappearance in
dreams.  It was easy to believe they were not truly dead but only
fantastically transferred to a remoteness of greater power.

The dreams, imaginations and fears of a child are far more vivid and
real than those of a modern adult, and primitive man was always
something of a child. He was nearer to the animals also, and he could
suppose them to have motives and reactions like his own.  He could
imagine animal helpers, animal enemies, animal gods.  One needs to have
been an imaginative child oneself to realize again how important,
significant, portentous or friendly, strangely shaped rocks, lumps of
wood, exceptional trees or the like may have appeared to the men of the
Old Stone Age, and how dream and fancy would create stories and legends
about such things that would become credible as they told them.  Some
of these stories would be good enough to remember and tell again.  The
women would tell them to the children and so establish a tradition.  To
this day most imaginative children invent long stories in which some
favourite doll or animal or some fantastic semi-human being figures as
the hero, and primitive man probably did the same—with a much stronger
disposition to believe his hero real.

RELICS OF THE STONE AGE
RELICS OF THE STONE AGE

Chert implements from Somaliland.  In general form they are similar to
those found in Western and Northern Europe

_Brit. Mus._

For the very earliest of the true men that we know of were probably
quite talkative beings.  In that way they have differed from the
Neanderthalers and had an advantage over them.  The Neanderthaler may
have been a dumb animal. Of course the primitive human speech was
probably a very scanty collection of names, and may have been eked out
with gestures and signs.

There is no sort of savage so low as not to have a kind of science of
cause and effect.  But primitive man was not very critical in his
associations of cause with effect; he very easily connected an effect
with something quite wrong as its cause. “You do so and so,” he said,
“and so and so happens.”  You give a child a poisonous berry and it
dies.  You eat the heart of a valiant enemy and you become strong. 
There we have two bits of cause and effect association, one true one
false.  We call the system of cause and effect in the mind of a savage,
Fetish; but Fetish is simply savage science.  It differs from modern
science in that it is totally unsystematic and uncritical and so more
frequently wrong.

WIDESPREAD SIMILARITY OF MEN OF THE STONE AGE
WIDESPREAD SIMILARITY OF MEN OF THE STONE AGE

On the left is a flint implement excavated in Gray’s Inn Lane, London;
on the right one of similar form chipped by primitive men of Somaliland

_Brit. Mus._

In many cases it is not difficult to link cause and effect, in many
others erroneous ideas were soon corrected by experience; but there was
a large series of issues of very great importance to primitive man,
where he sought persistently for causes and found explanations that
were wrong but not sufficiently wrong nor so obviously wrong as to be
detected.  It was a matter of great importance to him that game should
be abundant or fish plentiful and easily caught, and no doubt he tried
and believed in a thousand charms, incantations and omens to determine
these desirable results.  Another great concern of his was illness and
death.  Occasionally infections crept through the land and men died of
them.  Occasionally men were stricken by illness and died or were
enfeebled without any manifest cause.  This too must have given the
hasty, emotional mind of primitive man much feverish exercise. Dreams
and fantastic guesses made him blame this, or appeal for help to that
man or beast or thing.  He had the child’s aptitude for fear and panic.

Quite early in the little human tribe, older, steadier minds sharing
the fears, sharing the imaginations, but a little more forceful than
the others, must have asserted themselves, to advise, to prescribe, to
command. This they declared unpropitious and that imperative, this an
omen of good and that an omen of evil.  The expert in Fetish, the
Medicine Man, was the first priest.  He exhorted, he interpreted
dreams, he warned, he performed the complicated hocus pocus that
brought luck or averted calamity.  Primitive religion was not so much
what we now call religion as practice and observance, and the early
priest dictated what was indeed an arbitrary primitive practical
science.', 1419)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('f1787ed7-1de4-4592-abd2-3ef1a2b31072', '8268eabe-4b74-414e-a1f6-5a266d184560', 13, 'XIII The Beginnings of Cultivation', 'We are still very ignorant about the beginnings of cultivation and
settlement in the world although a vast amount of research and
speculation has been given to these matters in the last fifty years.
All that we can say with any confidence at present is that somewhen
about 15,000 and 12,000 B.C. while the Azilian people were in the south
of Spain and while the remnants of the earlier hunters were drifting
northward and eastward, somewhere in North Africa or Western Asia or in
that great Mediterranean valley that is now submerged under the waters
of the Mediterranean sea, there were people who, age by age, were
working out two vitally important things; they were beginning
cultivation and they were domesticating animals. They were also
beginning to make, in addition to the chipped implements of their
hunter forebears, implements of polished stone. They had discovered the
possibility of basketwork and roughly woven textiles of plant fibre,
and they were beginning to make a rudely modelled pottery.

They were entering upon a new phase in human culture, the Neolithic
phase (New Stone Age) as distinguished from the Palæolithic (Old Stone)
phase of the Cro-Magnards, the Grimaldi people, the Azilians and their
like.  [1] Slowly these Neolithic people spread over the warmer parts
of the world; and the arts they had mastered, the plants and animals
they had learnt to use, spread by imitation and acquisition even more
widely than they did.  By 10,000 B.C., most of mankind was at the
Neolithic level.

Now the ploughing of land, the sowing of seed, the reaping of harvest,
threshing and grinding, may seem the most obviously reasonable steps to
a modern mind just as to a modern mind it is a commonplace that the
world is round.  What else could you do? people will ask.  What else
can it be?  But to the primitive man of twenty thousand years ago
neither of the systems of action and reasoning that seem so sure and
manifest to us to-day were at all obvious.  He felt his way to
effectual practice through a multitude of trials and misconceptions,
with fantastic and unnecessary elaborations and false interpretations
at every turn.  Somewhere in the Mediterranean region, wheat grew wild;
and man may have learnt to pound and then grind up its seeds for food
long before he learnt to sow.  He reaped before he sowed.

And it is a very remarkable thing that throughout the world wherever
there is sowing and harvesting there is still traceable the vestiges of
a strong primitive association of the idea of sowing with the idea of a
blood sacrifice, and primarily of the sacrifice of a human being.  The
study of the original entanglement of these two things is a profoundly
attractive one to the curious mind; the interested reader will find it
very fully developed in that monumental work, Sir J. G. Frazer’s
_Golden Bough_.  It was an entanglement, we must remember, in the
childish, dreaming, myth-making primitive mind; no reasoned process
will explain it.  But in that world of 12,000 to 20,000 years ago, it
would seem that whenever seed time came round to the Neolithic peoples
there was a human sacrifice.  And it was not the sacrifice of any mean
or outcast person; it was the sacrifice usually of a chosen youth or
maiden, a youth more often who was treated with profound deference and
even worship up to the moment of his immolation.  He was a sort of
sacrificial god-king, and all the details of his killing had become a
ritual directed by the old, knowing men and sanctioned by the
accumulated usage of ages.

NEOLITHIC FLINT IMPLEMENTS
NEOLITHIC FLINT IMPLEMENTS

_Brit. Mus._

At first primitive men, with only a very rough idea of the seasons,
must have found great difficulty in determining when was the propitious
moment for the seed-time sacrifice and the sowing.  There is some
reason for supposing that there was an early stage in human experience
when men had no idea of a year. The first chronology was in lunar
months; it is supposed that the years of the Biblical patriarchs are
really moons, and the Babylonian calendar shows distinct traces of an
attempt to reckon seed time by taking thirteen lunar months to see it
round. This lunar influence upon the calendar reaches down to our own
days. If usage did not dull our sense of its strangeness we should
think it a very remarkable thing indeed that the Christian Church does
not commemorate the Crucifixion and Resurrection of Christ on the
proper anniversaries but on dates that vary year by year with the
phases of the moon.

It may be doubted whether the first agriculturalists made any
observation of the stars.  It is more likely that stars were first
observed by migratory herdsmen, who found them a convenient mark of
direction.  But once their use in determining seasons was realized,
their importance to agriculture became very great.  The seed-time
sacrifice was linked up with the southing or northing of some prominent
star.  A myth and worship of that star was for primitive man an almost
inevitable consequence.

NEOLITHICISM OF TO-DAY
NEOLITHICISM OF TO-DAY

Spearheads, exactly as in the true Neolithic days, but made recently by
Australian Natives,

(1) Made from a telegraph insulator;

(2) from a piece of broken bottle glass.

_Brit. Mus._

It is easy to see how important the man of knowledge and experience,
the man who knew about the blood sacrifice and the stars, became in
this early Neolithic world.

The fear of uncleanness and pollution, and the methods of cleansing
that were advisable, constituted another source of power for the
knowledgeable men and women. For there have always been witches as well
as wizards, and priestesses as well as priests.  The early priest was
really not so much a religious man as a man of applied science.  His
science was generally empirical and often bad; he kept it secret from
the generality of men very jealously; but that does not alter the fact
that his primary function was knowledge and that his primary use was a
practical use.

SPECIMEN OF NEOLITHIC POTTERY
SPECIMEN OF NEOLITHIC POTTERY

Dug up at Mortlake from the Thames Bed

_Brit. Mus._

Twelve or fifteen thousand years ago, in all the warm and fairly
well-watered parts of the Old World these Neolithic human communities,
with their class and tradition of priests and priestesses and their
cultivated fields and their development of villages and little walled
cities, were spreading.  Age by age a drift and exchange of ideas went
on between these communities.  Eliot Smith and Rivers have used the
term “Heliolithic culture” for the culture of these first agricultural
peoples.  “Heliolithic” (Sun and Stone) is not perhaps the best
possible word to use for this, but until scientific men give us a
better one we shall have to use it.  Originating somewhere in the
Mediterranean and western Asiatic area, it spread age by age eastward
and from island to island across the Pacific until it may even have
reached America and mingled with the more primitive ways of living of
the Mongoloid immigrants coming down from the North.

Wherever the brownish people with the Heliolithic culture went they
took with them all or most of a certain group of curious ideas and
practices.  Some of them are such queer ideas that they call for the
explanation of the mental expert.  They made pyramids and great mounds,
and set up great circles of big stones, perhaps to facilitate the
astronomical observation of the priests; they made mummies of some or
all of their dead; they tattooed and circumcized; they had the old
custom, known as the _couvade_, of sending the _father_ to bed and rest
when a child was born, and they had as a luck symbol the well-known
Swastika.

If we were to make a map of the world with dots to show how far these
group practices have left their traces, we should make a belt along the
temperate and sub-tropical coasts of the world from Stonehenge and
Spain across the world to Mexico and Peru.  But Africa below the
equator, north central Europe, and north Asia would show none of these
dottings; there lived races who were developing along practically
independent lines.

[1] The term Palæolithic we may note is also used to cover the
Neanderthaler and even the Eolithic implements.  The pre-human age is
called the “Older Palæolithic;” the age of true men using unpolished
stones in the “Newer Palæolithic.”', 1418)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('950eec85-4970-411d-a26f-cec7bf52c4be', '8268eabe-4b74-414e-a1f6-5a266d184560', 14, 'XIV Primitive Neolithic Civilizations', 'About 10,000 B.C. the geography of the world was very similar in its
general outline to that of the world to-day. It is probable that by
that time the great barrier across the Straits of Gibraltar that had
hitherto banked back the ocean waters from the Mediterranean valley had
been eaten through, and that the Mediterranean was a sea following much
the same coastlines as it does now. The Caspian Sea was probably still
far more extensive than it is at present, and it may have been
continuous with the Black Sea to the north of the Caucasus Mountains.
About this great Central Asian sea lands that are now steppes and
deserts were fertile and habitable. Generally it was a moister and more
fertile world. European Russia was much more a land of swamp and lake
than it is now, and there may still have been a land connexion between
Asia and America at Behring Straits.

It would have been already possible at that time to have distinguished
the main racial divisions of mankind as we know them to-day.  Across
the warm temperate regions of this rather warmer and better-wooded
world, and along the coasts, stretched the brownish peoples of the
Heliolithic culture, the ancestors of the bulk of the living
inhabitants of the Mediterranean world, of the Berbers, the Egyptians
and of much of the population of South and Eastern Asia.  This great
race had of course a number of varieties.  The Iberian or Mediterranean
or “dark-white” race of the Atlantic and Mediterranean coast, the
“Hamitic” peoples which include the Berbers and Egyptians, the
Dravidians; the darker people of India, a multitude of East Indian
people, many Polynesian races and the Maoris are all divisions of
various value of this great main mass of humanity.  Its western
varieties are whiter than its eastern.

In the forests of central and northern Europe a more blonde variety of
men with blue eyes was becoming distinguishable, branching off from the
main mass of brownish people, a variety which many people now speak of
as the Nordic race.  In the more open regions of northeastern Asia was
another differentiation of this brownish humanity in the direction of a
type with more oblique eyes, high cheek-bones, a yellowish skin, and
very straight black hair, the Mongolian peoples.  In South Africa,
Australia, in many tropical islands in the south of Asia were remains
of the early negroid peoples. The central parts of Africa were already
a region of racial intermixture. Nearly all the coloured races of
Africa to-day seem to be blends of the brownish peoples of the north
with a negroid substratum.

A Diagrammatic Summary of Current Ideas of the Relationship of Human
Races

We have to remember that human races can all interbreed freely and that
they separate, mingle and reunite as clouds do.  Human races do not
branch out like trees with branches that never come together again.  It
is a thing we need to bear constantly in mind, this remingling of races
at any opportunity.  It will save us from many cruel delusions and
prejudices if we do so.  People will use such a word as race in the
loosest manner, and base the most preposterous generalizations upon it.
 They will speak of a “British” race or of a “European” race.  But
nearly all the European nations are confused mixtures of brownish,
dark-white, white and Mongolian elements.

A MAYA STELE
A MAYA STELE

Showing a worshipper and a Serpent God.  Note the grotesque faces in
the writing

_Brit. Mus._

It was at the Neolithic phase of human development that peoples of the
Mongolian breed first made their way into America.  Apparently they
came by way of Behring Straits and spread southward.  They found
caribou, the American reindeer, in the north and great herds of bison
in the south.  When they reached South America there were still living
the Glyptodon, a gigantic armadillo, and the Megatherium, a monstrous
clumsy sloth as high as an elephant.  They probably exterminated the
latter beast, which was as helpless as it was big.

The greater portion of these American tribes never rose above a hunting
nomadic Neolithic life.  They never discovered the use of iron, and
their chief metal possessions were native gold and copper.  But in
Mexico, Yucatan and Peru conditions existed favourable to settled
cultivation, and here about 1000 B.C. or so arose very interesting
civilizations of a parallel but different type from the old-world
civilization.  Like the much earlier primitive civilizations of the old
world these communities displayed a great development of human
sacrifice about the processes of seed time and harvest; but while in
the old world, as we shall see, these primary ideas were ultimately
mitigated, complicated and overlaid by others, in America they
developed and were elaborated, to a very high degree of intensity. 
These American civilized countries were essentially priest-ruled
countries; their war chiefs and rulers were under a rigorous rule of
law and omen.

These priests carried astronomical science to a high level of accuracy.
 They knew their year better than the Babylonians of whom we shall
presently tell.  In Yucatan they had a kind of writing, the Maya
writing, of the most curious and elaborate character.  So far as we
have been able to decipher it, it was used mainly for keeping the exact
and complicated calendars upon which the priests expended their
intelligence. The art of the Maya civilization came to a climax about
700 or 800 A.D.  The sculptured work of these people amazes the modern
observer by its great plastic power and its frequent beauty, and
perplexes him by a grotesqueness and by a sort of insane
conventionality and intricacy outside the circle of his ideas.  There
is nothing quite like it in the old world.  The nearest approach, and
that is a remote one, is found in archaic Indian carvings. Everywhere
there are woven feathers and serpents twine in and out.  Many Maya
inscriptions resemble a certain sort of elaborate drawing made by
lunatics in European asylums, more than any other old-world work.  It
is as if the Maya mind had developed upon a different line from the
old-world mind, had a different twist to its ideas, was not, by
old-world standards, a rational mind at all.

This linking of these aberrant American civilizations to the idea of a
general mental aberration finds support in their extraordinary
obsession by the shedding of human blood.  The Mexican civilization in
particular ran blood; it offered thousands of human victims yearly. 
The cutting open of living victims, the tearing out of the still
beating heart, was an act that dominated the minds and lives of these
strange priesthoods.  The public life, the national festivities all
turned on this fantastically horrible act.

NEOLITHIC WARRIOR
NEOLITHIC WARRIOR

Modelled from drawing by Prof. Rutot

The ordinary existence of the common people in these communities was
very like the ordinary existence of any other barbaric peasantry. 
Their pottery, weaving and dyeing was very good.  The Maya writing was
not only carven on stone but written and painted upon skins and the
like.  The European and American museums contain many enigmatical Maya
manuscripts of which at present little has been deciphered except the
dates.  In Peru there were beginnings of a similar writing but they
were superseded by a method of keeping records by knotting cords.  A
similar method of mnemonics was in use in China thousands of years ago.

In the old world before 4000 or 5000 B.C., that is to say three or four
thousand years earlier, there were primitive civilizations not unlike
these American civilizations; civilizations based upon a temple, having
a vast quantity of blood sacrifices and with an intensely astronomical
priesthood.  But in the old world the primitive civilizations reacted
upon one another and developed towards the conditions of our own world.
 In America these primitive civilizations never progressed beyond this
primitive stage.  Each of them was in a little world of its own. 
Mexico it seems knew little or nothing of Peru, until the Europeans
came to America.  The potato, which was the principal food stuff in
Peru, was unknown in Mexico.

Age by age these peoples lived and marvelled at their gods and made
their sacrifices and died.  Maya art rose to high levels of decorative
beauty.  Men made love and tribes made war.  Drought and plenty,
pestilence and health, followed one another.  The priests elaborated
their calendar and their sacrificial ritual through long centuries, but
made little progress in other directions.', 1418)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('54781d87-1af0-4c3f-ad16-fbec6ffb0298', '8268eabe-4b74-414e-a1f6-5a266d184560', 15, 'XV Sumeria, Early Egypt and Writing', 'The old world is a wider, more varied stage than the new. By 6000 or
7000 B.C. there were already quasi-civilized communities almost at the
Peruvian level, appearing in various fertile regions of Asia and in the
Nile valley. At that time north Persia and western Turkestan and south
Arabia were all more fertile than they are now, and there are traces of
very early communities in these regions. It is in lower Mesopotamia
however and in Egypt that there first appear cities, temples,
systematic irrigation, and evidences of a social organization rising
above the level of a mere barbaric village-town. In those days the
Euphrates and Tigris flowed by separate mouths into the Persian Gulf,
and it was in the country between them that the Sumerians built their
first cities. About the same time, for chronology is still vague, the
great history of Egypt was beginning.

These Sumerians appear to have been a brownish people with prominent
noses.  They employed a sort of writing that has been deciphered, and
their language is now known.  They had discovered the use of bronze and
they built great tower-like temples of sun-dried brick. The clay of
this country is very fine; they used it to write upon, and so it is
that their inscriptions have been preserved to us.  They had cattle,
sheep, goats and asses, but no horses.  They fought on foot, in close
formation, carrying spears and shields of skin. Their clothing was of
wool and they shaved their heads.

Each of the Sumerian cities seems generally to have been an independent
state with a god of its own and priests of its own.  But sometimes one
city would establish an ascendancy over others and exact tribute from
their population.  A very ancient inscription at Nippur records the
“empire,” the first recorded empire, of the Sumerian city of Erech. 
Its god and its priest-king claimed an authority from the Persian Gulf
to the Red Sea.

BRICK OF HAMMURABI, KING OF BABYLON ABOUT 2200 B.C.
BRICK OF HAMMURABI, KING OF BABYLON ABOUT 2200 B.C.

Note the cuneiform characters of the inscription, which records the
building of a temple to a Sun God

At first writing was merely an abbreviated method of pictorial record. 
Even before Neolithic times men were beginning to write.  The Azilian
rock pictures to which we have already referred show the beginning of
the process. Many of them record hunts and expeditions, and in most of
these the human figures are plainly drawn.  But in some the painter
would not bother with head and limbs; he just indicated men by a
vertical and one or two transverse strokes.  From this to a
conventional condensed picture writing was an easy transition.  In
Sumeria, where the writing was done on clay with a stick, the dabs of
the characters soon became unrecognizably unlike the things they stood
for, but in Egypt where men painted on walls and on strips of the
papyrus reed (the first paper) the likeness to the thing imitated
remained.  From the fact that the wooden styles used in Sumeria made
wedge-shaped marks, the Sumerian writing is called cuneiform (=
wedge-shaped).

EBONY CYLINDER SEALS OF FIRST EGYPTIAN DYNASTY
EBONY CYLINDER SEALS OF FIRST EGYPTIAN DYNASTY

Recovered from the Tombs at Abydos in 1921 by the British School of
Archæology.  They give evidence of early form of block printing

An important step towards writing was made when pictures were used to
indicate not the thing represented but some similar thing.  In the
rebus dear to children of a suitable age, this is still done to-day. 
We draw a camp with tents and a bell, and the child is delighted to
guess that this is the Scotch name Campbell.  The Sumerian language was
a language made up of accumulated syllables rather like some
contemporary Amerindian languages, and it lent itself very readily to
this syllabic method of writing words expressing ideas that could not
be conveyed by pictures directly.  Egyptian writing underwent parallel
developments.  Later on, when foreign peoples with less distinctly
syllabled methods of speech were to learn and use these picture scripts
they were to make those further modifications and simplifications that
developed at last into alphabetical writing.  All the true alphabets of
the later world derived from a mixture of the Sumerian cuneiform and
the Egyptian hieroglyphic (priest writing).  Later in China there was
to develop a conventionalized picture writing, but in China it never
got to the alphabetical stage.

The invention of writing was of very great importance in the
development of human societies.  It put agreements, laws, commandments
on record.  It made the growth of states larger than the old city
states possible.  It made a continuous historical consciousness
possible.  The command of the priest or king and his seal could go far
beyond his sight and voice and could survive his death.  It is
interesting to note that in ancient Sumeria seals were greatly used.  A
king or a nobleman or a merchant would have his seal often very
artistically carved, and would impress it on any clay document he
wished to authorize.  So close had civilization got to printing six
thousand years ago.  Then the clay was dried hard and became permanent.
 For the reader must remember that in the land of Mesopotamia for
countless years, letters, records and accounts were all written on
comparatively indestructible tiles.  To that fact we owe a great wealth
of recovered knowledge.

THE SAKHARA PYRAMIDS
THE SAKHARA PYRAMIDS

The Pyramid to the right, the step Pyramid, is the oldest stone
building in the world

_Photo: F. Boyer_

Bronze, copper, gold, silver and, as a precious rarity, meteoric iron
were known in both Sumeria and Egypt at a very early stage.

VIEW FROM THE SUMMIT OF THE GREAT PYRAMID OF CHEOPS
VIEW FROM THE SUMMIT OF THE GREAT PYRAMID OF CHEOPS

Showing how these great monuments dominate the plain

_Photo: D. McLeish_

THE TEMPLE OF HATHOR AT DENDEREH
THE TEMPLE OF HATHOR AT DENDEREH

_Photo: D. McLeish_

Daily life in those first city lands of the old world must have been
very similar in both Egypt and Sumeria.  And except for the asses and
cattle in the streets it must have been not unlike the life in the Maya
cities of America three or four thousand years later.  Most of the
people in peace time were busy with irrigation and cultivation—except
on days of religious festivity. They had no money and no need for it. 
They managed their small occasional trades by barter.  The princes and
rulers who alone had more than a few possessions used gold and silver
bars and precious stones for any incidental act of trade.  The temple
dominated life; in Sumeria it was a great towering temple that went up
to a roof from which the stars were observed; in Egypt it was a massive
building with only a ground floor. In Sumeria the priest ruler was the
greatest, most splendid of beings.  In Egypt however there was one who
was raised above the priests; he was the living incarnation of the
chief god of the land, the Pharaoh, the god king.

There were few changes in the world in those days; men’s days were
sunny, toilsome and conventional.  Few strangers came into the land and
such as did fared uncomfortably.  The priest directed life according to
immemorial rules and watched the stars for seed time and marked the
omens of the sacrifices and interpreted the warnings of dreams.  Men
worked and loved and died, not unhappily, forgetful of the savage past
of their race and heedless of its future.  Sometimes the ruler was
benign. Such was Pepi II, who reigned in Egypt for ninety years.
Sometimes he was ambitious and took men’s sons to be soldiers and sent
them against neighbouring city states to war and plunder, or he made
them toil to build great buildings.  Such were Cheops and Chephren and
Mycerinus, who built those vast sepulchral piles, the pyramids at
Gizeh. The largest of these is 450 feet high and the weight of stone in
it is 4,883,000 tons.  All this was brought down the Nile in boats and
lugged into place chiefly by human muscle.  Its erection must have
exhausted Egypt more than a great war would have done.', 1380)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('fb72eca6-6cd7-4f9b-aec3-f09b66d7bd43', '8268eabe-4b74-414e-a1f6-5a266d184560', 16, 'XVI Primitive Nomadic Peoples', 'It was not only in Mesopotamia and the Nile Valley that men were
settling down to agriculture and the formation of city states in the
centuries between 6000 and 8000 B.C. Wherever there were possibilities
of irrigation and a steady all-the-year-round food supply men were
exchanging the uncertainties and hardships of hunting and wandering for
the routines of settlement. On the upper Tigris a people called the
Assyrians were founding cities; in the valleys of Asia Minor and on the
Mediterranean shores and islands, there were small communities growing
up to civilization. Possibly parallel developments of human life were
already going on in favourable regions of India, and China. In many
parts of Europe where there were lakes well stocked with fish, little
communities of men had long settled in dwellings built on piles over
the water, and were eking out agriculture by fishing and hunting. But
over much larger areas of the old world no such settlement was
possible. The land was too harsh, too thickly wooded or too arid, or
the seasons too uncertain for mankind, with only the implements and
science of that age to take root.

For settlement under the conditions of the primitive civilizations men
needed a constant water supply and warmth and sunshine.  Where these
needs were not satisfied, man could live as a transient, as a hunter
following his game, as a herdsman following the seasonal grass, but he
could not settle.  The transition from the hunting to the herding life
may have been very gradual.  From following herds of wild cattle or (in
Asia) wild horses, men may have come to an idea of property in them,
have learnt to pen them into valleys, have fought for them against
wolves, wild dogs and other predatory beasts.

POTTERY AND IMPLEMENTS OF THE LAKE DWELLERS
POTTERY AND IMPLEMENTS OF THE LAKE DWELLERS

_Brit. Mus._

A CONTEMPORARY LAKE VILLAGE
A CONTEMPORARY LAKE VILLAGE

These Borneo dwellings are practically counterparts of the homes of
European neolithic communities 6000 B.C.

So while the primitive civilizations of the cultivators were growing up
chiefly in the great river valleys, a different way of living, the
nomadic life, a life in constant movement to and fro from winter
pasture to summer pasture, was also growing up.  The nomadic peoples
were on the whole hardier than the agriculturalists; they were less
prolific and numerous, they had no permanent temples and no highly
organized priesthood; they had less gear; but the reader must not
suppose that theirs was necessarily a less highly developed way of
living on that account.  In many ways this free life was a fuller life
than that of the tillers of the soil.  The individual was more
self-reliant; less of a unit in a crowd.  The leader was more
important; the medicine man perhaps less so.

NOMADS IN EGYPT

NOMADS IN EGYPT
NOMADS IN EGYPT

Egyptian wall painting in a tomb near ancient Beni Hassan, middle
Egypt.  It depicts the arrival of a tribe of Semitic Nomads in Egypt
about the year of 1895 B.C.

Moving over large stretches of country the nomad took a wider view of
life.  He touched on the confines of this settled land and that.  He
was used to the sight of strange faces.  He had to scheme and treat for
pasture with competing tribes.  He knew more of minerals than the folk
upon the plough lands because he went over mountain passes and into
rocky places.  He may have been a better metallurgist.  Possibly bronze
and much more probably iron smelting were nomadic discoveries.  Some of
the earliest implements of iron reduced from its ores have been found
in Central Europe far away from the early civilizations.

FLINT KNIVES OF 4500 B.C.
FLINT KNIVES OF 4500 B.C.

Excavated 1922 by the British School of Archæology in Egypt from First
Dynasty Tombs

On the other hand the settled folk had their textiles and their pottery
and made many desirable things.  It was inevitable that as the two
sorts of life, the agricultural and the nomadic differentiated, a
certain amount of looting and trading should develop between the two. 
In Sumeria particularly which had deserts and seasonal country on
either hand it must have been usual to have the nomads camping close to
the cultivated fields, trading and stealing and perhaps tinkering, as
gipsies do to this day.  (But hens they would not steal, because the
domestic fowl—an Indian jungle fowl originally was not domesticated by
man until about 1000 B.C.)  They would bring precious stones and things
of metal and leather.  If they were hunters they would bring skins. 
They would get in exchange pottery and beads and glass, garments and
suchlike manufactured things.

EGYPT PEASANTS GOING TO WORK
EGYPT PEASANTS GOING TO WORK

From an ancient and curiously painted model in the British Museum

Three main regions and three main kinds of wandering and imperfectly
settled people there were in those remote days of the first
civilizations in Sumeria and early Egypt.  Away in the forests of
Europe were the blonde Nordic peoples, hunters and herdsmen, a lowly
race.  The primitive civilizations saw very little of this race before
1500 B.C.  Away on the steppes of eastern Asia various Mongolian
tribes, the Hunnish peoples, were domesticating the horse and
developing a very wide sweeping habit of seasonal movement between
their summer and winter camping places. Possibly the Nordic and Hunnish
peoples were still separated from one another by the swamps of Russia
and the greater Caspian Sea of that time.  For very much of Russia
there was swamp and lake.  In the deserts, which were growing more arid
now, of Syria and Arabia, tribes of a dark white or brownish people,
the Semitic tribes, were driving flocks of sheep and goats and asses
from pasture to pasture.  It was these Semitic shepherds and certain
more negroid people from southern Persia, the Elamites, who were the
first nomads to come into close contact with the early civilizations. 
They came as traders and as raiders.  Finally there arose leaders among
them with bolder imaginations, and they became conquerors.

STELE GLORIFYING KING NARAM SIN, OF AKKAD
STELE GLORIFYING KING NARAM SIN, OF AKKAD

This monarch, son of Sargon I, was a great architecht as well as a
famous conqueror.  Discovered in 1898 among the ruins of Susa, Persia

About 2750 B.C. a great Semitic leader, Sargon, had conquered the whole
Sumerian land and was master of all the world from the Persian Gulf to
the Mediterranean Sea.  He was an illiterate barbarian and his people,
the Akkadians, learnt the Sumerian writing and adopted the Sumerian
language as the speech of the officials and the learned.  The empire he
founded decayed after two centuries, and after one inundation of
Elamites a fresh Semitic people, the Amorites, by degrees established
their rule over Sumeria.  They made their capital in what had hitherto
been a small up-river town, Babylon, and their empire is called the
first Babylonian Empire.  It was consolidated by a great king called
Hammurabi (circa 2100 B.C.) who made the earliest code of laws yet
known to history.

The narrow valley of the Nile lies less open to nomadic invasion than
Mesopotamia, but about the time of Hammurabi occurred a successful
Semitic invasion of Egypt and a line of Pharaohs was set up, the Hyksos
or “shepherd kings,” which lasted for several centuries.  These Semitic
conquerors never assimilated themselves with the Egyptians; they were
always regarded with hostility as foreigners and barbarians; and they
were at last expelled by a popular uprising about 1600 B.C.

But the Semites had come into Sumeria for good and all, the two races
assimilated and the Babylonian Empire became Semitic in its language
and character.', 1286)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('b43cff36-ed0c-4ef8-ae30-024ae71ae83e', '8268eabe-4b74-414e-a1f6-5a266d184560', 17, 'XVII The First Seagoing Peoples', 'The earliest boats and ships must have come into use some twenty-five
or thirty thousand years ago. Man was probably paddling about on the
water with a log of wood or an inflated skin to assist him, at latest
in the beginnings of the Neolithic period. A basketwork boat covered
with skin and caulked was used in Egypt and Sumeria from the beginnings
of our knowledge. Such boats are still used there. They are used to
this day in Ireland and Wales and in Alaska; sealskin boats still make
the crossing of Behring Straits. The hollow log followed as tools
improved. The building of boats and then ships came in a natural
succession.

Perhaps the legend of Noah’s Ark preserves the memory of some early
exploit in shipbuilding, just as the story of the Flood, so widely
distributed among the peoples of the world, may be the tradition of the
flooding of the Mediterranean basin.

There were ships upon the Red Sea long before the pyramids were built,
and there were ships on the Mediterranean and Persian Gulf by 7000 B.C.
 Mostly these were the ships of fishermen, but some were already
trading and pirate ships—for knowing what we do of mankind we may guess
pretty safely that the first sailors plundered where they could and
traded where they had to do so.

The seas on which these first ships adventured were inland seas on
which the wind blew fitfully and which were often at a dead calm for
days together, so that sailing did not develop beyond an accessory use.
 It is only in the last four hundred years that the well-rigged,
ocean-going, sailing ship has developed.  The ships of the ancient
world were essentially rowing ships which hugged the shore and went
into harbour at the first sign of rough weather.  As ships grew into
big galleys they caused a demand for war captives as galley slaves.

We have already noted the appearance of the Semitic people as wanderers
and nomads in the region of Syria and Arabia, and how they conquered
Sumeria and set up first the Akkadian and then the first Babylonian
Empire.  In the west these same Semitic peoples were taking to the sea.
 They set up a string of harbour towns along the Eastern coast of the
Mediterranean, of which Tyre and Sidon were the chief; and by the time
of Hammurabi in Babylon, they had spread as traders, wanderers and
colonizers over the whole Mediterranean basin. These sea Semites were
called the Phœnicians, They settled largely in Spain, pushing back the
old Iberian Basque population and sending coasting expeditions through
the straits of Gibraltar; and they set up colonies upon the north coast
of Africa.  Of Carthage, one of these Phœnician cities, we shall have
much more to tell later.

But the Phœnicians were not the first people to have galleys in the
Mediterranean waters.  There was already a series of towns and cities
among the islands and coasts of that sea belonging to a race or races
apparently connected by blood and language with the Basques to the west
and the Berbers and Egyptians to the south, the Ægean peoples. These
peoples must not be confused with the Greeks, who come much later into
our story; they were pre-Greek, but they had cities in Greece and Asia
Minor; Mycenæ and Troy for example, and they had a great and prosperous
establishment at Cnossos in Crete.

It is only in the last half century that the industry of excavating
archæologists has brought the extent and civilization of the Ægean
peoples to our knowledge. Cnossos has been most thoroughly explored; it
was happily not succeeded by any city big enough to destroy its ruins,
and so it is our chief source of information about this once almost
forgotten civilization.

The history of Cnossos goes back as far as the history of Egypt; the
two countries were trading actively across the sea by 4000 B.C.  By
2500 B.C., that is between the time of Sargon I and Hammurabi, Cretan
civilization was at its zenith.

Cnossos was not so much a town as a great palace for the Cretan monarch
and his people.  It was not even fortified. It was only fortified later
as the Phœnicians grew strong, and as a new and more terrible breed of
pirates, the Greeks, came upon the sea from the north.

THE TREASURE HOUSE AT MYCENÆ
THE TREASURE HOUSE AT MYCENÆ

_Photo: Fred Boissonnas_

The monarch was called Minos, as the Egyptian monarch was called
Pharaoh; and he kept his state in a palace fitted with running water,
with bathrooms and the like conveniences such as we know of in no other
ancient remains.  There he held great festivals and shows.  There was
bull-fighting, singularly like the bull-fighting that still survives in
Spain; there was resemblance even in the costumes of the bull-fighters;
and there were gymnastic displays.  The women’s clothes were remarkably
modern in spirit; they wore corsets and flounced dresses.  The pottery,
the textile manufactures, the sculpture, painting, jewellery, ivory,
metal and inlay work of these Cretans was often astonishingly
beautiful.  And they had a system of writing, but that still remains to
be deciphered.

This happy and sunny and civilized life lasted for some score of
centuries.  About 2000 B.C. Cnossos and Babylon abounded in comfortable
and cultivated people who probably led very pleasant lives.  They had
shows and they had religious festivals, they had domestic slaves to
look after them and industrial slaves to make a profit for them.  Life
must have seemed very secure in Cnossos for such people, sunlit and
girdled by the blue sea.  Egypt of course must have appeared rather a
declining country in those days under the rule of her half-barbaric
shepherd kings, and if one took an interest in politics one must have
noticed how the Semitic people seemed to be getting everywhere, ruling
Egypt, ruling distant Babylon, building Nineveh on the upper Tigris,
sailing west to the Pillars of Hercules (the straits of Gibraltar) and
setting up their colonies on those distant coasts.

There were some active arid curious minds in Cnossos, because later on
the Greeks told legends of a certain skilful Cretan artificer, Dædalus,
who attempted to make some sort of flying machine, perhaps a glider,
which collapsed and fell into the sea.

It is interesting to note some of the differences as well as the
resemblances between the life of Cnossos and our own.  To a Cretan
gentleman of 2500 B.C. iron was a rare metal which fell out of the sky
and was curious rather than useful—for as yet only meteoric iron was
known, iron had not been obtained from its ores.  Compare that with our
modern state of affairs pervaded by iron everywhere.  The horse again
would be a quite legendary creature to our Cretan, a sort of super-ass
which lived in the bleak northern lands far away beyond the Black Sea.
Civilization for him dwelt chiefly in Ægean Greece and Asia Minor,
where Lydians and Carians and Trojans lived a life and probably spoke
languages like his own.  There were Phœnicians and Ægeans settled in
Spain and North Africa, but those were very remote regions to his
imagination.  Italy was still a desolate land covered with dense
forests; the brown-skinned Etruscans had not yet gone there from Asia
Minor.  And one day perhaps this Cretan gentleman went down to the
harbour and saw a captive who attracted his attention because he was
very fair-complexioned and had blue eyes.  Perhaps our Cretan tried to
talk to him and was answered in an unintelligible gibberish.  This
creature came from somewhere beyond the Black Sea and seemed to be an
altogether benighted savage.  But indeed he was an Aryan tribesman, of
a race and culture of which we shall soon have much to tell, and the
strange gibberish he spoke was to differentiate some day into Sanskrit,
Persian, Greek, Latin, German, English and most of the chief languages
of the world.

THE PALACE AT CNOSSOS
THE PALACE AT CNOSSOS

The painted walls of the Throne Room

_Photo: Fred Boissonnas_

Such was Cnossos at its zenith, intelligent, enterprising, bright and
happy.  But about 1400 B.C. disaster came perhaps very suddenly upon
its prosperity.  The palace of Minos was destroyed, and its ruins have
never been rebuilt or inhabited from that day to this. We do not know
how this disaster occurred.  The excavators note what appears to be
scattered plunder and the marks of the fire.  But the traces of a very
destructive earthquake have also been found.  Nature alone may have
destroyed Cnossos, or the Greeks may have finished what the earthquake
began.', 1447)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('09bcad31-17e8-41bb-a783-e669200523bf', '8268eabe-4b74-414e-a1f6-5a266d184560', 18, 'XVIII Egypt, Babylon and Assyria', 'The Egyptians had never submitted very willingly to the rule of their
Semitic shepherd kings and about 1600 A.D. a vigorous patriotic
movement expelled these foreigners. Followed a new phase or revival for
Egypt, a period known to Egyptologists as the New Empire. Egypt, which
had not been closely consolidated before the Hyksos invasion, was now a
united country; and the phase of subjugation and insurrection left her
full of military spirit. The Pharaohs became aggressive conquerors.
They had now acquired the war horse and the war chariot, which the
Hyksos had brought to them. Under Thothmes III and Amenophis III Egypt
had extended her rule into Asia as far as the Euphrates.

We are entering now upon a thousand years of warfare between the once
quite separated civilizations of Mesopotamia and the Nile.  At first
Egypt was ascendant.  The great dynasties, the Seventeenth Dynasty,
which included Thothmes III and Amenophis III and IV and a great queen
Hatasu, and the Nineteenth, when Rameses II, supposed by some to have
been the Pharaoh of Moses, reigned for sixty-seven years, raised Egypt
to high levels of prosperity.  In between there were phases of
depression for Egypt, conquest by the Syrians and later conquest by the
Ethiopians from the South.  In Mesopotamia Babylon ruled, then the
Hittites and the Syrians of Damascus rose to a transitory predominance;
at one time the Syrians conquered Egypt; the fortunes of the Assyrians
of Nineveh ebbed and flowed; sometimes the city was a conquered city;
sometimes the Assyrians ruled in Babylon and assailed Egypt.  Our space
is too limited here to tell of the comings and goings of the armies of
the Egyptians and of the various Semitic powers of Asia Minor, Syria
and Mesopotamia.  They were armies now provided with vast droves of war
chariots, for the horse—still used only for war and glory—had spread by
this time into the old civilizations from Central Asia.

TEMPLE AT ABU SIMBEL
TEMPLE AT ABU SIMBEL

Showing the statues of Rameses II at entrance

Great conquerors appear in the dim light of that distant time and pass,
Tushratta, King of Mitanni, who captured Nineveh, Tiglath Pileser I of
Assyria who conquered Babylon.  At last the Assyrians became the
greatest military power of the time. Tiglath Pileser III conquered
Babylon in 745 B.C. and founded what historians call the New Assyrian
Empire.  Iron had also come now into civilization out of the north; the
Hittites, the precursors of the Armenians, had it first and
communicated its use to the Assyrians, and an Assyrian usurper, Sargon
II, armed his troops with it.  Assyria became the first power to
expound the doctrine of blood and iron.  Sargon’s son Sennacherib led
an army to the borders of Egypt, and was defeated not by military
strength but by the plague. Sennacherib’s grandson Assurbanipal (who is
also known in history by his Greek name of Sardanapalus) did actually
conquer Egypt in 670 B.C.  But Egypt was already a conquered country
then under an Ethiopian dynasty.  Sardanapalus simply replaced one
conqueror by another.

AVENUE OF SPHINXES
AVENUE OF SPHINXES

Leading from the Nile to the great Temple of Karnak

_Photo: D. McLeish_

If one had a series of political maps of this long period of history,
this interval of ten centuries, we should have Egypt expanding and
contracting like an amœba under a microscope, and we should see these
various Semitic states of the Babylonians, the Assyrians, the Hittites
and the Syrians coming and going, eating each other up and disgorging
each other again.  To the west of Asia Minor there would be little
Ægean states like Lydia, whose capital was Sardis, and Caria.  But
after about 1200 B.C. and perhaps earlier, a new set of names would
come into the map of the ancient world from the north-east and from the
north- west.  These would be the names of certain barbaric tribes,
armed with iron weapons and using horse-chariots, who were becoming a
great affliction to the Ægean and Semitic civilizations on the northern
borders.  They all spoke variants of what once must have been the same
language, Aryan.

THE GREAT HYPOSTYLE HALL AT KARNAK
THE GREAT HYPOSTYLE HALL AT KARNAK

_Photo: D. McLeish_

Round the north-east of the Black and Caspian Seas were coming the
Medes and Persians.  Confused with these in the records of the time
were Scythians and Samatians.  From north-east or north-west came the
Armenians, from the north- west of the sea-barrier through the Balkan
peninsula came Cimmerians, Phrygians and the Hellenic tribes whom now
we call the Greeks.  They were raiders and robbers and plunderers of
cities, these Ayrans, east and west alike. They were all kindred and
similar peoples, hardy herdsmen who had taken to plunder.  In the east
they were still only borderers and raiders, but in the west they were
taking cities and driving out the civilized Ægean populations. The
Ægean peoples were so pressed that they were seeking new homes in lands
beyond the Aryan range.  Some were seeking a settlement in the delta of
the Nile and being repulsed by the Egyptians; some, the Etruscans, seem
to have sailed from Asia Minor to found a state in the forest
wildernesses of middle Italy; some built themselves cities upon the
south- east coasts of the Mediterranean and became later that people
known in history as the Philistines.

Of these Aryans who came thus rudely upon the scene of the ancient
civilizations we will tell more fully in a later section.  Here we note
simply all this stir and emigration amidst the area of the ancient
civilizations, that was set up by the swirl of the gradual and
continuous advance of these Aryan barbarians out of the northern
forests and wildernesses between 1600 and 600 B.C.

And in a section to follow we must tell also of a little Semitic
people, the Hebrews, in the hills behind the Phœnician and Philistine
coasts, who began to be of significance in the world towards the end of
this period. They produced a literature of very great importance in
subsequent history, a collection of books, histories, poems, books of
wisdom and prophetic works, the Hebrew Bible.

In Mesopotamia and Egypt the coming of the Aryans did not cause
fundamental changes until after 600 B.C.  The flight of the Ægeans
before the Greeks and even the destruction of Cnossos must have seemed
a very remote disturbance to both the citizens of Egypt and of Babylon.
 Dynasties came and went in these cradle states of civilization, but
the main tenor of human life went on, with a slow increase in
refinement and complexity age by age.  In Egypt the accumulated
monuments of more ancient times—the pyramids were already in their
third thousand of years and a show for visitors just as they are to-
day—were supplemented by fresh and splendid buildings, more
particularly in the time of the seventeenth and nineteenth dynasties. 
The great temples at Karnak and Luxor date from this time.  All the
chief monuments of Nineveh, the great temples, the winged bulls with
human heads, the reliefs of kings and chariots and lion hunts, were
done in these centuries between 1600 and 600 B.C., and this period also
covers most of the splendours of Babylon.

FRIEZE SHOWING EGYPTIAN FEMALE SLAVES CARRYING LUXURIOUS FOODS
FRIEZE SHOWING EGYPTIAN FEMALE SLAVES CARRYING LUXURIOUS FOODS

_Photo: Jacques Boyer_

Both from Mesopotamia and Egypt we now have abundant public records,
business accounts, stories, poetry and private correspondence.  We know
that life, for prosperous and influential people in such cities as
Babylon and the Egyptian Thebes, was already almost as refined and as
luxurious as that of comfortable and prosperous people to-day.  Such
people lived an orderly and ceremonious life in beautiful and
beautifully furnished and decorated houses, wore richly decorated
clothing and lovely jewels; they had feasts and festivals, entertained
one another with music and dancing, were waited upon by highly trained
servants, were cared for by doctors and dentists.  They did not travel
very much or very far, but boating excursions were a common summer
pleasure both on the Nile and on the Euphrates.  The beast of burthen
was the ass; the horse was still used only in chariots for war and upon
occasions of state.  The mule was still novel and the camel, though it
was known in Mesopotamia, had not been brought into Egypt.  And there
were few utensils of iron; copper and bronze remained the prevailing
metals.  Fine linen and cotton fabrics were known as well as wool.  But
there was no silk yet.  Glass was known and beautifully coloured, but
glass things were usually small.  There was no clear glass and no
optical use of glass. People had gold stoppings in their teeth but no
spectacles on their noses.

One odd contrast between the life of old Thebes or Babylon and modern
life was the absence of coined money.  Most trade was still done by
barter.  Babylon was financially far ahead of Egypt.  Gold and silver
were used for exchange and kept in ingots; and there were bankers,
before coinage, who stamped their names and the weight on these lumps
of precious metal. A merchant or traveller would carry precious stones
to sell to pay for his necessities.  Most servants and workers were
slaves who were paid not money but in kind.  As money came in slavery
declined.

A modern visitor to these crowning cities of the ancient world would
have missed two very important articles of diet; there were no hens and
no eggs.  A French cook would have found small joy in Babylon.  These
things came from the East somewhere about the time of the last Assyrian
empire.

Religion like everything else had undergone great refinement. Human
sacrifice for instance had long since disappeared; animals or bread
dummies had been substituted for the victim. (But the Phœnicians and
especially the citizens of Carthage, their greatest settlement in
Africa, were accused, later of immolating human beings.)  When a great
chief had died in the ancient days it had been customary to sacrifice
his wives and slaves and break spear and bow at his tomb so that he
should not go unattended and unarmed in the spirit world.  In Egypt
there survived of this dark tradition the pleasant custom of burying
small models of house and shop and servants and cattle with the dead,
models that give us to-day the liveliest realization of the safe and
cultivated life of these ancient people, three thousand years and more
ago.

THE TEMPLE OF HORUS AT EDFU
THE TEMPLE OF HORUS AT EDFU

Such was the ancient world before the coming of the Aryans out of the
northern forests and plains.  In India and China there were parallel
developments.  In the great valleys of both these regions agricultural
city states of brownish peoples were growing up, but in India they do
not seem to have advanced or coalesced so rapidly as the city states of
Mesopotamia or Egypt.  They were nearer the level of the ancient
Sumerians or of the Maya civilization of America.  Chinese history has
still to be modernized by Chinese scholars and cleared of much
legendary matter.  Probably China at this time was in advance of India.
 Contemporary with the seventeenth dynasty in Egypt, there was a
dynasty of emperors in China, the Shang dynasty, priest emperors over a
loose-knit empire of subordinate kings.  The chief duty of these early
emperors was to perform the seasonal sacrifices.  Beautiful bronze
vessels from the time of the Shang dynasty still exist, and their
beauty and workmanship compel us to recognize that many centuries of
civilization must have preceded their manufacture.', 1940)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('58d88308-5b73-4ac6-a872-5fbe8b8e75ba', '8268eabe-4b74-414e-a1f6-5a266d184560', 19, 'XIX The Primitive Aryans', 'Four thousand years ago, that is to say about 2000 B.C., central and
south-eastern Europe and central Asia were probably warmer, moister and
better wooded than they are now. In these regions of the earth wandered
a group of tribes mainly of the fair and blue-eyed Nordic race,
sufficiently in touch with one another to speak merely variations of
one common language from the Rhine to the Caspian Sea. At that time
they may not have been a very numerous people, and their existence was
unsuspected by the Babylonians to whom Hammurabi was giving laws, or by
the already ancient and cultivated land of Egypt which was tasting in
those days for the first time the bitterness of foreign conquest.

These Nordic people were destined to play a very important part indeed
in the world’s history.  They were a people of the parklands and the
forest clearings; they had no horses at first but they had cattle; when
they wandered they put their tents and other gear on rough ox waggons;
when they settled for a time they may have made huts of wattle and mud.
They burnt their important dead; they did not bury them ceremoniously
as the brunette peoples did.  They put the ashes of their greater
leaders in urns and then made a great circular mound about them.  These
mounds are the “round barrows” that occur all over north Europe.  The
brunette people, their predecessors, did not burn their dead but buried
them in a sitting position in elongated mounds; the “long barrows.”

The Aryans raised crops of wheat, ploughing with oxen, but they did not
settle down by their crops; they would reap and move on.  They had
bronze, and somewhen about 1500 B.C. they acquired iron.  They may have
been the discoverers of iron smelting.  And somewhen vaguely about that
time they also got the horse—which to begin with they used only for
draught purposes.  Their social life did not centre upon a temple like
that of the more settled people round the Mediterranean, and their
chief men were leaders rather than priests.  They had an aristocratic
social order rather than a divine and regal order; from a very early
stage they distinguished certain families as leaderly and noble.

A BEAUTIFUL ARCHAIC AMPHORA
A BEAUTIFUL ARCHAIC AMPHORA

Compare the horses and other animals with the Altamira drawing on p.
54, and also with the Greek frieze, p. 140

They were a very vocal people.  They enlivened their wanderings by
feasts, at which there was much drunkenness and at which a special sort
of man, the bards, would sing and recite.  They had no writing until
they had come into contact with civilization, and the memories of these
bards were their living literature.  This use of recited language as an
entertainment did much to make it a fine and beautiful instrument of
expression, and to that no doubt the subsequent predominance of the
languages derived from Aryan is, in part, to be ascribed.  Every Aryan
people had its legendary history crystallized in bardic recitations,
epics, sagas and vedas, as they were variously called.

The social life of these people centred about the households of their
leading men.  The hall of the chief where they settled for a time was
often a very capacious timber building.  There were no doubt huts for
herds and outlying farm buildings; but with most of the Aryan peoples
this hall was the general centre, everyone went there to feast and hear
the bards and take part in games and discussions.  Cowsheds and
stabling surrounded it.  The chief and his wife and so forth would
sleep on a dais or in an upper gallery; the commoner sort slept about
anywhere, as people still do in Indian households.  Except for weapons,
ornaments, tools and suchlike personal possessions there was a sort of
patriarchal communism in the tribe.  The chief owned the cattle and
grazing lands in the common interest; forest and rivers were the wild.

This was the fashion of the people who were increasing and multiplying
over the great spaces of central Europe and west central Asia during
the growth of the great civilization of Mesopotamia and the Nile, and
whom we find pressing upon the heliolithic peoples everywhere in the
second millennium before Christ.  They were coming into France and
Britain and into Spain.  They pushed westward in two waves.  The first
of these people who reached Britain and Ireland were armed with bronze
weapons.  They exterminated or subjugated the people who had made the
great stone monuments of Carnac in Brittany and Stonehenge and Avebury
in England.  They reached Ireland. They are called the Goidelic Celts.
The second wave of a closely kindred people, perhaps intermixed with
other racial elements, brought iron with it into Great Britain, and is
known as the wave of Brythonic Celts.  From them the Welsh derive their
language.

THE MOUND OF NIPPUR
THE MOUND OF NIPPUR

The site of a city which recent excavations have proved to date from at
least as early as 5000 B.C., and probably 1000 years earlier

_Photo:  Underwood & Underwood_

Kindred Celtic peoples were pressing southward into Spain and coming
into contact not only with the heliolithic Basque people who still
occupied the country but with the Semitic Phœnician colonies of the sea
coast.  A closely allied series of tribes, the Italians, were making
their way down the still wild and wooded Italian peninsula.  They did
not always conquer.  In the eighth century B.C.  Rome appears in
history, a trading town on the Tiber, inhabited by Aryan Latins but
under the rule of Etruscan nobles and kings.

At the other extremity of the Aryan range there was a similar progress
southward of similar tribes.  Aryan peoples, speaking Sanskrit, had
come down through the western passes into North India long before 1000
B.C.  There they came into contact with a primordial brunette
civilization, the Dravidian civilization, and learnt much from it. 
Other Aryan tribes seem to have spread over the mountain masses of
Central Asia far to the east of the present range of such peoples.  In
Eastern Turkestan there are still fair, blue-eyed Nordic tribes, but
now they speak Mongolian tongues.

Between the Black and Caspian Seas the ancient Hittites had been
submerged and “Aryanized” by the Armenians before 1000 B.C., and the
Assyrians and Babylonians were already aware of a new and formidable
fighting barbarism on the north-eastern frontiers, a group of tribes
amidst which the Scythians, the Medes and the Persians remain as
outstanding names.

But it was through the Balkan peninsula that Aryan tribes made their
first heavy thrust into the heart of the old-world civilization.  They
were already coming southward and crossing into Asia Minor many
centuries before 1000 B.C.  First came a group of tribes of whom the
Phrygians were the most conspicuous, and then in succession the Æolic,
the Ionic and the Dorian Greeks. By 1000 B.C. they had wiped out the
ancient Ægean civilization both in the mainland of Greece and in most
of the Greek islands; the cities of Mycenæ and Tiryns were obliterated
and Cnossos was nearly forgotten.  The Greeks had taken to the sea
before 1000 A.D., they had settled in Crete and Rhodes, and they were
founding colonies in Sicily and the south of Italy after the fashion of
the Phœnician trading cities that were dotted along the Mediterranean
coasts.

So it was, while Tiglath Pileser III and Sargon II and Sardanapalus
were ruling in Assyria and fighting with Babylonia and Syria and Egypt,
the Aryan peoples were learning the methods of civilization and making
it over for their own purposes in Italy and Greece and north Persia. 
The theme of history from the ninth century B.C. A.D. onward for six
centuries is the story of how these Aryan peoples grew to power and
enterprise and how at last they subjugated the whole Ancient World,
Semitic, Ægean and Egyptian alike.  In form the Aryan peoples were
altogether victorious; but the struggle of Aryan, Semitic and Egyptian
ideas and methods was continued long after the sceptre was in Aryan
hands.  It is indeed a struggle that goes on through all the rest of
history and still in a manner continues to this day.', 1373)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('73ecaaf3-1e4b-4002-a9fa-eacb6accbd8f', '8268eabe-4b74-414e-a1f6-5a266d184560', 20, 'XX The Last Babylonian Empire and the Empire of Darius I', 'We have already mentioned how Assyria became a great military power
under Tiglath Pileser III and under the usurper Sargon II. Sargon was
not this man’s original name; he adopted it to flatter the conquered
Babylonians by reminding them of that ancient founder of the Akkadian
Empire, Sargon I, two thousand years before his time. Babylon, for all
that it was a conquered city, was of greater population and importance
than Nineveh, and its great god Bel Marduk and its traders and priests
had to be treated politely. In Mesopotamia in the eighth century B.C.
A.D. we are already far beyond the barbaric days when the capture of a
town meant loot and massacre. Conquerors sought to propitiate and win
the conquered. For a century and a half after Sargon the new Assyrian
empire endured and, as we have noted, Assurbanipal (Sardanapalus) held
at least lower Egypt.

But the power and solidarity of Assyria waned rapidly.  Egypt by an
effort threw off the foreigner under a Pharoah Psammetichus I, and
under Necho II attempted a war of conquest in Syria.  By that time
Assyria was grappling with foes nearer at hand, and could make but a
poor resistance.  A Semitic people from south-east Mesopotamia, the
Chaldeans, combined with Aryan Medes and Persians from the north-east
against Nineveh, and in 606 B.C.—for now we are coming down to exact
chronology—took that city.

There was a division of the spoils of Assyria.  A Median Empire was set
up in the north under Cyaxares.   It included Nineveh, and its capital
was Ecbatana.  Eastward it reached to the borders of India.  To the
south of this in a great crescent was a new Chaldean Empire, the Second
Babylonian Empire, which rose to a very great degree of wealth and
power under the rule of Nebuchadnezzar the Great (the Nebuchadnezzar of
the Bible). The last great days, the greatest days of all, for Babylon
began.  For a time the two Empires remained at peace, and the daughter
of Nebuchadnezzar was married to Cyaxares.

Meanwhile Necho II was pursuing his easy conquests in Syria. He had
defeated and slain King Josiah of Judah, a small country of which there
is more to tell presently, at the battle of Megiddo in 608 B.C., and he
pushed on to the Euphrates to encounter not a decadent Assyria but a
renascent Babylonia.  The Chaldeans dealt very vigorously with the
Egyptians.  Necho was routed and driven back to Egypt, and the
Babylonian frontier pushed down to the ancient Egyptian boundaries.

Map showing the relation of the Median and Second Babylonian (Chaldæan)
Empires in the reign of Nebuchadnezzar the Great

From 606 until 589 B.C. the Second Babylonian Empire flourished
insecurely.  It flourished so long as it kept the peace with the
stronger, hardier Median Empire to the north.  And during these
sixty-seven years not only life but learning flourished in the ancient
city.

Map: The Empire of Darius (tribute-paying countries) at its greatest
extent

Even under the Assyrian monarchs and especially under Sardanapalus,
Babylon had been a scene of great intellectual activity.  Sardanapalus,
though an Assyrian, had been quite Babylon-ized.  He made a library, a
library not of paper but of the clay tablets that were used for writing
in Mesopotamia since early Sumerian days.  His collection has been
unearthed and is perhaps the most precious store of historical material
in the world.  The last of the Chaldean line of Babylonian monarchs,
Nabonidus, had even keener literary tastes.  He patronized antiquarian
researches, and when a date was worked out by his investigators for the
accession of Sargon I he commemorated the fact by inscriptions.  But
there were many signs of disunion in his empire, and he sought to
centralize it by bringing a number of the various local gods to Babylon
and setting up temples to them there.  This device was to be practised
quite successfully by the Romans in later times, but in Babylon it
roused the jealousy of the powerful priesthood of Bel Marduk, the
dominant god of the Babylonians.  They cast about for a possible
alternative to Nabonidus and found it in Cyrus the Persian, the ruler
of the adjacent Median Empire.  Cyrus had already distinguished himself
by conquering Croesus, the rich king of Lydia in Eastern Asia Minor. 
He came up against Babylon, there was a battle outside the walls, and
the gates of the city were opened to him (538 B.C.).  His soldiers
entered the city without fighting.  The crown prince Belshazzar, the
son of Nabonidus, was feasting, the Bible relates, when a hand appeared
and wrote in letters of fire upon the wall these mystical words: 
_“Mene, Mene, Tekel, Upharsin,”_ which was interpreted by the prophet
Daniel, whom he summoned to read the riddle, as “God has numbered thy
kingdom and finished it; thou art weighed in the balance and found
wanting and thy kingdom is given to the Medes and Persians.”  Possibly
the priests of Bel Marduk knew something about that writing on the
wall. Belshazzar was killed that night, says the Bible.  Nabonidus was
taken prisoner, and the occupation of the city was so peaceful that the
services of Bel Marduk continued without intermission.

PERSIAN MONARCH
PERSIAN MONARCH

From the ruins of Persepolis

_Photo:  Miss F. Biggs_

Thus it was the Babylonian and Median empires were united. Cambyses,
the son of Cyrus, subjugated Egypt.  Cambyses went mad and was
accidentally killed, and was presently succeeded by Darius the Mede,
Darius I, the son of Hystaspes, one of the chief councillors of Cyrus.

THE RUINS OF PERSEPOLIS
THE RUINS OF PERSEPOLIS

The capital city of the Persian Empire; burnt by Alexander the Great

_Photo:  Major W. F. P. Rodd_

THE GREAT PORCH OF XERXES, AT PERSEPOLIS
THE GREAT PORCH OF XERXES, AT PERSEPOLIS

_Photo:  Major W. F. P. Rodd_

The Persian Empire of Darius I, the first of the new Aryan empires in
the seat of the old civilizations, was the greatest empire the world
had hitherto seen.  It included all Asia Minor and Syria, all the old
Assyrian and Babylonian empires, Egypt, the Caucasus and Caspian
regions, Media, Persia, and it extended into India as far as the Indus.
 Such an empire was possible because the horse and rider and the
chariot and the made-road had now been brought into the world. 
Hitherto the ass and ox and the camel for desert use had afforded the
swiftest method of transport.  Great arterial roads were made by the
Persian rulers to hold their new empire, and post horses were always in
waiting for the imperial messenger or the traveller with an official
permit.  Moreover the world was now beginning to use coined money,
which greatly facilitated trade and intercourse.  But the capital of
this vast empire was no longer Babylon.  In the long run the priesthood
of Bel Marduk gained nothing by their treason. Babylon though still
important was now a declining city, and the great cities of the new
empire were Persepolis and Susa and Ecbatana.  The capital was Susa. 
Nineveh was already abandoned and sinking into ruins.', 1176)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('b277ec84-cb67-4de9-a379-1073973b1ffa', '8268eabe-4b74-414e-a1f6-5a266d184560', 21, 'XXI The Early History of the Jews', 'And now we can tell of the Hebrews, a Semitic people, not so important
in their own time as in their influence upon the later history of the
world. They were settled in Judea long before 1000 B.C., and their
capital city after that time was Jerusalem. Their story is interwoven
with that of the great empires on either side of them, Egypt to the
south and the changing empires of Syria, Assyria and Babylon to the
north. Their country was an inevitable high road between these latter
powers and Egypt.

Their importance in the world is due to the fact that they produced a
written literature, a world history, a collection of laws, chronicles,
psalms, books of wisdom, poetry and fiction and political utterances
which became at last what Christians know as the Old Testament, the
Hebrew Bible.  This literature appears in history in the fourth or
fifth century B.C.

Probably this literature was first put together in Babylon. We have
already told how the Pharaoh, Necho II, invaded the Assyrian Empire
while Assyria was fighting for life against Medes, Persians and
Chaldeans.  Josiah King of Judah opposed him, and was defeated and
slain at Megiddo (608 B.C.).  Judah became a tributary to Egypt, and
when Nebuchadnezzar the Great, the new Chaldean king in Babylon, rolled
back Necho into Egypt, he attempted to manage Judah by setting up
puppet kings in Jerusalem.  The experiment failed, the people massacred
his Babylonian officials, and he then determined to break up this
little state altogether, which had long been playing off Egypt against
the northern empire.  Jerusalem was sacked and burnt, and the remnant
of the people was carried off captive to Babylon.

There they remained until Cyrus took Babylon (538 B.C.).  He then
collected them together and sent them back to resettle their country
and rebuild the walls and temple of Jerusalem.

Before that time the Jews do not seem to have been a very civilized or
united people.  Probably only a very few of them could read or write. 
In their own history one never hears of the early books of the Bible
being read; the first mention of a book is in the time of Josiah.  The
Babylonian captivity civilized them and consolidated them.  They
returned aware of their own literature, an acutely self-conscious and
political people.

Their Bible at that time seems to have consisted only of the
Pentateuch, that is to say the first five books of the Old Testament as
we know it.  In addition, as separate books they already had many of
the other books that have since been incorporated with the Pentateuch
into the present Hebrew Bible, Chronicles, the Psalms and Proverbs for
example.

The accounts of the Creation of the World, of Adam and Eve and of the
Flood, with which the Bible begins, run closely parallel with similar
Babylonian legends; they seem to have been part of the common beliefs
of all the Semitic peoples. So too the stories of Moses and of Samson
have Sumerian and Babylonian parallels.  But with the story of Abraham
and onward begins something more special to the Jewish race.

Abraham may have lived as early as the days of Hammurabi in Babylon. 
He was a patriarchal Semitic nomad.  To the book of Genesis the reader
must go for the story of his wanderings and for the stories of his sons
and grandchildren and how they became captive in the Land of Egypt.  He
travelled through Canaan, and the God of Abraham, says the Bible story,
promised this smiling land of prosperous cities to him and to his
children.

And after a long sojourn in Egypt and after fifty years of wandering in
the wilderness under the leadership of Moses, the children of Abraham,
grown now to a host of twelve tribes, invaded the land of Canaan from
the Arabian deserts to the East.  They may have done this somewhen
between 1600 B.C. and 1300 B.C.; there are no Egyptian records of Moses
nor of Canaan at this time to help out the story.  But at any rate they
did not succeed in conquering any more than the hilly backgrounds of
the promised land.  The coast was now in the hands, not of the
Canaanites but of newcomers, those Ægean peoples, the Philistines; and
their cities, Gaza, Gath, Ashdod, Ascalon and Joppa successfully
withstood the Hebrew attack.  For many generations the children of
Abraham remained an obscure people of the hilly back country engaged in
incessant bickerings with the Philistines and with the kindred tribes
about them, the Moabites, the Midianites and so forth.  The reader will
find in the book of Judges a record of their struggles and disasters
during this period. For very largely it is a record of disasters and
failures frankly told.

Map: The Land of the Hebrews

For most of this period the Hebrews were ruled, so far as there was any
rule among them, by priestly judges selected by the elders of the
people, but at last somewhen towards 1000 B.C. they chose themselves a
king, Saul, to lead them in battle.  But Saul’s leading was no great
improvement upon the leading of the Judges; he perished under the hail
of Philistine arrows at the battle of Mount Gilboa, his armour went
into the temple of the Philistine Venus, and his body was nailed to the
walls of Beth-shan.

MOUND AT BABYLON
THE MOUND AT BABYLON

Beneath which are the remains of a great palace of Nebuchadnezzar

_Photo:  Underwood & Underwood_

His successor David was more successful and more politic. With David
dawned the only period of prosperity the Hebrew peoples were ever to
know.  It was based on a close alliance with the Phœnician city of
Tyre, whose King Hiram seems to have been a man of very great
intelligence and enterprise. He wished to secure a trade route to the
Red Sea through the Hebrew hill country.  Normally Phœnician trade went
to the Red Sea by Egypt, but Egypt was in a state of profound disorder
at this time; there may have been other obstructions to Phœnician trade
along this line, and at any rate Hiram established the very closest
relations both with David and with his son and successor Solomon. 
Under Hiram’s auspices the walls, palace and temple of Jerusalem arose,
and in return Hiram built and launched his ships on the Red Sea.  A
very considerable trade passed northward and southward through
Jerusalem.  And Solomon achieved a prosperity and magnificence
unprecedented in the experience of his people.  He was even given a
daughter of Pharaoh in marriage.

But it is well to keep the proportion of things in mind.  At the climax
of his glories Solomon was only a little subordinate king in a little
city.  His power was so transitory that within a few years of his
death, Shishak the first Pharaoh of the twenty-second dynasty, had
taken Jerusalem and looted most of its splendours.  The account of
Solomon’s magnificence given in the books of Kings and Chronicles is
questioned by many critics.  They say that it was added to and
exaggerated by the patriotic pride of later writers.  But the Bible
account read carefully is not so overwhelming as it appears at the
first reading. Solomon’s temple, if one works out the measurements,
would go inside a small suburban church, and his fourteen hundred
chariots cease to impress us when we learn from an Assyrian monument
that his successor Ahab sent a contingent of two thousand to the
Assyrian army.  It is also plainly manifest from the Bible narrative
that Solomon spent himself in display and overtaxed and overworked his
people.  At his death the northern part of his kingdom broke off from
Jerusalem and became the independent kingdom of Israel. Jerusalem
remained the capital city of Judah.

THE ISHTAR GATEWAY, BABYLON
THE ISHTAR GATEWAY, BABYLON

The bulls are in richly coloured enamel on baked brick

_Photo:  Underwood & Underwood_

The prosperity of the Hebrew people was short-lived.  Hiram died, and
the help of Tyre ceased to strengthen Jerusalem. Egypt grew strong
again.  The history of the kings of Israel and the kings of Judah
becomes a history of two little states ground between, first, Syria,
then Assyria and then Babylon to the north and Egypt to the south.  It
is a tale of disasters and of deliverances that only delayed disaster. 
It is a tale of barbaric kings ruling a barbaric people. In 721 B.C.
the kingdom of Israel was swept away into captivity by the Assyrians
and its people utterly lost to history.  Judah struggled on until in
604 B.C., as we have told, it shared the fate of Israel.  There may be
details open to criticism in the Bible story of Hebrew history from the
days of the Judges onward, but on the whole it is evidently a true
story which squares with all that has been learnt in the excavation of
Egypt and Assyria and Babylon during the past century.

It was in Babylon that the Hebrew people got their history together and
evolved their tradition.  The people who came back to Jerusalem at the
command of Cyrus were a very different people in spirit and knowledge
from those who had gone into captivity.  They had learnt civilization. 
In the development of their peculiar character a very great part was
played by certain men, a new sort of men, the Prophets, to whom we must
now direct our attention.  These Prophets mark the appearance of new
and remarkable forces in the steady development of human society.', 1595)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('e471faf1-720f-4c03-ac07-84c2e5f27052', '8268eabe-4b74-414e-a1f6-5a266d184560', 22, 'XXII Priests and Prophets in Judea', 'The fall of Assyria and Babylon were only the first of a series of
disasters that were to happen to the Semitic peoples. In the seventh
century B.C. it would have seemed as though the whole civilized world
was to be dominated by Semitic rulers. They ruled the great Assyrian
empire and they had conquered Egypt; Assyria, Babylon, Syria were all
Semitic, speaking languages that were mutually intelligible. The trade
of the world was in Semitic hands. Tyre, Sidon, the great mother cities
of the Phœnician coast, had thrown out colonies that grew at last to
even greater proportion in Spain, Sicily and Africa. Carthage, founded
before 800 B.C., had risen to a population of more than a million. It
was for a time the greatest city on earth. Its ships went to Britain
and out into the Atlantic. They may have reached Madeira. We have
already noted how Hiram co-operated with Solomon to build ships on the
Red Sea for the Arabian and perhaps for the Indian trade. In the time
of the Pharaoh Necho, a Phœnician expedition sailed completely round
Africa.

At that time the Aryan peoples were still barbarians.  Only the Greeks
were reconstructing a new civilization of the ruins of the one they had
destroyed, and the Medes were becoming “formidable,” as an Assyrian
inscription calls them, in central Asia.  In 800 B.C. no one could have
prophesied that before the third century B.C. every trace of Semitic
dominion would be wiped out by Aryan-speaking conquerors, and that
everywhere the Semitic peoples would be subjects or tributaries or
scattered altogether.  Everywhere except in the northern deserts of
Arabia, where the Bedouin adhered steadily to the nomadic way of life,
the ancient way of life of the Semites before Sargon I and his
Akkadians went down to conquer Sumeria.  But the Arab Bedouin were
never conquered by Aryan masters.

Now of all these civilized Semites who were beaten and overrun in these
five eventful centuries one people only held together and clung to its
ancient traditions and that was this little people, the Jews, who were
sent back to build their city of Jerusalem by Cyrus the Persian.  And
they were able to do this, because they had got together this
literature of theirs, their Bible, in Babylon.  It is not so much the
Jews who made the Bible as the Bible which made the Jews.  Running
through this Bible were certain ideas, different from the ideas of the
people about them, very stimulating and sustaining ideas, to which they
were destined to cling through five and twenty centuries of hardship,
adventure and oppression.

Foremost of these Jewish ideas was this, that their God was invisible
and remote, an invisible God in a temple not made with hands, a Lord of
Righteousness throughout the earth. All other peoples had national gods
embodied in images that lived in temples.  If the image was smashed and
the temple razed, presently that god died out.  But this was a new
idea, this God of the Jews, in the heavens, high above priests and
sacrifices.  And this God of Abraham, the Jews believed, had chosen
them to be his peculiar people, to restore Jerusalem and make it the
capital of Righteousness in the World.  They were a people exalted by
their sense of a common destiny. This belief saturated them all when
they returned to Jerusalem after the captivity in Babylon.

Is it any miracle that in their days of overthrow and subjugation many
Babylonians and Syrians and so forth and later on many Phœnicians,
speaking practically the same language and having endless customs,
habits, tastes and traditions in common, should be attracted by this
inspiring cult and should seek to share in its fellowship and its
promise?  After the fall of Tyre, Sidon, Carthage and the Spanish
Phœnician cities, the Phœnicians suddenly vanish from history; and as
suddenly we find, not simply in Jerusalem but in Spain, Africa, Egypt,
Arabia, the East, wherever the Phœnicians had set their feet,
communities of Jews.  And they were all held together by the Bible and
by the reading of the Bible.  Jerusalem was from the first only their
nominal capital; their real city was this book of books.  This is a new
sort of thing in history.  It is something of which the seeds were sown
long before, when the Sumerians and Egyptians began to turn their
hieroglyphics into writing.  The Jews were a new thing, a people
without a king and presently without a temple (for as we shall tell
Jerusalem itself was broken up in 70 A.D.), held together and
consolidated out of heterogeneous elements by nothing but the power of
the written word.

And this mental welding of the Jews was neither planned nor foreseen
nor done by either priests or statesmen.  Not only a new kind of
community but a new kind of man comes into history with the development
of the Jews.  In the days of Solomon the Hebrews looked like becoming a
little people just like any other little people of that time clustering
around court and temple, ruled by the wisdom of the priest and led by
the ambition of the king.  But already, the reader may learn from the
Bible, this new sort of man of which we speak, the Prophet, was in
evidence.

As troubles thicken round the divided Hebrews the importance of these
Prophets increases.

THE BLACK OBELISK OF SHALMANESER II
THE BLACK OBELISK OF SHALMANESER II

This obelisk (in the British Museum) of the King of Assyria mentions,
in cuneiform, “Jehu the son of Omri.”  Panel showing Jewish captives
bringing tribute

What were these Prophets?  They were men of the most diverse origins. 
The Prophet Ezekiel was of the priestly caste and the Prophet Amos wore
the goatskin mantle of a shepherd, but all had this in common, that
they gave allegiance to no one but to the God of Righteousness and that
they spoke directly to the people.  They came without licence or
consecration.  “Now the word of the Lord came unto me;” that was the
formula.  They were intensely political.  They exhorted the people
against Egypt, “that broken reed,” or against Assyria or Babylon; they
denounced the indolence of the priestly order or the flagrant sins of
the King.  Some of them turned their attention to what we should now
call “social reform.”  The rich were “grinding the faces of the poor,”
the luxurious were consuming the children’s bread; wealthy people made
friends with and imitated the splendours and vices of foreigners; and
this was hateful to Jehovah, the God of Abraham, who would certainly
punish this land.

ANOTHER PANEL OF THE BLACK OBELISK
ANOTHER PANEL OF THE BLACK OBELISK

Captive Princes making obeisance to Shalmaneser II

These fulminations were written down and preserved and studied.  They
went wherever the Jews went, and wherever they went they spread a new
religious spirit.  They carried the common man past priest and temple,
past court and king and brought him face to face with the Rule of
Righteousness. That is their supreme importance in the history of
mankind. In the great utterances of Isaiah the prophetic voice rises to
a pitch of splendid anticipation and foreshadows the whole earth united
and at peace under one God.  Therein the Jewish prophecies culminate.

All the Prophets did not speak in this fashion, and the intelligent
reader of the prophetic books will find much hate in them, much
prejudice, and much that will remind him of the propaganda pamphlets of
the present time.  Nevertheless it is the Hebrew Prophets of the period
round and about the Babylonian captivity who mark the appearance of a
new power in the world, the power of individual moral appeal, of an
appeal to the free conscience of mankind against the fetish sacrifices
and slavish loyalties that had hitherto bridled and harnessed our race.', 1314)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('01d37bbc-856e-47c9-a83d-8d6b57277fcf', '8268eabe-4b74-414e-a1f6-5a266d184560', 23, 'XXIII The Greeks', 'Now while after Solomon (whose reign was probably about 960 B.C.) the
divided kingdoms of Israel and Judah were suffering destruction and
deportation, and while the Jewish people were developing their
tradition in captivity in Babylon, another great power over the human
mind, the Greek tradition, was also arising. While the Hebrew prophets
were working out a new sense of direct moral responsibility between the
people and an eternal and universal God of Right, the Greek
philosophers were training the human mind in a new method and spirit of
intellectual adventure.

The Greek tribes as we have told were a branch of the Aryan- speaking
stem. They had come down among the Ægean cities and islands some
centuries before 1000 B.C.  They were probably already in southward
movement before the Pharaoh Thothmes hunted his first elephants beyond
the conquered Euphrates.  For in those days there were elephants in
Mesopotamia and lions in Greece.

It is possible that it was a Greek raid that burnt Cnossos, but there
are no Greek legends of such a victory though there are stories of
Minos and his palace (the Labyrinth) and of the skill of the Cretan
artificers.

STATUE OF MELEAGER
STATUE OF MELEAGER

Note the progress in plastic power from the earlier wooden statue on
left

_Photo:  Sebah & Foaillier_

Like most of the Aryans these Greeks had singers and reciters whose
performances were an important social link, and these handed down from
the barbaric beginnings of their people two great epics, the _Iliad_,
telling how a league of Greek tribes besieged and took and sacked the
town of Troy in Asia Minor, and the _Odyssey_, being a long adventure
story of the return of the sage captain, Odysseus, from Troy to his own
island.  These epics were written down somewhen in the eighth or
seventh century B.C., when the Greeks had acquired the use of an
alphabet from their more civilized neighbours, but they are supposed to
have been in existence very much earlier.  Formerly they were ascribed
to a particular blind bard, Homer, who was supposed to have sat down
and composed them as Milton composed Paradise Lost. Whether there
really was such a poet, whether he composed or only wrote down and
polished these epics and so forth, is a favourite quarrelling ground
for the erudite.  We need not concern ourselves with such bickerings
here.  The thing that matters from our point of view is that the Greeks
were in possession of their epics in the eighth century B.C., and that
they were a common possession and a link between their various tribes,
giving them a sense of fellowship as against the outer barbarians. 
They were a group of kindred peoples linked by the spoken and
afterwards by the written word, and sharing common ideals of courage
and behaviour.

The epics showed the Greeks a barbaric people without iron, without
writing, and still not living in cities.  They seem to have lived at
first in open villages of huts around the halls of their chiefs outside
the ruins of the Ægean cities they had destroyed.  Then they began to
wall their cities and to adopt the idea of temples from the people they
had conquered.  It has been said that the cities of the primitive
civilizations grew up about the altar of some tribal god, and that the
wall was added; in the cities of the Greeks the wall preceded the
temple.  They began to trade and send out colonies.  By the seventh
century B.C. a new series of cities had grown up in the valleys and
islands of Greece, forgetful of the Ægean cities and civilization that
had preceded them; Athens, Sparta, Corinth, Thebes, Samos, Miletus
among the chief. There were already Greek settlements along the coast
of the Black Sea and in Italy and Sicily.  The heel and toe of Italy
was called Magna Græcia.  Marseilles was a Greek town established on
the site of an earlier Phœnician colony.

Now countries which are great plains or which have as a chief means of
transport some great river like the Euphrates or Nile tend to become
united under some common rule.  The cities of Egypt and the cities of
Sumeria, for example, ran together under one system of government. But
the Greek peoples were cut up among islands and mountain valleys; both
Greece and Magna Græcia are very mountainous; and the tendency was all
the other way.  When the Greeks come into history they are divided up
into a number of little states which showed no signs of coalescence. 
They are different even in race.  Some consist chiefly of citizens of
this or that Greek tribe, Ionic, Æolian or Doric; some have a mingled
population of Greeks and descendants of the pre-Greek “Mediterranean”
folk; some have an unmixed free citizenship of Greeks lording it over
an enslaved conquered population like the “Helots” in Sparta.  In some
the old leaderly Aryan families have become a close aristocracy; in
some there is a democracy of all the Aryan citizens; in some there are
elected or even hereditary kings, in some usurpers or tyrants.

RUINS OF THE GREAT TEMPLE OF ZEUS AT OLYMPIA
RUINS OF THE GREAT TEMPLE OF ZEUS AT OLYMPIA

_Photo:  Fred Boissonnas_

And the same geographical conditions that kept the Greek states divided
and various, kept them small.  The largest states were smaller than
many English counties, and it is doubtful if the population of any of
their cities ever exceeded a third of a million.  Few came up even to
50,000. There were unions of interest and sympathy but no coalescences.
 Cities made leagues and alliances as trade increased, and small cities
put themselves under the protection of great ones.  Yet all Greece was
held together in a certain community of feeling by two things, by the
epics and by the custom of taking part every fourth year in the
athletic contests at Olympia.  This did not prevent wars and feuds, but
it mitigated something of the savagery of war between them, and a truce
protected all travellers to and from the games.  As time went on the
sentiment of a common heritage grew and the number of states
participating in the Olympic games increased until at last not only
Greeks but competitors from the closely kindred countries of Epirus and
Macedonia to the north were admitted.

The Greek cities grew in trade and importance, and the quality of their
civilization rose steadily in the seventh and sixth centuries B.C. 
Their social life differed in many interesting points from the social
life of the Ægean and river valley civilizations. They had splendid
temples but the priesthood was not the great traditional body it was in
the cities of the older world, the-repository of all knowledge, the
storehouse of ideas.  They had leaders and noble families, but no
quasi- divine monarch surrounded by an elaborately organized court.
Rather their organization was aristocratic, with leading families which
kept each other in order.  Even their so- called “democracies” were
aristocratic; every citizen had a share in public affairs and came to
the assembly in a democracy, _but everybody was not a citizen_.  The
Greek democracies were not like our modern “democracies” in which
everyone has a vote.  Many of the Greek democracies had a few hundred
or a few thousand citizens and then many thousands of slaves, freedmen
and so forth, with no share in public affairs.  Generally in Greece
affairs were in the hands of a community of substantial men. Their
kings and their tyrants alike were just men set in front of other men
or usurping a leadership; they were not quasi-divine overmen like
Pharaoh or Minos or the monarchs of Mesopotamia.  Both thought and
government therefore had a freedom under Greek conditions such as they
had known in none of the older civilizations.  The Greeks had brought
down into cities the individualism, the personal initiative of the
wandering life of the northern parklands.  They were the first
republicans of importance in history.

THE TEMPLE OF NEPTUNE (POSEIDON), PÆSTUM, SICILY
THE TEMPLE OF NEPTUNE (POSEIDON), PÆSTUM, SICILY

_Photo:  Alinari_

And we find that as they emerge from a condition of barbaric warfare a
new thing becomes apparent in their intellectual life.  We find men who
are not priests seeking and recording knowledge and enquiring into the
mysteries of life and being, in a way that has hitherto been the
sublime privilege of priesthood or the presumptuous amusement of kings.
 We find already in the sixth century B.C.—perhaps while Isaiah was
still prophesying in Babylon—such men as Thales and Anaximander of
Miletus and Heraclitus of Ephesus, who were what we should now call
independent gentlemen, giving their minds to shrewd questionings of the
world in which we live, asking what its real nature was, whence it came
and what its destiny might be, and refusing all ready-made or evasive
answers.  Of these questionings of the universe by the Greek mind, we
shall have more to say a little later in this history.  These Greek
enquirers who begin to be remarkable in the sixth century B.C. are the
first philosophers, the first “wisdom-lovers,” in the world.

And it may be noted here how important a century this sixth century
B.C. was in the history of humanity.  For not only were these Greek
philosophers beginning the research for clear ideas about this universe
and man’s place in it and Isaiah carrying Jewish prophecy to its
sublimest levels, but as we shall tell later Gautama Buddha was then
teaching in India and Confucius and Lao Tse in China. From Athens to
the Pacific the human mind was astir.', 1605)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('85f5f953-110f-47db-a125-5b9a168a7384', '8268eabe-4b74-414e-a1f6-5a266d184560', 24, 'XXIV The Wars of the Greeks and Persians', 'While the Greeks in the cities in Greece, South Italy and Asia Minor
were embarking upon free intellectual enquiry and while in Babylon and
Jerusalem the last of the Hebrew prophets were creating a free
conscience for mankind, two adventurous Aryan peoples, the Medes and
the Persians, were in possession of the civilization of the ancient
world and were making a great empire, the Persian empire, which was far
larger in extent than any empire the world had seen hitherto. Under
Cyrus, Babylon and the rich and ancient civilization of Lydia had been
added to the Persian rule; the Phœnician cities of the Levant and all
the Greek cities in Asia Minor had been made tributary, Cambyses had
subjected Egypt, and Darius I, the Mede, the third of the Persian
rulers (521 B.C.), found himself monarch as it seemed of all the world.
His couriers rode with his decrees from the Dardanelles to the Indus
and from Upper Egypt to Central Asia.

The Greeks in Europe, it is true, Italy, Carthage, Sicily and the
Spanish Phœnician settlements, were not under the Persian Peace; but
they treated it with respect and the only people who gave any serious
trouble were the old parent hordes of Nordic people in South Russia and
Central Asia, the Scythians, who raided the northern and north-eastern
borders.

Of course the population of this great Persian empire was not a
population of Persians, The Persians were only the small conquering
minority of this enormous realm.  The rest of the population was what
it had been before the Persians came from time immemorial, only that
Persian was the administrative language.  Trade and finance were still
largely Semitic, Tyre and Sidon as of old were the great Mediterranean
ports and Semitic shipping plied upon the seas.  But many of these
Semitic merchants and business people as they went from place to place
already found a sympathetic and convenient common history in the Hebrew
tradition and the Hebrew scriptures.  A new element which was
increasing rapidly in this empire was the Greek element.  The Greeks
were becoming serious rivals to the Semites upon the sea, and their
detached and vigorous intelligence made them useful and, unprejudiced
officials.

FINE PIECE OF ATHENIAN POTTERY
FINE PIECE OF ATHENIAN POTTERY

Showing Greek merchant vesselswith sails and oars statue on left

_Brit. Mus._

It was on account of the Scythians that Darius I invaded Europe.  He
wanted to reach South Russia, the homeland of the Scythian horsemen. 
He crossed the Bosphorus with a great army and marched through Bulgaria
to the Danube, crossed this by a bridge of boats and pushed far
northward.  His army suffered terribly.  It was largely an infantry
force and the mounted Scythians rode all round it, cut off its
supplies, destroyed any stragglers and never came to a pitched battle.
Darius was forced into an inglorious retreat.

He returned himself to Susa but he left an army in Thrace and
Macedonia, and Macedonia submitted to Darius.  Insurrections of the
Greek cities in Asia followed this failure, and the European Greeks
were drawn into the contest.  Darius resolved upon the subjugation of
the Greeks in Europe.  With the Phœnician fleet at his disposal he was
able to subdue one island after another, and finally in 490 B.C. he
made his main attack upon Athens.  A considerable Armada sailed from
the ports of Asia Minor and the eastern Mediterranean, and the
expedition landed its troops at Marathon to the north of Athens.  There
they were met and signally defeated by the Athenians.

An extraordinary thing happened at this time.  The bitterest rival of
Athens in Greece was Sparta, but now Athens appealed to Sparta, sending
a herald, a swift runner, imploring the Spartans not to let Greeks
become slaves to barbarians.  This runner (the prototype of all
“Marathon” runners) did over a hundred miles of broken country in less
than two days.  The Spartans responded promptly and generously; but
when, in three days, the Spartan force reached Athens, there was
nothing for it to do but to view the battlefield and the bodies of the
defeated Persian soldiers.  The Persian fleet had returned to Asia.  So
ended the first Persian attack on Greece.

The next was much more impressive.  Darius died soon after the news of
his defeat at Marathon reached him, and for four years his son and
successor, Xerxes, prepared a host to crush the Greeks.  For a time
terror united all the Greeks.  The army of Xerxes was certainly the
greatest that had hitherto been assembled in the world.  It was a huge
assembly of discordant elements.  It crossed the Dardanelles, 480 B.C.,
by a bridge of boats; and along the coast as it advanced moved an
equally miscellaneous fleet carrying supplies.  At the narrow pass of
Thermopylæ a small force of 1400 men under the Spartan Leonidas
resisted this multitude, and after a fight of unsurpassed heroism was
completely destroyed.  Every man was killed.  But the losses they
inflicted upon the Persians were enormous, and the army of Xerxes
pushed on to Thebes and Athens in a chastened mood. Thebes surrendered
and made terms.  The Athenians abandoned their city and it was burnt.

Greece seemed in the hands of the conqueror, but again came victory
against the odds and all expectations.  The Greek fleet, though not a
third the size of the Persian, assailed it in the bay of Salamis and
destroyed it.  Xerxes found himself and his immense army cut off from
supplies and his heart failed him.  He retreated to Asia with one half
of his army, leaving the rest to be defeated at Platea (479 B.C.) what
time the remnants of the Persian fleet were hunted down by the Greeks
and destroyed at Mycalæ in Asia Minor.

ALL THAT REMAINS OF THE GREAT TEMPLE OF CORINTH
ALL THAT REMAINS OF THE GREAT TEMPLE OF CORINTH

_Photo:  Fred Boissonnas_

The Persian danger was at an end.  Most of the Greek cities in Asia
became free.  All this is told in great detail and with much
picturesqueness in the first of written histories, the _History_ of
Herodotus.  This Herodotus was born about 484 B.C. in the Ionian city
of Halicarnassus in Asia Minor, and he visited Babylon and Egypt in his
search for exact particulars.  From Mycalæ onward Persia sank into a
confusion of dynastic troubles.  Xerxes was murdered in 465 B.C. and
rebellions in Egypt, Syria and Media broke up the brief order of that
mighty realm.  The history of Herodotus lays stress on the weakness of
Persia.  This history is indeed what we should now call
propaganda—propaganda for Greece to unite and conquer Persia. 
Herodotus makes one character, Aristagoras, go to the Spartans with a
map of the known world and say to them: “These Barbarians are not
valiant in fight.  You on the other hand have now attained the utmost
skill in war .... No other nations in the world have what they possess:
gold, silver, bronze, embroidered garments, beasts and slaves. _All
this you might have for yourselves, if you so desired_.”

THE TEMPLE OF NEPTUNE (POSEIDON) AT CAPE SUNIUM
THE TEMPLE OF NEPTUNE (POSEIDON) AT CAPE SUNIUM

_Photo:  Fred Boissonnas_', 1199)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('c7b9d69b-c447-43db-ac03-83372ca5f84a', '8268eabe-4b74-414e-a1f6-5a266d184560', 25, 'XXV The Splendour of Greece', 'The century and a half that followed the defeat of Persia was one of
very great splendour for the Greek civilization. True that Greece was
torn by a desperate struggle for ascendancy between Athens, Sparta and
other states (the Peloponnesian War 431 to 404 B.C.) and that in 338
B.C. the Macedonians became virtually masters of Greece; nevertheless
during this period the thought and the creative and artistic impulse of
the Greeks rose to levels that made their achievement a lamp to mankind
for all the rest of history.

The head and centre of this mental activity was Athens.  For over
thirty years (466 to 428 B.C.) Athens was dominated by a man of great
vigour and liberality of mind, Pericles, who set himself to rebuild the
city from the ashes to which the Persians had reduced it. The beautiful
ruins that still glorify Athens to-day are chiefly the remains of this
great effort.  And he did not simply rebuild a material Athens.  He
rebuilt Athens intellectually.  He gathered about him not only
architects and sculptors but poets, dramatists, philosophers and
teachers.  Herodotus came to Athens to recite his history (438 B.C.).
Anaxagoras came with the beginnings of a scientific description of the
sun and stars.  Æschylus, Sophocles and Euripides one after the other
carried the Greek drama to its highest levels or beauty and nobility.

The impetus Pericles gave to the intellectual life of Athens lived on
after his death, and in spite of the fact that the peace of Greece was
now broken by the Peloponnesian War and a long and wasteful struggle
for “ascendancy” was beginning.  Indeed the darkling of the political
horizon seems for a time to have quickened rather than discouraged
men’s minds.

Already long before the time of Pericles the peculiar freedom of Greek
institutions had given great importance to skill in discussion. 
Decision rested neither with king nor with priest but in the assemblies
of the people or of leading men.  Eloquence and able argument became
very desirable accomplishments therefore, and a class of teachers
arose, the Sophists, who undertook to strengthen young men in these
arts.  But one cannot reason without matter, and knowledge followed in
the wake of speech.  The activities and rivalries of these Sophists led
very naturally to an acute examination of style, of methods of thought
and of the validity of arguments.  When Pericles died a certain
Socrates was becoming prominent as an able and destructive critic of
bad argument—and much of the teaching of the Sophists was bad argument.
 A group of brilliant young men gathered about Socrates.  In the end
Socrates was executed for disturbing people’s minds (399 B.C.), he was
condemned after the dignified fashion of the Athens of those days to
drink in his own house and among his own friends a poisonous draught
made from hemlock, but the disturbance of people’s minds went on in
spite of his condemnation. His young men carried on his teaching.

PART OF THE FAMOUS FRIEZE OF THE PARTHENON, ATHENS
PART OF THE FAMOUS FRIEZE OF THE PARTHENON, ATHENS

A specimen of Grecian sculpture in its finest expression. Compare the
advance of art with that seen in the animals shown on p. 105

_Photo:  Fred Boissonnas_

THE ACROPOLIS, ATHENS
THE ACROPOLIS, ATHENS

The marvellous group of Temples and monuments built under the
inspriration of Pericles

_Photo:  Fred Boissonnas_

THE THEATRE AT EPIDAUROS, GREECE
THE THEATRE AT EPIDAUROS, GREECE

A wonderfully preserved specimen showing the vast auditorium

_Photo:  Fred Boissonnas_

Chief among these young men was Plato (427 to 347 B.C.) who presently
began to teach philosophy in the grove of the Academy.  His teaching
fell into two main divisions, an examination of the foundations and
methods of human thinking and an examination of political institutions.
He was the first man to write a Utopia, that is to say the plan of a
community different from and better than any existing community.  This
shows an altogether unprecedented boldness in the human mind which had
hitherto accepted social traditions and usages with scarcely a
question.  Plato said plainly to mankind: “Most of the social and
political ills from which you suffer are under your control, given only
the will and courage to change them.  You can live in another and a
wiser fashion if you choose to think it out and work it out.  You are
not awake to your own power.”  That is a high adventurous teaching that
has still to soak in to the common intelligence of our race.  One of
his earliest works was the Republic, a dream of a communist
aristocracy; his last unfinished work was the Laws, a scheme of
regulation for another such Utopian state.

THE CARYATIDES OF THE ERECHTHEUM
THE CARYATIDES OF THE ERECHTHEUM

The ancient sanctuary on the Acropolis at Athens

_Photo:  Fred Boissonnas_

ATHENE OF THE PARTHENON
ATHENE OF THE PARTHENON
_Photo:  Alinart_

The criticism of methods of thinking and methods of government was
carried on after Plato’s death by Aristotle, who had been his pupil and
who taught in the Lyceum.  Aristotle came from the city of Stagira in
Macedonia, and his father was court physician to the Macedonian king. 
For a time Aristotle was tutor to Alexander, the king’s son, who was
destined to achieve very great things of which we shall soon be
telling.  Aristotle’s work upon methods of thinking carried the science
of Logic to a level at which it remained for fifteen hundred years or
more, until the mediæval schoolmen took up the ancient questions again.
 He made no Utopias.  Before man could really control his destiny as
Plato taught, Aristotle perceived that he needed far more knowledge and
far more accurate knowledge than he possessed. And so Aristotle began
that systematic collection of knowledge which nowadays we call Science.
 He sent out explorers to collect _facts_.  He was the father of
natural history.  He was the founder of political science. His students
at the Lyceum examined and compared the constitutions of 158 different
states ....

Here in the fourth century B.C. we find men who are practically “modern
thinkers.” The child-like, dream-like methods of primitive thought had
given way to a disciplined and critical attack upon the problems of
life.  The weird and monstrous symbolism and imagery of the gods and
god monsters, and all the taboos and awes and restraints that have
hitherto encumbered thinking are here completely set aside.  Free,
exact and systematic thinking has begun.  The fresh and unencumbered
mind of these newcomers out of the northern forests has thrust itself
into the mysteries of the temple and let the daylight in.', 1100)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('7fd4e72d-1c11-4a7e-a92a-c2cc36715f50', '8268eabe-4b74-414e-a1f6-5a266d184560', 26, 'XXVI The Empire of Alexander the Great', 'From 431 to 404 B.C. the Peloponnesian War wasted Greece. Meanwhile to
the north of Greece, the kindred country of Macedonia was rising slowly
to power and civilization. The Macedonians spoke a language closely
akin to Greek, and on several occasions Macedonian competitors had
taken part in the Olympic games. In 359 B.C. a man of very great
abilities and ambition became king of this little country—Philip.
Philip had previously been a hostage in Greece; he had had a thoroughly
Greek education and he was probably aware of the ideas of
Herodotus—which had also been developed by the philosopher Isocrates—of
a possible conquest of Asia by a consolidated Greece.

He set himself first to extend and organize his own realm and to
remodel his army.  For a thousand years now the charging horse-chariot
had been the decisive factor in battles, that and the close-fighting
infantry.  Mounted horsemen had also fought, but as a cloud of
skirmishers, individually and without discipline.  Philip made his
infantry fight in a closely packed mass, the Macedonian phalanx, and he
trained his mounted gentlemen, the knights or companions, to fight in
formation and so invented cavalry.  The master move in most of his
battles and in the battles of his son Alexander was a cavalry charge. 
The phalanx _held_ the enemy infantry in front while the cavalry swept
away the enemy horse on his wings and poured in on the flank and rear
of his infantry. Chariots were disabled by bowmen, who shot the horses.

With this new army Philip extended his frontiers through Thessaly to
Greece; and the battle of Chæronia (338 B.C.), fought against Athens
and her allies, put all Greece at his feet.  At last the dream of
Herodotus was bearing fruit.  A congress of all the Greek states
appointed Philip captain-general of the Græco- Macedonian confederacy
against Persia, and in 336 B.C. his advanced guard crossed into Asia
upon this long premeditated adventure.  But he never followed it.  He
was assassinated; it is believed at the instigation of his queen
Olympias, Alexander’s mother.  She was jealous because Philip had
married a second wife.

BUST OF ALEXANDER THE GREAT
BUST OF ALEXANDER THE GREAT
_(As in the British Museum)_

But Philip had taken unusual pains with his son’s education.  He had
not only secured Aristotle, the greatest philosopher in the world, as
this boy’s tutor, but he had shared his ideas with him and thrust
military experience upon him.  At Chæronia Alexander, who was then only
eighteen years old, had been in command of the cavalry.  And so it was
possible for this young man, who was still only twenty years old at the
time of his accession, to take up his father’s task at once and to
proceed successfully with the Persian adventure.

In 334 B.C.—for two years were needed to establish and confirm his
position in Macedonia and Greece—he crossed into Asia, defeated a not
very much bigger Persian army at the battle of the Granicus and
captured a number of cities in Asia Minor.  He kept along the
sea-coast.  It was necessary for him to reduce and garrison all the
coast towns as he advanced because the Persians had control of the
fleets of Tyre and Sidon and so had command of the sea.  Had he left a
hostile port in his rear the Persians might have landed forces to raid
his communications and cut him off. At  Issus (333 B.C.) he met and
smashed a vast conglomerate host under Darius III.  Like the host of
Xerxes that had crossed the Dardanelles a century and a half before, it
was an incoherent accumulation of contingents and it was encumbered
with a multitude of court officials, the harem of Darius and many camp
followers.  Sidon surrendered to Alexander but Tyre resisted
obstinately.  Finally that great city was stormed and plundered and
destroyed.  Gaza also was stormed, and towards the end of 332 B.C. the
conqueror entered Egypt and took over its rule from the Persians.

ALEXANDER’S VICTORY OVER THE PERSIANS AT ISSUS
ALEXANDER’S VICTORY OVER THE PERSIANS AT ISSUS
_(From the Pompeian Mosaic)_

Alexander charges in on the left, Darius is in the chariot to the right

At Alexandretta and at Alexandria in Egypt he built great cities,
accessible from the land and so incapable of revolt. To these the trade
of the Phœnician cities was diverted. The Phœnicians of the western
Mediterranean suddenly disappear from history—and as immediately the
Jews of Alexandria and the other new trading cities created by
Alexander appear.

In 331 B.C. Alexander marched out of Egypt upon Babylon as Thothmes and
Rameses and Necho had done before him.  But he marched by way of Tyre. 
At Arbela near the ruins of Nineveh, which was already a forgotten
city, he met Darius and fought the decisive battle of the war.  The
Persian chariot charge failed, a Macedonian cavalry charge broke up the
great composite host and the phalanx completed the victory.  Darius led
the retreat.  He made no further attempt to resist the invader but fled
northward into the country of the Medes.  Alexander marched on to
Babylon, still prosperous and important, and then to Susa and
Persepolis.  There after a drunken festival he burnt down the palace of
Darius, the king of kings.

THE APOLLO BELVEDERE
THE APOLLO BELVEDERE

_(In the Vatican Museum)_

Thence Alexander presently made a military parade of central Asia,
going to the utmost bounds of the Persian empire.  At first he turned
northward.  Darius was pursued; and he was overtaken at dawn dying in
his chariot, having been murdered by his own people.  He was still
living when the foremost Greeks reached him.  Alexander came up to find
him dead. Alexander skirted the Caspian Sea, he went up into the
mountains of western Turkestan, he came down by Herat (which he
founded) and Cabul and the Khyber Pass into India.  He fought a great
battle on the Indus with an Indian king, Porus, and here the Macedonian
troops met elephants for the first time and defeated them.  Finally he
built himself ships, sailed down to the mouth of the Indus, and marched
back by the coast of Beluchistan, reaching Susa again in 324 B.C. after
an absence of six years. He then prepared to consolidate and organize
this vast empire he had won.  He sought to win over his new subjects. 
He assumed the robes and tiara of a Persian monarch, and this roused
the jealousy of his Macedonian commanders.  He had much trouble with
them.  He arranged a number of marriages between these Macedonian
officers and Persian and Babylonian women: the “Marriage of the East
and West.”  He never lived to effect the consolidation he had planned. 
A fever seized him after a drinking bout in Babylon and he died in 323
B.C.

Immediately this vast dominion fell to pieces.  One of his generals,
Seleucus, retained most of the old Persian empire from the Indus to
Ephesus; another, Ptolemy, seized Egypt, and Antigonus secured
Macedonia.  The rest of the empire remained unstable, passing under the
control of a succession of local adventurers.  Barbarian raids began
from the north and grew in scope and intensity.  Until at last, as we
shall tell, a new power, the power of the Roman republic, came out of
the west to subjugate one fragment after another and weld them together
into a new and more enduring empire.', 1232)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('420ed88c-b0e4-401d-adba-e8a9f8274d9b', '8268eabe-4b74-414e-a1f6-5a266d184560', 27, 'XXVII The Museum and Library at Alexandria', 'Before the time of Alexander Greeks had already been spreading as
merchants, artists, officials, mercenary soldiers, over most of the
Persian dominions. In the dynastic disputes that followed the death of
Xerxes, a band of ten thousand Greek mercenaries played a part under
the leadership of Xenophon. Their return to Asiatic Greece from Babylon
is described in his _Retreat of the Ten Thousand_, one of the first war
stories that was ever written by a general in command. But the
conquests of Alexander and the division of his brief empire among his
subordinate generals, greatly stimulated this permeation of the ancient
world by the Greeks and their language and fashions and culture. Traces
of this Greek dissemination are to be found far away in central Asia
and in north-west India. Their influence upon the development of Indian
art was profound.

For many centuries Athens retained her prestige as a centre of art and
culture; her schools went on indeed to 529 A.D., that is to say for
nearly a thousand years; but the leadership in the intellectual
activity of the world passed presently across the Mediterranean to
Alexandria, the new trading city that Alexander had founded. Here the
Macedonian general Ptolemy had become Pharaoh, with a court that spoke
Greek.  He had become an intimate of Alexander before he became king,
and he was deeply saturated with the ideas of Aristotle.  He set
himself, with great energy and capacity, to organize knowledge and
investigation. He also wrote a history of Alexander’s campaigns which,
unhappily, is lost to the world.

Alexander had already devoted considerable sums to finance the
enquiries of Aristotle, but Ptolemy I was the first person to make a
permanent endowment of science.  He set up a foundation in Alexandria
which was formerly dedicated to the Muses, the Museum of Alexandria. 
For two or three generations the scientific work done at Alexandria was
extraordinarily good.  Euclid, Eratosthenes who measured the size of
the earth and came within fifty miles of its true diameter, Apollonius
who wrote on conic sections, Hipparchus who made the first star map and
catalogue, and Hero who devised the first steam engine are among the
greater stars of an extraordinary constellation of scientific pioneers.
Archimedes came from Syracuse to Alexandria to study, and was a
frequent correspondent of the Museum.  Herophilus was one of the
greatest of Greek anatomists, and is said to have practised
vivisection.

For a generation or so during the reigns of Ptolemy I and Ptolemy II
there was such a blaze of knowledge and discovery at Alexandria as the
world was not to see again until the sixteenth century A.D.  But it did
not continue.  There may have been several causes of this decline. 
Chief among them, the late Professor Mahaffy suggested, was the fact
that the Museum was a “royal” college and all its professors and
fellows were appointed and paid by Pharaoh.  This was all very well
when Pharaoh was Ptolemy I, the pupil and friend of Aristotle.  But as
the dynasty of the Ptolemies went on they became Egyptianized, they
fell under the sway of Egyptian priests and Egyptian religious
developments, they ceased to follow the work that was done, and their
control stifled the spirit of enquiry altogether.  The Museum produced
little good work after its first century of activity.

Ptolemy I not only sought in the most modern spirit to organize the
finding of fresh knowledge.  He tried also to set up an encyclopædic
storehouse of wisdom in the Library of Alexandria.  It was not simply a
storehouse, it was also a book-copying and book-selling organization. 
A great army of copyists was set to work perpetually multiplying copies
of books.

Here then we have the definite first opening up of the intellectual
process in which we live to-day; here we have the systematic gathering
and distribution of knowledge.  The foundation of this Museum and
Library marks one of the great epochs in the history of mankind.  It is
the true beginning of Modern History.

ARISTOTLE
ARISTOTLE
From Herculaneum, probably Fourth Century B.C.

_Photo:  Dr. Singer_

Both the work of research and the work of dissemination went on under
serious handicaps.  One of these was the great social gap that
separated the philosopher, who was a gentleman, from the trader and the
artisan.  There were glass workers and metal workers in abundance in
those days, but they were not in mental contact with the thinkers.  The
glass worker was making the most beautifully coloured beads and phials
and so forth, but he never made a Florentine flask or a lens.  Clear
glass does not seem to have interested him. The metal worker made
weapons and jewellery but he never made a chemical balance.  The
philosopher speculated loftily about atoms and the nature of things,
but he had no practical experience of enamels and pigments and philters
and so forth. He was not interested in substances.  So Alexandria in
its brief day of opportunity produced no microscopes and no chemistry. 
And though Hero invented a steam engine it was never set either to pump
or drive a boat or do any useful thing.  There were few practical
applications of science except in the realm of medicine, and the
progress of science was not stimulated and sustained by the interest
and excitement of practical applications.  There was nothing to keep
the work going therefore when the intellectual curiosity of Ptolemy I
and Ptolemy II was withdrawn.  The discoveries of the Museum went on
record in obscure manuscripts and never, until the revival of
scientific curiosity at the Renascence, reached out to the mass of
mankind.

Nor did the Library produce any improvements in book making. That
ancient world had no paper made in definite sizes from rag pulp.  Paper
was a Chinese invention and it did not reach the western world until
the ninth century A.D.  The only book materials were parchment and
strips of the papyrus reed joined edge to edge.  These strips were kept
on rolls which were very unwieldy to wind to and fro and read, and very
inconvenient for reference.  It was these things that prevented the
development of paged and printed books.  Printing itself was known in
the world it would seem as early as the Old Stone Age; there were seals
in ancient Sumeria; but without abundant paper there was little
advantage in printing books, an improvement that may further have been
resisted by trades unionism on the part of the copyists employed. 
Alexandria produced abundant books but not cheap books, and it never
spread knowledge into the population of the ancient world below the
level of a wealthy and influential class.

STATUETTE OF MAITREYA: THE BUDDHA TO COME
STATUETTE OF MAITREYA: THE BUDDHA TO COME
A Græco-Buddhist sculpture of the Third Century A.D.

_(From Malakand, N. W. Province, now in the India Museum)_

So it was that this blaze of intellectual enterprise never reached
beyond a small circle of people in touch with the group of philosophers
collected by the first two Ptolemies. It was like the light in a dark
lantern which is shut off from the world at large.  Within the blaze
may be blindingly bright, but nevertheless it is unseen.  The rest of
the world went on its old ways unaware that the seed of scientific
knowledge that was one day to revolutionize it altogether had been
sown.  Presently a darkness of bigotry fell even upon Alexandria.
Thereafter for a thousand years of darkness the seed that Aristotle had
sown lay hidden.  Then it stirred and began to germinate.  In a few
centuries it had become that widespread growth of knowledge and clear
ideas that is now changing the whole of human life.

THE DEATH OF BUDDHA
THE DEATH OF BUDDHA
Græco-Buddhist carving from Sivat Valley, N. W. Province, probably A.D.
350

_India Mus._

Alexandria was not the only centre of Greek intellectual activity in
the third century B.C. There were many other cities that displayed a
brilliant intellectual life amidst the disintegrating fragments of the
brief empire of Alexander.  There was, for example, the Greek city of
Syracuse in Sicily, where thought and science flourished for two
centuries; there was Pergamum in Asia Minor, which also had a great
library.  But this brilliant Hellenic world was now stricken by
invasion from the north. New Nordic barbarians, the Gauls, were
striking down along the tracks that had once been followed by the
ancestors of the Greeks and Phrygians and Macedonians.  They raided,
shattered and destroyed.  And in the wake of the Gauls came a new
conquering people out of Italy, the Romans, who gradually subjugated
all the western half of the vast realm of Darius and Alexander.  They
were an able but unimaginative people, preferring law and profit to
either science or art.  New invaders were also coming down out of
central Asia to shatter and subdue the Seleucid empire and to cut off
the western world again from India.  These were the Parthians, hosts of
mounted bowmen, who treated the Græco-Persian empire of Persepolis and
Susa in the third century B.C. in much the same fashion that the Medes
and Persians had treated it in the seventh and sixth.  And there were
now other nomadic peoples also coming out of the northeast, peoples who
were not fair and Nordic and Aryan- speaking but yellow-skinned and
black-haired and with a Mongolian speech.  But of these latter people
we shall tell more in a subsequent chapter.', 1577)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;
