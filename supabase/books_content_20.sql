-- ============================================================
-- NOI DUNG SACH — phan 20/20
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
  ('b065dbff-4fe2-4954-adc7-d1f04fea9afe', '8268eabe-4b74-414e-a1f6-5a266d184560', 59, 'LIX The Development of Modern Political and Social Ideas (1/2)', 'The institutions and customs and political ideas of the ancient
civilizations grew up slowly, age by age, no man designing and no man
foreseeing. It was only in that great century of human adolescence, the
sixth century B.C., that men began to think clearly about their
relations to one another, and first to question and first propose to
alter and rearrange the established beliefs and laws and methods of
human government.

We have told of the glorious intellectual dawn of Greece and
Alexandria, and how presently the collapse of the slave- holding
civilizations and the clouds of religious intolerance and absolutist
government darkened the promise of that beginning.  The light of
fearless thinking did not break through the European obscurity again
effectually until the fifteenth and sixteenth centuries.  We have tried
to show something of the share of the great winds of Arab curiosity and
Mongol conquest in this gradual clearing of the mental skies of Europe.
 And at first it was chiefly material knowledge that increased.  The
first fruits of the recovered manhood of the race were material
achievements and material power.  The science of human relationship, of
individual and social psychology, of education and of economics, are
not only more subtle and intricate in themselves but also bound up
inextricably with much emotional matter.  The advances made in them
have been slower and made against greater opposition.  Men will listen
dispassionately to the most diverse suggestions about stars or
molecules, but ideas about our ways of life touch and reflect upon
everyone about us.

And just as in Greece the bold speculations of Plato came before
Aristotle’s hard search for fact, so in Europe the first political
enquiries of the new phase were put in the form of “Utopian” stories,
directly imitated from Plato’s _Republic_ and his _Laws_.  Sir Thomas
More’s _Utopia_ is a curious imitation of Plato that bore fruit in a
new English poor law.  The Neapolitan Campanella’s _City of the Sun_
was more fantastic and less fruitful.

By the end of the seventeenth century we find a considerable and
growing literature of political and social science was being produced. 
Among the pioneers in this discussion was John Locke, the son of an
English republican, an Oxford scholar who first directed his attention
to chemistry and medicine.  His treatises on government, toleration and
education show a mind fully awake to the possibilities of social
reconstruction.  Parallel with and a little later than John Locke in
England, Montesquieu (1689-1755) in France subjected social, political
and religious institutions to a searching and fundamental analysis.  He
stripped the magical prestige from the absolutist monarchy in France. 
He shares with Locke the credit for clearing away many of the false
ideas that had hitherto prevented deliberate and conscious attempts to
reconstruct human society.

The generation that followed him in the middle and later decades of the
eighteenth century was boldly speculative upon the moral and
intellectual clearings he had made.  A group of brilliant writers, the
“Encyclopædists,” mostly rebel spirits from the excellent schools of
the Jesuits, set themselves to scheme out a new world (1766). Side by
side with the Encyclopædists were the Economists or Physiocrats, who
were making bold and crude enquiries into the production and
distribution of food and goods.  Morelly, the author of the _Code de La
Nature_, denounced the institution of private property and proposed a
communistic organization of society.  He was the precursor of that
large and various school of collectivist thinkers in the nineteenth
century who are lumped together as Socialists.

What is Socialism?  There are a hundred definitions of Socialism and a
thousand sects of Socialists.  Essentially Socialism is no more and no
less than a criticism of the idea of property in the light of the
public good.  We may review the history of that idea through the ages
very briefly.  That and the idea of internationalism are the two
cardinal ideas upon which most of our political life is turning.

CARL MARX
CARL MARX

_Photo:  Linde & Co._

The idea of property arises out of the combative instincts of the
species.  Long before men were men, the ancestral ape was a proprietor.
 Primitive property is what a beast will fight for.  The dog and his
bone, the tigress and her lair, the roaring stag and his herd, these
are proprietorship blazing. No more nonsensical expression is
conceivable in sociology than the term “primitive communism.”  The Old
Man of the family tribe of early palæolithic times insisted upon his
proprietorship in his wives and daughters, in his tools, in his visible
universe.  If any other man wandered into his visible universe he
fought him, and if he could he slew him. The tribe grew in the course
of ages, as Atkinson showed convincingly in his _Primal Law_, by the
gradual toleration by the Old Man of the existence of the younger men,
and of their proprietorship in the wives they captured from outside the
tribe, and in the tools and ornaments they made and the game they slew.
 Human society grew by a compromise between this one’s property and
that.  It was a compromise with instinct which was forced upon men by
the necessity of driving some other tribe out of its visible universe. 
If the hills and forests and streams were not _your_ land or _my_ land,
it was because they had to be our land.  Each of us would have
preferred to have it _my_ land, but that would not work.  In that case
the other fellows would have destroyed us.  Society, therefore, is from
its beginning a _mitigation of ownership_. Ownership in the beast and
in the primitive savage was far more intense a thing than it is in the
civilized world to- day.  It is rooted more strongly in our instincts
than in our reason.

In the natural savage and in the untutored man to-day there is no
limitation to the sphere of ownership.  Whatever you can fight for, you
can own; women-folk, spared captive, captured beast, forest glade,
stone-pit or what not.  As the community grew, a sort of law came to
restrain internecine fighting, men developed rough-and-ready methods of
settling proprietorship.  Men could own what they were the first to
make or capture or claim.  It seemed natural that a debtor who could
not pay should become the property of his creditor. Equally natural was
it that after claiming a patch of land a man should exact payments from
anyone who wanted to use it. It was only slowly, as the possibilities
of organized life dawned on men, that this unlimited property in
anything whatever began to be recognized as a nuisance.  Men found
themselves born into a universe all owned and claimed, nay! they found
themselves born owned and claimed.  The social struggles of the earlier
civilization are difficult to trace now, but the history we have told
of the Roman Republic shows a community waking up to the idea that
debts may become a public inconvenience and should then be repudiated,
and that the unlimited ownership of land is also an inconvenience.  We
find that later Babylonia severely limited the rights of property in
slaves.  Finally, we find in the teaching of that great revolutionist,
Jesus of Nazareth, such an attack upon property as had never been
before.  Easier it was, he said, for a camel to go through the eye of a
needle than for the owner of great possessions to enter the kingdom of
heaven.  A steady, continuous criticism of the permissible scope of
property seems to have been going on in the world for the last
twenty-five or thirty centuries.  Nineteen hundred years after Jesus of
Nazareth we find all the world that has come under the Christian
teaching persuaded that there could be no property in human beings. 
And also the idea that a man may “do what he likes with his own” was
very much shaken in relation to other sorts of property.

But this world of the closing eighteenth century was still only in the
interrogative stage in this matter.  It had got nothing clear enough,
much less settled enough, to act upon. One of its primary impulses was
to protect property against the greed and waste of kings and the
exploitation of noble adventurers.  It was largely to protect private
property from taxation that the French Revolution began.  But the
equalitarian formulæ of the Revolution carried it into a criticism of
the very property it had risen to protect.  How can men be free and
equal when numbers of them have no ground to stand upon and nothing to
eat, and the owners will neither feed nor lodge them unless they toil? 
Excessively—the poor complained.

To which riddle the reply of one important political group was to set
about “dividing up.”  They wanted to intensify and universalize
property.  Aiming at the same end by another route, there were the
primitive socialists—or, to be more exact, communists—who wanted to
“abolish” private property altogether. The state (a democratic state
was of course understood) was to own all property.

It is paradoxical that different men seeking the same ends of liberty
and happiness should propose on the one hand to make property as
absolute as possible, and on the other to put an end to it altogether. 
But so it was.  And the clue to this paradox is to be found in the fact
that ownership is not one thing but a multitude of different things.', 1577)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('36ea1e5a-f917-494e-abca-91848801e69e', '8268eabe-4b74-414e-a1f6-5a266d184560', 60, 'LIX The Development of Modern Political and Social Ideas (2/2)', 'It was only as the nineteenth century developed that men began to
realize that property was not one simple thing, but a great complex of
ownerships of different values and consequences, that many things (such
as one’s body, the implements of an artist, clothing, toothbrushes) are
very profoundly and incurably one’s personal property, and that there
is a very great range of things, railways, machinery of various sorts,
homes, cultivated gardens, pleasure boats, for example, which need each
to be considered very particularly to determine how far and under what
limitations it may come under private ownership, and how far it falls
into the public domain and may be administered and let out by the state
in the collective interest.  On the practical side these questions pass
into politics, and the problem of making and sustaining efficient state
administration.  They open up issues in social psychology, and interact
with the enquiries of educational science.  The criticism of property
is still a vast and passionate ferment rather than a science.  On the
one hand are the Individualists, who would protect and enlarge our
present freedoms with what we possess, and on the other the Socialists
who would in many directions pool our ownerships and restrain our
proprietory acts.  In practice one will find every gradation between
the extreme individualist, who will scarcely tolerate a tax of any sort
to support a government, and the communist who would deny any
possessions at all.  The ordinary socialist of to-day is what is called
a collectivist; he would allow a considerable amount of private
property but put such affairs as education, transport, mines,
land-owning, most mass productions of staple articles, and the like,
into the hands of a highly organized state.  Nowadays there does seem
to be a gradual convergence of reasonable men towards a moderate
socialism scientifically studied and planned.  It is realized more and
more clearly that the untutored man does not co-operate easily and
successfully in large undertakings, and that every step towards a more
complex state and every function that the state takes over from private
enterprise, necessitates a corresponding educational advance and the
organization of a proper criticism and control.  Both the press and the
political methods of the contemporary state are far too crude for any
large extension of collective activities.

But for a time the stresses between employer and employed and
particularly between selfish employers and reluctant workers, led to a
world-wide dissemination of the very harsh and elementary form of
communism which is associated with the name of Marx.  Marx based his
theories on a belief that men’s minds are limited by their economic
necessities, and that there is a necessary conflict of interests in our
present civilization between the prosperous and employing classes of
people and the employed mass.  With the advance in education
necessitated by the mechanical revolution, this great employed majority
will become more and more class-conscious and more and more solid in
antagonism to the (class- conscious) ruling minority.  In some way the
class-conscious workers would seize power, he prophesied, and
inaugurate a new social state.  The antagonism, the insurrection, the
possible revolution are understandable enough, but it does not follow
that a new social state or anything but a socially destructive process
will ensue.  Put to the test in Russia, Marxism, as we shall note
later, has proved singularly uncreative.

SCIENCE IN THE COAL MINE
SCIENCE IN THE COAL MINE

Portable Electric Loading Conveyor
_Photo:  Jeffrey Manufacturing Company, Columbus, Ohio_

Marx sought to replace national antagonism by class antagonisms;
Marxism has produced in succession a First, a Second and a Third
Workers’ International.  But from the starting point of modern
individualistic thought it is also possible to reach international
ideas.  From the days of that great English economist, Adam Smith,
onward there has been an increasing realization that for world-wide
prosperity free and unencumbered trade about the earth is needed.  The
individualist with his hostility to the state is hostile also to
tariffs and boundaries and all the restraints upon free act and
movement that national boundaries seem to justify. It is interesting to
see two lines of thought, so diverse in spirit, so different in
substance as this class-war socialism of the Marxists and the
individualistic free-trading philosophy of the British business men of
the Victorian age heading at last, in spite of these primary
differences, towards the same intimations of a new world-wide treatment
of human affairs outside the boundaries and limitations of any existing
state.  The logic of reality triumphs over the logic of theory.  We
begin to perceive that from widely divergent starting points
individualist theory and socialist theory are part of a common search,
a search for more spacious social and political ideas and
interpretations, upon which men may contrive to work together, a search
that began again in Europe and has intensified as men’s confidence in
the ideas of the Holy Roman Empire and in Christendom decayed, and as
the age of discovery broadened their horizons from the world of the
Mediterranean to the whole wide world.

To bring this description of the elaboration and development of social,
economic and political ideas right down to the discussions of the
present day, would be to introduce issues altogether too controversial
for the scope and intentions of this book.  But regarding these things,
as we do here, from the vast perspectives of the student of world
history, we are bound to recognize that this reconstruction of these
directive ideas in the human mind is still an unfinished task—we cannot
even estimate yet how unfinished the task may be.  Certain common
beliefs do seem to be emerging, and their influence is very perceptible
upon the political events and public acts of to-day; but at present
they are not clear enough nor convincing enough to compel men
definitely and systematically towards their realization.  Men’s acts
waver between tradition and the new, and on the whole they rather
gravitate towards the traditional.  Yet, compared with the thought of
even a brief lifetime ago, there does seem to be an outline shaping
itself of a new order in human affairs.  It is a sketchy outline,
vanishing into vagueness at this point and that, and fluctuating in
detail and formulæ, yet it grows steadfastly clearer, and its main
lines change less and less.

CONSTRUCTIONAL DETAIL OF THE FORTH BRIDGE
CONSTRUCTIONAL DETAIL OF THE FORTH BRIDGE

_Photo:  Baker & Hurtzig_

It is becoming plainer and plainer each year that in many respects and
in an increasing range of affairs, mankind is becoming one community,
and that it is more and more necessary that in such matters there
should be a common world-wide control.  For example, it is steadily
truer that the whole planet is now one economic community, that the
proper exploitation of its natural resources demands one comprehensive
direction, and that the greater power and range that discovery has
given human effort makes the present fragmentary and contentious
administration of such affairs more and more wasteful and dangerous. 
Financial and monetary expedients also become world-wide interests to
be dealt with successfully only on world-wide lines.  Infectious
diseases and the increase and migrations of population are also now
plainly seen to be world-wide concerns.  The greater power and range of
human activities has also made war disproportionately destructive and
disorganizing, and, even as a clumsy way of settling issues between
government and government and people and people, ineffective.  All
these things clamour for controls and authorities of a greater range
and greater comprehensiveness than any government that has hitherto
existed.

But it does not follow that the solution of these problems lies in some
super-government of all the world arising by conquest or by the
coalescence of existing governments.  By analogy with existing
institutions men have thought of the Parliament of Mankind, of a World
Congress, of a President or Emperor of the Earth.  Our first natural
reaction is towards some such conclusion, but the discussion and
experiences of half a century of suggestions and attempts has on the
whole discouraged belief in that first obvious idea.  Along that line
to world unity the resistances are too great.  The drift of thought
seems now to be in the direction of a number of special committees or
organizations, with world-wide power delegated to them by existing
governments in this group of matters or that, bodies concerned with the
waste or development of natural wealth, with the equalization of labour
conditions, with world peace, with currency, population and health, and
so forth.

The world may discover that all its common interests are being managed
as one concern, while it still fails to realize that a world government
exists.  But before even so much human unity is attained, before such
international arrangements can be put above patriotic suspicions and
jealousies, it is necessary that the common mind of the race should be
possessed of that idea of human unity, and that the idea of mankind as
one family should be a matter of universal instruction and
understanding.

For a score of centuries or more the spirit of the great universal
religions has been struggling to maintain and extend that idea of a
universal human brotherhood, but to this day the spites, angers and
distrusts of tribal, national and racial friction obstruct, and
successfully obstruct, the broader views and more generous impulses
which would make every man the servant of all mankind.  The idea of
human brotherhood struggles now to possess the human soul, just as the
idea of Christendom struggled to possess the soul of Europe in the
confusion and disorder of the sixth and seventh centuries of the
Christian era.  The dissemination and triumph of such ideas must be the
work of a multitude of devoted and undistinguished missionaries, and no
contemporary writer can presume to guess how far such work has gone or
what harvest it may be preparing.

Social and economic questions seem to be inseparably mingled with
international ones.  The solution in each case lies in an appeal to
that same spirit of service which can enter and inspire the human
heart.  The distrust, intractability and egotism of nations reflects
and is reflected by the distrust, intractability and egotism of the
individual owner and worker in the face of the common good. 
Exaggerations of possessiveness in the individual are parallel and of a
piece with the clutching greed of nations and emperors.  They are
products of the same instinctive tendencies, and the same ignorances
and traditions.  Internationalism is the socialism of nations.  No one
who has wrestled with these problems can feel that there yet exists a
sufficient depth and strength of psychological science and a
sufficiently planned-out educational method and organization for any
real and final solution of these riddles of human intercourse and
cooperation.  We are as incapable of planning a really effective peace
organization of the world to-day as were men in 1820 to plan an
electric railway system, but for all we know the thing is equally
practicable and may be as nearly at hand.

No man can go beyond his own knowledge, no thought can reach beyond
contemporary thought, and it is impossible for us to guess or foretell
how many generations of humanity may have to live in war and waste and
insecurity and misery before the dawn of the great peace to which all
history seems to be pointing, peace in the heart and peace in the
world, ends our night of wasteful and aimless living.  Our proposed
solutions are still vague and crude.  Passion and suspicion surround
them.  A great task of intellectual reconstruction is going on, it is
still incomplete, and our conceptions grow clearer and more
exact—slowly, rapidly, it is hard to tell which.  But as they grow
clearer they will gather power over the minds and imaginations of men. 
Their present lack of grip is due to their lack of assurance and exact
rightness. They are misunderstood because they are variously and
confusingly presented.  But with precision and certainty the new vision
of the world will gain compelling power.  It may presently gain power
very rapidly.  And a great work of educational reconstruction will
follow logically and necessarily upon that clearer understanding.', 2031)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('b2620f22-cc6d-4832-a52c-4010bb3abd4f', '8268eabe-4b74-414e-a1f6-5a266d184560', 61, 'LX The Expansion of the United States', 'The region of the world that displayed the most immediate and striking
results from the new inventions in transport was North America.
Politically the United States embodied, and its constitution
crystallized, the liberal ideas of the middle eighteenth century. It
dispensed with state-church or crown, it would have no titles, it
protected property very jealously as a method of freedom, and—the exact
practice varied at first in the different states—it gave nearly every
adult male citizen a vote. Its method of voting was barbarically crude,
and as a consequence its political life fell very soon under the
control of highly organized party machines, but that did not prevent
the newly emancipated population developing an energy, enterprise and
public spirit far beyond that of any other contemporary population.

Then came that acceleration of locomotion to which we have already
called attention.  It is a curious thing that America, which owes most
to this acceleration in locomotion, has felt it least.  The United
States have taken the railway, the river steamboat, the telegraph and
so forth as though they were a natural part of their growth.  They were
not. These things happened to come along just in time to save American
unity.  The United States of to-day were made first by the river
steamboat, and then by the railway.  Without these things, the present
United States, this vast continental nation, would have been altogether
impossible. The westward flow of population would have been far more
sluggish.  It might never have crossed the great central plains.  It
took nearly two hundred years for effective settlement to reach from
the coast to Missouri, much less than halfway across the continent. 
The first state established beyond the river was the steamboat state of
Missouri in 1821.  But the rest of the distance to the Pacific was done
in a few decades.

If we had the resources of the cinema it would be interesting to show a
map of North America year by year from 1600 onward, with little dots to
represent hundreds of people, each dot a hundred, and stars to
represent cities of a hundred thousand people.

For two hundred years the reader would see that stippling creeping
slowly along the coastal districts and navigable waters, spreading
still more gradually into Indiana, Kentucky and so forth.  Then
somewhere about 1810 would come a change. Things would get more lively
along the river courses.  The dots would be multiplying and spreading. 
That would be the steamboat.  The pioneer dots would be spreading soon
over Kansas and Nebraska from a number of jumping-off places along the
great rivers.

Then from about 1850 onward would come the black lines of the railways,
and after that the little black dots would not simply creep but run. 
They would appear now so rapidly, it would be almost as though they
were being put on by some sort of spraying machine.  And suddenly here
and then there would appear the first stars to indicate the first great
cities of a hundred thousand people.  First one or two and then a
multitude of cities—each like a knot in the growing net of the
railways.

The growth of the United States is a process that has no precedent in
the world’s history; it is a new kind of occurrence.  Such a community
could not have come into existence before, and if it had, without
railways it would certainly have dropped to pieces long before now. 
Without railways or telegraph it would be far easier to administer
California from Pekin than from Washington.  But this great population
of the United States of America has not only grown outrageously; it has
kept uniform.  Nay, it has become more uniform.  The man of San
Francisco is more like the man of New York to-day than the man of
Virginia was like the man of New England a century ago.  And the
process of assimilation goes on unimpeded.  The United States is being
woven by railway, by telegraph, more and more into one vast unity,
speaking, thinking and acting harmoniously with itself.  Soon aviation
will be helping in the work.

This great community of the United States is an altogether new thing in
history.  There have been great empires before with populations
exceeding 100 millions, but these were associations of divergent
peoples; there has never been one single people on this scale before. 
We want a new term for this new thing.  We call the United States a
country just as we call France or Holland a country.  But the two
things are as different as an automobile and a one-horse shay.  They
are the creations of different periods and different conditions; they
are going to work at a different pace and in an entirely different way.
 The United States in scale and possibility is halfway between a
European state and a United States of all the world.

But on the way to this present greatness and security the American
people passed through one phase of dire conflict. The river steamboats,
the railways, the telegraph, and their associate facilities, did not
come soon enough to avert a deepening conflict of interests and ideas
between the southern and northern states of the Union.  The former were
slave-holding states; the latter, states in which all men were free. 
The railways and steamboats at first did but bring into sharper
conflict an already established difference between the two sections of
the United States.  The increasing unification due to the new means of
transport made the question whether the southern spirit or the northern
should prevail an ever more urgent one.  There was little possibility
of compromise.  The northern spirit was free and individualistic; the
southern made for great estates and a conscious gentility ruling over a
dusky subject multitude.

Every new territory that was organized into a state as the tide of
population swept westward, every new incorporation into the fast
growing American system, became a field of conflict between the two
ideas, whether it should become a state of free citizens, or whether
the estate and slavery system should prevail.  From 1833 an American
anti-slavery society was not merely resisting the extension of the
institution but agitating the whole country for its complete abolition.
 The issue flamed up into open conflict over the admission of Texas to
the Union.  Texas had originally been a part of the republic of Mexico,
but it was largely colonized by Americans from the slave-holding
states, and it seceded from Mexico, established its independence in
1835, and was annexed to the United States in 1844.  Under the Mexican
law slavery had been forbidden in Texas, but now the South claimed
Texas for slavery and got it.

Meanwhile the development of ocean navigation was bringing a growing
swarm of immigrants from Europe to swell the spreading population of
the northern states, and the raising of Iowa, Wisconsin, Minnesota and
Oregon, all northern farm lands, to state level, gave the anti-slavery
North the possibility of predominance both in the Senate and the House
of Representatives.  The cotton- growing South, irritated by the
growing threat of the Abolitionist movement, and fearing this
predominance in Congress, began to talk of secession from the Union.
Southerners began to dream of annexations to the south of them in
Mexico and the West Indies, and of great slave state, detached from the
North and reaching to Panama.

The return of Abraham Lincoln as an anti-extension President in 1860
decided the South to split the Union.  South Carolina passed an
“ordinance of secession” and prepared for war.  Mississippi, Florida,
Alabama, Georgia, Louisiana and Texas joined her, and a convention met
at Montgomery in Alabama, elected Jefferson Davis president of the
“Confederated States” of America, and adopted a constitution
specifically upholding “the institution of negro slavery.”

ONE OF THE FIRST AMERICAN RIVER STEAMERS
ONE OF THE FIRST AMERICAN RIVER STEAMERS

Abraham Lincoln was, it chanced, a man entirely typical of the new
people that had grown up after the War of Independence.  His early
years had been spent as a drifting particle in the general westward
flow of the population.  He was born in Kentucky (1809), was taken to
Indiana as a boy and later on to Illinois.  Life was rough in the
backwoods of Indiana in those days; the house was a mere log cabin in
the wilderness, and his schooling was poor and casual.  But his mother
taught him to read early, and he became a voracious reader.  At
seventeen he was a big athletic youth, a great wrestler and runner.  He
worked for a time as clerk in a store, went into business as a
storekeeper with a drunken partner, and contracted debts that he did
not fully pay off for fifteen years.  In 1834, when he was still only
five and twenty, he was elected member of the House of Representatives
for the State of Illinois.  In Illinois particularly the question of
slavery flamed because the great leader of the party for the extension
of slavery in the national Congress was Senator Douglas of Illinois. 
Douglas was a man of great ability and prestige, and for some years
Lincoln fought against him by speech and pamphlet, rising steadily to
the position of his most formidable and finally victorious antagonist. 
Their culminating struggle was the presidential campaign of 1860, and
on the fourth of March, 1861, Lincoln was inaugurated President, with
the southern states already in active secession from the rule of the
federal government at Washington, and committing acts of war.

This civil war in America was fought by improvised armies that grew
steadily from a few score thousands to hundreds of thousands—until at
last the Federal forces exceeded a million men; it was fought over a
vast area between New Mexico and the eastern sea, Washington and
Richmond were the chief objectives.  It is beyond our scope here to
tell of the mounting energy of that epic struggle that rolled to and
fro across the hills and woods of Tennessee and Virginia and down the
Mississippi.  There was a terrible waste and killing of men.  Thrust
was followed by counter thrust; hope gave way to despondency, and
returned and was again disappointed. Sometimes Washington seemed within
the Confederate grasp; again the Federal armies were driving towards
Richmond.  The Confederates, outnumbered and far poorer in resources,
fought under a general of supreme ability, General Lee.  The
generalship of the Union was far inferior.  Generals were dismissed,
new generals appointed; until at last, under Sherman and Grant, came
victory over the ragged and depleted South.  In October, 1864, a
Federal army under Sherman broke through the Confederate left and
marched down from Tennessee through Georgia to the coast, right across
the Confederate country, and then turned up through the Carolinas,
coming in upon the rear of the Confederate armies.  Meanwhile Grant
held Lee before Richmond until Sherman closed on him.  On April 9th,
1865, Lee and his army surrendered at Appomattox Court House, and
within a month all the remaining secessionist armies had laid down
their arms and the Confederacy was at an end.

ABRAHAM LINCOLN
ABRAHAM LINCOLN

This four years’ struggle had meant an enormous physical and moral
strain for the people of the United States.  The principle of state
autonomy was very dear to many minds, and the North seemed in effect to
be forcing abolition upon the South.  In the border states brothers and
cousins, even fathers and sons, would take opposite sides and find
themselves in antagonistic armies.  The North felt its cause a
righteous one, but for great numbers of people it was not a full-bodied
and unchallenged righteousness.  But for Lincoln there was no doubt. 
He was a clear-minded man in the midst of much confusion.  He stood for
union; he stood for the wide peace of America.  He was opposed to
slavery, but slavery he held to be a secondary issue; his primary
purpose was that the United States should not be torn into two
contrasted and jarring fragments.

When in the opening stages of the war Congress and the Federal generals
embarked upon a precipitate emancipation, Lincoln opposed and mitigated
their enthusiasm.  He was for emancipation by stages and with
compensation.  It was only in January, 1865, that the situation had
ripened to a point when Congress could propose to abolish slavery for
ever by a constitutional amendment, and the war was already over before
this amendment was ratified by the states.

As the war dragged on through 1862 and 1863, the first passions and
enthusiasms waned, and America learnt all the phases of war weariness
and war disgust.  The President found himself with defeatists,
traitors, dismissed generals, tortuous party politicians, and a
doubting and fatigued people behind him and uninspired generals and
depressed troops before him; his chief consolation must have been that
Jefferson Davis at Richmond could be in little better case. The English
government misbehaved, and permitted the Confederate agents in England
to launch and man three swift privateer ships—the _Alabama_ is the best
remembered of them—which chased United States shipping from the seas. 
The French army in Mexico was trampling the Monroe Doctrine in the
dirt.  Came subtle proposals from Richmond to drop the war, leave the
issues of the war for subsequent discussion, and turn, Federal and
Confederate in alliance, upon the French in Mexico.  But Lincoln would
not listen to such proposals unless the supremacy of the Union was
maintained.  The Americans might do such things as one people but not
as two.

He held the United States together through long weary months of
reverses and ineffective effort, through black phases of division and
failing courage; and there is no record that he ever faltered from his
purpose.  There were times when there was nothing to be done, when he
sat in the White House silent and motionless, a grim monument of
resolve; times when he relaxed his mind by jesting and broad anecdotes.

He saw the Union triumphant.  He entered Richmond the day after its
surrender, and heard of Lee’s capitulation. He returned to Washington,
and on April 11th made his last public address.  His theme was
reconciliation and the reconstruction of loyal government in the
defeated states. On the evening of April 14th he went to Ford’s theatre
in Washington, and as he sat looking at the stage, he was shot in the
back of the head and killed by an actor named Booth who had some sort
of grievance against him, and who had crept into the box unobserved. 
But Lincoln’s work was done; the Union was saved.

At the beginning of the war there was no railway to the Pacific coast;
after it the railways spread like a swiftly growing plant until now
they have clutched and held and woven all the vast territory of the
United States into one indissoluble mental and material unity—the
greatest real community—until the common folk of China have learnt to
read—in the world.', 2488)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('a48a2c65-384d-4ca3-a44f-914e15fedd38', '8268eabe-4b74-414e-a1f6-5a266d184560', 62, 'LXI The Rise of Germany to Predominance in Europe', 'WE have told how after the convulsion of the French Revolution and the
Napoleonic adventure, Europe settled down again for a time to an
insecure peace and a sort of modernized revival of the political
conditions of fifty years before.  Until the middle of the century the
new facilities in the handling of steel and the railway and steamship
produced no marked political consequences.  But the social tension due
to the development of urban industrialism grew. France remained a
conspicuously uneasy country.  The revolution of 1830 was followed by
another in 1848.  Then Napoleon III, a nephew of Napoleon Bonaparte,
became first President, and then (in 1852) Emperor.

He set about rebuilding Paris, and changed it from a picturesque
seventeenth century insanitary city into the spacious Latinized city of
marble it is to-day.  He set about rebuilding France, and made it into
a brilliant-looking modernized imperialism.  He displayed a disposition
to revive that competitiveness of the Great Powers which had kept
Europe busy with futile wars during the seventeenth and eighteenth
centuries.  The Tsar Nicholas I of Russia (1825- 1856) was also
becoming aggressive and pressing southward upon the Turkish Empire with
his eyes on Constantinople.

After the turn of the century Europe broke out into a fresh cycle of
wars.  They were chiefly “balance-of- power” and ascendancy wars. 
England, France and Sardinia assailed Russia in the Crimean war in
defence of Turkey; Prussia (with Italy as an ally) and Austria fought
for the leadership of Germany, France liberated North Italy from
Austria at the price of Savoy, and Italy gradually unified itself into
one kingdom.  Then Napoleon III was so ill advised as to attempt
adventures in Mexico, during the American Civil War; he set up an
Emperor Maximilian there and abandoned him hastily to his fate—he was
shot by the Mexicans—when the victorious Federal Government showed its
teeth.

Map of Europe, 1848-1871

In 1870 came a long-pending struggle for predominance in Europe between
France and Prussia.  Prussia had long foreseen and prepared for this
struggle, and France was rotten with financial corruption.  Her defeat
was swift and dramatic. The Germans invaded France in August, one great
French army under the Emperor capitulated at Sedan in September,
another surrendered in October at Metz, and in January 1871, Paris,
after a siege and bombardment, fell into German hands.  Peace was
signed at Frankfort surrendering the provinces of Alsace and Lorraine
to the Germans.  Germany, excluding Austria, was unified as an empire,
and the King of Prussia was added to the galaxy of European Cæsars, as
the German Emperor.

For the next forty-three years Germany was the leading power upon the
European continent.  There was a Russo-Turkish war in 1877-8, but
thereafter, except for certain readjustments in the Balkans, European
frontiers remained uneasily stable for thirty years.', 466)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('d5e7e018-d8d8-4f4a-ad92-fd10bdda3f16', '8268eabe-4b74-414e-a1f6-5a266d184560', 63, 'LXII The New Overseas Empires of Steamship and Railway', 'The end of the eighteenth century was a period of disrupting empires
and disillusioned expansionists. The long and tedious journey between
Britain and Spain and their colonies in America prevented any really
free coming and going between the home land and the daughter lands, and
so the colonies separated into new and distinct communities, with
distinctive ideas and interests and even modes of speech. As they grew
they strained more and more at the feeble and uncertain link of
shipping that had joined them. Weak trading-posts in the wilderness,
like those of France in Canada, or trading establishments in great
alien communities, like those of Britain in India, might well cling for
bare existence to the nation which gave them support and a reason for
their existence. That much and no more seemed to many thinkers in the
early part of the nineteenth century to be the limit set to overseas
rule. In 1820 the sketchy great European “empires” outside of Europe
that had figured so bravely in the maps of the middle eighteenth
century, had shrunken to very small dimensions. Only the Russian
sprawled as large as ever across Asia.

The British Empire in 1815 consisted of the thinly populated coastal
river and lake regions of Canada, and a great hinterland of wilderness
in which the only settlements as yet were the fur-trading stations of
the Hudson Bay Company, about a third of the Indian peninsula, under
the rule of the East India Company, the coast districts of the Cape of
Good Hope inhabited by blacks and rebellious-spirited Dutch settlers; a
few trading stations on the coast of West Africa, the rock of
Gibraltar, the island of Malta, Jamaica, a few minor slave-labour
possessions in the West Indies, British Guiana in South America, and,
on the other side of the world, two dumps for convicts at Botany Bay in
Australia and in Tasmania.  Spain retained Cuba and a few settlements
in the Philippine Islands.  Portugal had in Africa some vestiges of her
ancient claims.  Holland had various islands and possessions in the
East Indies and Dutch Guiana, and Denmark an island or so in the West
Indies.  France had one or two West Indian islands and French Guiana. 
This seemed to be as much as the European powers needed, or were likely
to acquire of the rest of the world.  Only the East India Company
showed any spirit of expansion.

While Europe was busy with the Napoleonic wars the East India Company,
under a succession of Governors-General, was playing much the same role
in India that had been played before by Turkoman and such-like invaders
from the north.  And after the peace of Vienna it went on, levying its
revenues, making wars, sending ambassadors to Asiatic powers, a quasi-
independent state, however, with a marked disposition to send wealth
westward.

We cannot tell here in any detail how the British Company made its way
to supremacy sometimes as the ally of this power, sometimes as that,
and finally as the conqueror of all.  Its power spread to Assam, Sind,
Oudh.  The map of India began to take on the outlines familiar to the
English schoolboy of to-day, a patchwork of native states embraced and
held together by the great provinces under direct British rule. . . .

In 1859, following upon a serious mutiny of the native troops in India,
this empire of the East India Company was annexed to the British Crown.
 By an Act entitled _An Act for the Better Government of India_, the
Governor-General became a Viceroy representing the Sovereign, and the
place of the Company was taken by a Secretary of State for India
responsible to the British Parliament.  In 1877, Lord Beaconsfield, to
complete the work, caused Queen Victoria to be proclaimed Empress of
India.

Upon these extraordinary lines India and Britain are linked at the
present time.  India is still the empire of the Great Mogul, but the
Great Mogul has been replaced by the “crowned republic” of Great
Britain.  India is an autocracy without an autocrat.  Its rule combines
the disadvantage of absolute monarchy with the impersonality and
irresponsibility of democratic officialdom.  The Indian with a
complaint to make has no visible monarch to go to; his Emperor is a
golden symbol; he must circulate pamphlets in England or inspire a
question in the British House of Commons.  The more occupied Parliament
is with British affairs, the less attention India will receive, and the
more she will be at the mercy of her small group of higher officials.

RAILWAY BRIDGE OVER THE GORGE, VICTORIA FALLS, OF THE ZAMBESI, SOUTHERN
RHODESIA
RAILWAY BRIDGE OVER THE GORGE, VICTORIA FALLS, OF THE ZAMBESI, SOUTHERN
RHODESIA

_Photo:  British South African Co._

Apart from India, there was no great expansion of any European Empire
until the railways and the steamships were in effective action.  A
considerable school of political thinkers in Britain was disposed to
regard overseas possessions as a source of weakness to the kingdom. 
The Australian settlements developed slowly until in 1842 the discovery
of valuable copper mines, and in 1851 of gold, gave them a new
importance.  Improvements in transport were also making Australian wool
an increasingly marketable commodity in Europe.  Canada, too, was not
remarkably progressive until 1849; it was troubled by dissensions
between its French and British inhabitants, there were several serious
revolts, and it was only in 1867 that a new constitution creating a
Federal Dominion of Canada relieved its internal strains.  It was the
railway that altered the Canadian outlook.  It enabled Canada, just as
it enabled the United States, to expand westward, to market its corn
and other produce in Europe, and in spite of its swift and extensive
growth, to remain in language and sympathy and interests one community.
 The railway, the steamship and the telegraph cable were indeed
changing all the conditions of colonial development.

Before 1840, English settlements had already begun in New Zealand, and
a New Zealand Land Company had been formed to exploit the possibilities
of the island.  In 1840 New Zealand also was added to the colonial
possessions of the British Crown.

Canada, as we have noted, was the first of the British possessions to
respond richly to the new economic possibilities that the new methods
of transport were opening. Presently the republics of South America,
and particularly the Argentine Republic, began to feel in their cattle
trade and coffee growing the increased nearness of the European market.
 Hitherto the chief commodities that had attracted the European powers
into unsettled and barbaric regions had been gold or other metals,
spices, ivory, or slaves.  But in the latter quarter of the nineteenth
century the increase of the European populations was obliging their
governments to look abroad for staple foods; and the growth of
scientific industrialism was creating a demand for new raw materials,
fats and greases of every kind, rubber, and other hitherto disregarded
substances.  It was plain that Great Britain and Holland and Portugal
were reaping a great and growing commercial advantage from their very
considerable control of tropical and sub-tropical products.  After 1871
Germany, and presently France and later Italy, began to look for
unannexed raw-material areas, or for Oriental countries capable of
profitable modernization.

So began a fresh scramble all over the world, except in the American
region where the Monroe Doctrine now barred such adventures, for
politically unprotected lands.

Close to Europe was the continent of Africa, full of vaguely known
possibilities.  In 1850 it was a continent of black mystery; only Egypt
and the coast were known.  Here we have no space to tell the amazing
story of the explorers and adventurers who first pierced the African
darkness, and of the political agents, administrators, traders,
settlers and scientific men who followed in their track.  Wonderful
races of men like the pygmies, strange beasts like the okapi,
marvellous fruits and flowers and insects, terrible diseases,
astounding scenery of forest and mountain, enormous inland seas and
gigantic rivers and cascades were revealed; a whole new world.  Even
remains (at Zimbabwe) of some unrecorded and vanished civilization, the
southward enterprise of an early people, were discovered. Into this new
world came the Europeans, and found the rifle already there in the
hands of the Arab slave-traders, and negro life in disorder.

Map: The British Empire in 1815

By 1900, in half a century, all Africa was mapped, explored, estimated
and divided between the European powers.  Little heed was given to the
welfare of the natives in this scramble.  The Arab slaver was indeed
curbed rather than expelled, but the greed for rubber, which was a wild
product collected under compulsion by the natives in the Belgian Congo,
a greed exacerbated by the clash of inexperienced European
administrators with the native population, led to horrible atrocities. 
No European power has perfectly clean hands in this matter.

We cannot tell here in any detail how Great Britain got possession of
Egypt in 1883 and remained there in spite of the fact that Egypt was
technically a part of the Turkish Empire, nor how nearly this scramble
led to war between France and Great Britain in 1898, when a certain
Colonel Marchand, crossing Central Africa from the west coast, tried at
Fashoda to seize the Upper Nile.

Nor can we tell how the British Government first let the Boers, or
Dutch settlers, of the Orange River district and the Transvaal set up
independent republics in the inland parts of South Africa, and then
repented and annexed the Transvaal Republic in 1877; nor how the
Transvaal Boers fought for freedom and won it after the battle of
Majuba Hill (1881).  Majuba Hill was made to rankle in the memory of
the English people by a persistent press campaign.  A war with both
republics broke out in 1899, a three years’ war enormously costly to
the British people, which ended at last in the surrender of the two
republics.

Their period of subjugation was a brief one.  In 1907, after the
downfall of the imperialist government which had conquered them, the
Liberals took the South African problem in hand, and these former
republics became free and fairly willing associates with Cape Colony
and  Natal in a Confederation of all the states of South Africa as one
self- governing republic under the British Crown.

In a quarter of a century the partition of Africa was completed.  There
remained unannexed three comparatively small countries: Liberia, a
settlement of liberated negro slaves on the west coast; Morocco, under
a Moslem Sultan; and Abyssinia, a barbaric country, with an ancient and
peculiar form of Christianity, which had successfully maintained its
independence against Italy at the battle of Adowa in 1896.', 1779)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('fa045c35-2c59-48e1-af9b-39d17956905e', '8268eabe-4b74-414e-a1f6-5a266d184560', 64, 'LXIII European Aggression in Asia and the Rise of Japan', 'It is difficult to believe that any large number of people really
accepted this headlong painting of the map of Africa in European
colours as a permanent new settlement of the worlds affairs, but it is
the duty of the historian to record that it was so accepted. There was
but a shallow historical background to the European mind in the
nineteenth century, and no habit of penetrating criticism. The quite
temporary advantages that the mechanical revolution in the west had
given the Europeans over the rest of the old world were regarded by
people, blankly ignorant of such events as the great Mongol conquests,
as evidences of a permanent and assured European leadership of mankind.
They had no sense of the transferability of science and its fruits.
They did not realize that Chinamen and Indians could carry on the work
of research as ably as Frenchmen or Englishmen. They believed that
there was some innate intellectual drive in the west, and some innate
indolence and conservatism in the east, that assured the Europeans a
world predominance for ever.

The consequence of this infatuation was that the various European
foreign offices set themselves not merely to scramble with the British
for the savage and undeveloped regions of the world’s surface, but also
to carve up the populous and civilized countries of Asia as though
these people also were no more than raw material for exploitation. The
inwardly precarious but outwardly splendid imperialism of the British
ruling class in India, and the extensive and profitable possessions of
the Dutch in the East Indies, filled the rival Great Powers with dreams
of similar glories in Persia, in the disintegrating Ottoman Empire, and
in Further India, China and Japan.

In 1898 Germany seized Kiau Chau in China.  Britain responded by
seizing Wei-hai-wei, and the next year the Russians took possession of
Port Arthur.  A flame of hatred for the Europeans swept through China. 
There were massacres of Europeans and Christian converts, and in 1900
an attack upon and siege of the European legations in Pekin.  A
combined force of Europeans made a punitive expedition to Pekin,
rescued the legations, and stole an enormous amount of valuable
property.  The Russians then seized Manchuria, and in 1904, the British
invaded Tibet....

But now a new Power appeared in the struggle of the Great Powers,
Japan.  Hitherto Japan has played but a small part in this history; her
secluded civilization has not contributed very largely to the general
shaping of human destinies; she has received much, but she has given
little.  The Japanese proper are of the Mongolian race.  Their
civilization, their writing and their literary and artistic traditions
are derived from the Chinese.  Their history is an interesting and
romantic one; they developed a feudal system and a system of chivalry
in the earlier centuries of the Christian era; their attacks upon Korea
and China are an Eastern equivalent of the English wars in France. 
Japan was first brought into contact with Europe in the sixteenth
century; in 1542 some Portuguese reached it in a Chinese junk, and in
1549 a Jesuit missionary, Francis Xavier, began his teaching there. 
For a time Japan welcomed European intercourse, and the Christian
missionaries made a great number of converts.  A certain William Adams
became the most trusted European adviser of the Japanese, and showed
them how to build big ships.  There were voyages in Japanese-built
ships to India and Peru.  Then arose complicated quarrels between the
Spanish Dominicans, the Portuguese Jesuits, and the English and Dutch
Protestants, each warning the Japanese against the political designs of
the others.  The Jesuits, in a phase of ascendancy, persecuted and
insulted the Buddhists with great acrimony.  In the end the Japanese
came to the conclusion that the Europeans were an intolerable nuisance,
and that Catholic Christianity in particular was a mere cloak for the
political dreams of the Pope and the Spanish monarchy—already in
possession of the Philippine Islands; there was a great persecution of
the Christians, and in 1638 Japan was absolutely closed to Europeans,
and remained closed for over 200 years.  During those two centuries the
Japanese were as completely cut off from the rest of the world as
though they lived upon another planet.  It was forbidden to build any
ship larger than a mere coasting boat. No Japanese could go abroad, and
no European enter the country.

JAPANESE SOLDIER ON THE EIGHTEENTH CENTURY
JAPANESE SOLDIER ON THE EIGHTEENTH CENTURY

_(In the Victoria and Albert Museum)_

For two centuries Japan remained outside the main current of history. 
She lived on in a state of picturesque feudalism in which about five
per cent of the population, the _samurai_, or fighting men, and the
nobles and their families, tyrannized without restraint over the rest
of the population.  Meanwhile the great world outside went on to wider
visions and new powers.  Strange shipping became more frequent, passing
the Japanese headlands; sometimes ships were wrecked and sailors
brought ashore.  Through the Dutch settlement in the island of Deshima,
their one link with the outer universe, came warnings that Japan was
not keeping pace with the power of the Western world.  In 1837 a ship
sailed into Yedo Bay flying a strange flag of stripes and stars, and
carrying some Japanese sailors she had picked up far adrift in the
Pacific.  She was driven off by cannon shot.  This flag presently
reappeared on other ships.  One in 1849 came to demand the liberation
of eighteen shipwrecked American sailors.  Then in 1853 came four
American warships under Commodore Perry, and refused to be driven away.
 He lay at anchor in forbidden waters, and sent messages to the two
rulers who at that time shared the control of Japan.  In 1854 he
returned with ten ships, amazing ships propelled by steam, and equipped
with big guns, and he made proposals for trade and intercourse that the
Japanese had no power to resist.  He landed with a guard of 500 men to
sign the treaty. Incredulous crowds watched this visitation from the
outer world, marching through the streets.

Russia, Holland and Britain followed in the wake of America. A great
nobleman whose estates commanded the Straits of Shimonoseki saw fit to
fire on foreign vessels, and a bombardment by a fleet of British,
French, Dutch and American warships destroyed his batteries and
scattered his swordsmen. Finally an allied squadron (1865), at anchor
off Kioto, imposed a ratification of the treaties which opened Japan to
the world.

The humiliation of the Japanese by these events was intense. With
astonishing energy and intelligence they set themselves to bring their
culture and organization to the level of the European Powers.  Never in
all the history of mankind did a nation make such a stride as Japan
then did.  In 1866 she was a medieval people, a fantastic caricature of
the extremest romantic feudalism; in 1899 hers was a completely
Westernized people, on a level with the most advanced European Powers.
She completely dispelled the persuasion that Asia was in some
irrevocable way hopelessly behind Europe.  She made all European
progress seem sluggish by comparison.

We cannot tell here in any detail of Japan’s war with China in 1894-95.
 It demonstrated the extent of her Westernization.  She had an
efficient Westernized army and a small but sound fleet.  But the
significance of her renascence, though it was appreciated by Britain
and the United States, who were already treating her as if she were a
European state, was not understood by the other Great Powers engaged in
the pursuit of new Indias in Asia.  Russia was pushing down through
Manchuria to Korea.  France was already established far to the south in
Tonkin and Annam, Germany was prowling hungrily on the look-out for
some settlement.  The three Powers combined to prevent Japan reaping
any fruits from the Chinese war.  She was exhausted by the struggle,
and they threatened her with war.

A STREET IN TOKIO
A STREET IN TOKIO

Japan submitted for a time and gathered her forces.  Within ten years
she was ready for a struggle with Russia, which marks an epoch in the
history of Asia, the close of the period of European arrogance.  The
Russian people were, of course, innocent and ignorant of this trouble
that was being made for them halfway round the world, and the wiser
Russian statesmen were against these foolish thrusts; but a gang of
financial adventurers, including the Grand Dukes, his cousins,
surrounded the Tsar.  They had gambled deeply in the prospective
looting of Manchuria and China, and they would suffer no withdrawal. 
So there began a transportation of great armies of Japanese soldiers
across the sea to Port Arthur and Korea, and the sending of endless
trainloads of Russian peasants along the Siberian railway to die in
those distant battlefields.

The Russians, badly led and dishonestly provided, were beaten on sea
and land alike.  The Russian Baltic Fleet sailed round Africa to be
utterly destroyed in the Straits of Tshushima. A revolutionary movement
among the common people of Russia, infuriated by this remote and
reasonless slaughter, obliged the Tsar to end the war (1905); he
returned the southern half of Saghalien, which had been seized by
Russia in 1875, evacuated Manchuria, resigned Korea to Japan.  The
European invasion of Asia was coming to an end and the retraction of
Europe’s tentacles was beginning.', 1560)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('881b87e3-83d0-42d7-a642-fc42e152b3a5', '8268eabe-4b74-414e-a1f6-5a266d184560', 65, 'LXIV The British Empire in 1914', 'We may note here briefly the varied nature of the constituents of the
British Empire in 1914 which the steamship and railway had brought
together. It was and is a quite unique political combination; nothing
of the sort has ever existed before.

First and central to the whole system was the “crowned republic” of the
United British Kingdom, including (against the will of a considerable
part of the Irish people) Ireland.  The majority of the British
Parliament, made up of the three united parliaments of England and
Wales, Scotland and Ireland, determines the headship, the quality and
policy of the ministry, and determines it largely on considerations
arising out of British domestic politics.  It is this ministry which is
the effective supreme government, with powers of peace and war, over
all the rest of the empire.

Next in order of political importance to the British States were the
“crowned republics” of Australia, Canada, Newfoundland (the oldest
British possession, 1583), New Zealand and South Africa, all
practically independent and self-governing states in alliance with
Great Britain, but each with a representative of the Crown appointed by
the Government in office;

Next the Indian Empire, an extension of the Empire of the Great Mogul
with its dependent and “protected” states reaching now from Beluchistan
to Burma, and including Aden, in all of which empire the British Crown
and the India Office (under Parliamentary control) played the role of
the original Turkoman dynasty;

Then the ambiguous possession of Egypt, still nominally a part of the
Turkish Empire and still retaining its own monarch, the Khedive, but
under almost despotic British official rule;

Map: OVERSEAS EMPIRES of EUROPEAN POWERS, January 1914

Then the still more ambiguous “Anglo-Egyptian” Sudan province, occupied
and administered jointly by the British and by the (British controlled)
Egyptian Government;

Then a number of partially self-governing communities, some British in
origin and some not, with elected legislatures and an appointed
executive, such as Malta, Jamaica, the Bahamas and Bermuda;

Then the Crown colonies, in which the rule of the British Home
Government (through the Colonial Office) verged on autocracy, as in
Ceylon, Trinidad and Fiji (where there was an appointed council), and
Gibraltar and St. Helena (where there was a governor);

GIBRALTAR
GIBRALTAR

_Photo:  C. Sinclair_

Then great areas of (chiefly) tropical lands, raw-product areas, with
politically weak and under-civilized native communities which were
nominally protectorates, and administered either by a High Commissioner
set over native chiefs (as in Basutoland) or over a chartered company
(as in Rhodesia).  In some cases the Foreign Office, in some cases the
Colonial Office, and in some cases the India Office, has been concerned
in acquiring the possessions that fell into this last and least
definite class of all, but for the most part the Colonial Office was
now responsible for them.

It will be manifest, therefore, that no single office and no single
brain had ever comprehended the British Empire as a whole.  It was a
mixture of growths and accumulations entirely different from anything
that has ever been called an empire before.  It guaranteed a wide peace
and security; that is why it was endured and sustained by many men of
the “subject” races—in spite of official tyrannies and insufficiencies,
and of much negligence on the part of the “home” public. Like the
Athenian Empire, it was an overseas empire; its ways were sea ways, and
its common link was the British Navy. Like all empires, its cohesion
was dependent physically upon a method of communication; the
development of seamanship, ship-building and steamships between the
sixteenth and nineteenth centuries had made it a possible and
convenient Pax—the “Pax Britannica,” and fresh developments of air or
swift land transport might at any time make it inconvenient.

STREET IN HONG KONG
STREET IN HONG KONG

_Photo:  Underwood & Underwood_', 634)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('c1367746-755a-4047-a5a1-4b35c07dcee5', '8268eabe-4b74-414e-a1f6-5a266d184560', 66, 'LXV The Age of Armament in Europe, and the Great War of 1914-18', 'The progress in material science that created this vast
steamboat-and-railway republic of America and spread this precarious
British steamship empire over the world, produced quite other effects
upon the congested nations upon the continent of Europe. They found
themselves confined within boundaries fixed during the
horse-and-high-road period of human life, and their expansion overseas
had been very largely anticipated by Great Britain. Only Russia had any
freedom to expand eastward; and she drove a great railway across
Siberia until she entangled herself in a conflict with Japan, and
pushed south-eastwardly towards the borders of Persia and India to the
annoyance of Britain. The rest of the European Powers were in a state
of intensifying congestion. In order to realize the full possibilities
of the new apparatus of human life they had to rearrange their affairs
upon a broader basis, either by some sort of voluntary union or by a
union imposed upon them by some predominant power. The tendency of
modern thought was in the direction of the former alternative, but all
the force of political tradition drove Europe towards the latter.

The downfall of the “empire” of Napoleon III, the establishment of the
new German Empire, pointed men’s hopes and fears towards the idea of a
Europe consolidated under German auspices.  For thirty-six years of
uneasy peace the polities of Europe centred upon that possibility.
France, the steadfast rival of Germany for European ascendancy since
the division of the empire of Charlemagne, sought to correct her own
weakness by a close alliance with Russia, and Germany linked herself
closely with the Austrian Empire (it had ceased to be the Holy Roman
Empire in the days of Napoleon I) and less successfully with the new
kingdom of Italy.  At first Great Britain stood as usual half in and
half out of continental affairs.  But she was gradually forced into a
close association with the Franco-Russian group by the aggressive
development of a great German navy.  The grandiose imagination of the
Emperor William II (1888-1918) thrust Germany into premature overseas
enterprise that ultimately brought not only Great Britain but Japan and
the United States into the circle of her enemies.

BRITISH TANK IN THE BATTLE OF THE MENIN ROAD
BRITISH TANK IN THE BATTLE OF THE MENIN ROAD
The crew came out for a breath of fresh air during a lull

_Photo:  British Official_

All these nations armed.  Year after year the proportion of national
production devoted to the making of guns, equipment, battleships and
the like, increased. Year after year the balance of things seemed
trembling towards war, and then war would be averted.  At last it came.
Germany and Austria struck at France and Russia and Serbia; the German
armies marching through Belgium, Britain immediately came into the war
on the side of Belgium, bringing in Japan as her ally, and very soon
Turkey followed on the German side.  Italy entered the war against
Austria in 1915, and Bulgaria joined the Central Powers in the October
of that year.  In 1916 Rumania, and in 1917 the United States and China
were forced into war against Germany.  It is not within the scope of
this history to define the exact share of blame for this vast
catastrophe.  The more interesting question is not why the Great War
was begun but why the Great War was not anticipated and prevented.  It
is a far graver thing for mankind that scores of millions of people
were too “patriotic,” stupid, or apathetic to prevent this disaster by
a movement towards European unity upon frank and generous lines, than
that a small number of people may have been active in bringing it
about.

THE RUINS OF YPRES (ONCE A DELIGHTFUL OLD FLEMISH TOWN)
THE RUINS OF YPRES (ONCE A DELIGHTFUL OLD FLEMISH TOWN)
To show the complete destructiveness of modern war

_Photo:  Topical_

THE DEVASTATION OF MODERN WAR
THE DEVASTATION OF MODERN WAR
Wire entanglements in the foreground

_Photo:  Photopress_

It is impossible within the space at our command here to trace the
intricate details of the war.  Within a few months it became apparent
that the progress of modern technical science had changed the nature of
warfare very profoundly.  Physical science gives power, power over
steel, over distance, over disease; whether that power is used well or
ill depends upon the moral and political intelligence of the world. 
The governments of Europe, inspired by antiquated policies of hate and
suspicion, found themselves with unexampled powers both of destruction
and resistance in their hands.  The war became a consuming fire round
and about the world, causing losses both to victors and vanquished out
of all proportion to the issues involved.  The first phase of the war
was a tremendous rush of the Germans upon Paris and an invasion of East
Prussia by the Russians.  Both attacks were held and turned.  Then the
power of the defensive developed; there was a rapid elaboration of
trench warfare until for a time the opposing armies lay entrenched in
long lines right across Europe, unable to make any advance without
enormous losses.  The armies were millions strong, and behind them
entire populations were organized for the supply of food and munitions
to the front.  Then was a cessation of nearly every sort of productive
activity except such as contributed to military operations.  All the
able-bodied manhood of Europe was drawn into the armies or navies or
into the improvised factories that served them.  There was an enormous
replacement of men by women in industry. Probably more than half the
people in the belligerent countries of Europe changed their employment
altogether during this stupendous struggle.  They were socially
uprooted and transplanted.  Education and normal scientific work were
restricted or diverted to immediate military ends, and the distribution
of news was crippled and corrupted by military control and “propaganda”
activities.

The phase of military deadlock passed slowly into one of aggression
upon the combatant populations behind the fronts by the destruction of
food supplies and by attacks through the air.  And also there was a
steady improvement in the size and range of the guns employed and of
such ingenious devices as poison-gas shells and the small mobile forts
known as tanks, to break down the resistance of troops in the trenches.
 The air offensive was the most revolutionary of all the new methods. 
It carried warfare from two dimensions into three.  Hitherto in the
history of mankind war had gone on only where the armies marched and
met.  Now it went on everywhere.  First the Zeppelin and then the
bombing aeroplane carried war over and past the front to an ever-
increasing area of civilian activities beyond.  The old distinction
maintained in civilized warfare between the civilian and combatant
population disappeared.  Everyone who grew food, or who sewed a
garment, everyone who felled a tree or repaired a house, every railway
station and every warehouse was held to be fair game for destruction. 
The air offensive increased in range and terror with every month in the
war.  At last great areas of Europe were in a state of siege and
subject to nightly raids.  Such exposed cities as London and Paris
passed sleepless night after sleepless night while the bombs burst, the
anti-aircraft guns maintained an intolerable racket, and the fire
engines and ambulances rattled headlong through the darkened and
deserted streets. The effects upon the minds and health of old people
and of young children were particularly distressing and destructive.

Pestilence, that old follower of warfare, did not arrive until the very
end of the fighting in 1918.  For four years medical science staved off
any general epidemic; then came a great outbreak of influenza about the
world which destroyed many millions of people.  Famine also was staved
off for some time.  By the beginning of 1918 however most of Europe was
in a state of mitigated and regulated famine.  The production of food
throughout the world had fallen very greatly through the calling off of
peasant mankind to the fronts, and the distribution of such food as was
produced was impeded by the havoc wrought by the submarine, by the
rupture of customary routes through the closing of frontiers, and by
the disorganization of the transport system of the world. The various
governments took possession of the dwindling food supplies, and, with
more or less success, rationed their populations.  By the fourth year
the whole world was suffering from shortages of clothing and housing
and of most of the normal gear of life as well as of food.  Business
and economic life were profoundly disorganized.  Every-one was worried,
and most people were leading lives of unwonted discomfort.

The actual warfare ceased in November, 1918.  After a supreme effort in
the spring of 1918 that almost carried the Germans to Paris, the
Central Powers collapsed.  They had come to an end of their spirit and
resources.', 1478)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('37c955f2-e385-4b25-a24d-9a9e649364b3', '8268eabe-4b74-414e-a1f6-5a266d184560', 67, 'LXVI The Revolution and Famine in Russia', 'But a good year and more before the collapse of the Central Powers the
half oriental monarchy of Russia, which had professed to be the
continuation of the Byzantine Empire, had collapsed. The Tsardom had
been showing signs of profound rottenness for some years before the
war; the court was under the sway of a fantastic religious impostor,
Rasputin, and the public administration, civil and military, was in a
state of extreme inefficiency and corruption. At the outset of the war
there was a great flare of patriotic enthusiasm in Russia. A vast
conscript army was called up, for which there was neither adequate
military equipment nor a proper supply of competent officers, and this
great host, ill supplied and badly handled, was hurled against the
German and Austrian frontiers.

There can be no doubt that the early appearance of Russian armies in
East Prussia in September, 1914, diverted the energies and attention of
the Germans from their first victorious drive upon Paris.  The
sufferings and deaths of scores of thousands of ill-led Russian
peasants saved France from complete overthrow in that momentous opening
campaign, and made all western Europe the debtors of that great and
tragic people.  But the strain of the war upon this sprawling,
ill-organized empire was too heavy for its strength.  The Russian
common soldiers were sent into battle without guns to support them,
without even rifle ammunition; they were wasted by their officers and
generals in a delirium of militarist enthusiasm.  For a time they
seemed to be suffering mutely as the beasts suffer; but there is a
limit to the endurance even of the most ignorant.  A profound disgust
for Tsardom was creeping through these armies of betrayed and wasted
men.  From the close of 1915 onward Russia was a source of deepening
anxiety to her Western Allies.  Throughout 1916 she remained largely on
the defensive, and there were rumours of a separate peace with Germany.

On December 29th, 1916, the monk Rasputin was murdered at a dinner
party in Petrograd, and a belated attempt was made to put the Tsardom
in order.  By March things were moving rapidly; food riots in Petrograd
developed into a revolutionary insurrection; there was an attempted
suppression of the Duma, the representative body, there were attempted
arrests of liberal leaders, the formation of a provisional government
under Prince Lvoff, and an abdication (March 15th) by the Tsar.  For a
time it seemed that a moderate and controlled revolution might be
possible—perhaps under a new Tsar.  Then it became evident that the
destruction of popular confidence in Russia had gone too far for any
such adjustments. The Russian people were sick to death of the old
order of things in Europe, of Tsars and wars and of Great Powers; it
wanted relief, and that speedily, from unendurable miseries.  The
Allies had no understanding of Russian realities; their diplomatists
were ignorant of Russian, genteel persons with their attention directed
to the Russian Court rather than to Russia, they blundered steadily
with the new situation.  There was little goodwill among these
diplomatists for republicanism, and a manifest disposition to embarrass
the new government as much as possible.  At the head of the Russian
republican government was an eloquent and picturesque leader, Kerensky,
who found himself assailed by the forces of a profounder revolutionary
movement, the “social revolution,” at home and cold-shouldered by the
Allied governments abroad.  His Allies would neither let him give the
Russian peasants the land for which they craved nor peace beyond their
frontiers.  The French and the British press pestered their exhausted
ally for a fresh offensive, but when presently the Germans made a
strong attack by sea and land upon Riga, the British Admiralty quailed
before the prospect of a Baltic expedition in relief.  The new Russian
Republic had to fight unsupported.  In spite of their naval
predominance and the bitter protests of the great English admiral, Lord
Fisher (1841-1920), it is to be noted that the British and their
Allies, except for some submarine attacks, left the Germans the
complete mastery of the Baltic throughout the war.

The Russian masses, however, were resolute to end the war.  At any
cost.  There had come into existence in Petrograd a body representing
the workers and common soldiers, the Soviet, and this body clamoured
for an international conference of socialists at Stockholm.  Food riots
were occurring in Berlin at this time, war weariness in Austria and
Germany was profound, and there can be little doubt, in the light of
subsequent events, that such a conference would have precipitated a
reasonable peace on democratic lines in 1917 and a German revolution. 
Kerensky implored his Western allies to allow this conference to take
place, but, fearful of a worldwide outbreak of socialism and
republicanism, they refused, in spite of the favourable response of a
small majority of the British Labour Party.  Without either moral or
physical help from the Allies, the unhappy “moderate” Russian Republic
still fought on and made a last desperate offensive effort in July.  It
failed after some preliminary successes, and there came another great
slaughtering of Russians.

The limit of Russian endurance was reached.  Mutinies broke out in the
Russian armies, and particularly upon the northern front, and on
November 7th, 1917, Kerensky’s government was overthrown and power was
seized by the Soviets, dominated by the Bolshevik socialists under
Lenin, and pledged to make peace regardless of the Western powers.  On
March 2nd, 1918, a separate peace between Russia and Germany was signed
at Brest-Litovsk.

A VIEW IN PETERSBURG UNDER BOLSHEVIK RULE
A VIEW IN PETERSBURG UNDER BOLSHEVIK RULE
A wooden house has been demolished for firewood

_By courtesy of Messrs. Hodder & Stoughton_

It speedily became evident that these Bolshevik socialists were men of
a very different quality from the rhetorical constitutionalists and
revolutionaries of the Kerensky phase.  They were fanatical Marxist
communists.  They believed that their accession to power in Russia was
only the opening of a world-wide social revolution, and they set about
changing the social and economic order with the thoroughness of perfect
faith and absolute inexperience.  The western European and the American
governments were themselves much too ill-informed and incapable to
guide or help this extraordinary experiment, and the press set itself
to discredit and the ruling classes to wreck these usurpers upon any
terms and at any cost to themselves or to Russia.  A propaganda of
abominable and disgusting inventions went on unchecked in the press of
the world; the Bolshevik leaders were represented as incredible
monsters glutted with blood and plunder and living lives of sensuality
before which the realities of the Tsarist court during the Rasputin
regime paled to a white purity.  Expeditions were launched at the
exhausted country, insurgents and raiders were encouraged, armed and
subsidized, and no method of attack was too mean or too monstrous for
the frightened enemies of the Bolshevik regime.  In 1919, the Russian
Bolsheviks, ruling a country already exhausted and disorganized by five
years of intensive warfare, were fighting a British Expedition at
Archangel, Japanese invaders in Eastern Siberia, Roumanians with French
and Greek contingents in the south, the Russian Admiral Koltchak in
Siberia and General Deniken, supported by the French fleet, in the
Crimea.  In July of that year an Esthonian army, under General
Yudenitch, almost got to Petersburg.  In 1920 the Poles, incited by the
French, made a new attack on Russia; and a new reactionary raider,
General Wrangel, took over the task of General Deniken in invading and
devastating his own country.  In March, 1921, the sailors at Cronstadt
revolted.  The Russian Government under its president, Lenin, survived
all these various attacks.  It showed an amazing tenacity, and the
common people of Russia sustained it unswervingly under conditions of
extreme hardship.  By the end of 1921 both Britain and Italy had made a
sort of recognition of the communist rule.

But if the Bolshevik Government was successful in its struggle against
foreign intervention and internal revolt, it was far less happy in its
attempts to set up a new social order based upon communist ideas in
Russia.  The Russian peasant is a small land-hungry proprietor, as far
from communism in his thoughts and methods as a whale is from flying;
the revolution gave him the land of the great landowners but could not
make him grow food for anything but negotiable money, and the
revolution, among other things, had practically destroyed the value of
money. Agricultural production, already greatly disordered by the
collapse of the railways through war-strain, shrank to a mere
cultivation of food by the peasants for their own consumption.  The
towns starved.  Hasty and ill-planned attempts to make over industrial
production in accordance with communist ideas were equally
unsuccessful.  By 1920 Russia presented the unprecedented spectacle of
a modern civilization in complete collapse.  Railways were rusting and
passing out of use, towns were falling into ruin, everywhere there was
an immense mortality.  Yet the country still fought with its enemies at
its gates.  In 1921 came a drought and a great famine among the peasant
cultivators in the war-devastated south-east provinces.  Millions of
people starved.

But the question of the distresses and the possible recuperation of
Russia brings us too close to current controversies to be discussed
here.', 1543)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;

insert into public.book_chapters (id, book_id, number, title, content, word_count) values
  ('3fbff5b2-d195-4829-ad5c-64e4f94f11e1', '8268eabe-4b74-414e-a1f6-5a266d184560', 68, 'LXVII The Political and Social Reconstruction of the World', 'The scheme and scale upon which this History is planned do not permit
us to enter into the complicated and acrimonious disputes that centre
about the treaties, and particularly of the treaty of Versailles, which
concluded the Great War. We are beginning to realize that that
conflict, terrible and enormous as it was, ended nothing, began nothing
and settled nothing. It killed millions of people; it wasted and
impoverished the world. It smashed Russia altogether. It was at best an
acute and frightful reminder that we were living foolishly and
confusedly without much plan or foresight in a dangerous and
unsympathetic universe. The crudely organized egotisms and passions of
national and imperial greed that carried mankind into that tragedy,
emerged from it sufficiently unimpaired to make some other similar
disaster highly probable so soon as the world has a little recovered
from its war exhaustion and fatigue. Wars and revolutions make nothing;
their utmost service to mankind is that, in a very rough and painful
way, they destroy superannuated and obstructive things. The great war
lifted the threat of German imperialism from Europe, and shattered the
imperialism of Russia. It cleared away a number of monarchies. But a
multitude of flags still waves in Europe, the frontiers still
exasperate, great armies accumulate fresh stores of equipment.

The Peace Conference at Versailles was a gathering very ill adapted to
do more than carry out the conflicts and defeats of the war to their
logical conclusions.  The Germans, Austrians, Turks and Bulgarians were
permitted no share in its deliberations; they were only to accept the
decisions it dictated to them.  From the point of view of human welfare
the choice of the place of meeting was particularly unfortunate.  It
was at Versailles in 1871 that, with every circumstance of triumphant
vulgarity, the new German Empire had been proclaimed.  The suggestion
of a melodramatic reversal of that scene, in the same Hall of Mirrors,
was overpowering.

Whatever generosities had appeared in the opening phases of the Great
War had long been exhausted.  The populations of the victorious
countries were acutely aware of their own losses and sufferings, and
entirely regardless of the fact that the defeated had paid in the like
manner.  The war had arisen as a natural and inevitable consequence of
the competitive nationalisms of Europe and the absence of any Federal
adjustment of these competitive forces; war is the necessary logical
consummation of independent sovereign nationalities living in too small
an area with too powerful an armament; and if the great war had not
come in the form it did it would have come in some similar form—just as
it will certainly return upon a still more disastrous scale in twenty
or thirty years’ time if no political unification anticipates and
prevents it.  States organized for war will make wars as surely as hens
will lay eggs, but the feeling of these distressed and war-worn
countries disregarded this fact, and the whole of the defeated peoples
were treated as morally and materially responsible for all the damage,
as they would no doubt have treated the victor peoples had the issue of
war been different.  The French and English thought the Germans were to
blame, the Germans thought the Russians, French and English were to
blame, and only an intelligent minority thought that there was anything
to blame in the fragmentary political constitution of Europe.  The
treaty of Versailles was intended to be exemplary and vindictive; it
provided tremendous penalties for the vanquished; it sought to provide
compensations for the wounded and suffering victors by imposing
enormous debts upon nations already bankrupt, and its attempts to
reconstitute international relations by the establishment of a League
of Nations against war were manifestly insincere and inadequate.

PASSENGER AEROPLANE FLYING OVER NORTHOLT
PASSENGER AEROPLANE FLYING OVER NORTHOLT

_(Photo taken by another ’plane by the Central Aerophoto Co.)_

So far as Europe was concerned it is doubtful if there would have been
any attempt whatever to organize international relations for a
permanent peace.  The proposal of the League of Nations was brought
into practical politics by the President of the United States of
America, President Wilson.  Its chief support was in America.  So far
the United States, this new modern state, had developed no distinctive
ideas of international relationship beyond the Monroe Doctrine, which
protected the new world from European interference. Now suddenly it was
called upon for its mental contribution to the vast problem of the
time.  It had none.  The natural disposition of the American people was
towards a permanent world peace.  With this however was linked a strong
traditional distrust of old-world polities and a habit of isolation
from old-world entanglements. The Americans had hardly begun to think
out an American solution of world problems when the submarine campaign
of the Germans dragged them into the war on the side of the anti-German
allies. President Wilson’s scheme of a League of Nations was an attempt
at short notice to create a distinctively American world project.  It
was a sketchy, inadequate and dangerous scheme.  In Europe however it
was taken as a matured American point of view. The generality of
mankind in 1918-19 was intensely weary of war and anxious at almost any
sacrifice to erect barriers against its recurrence, but there was not a
single government in the old world willing to waive one iota of its
sovereign independence to attain any such end.  The public utterances
of President Wilson leading up to the project of a World League of
Nations seemed for a time to appeal right over the heads of the
governments to the peoples of the world; they were taken as expressing
the ripe intentions of America, and the response was enormous. 
Unhappily President Wilson had to deal with governments and not with
peoples; he was a man capable of tremendous flashes of vision and yet
when put to the test egotistical and limited, and the great wave of
enthusiasm he evoked passed and was wasted.

Says Dr. Dillon in his book, _The Peace Conference:_ “Europe, when the
President touched its shores, was as clay ready for the creative
potter.  Never before were the nations so eager to follow a Moses who
would take them to the long-promised land where wars are prohibited and
blockades unknown.  And to their thinking he was just that great
leader.  In France men bowed down before him with awe and affection. 
Labour leaders in Paris told me that they shed tears of joy in his
presence, and that their comrades would go through fire and water to
help him to realize his noble schemes.  To the working classes in Italy
his name was a heavenly clarion at the sound of which the earth would
be renewed. The Germans regarded him and his doctrine as their
sheet-anchor of safety.  The fearless Herr Muehlon said: ‘If President
Wilson were to address the Germans and pronounce a severe sentence upon
them, they would accept it with resignation and without a murmur and
set to work at once.’  In German-Austria his fame was that of a
saviour, and the mere mention of his name brought balm to the suffering
and surcease of sorrow to the afflicted ... .”

Such were the overpowering expectations that President Wilson raised.
How completely he disappointed them and how weak and futile was the
League of Nations he made is too long and too distressful a story to
tell here. He exaggerated in his person our common human tragedy, he
was so very great in his dreams and so incapable in his performance.
America dissented from the acts of its President and would not join the
League Europe accepted from him. There was a slow realization on the
part of the American people that it had been rushed into something for
which it was totally unprepared. There was a corresponding realization
on the part of Europe that America had nothing ready to give to the old
world in its extremity. Born prematurely and crippled at its birth,
that League has become indeed, with its elaborate and unpractical
constitution and its manifest limitations of power, a serious obstacle
in the way of any effective reorganization of international
relationships. The problem would be a clearer one if the League did not
yet exist. Yet that world-wide blaze of enthusiasm that first welcomed
the project, that readiness of men everywhere round and about the
earth, of men, that is, as distinguished from governments, for a world
control of war, is a thing to be recorded with emphasis in any history.
Behind the short-sighted governments that divide and mismanage human
affairs, a real force for world unity and world order exists and grows.

From 1918 onward the world entered upon an age of conferences.  Of
these the Conference at Washington called by President Harding (1921)
has been the most successful and suggestive.  Notable, too, is the
Genoa Conference (1922) for the appearance of German and Russian
delegates at its deliberations.  We will not discuss this long
procession of conferences and tentatives in any detail.  It becomes
more and more clearly manifest that a huge work of reconstruction has
to be done by mankind if a crescendo of such convulsions and world
massacres as that of the great war is to be averted.  No such hasty
improvisation as the League of Nations, no patched-up system of
Conferences between this group of states and that, which change nothing
with an air of settling everything, will meet the complex political
needs of the new age that lies before us.  A systematic development and
a systematic application of the sciences of human relationship, of
personal and group psychology, of financial and economic science and of
education, sciences still only in their infancy, is required.  Narrow
and obsolete, dead and dying moral and political ideas have to be
replaced by a clearer and a simpler conception of the common origins
and destinies of our kind.

A PEACEFUL GARDEN IN ENGLAND
A PEACEFUL GARDEN IN ENGLAND
Given wisdom, all mankind might live in such gardens

But if the dangers, confusions and disasters that crowd upon man in
these days are enormous beyond any experience of the past, it is
because science has brought him such powers as he never had before. And
the scientific method of fearless thought, exhaustively lucid
statement, and exhaustively criticized planning, which has given him
these as yet uncontrollable powers, gives him also the hope of
controlling these powers.  Man is still only adolescent.  His troubles
are not the troubles of senility and exhaustion but of increasing and
still undisciplined strength.  When we look at all history as one
process, as we have been doing in this book, when we see the steadfast
upward struggle of life towards vision and control, then we see in
their true proportions the hopes and dangers of the present time.  As
yet we are hardly in the earliest dawn of human greatness.  But in the
beauty of flower and sunset, in the happy and perfect movement of young
animals and in the delight of ten thousand various landscapes, we have
some intimations of what life can do for us, and in some few works of
plastic and pictorial art, in some great music, in a few noble
buildings and happy gardens, we have an intimation of what the human
will can do with material possibilities.  We have dreams; we have at
present undisciplined but ever increasing power.  Can we doubt that
presently our race will more than realize our boldest imaginations,
that it will achieve unity and peace, that it will live, the children
of our blood and lives will live, in a world made more splendid and
lovely than any palace or garden that we know, going on from strength
to strength in an ever widening circle of adventure and achievement?
What man has done, the little triumphs of his present state, and all
this history we have told, form but the prelude to the things that man
has got to do.', 2001)
on conflict (book_id, number) do update set title = excluded.title, content = excluded.content, word_count = excluded.word_count;
