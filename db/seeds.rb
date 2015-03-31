# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Post.delete_all


lbr_images_1 = Image.new( photo: Rails.root.join("db/images/birds/LBR/lbr1.jpg").open,
												 caption: 'Frikkie looking aroung')
lbr_images_2 = Image.new( photo: Rails.root.join("db/images/birds/LBR/lbr2.jpg").open,
												 caption: 'Frikkie and Kolle')
lbr_images_3 = Image.new( photo: Rails.root.join("db/images/birds/LBR/lbr3.jpg").open,
												 caption: 'Frikkie flying')
lbr_images_4 = Image.new( photo: Rails.root.join("db/images/birds/LBR/lbr4.jpg").open,
												 caption: "Frikkie's portrait")
lbr_images_5 = Image.new( photo: Rails.root.join("db/images/birds/LBR/lbr5.jpg").open,
												 caption: 'Look at Frikkie')


Post.create!( heading: 'Lilac Breasted Roller',
    				  sub_heading: 'Kruger National Park',
    					body: 'The lilac-breasted roller (Coracias caudatus) is a member of the roller family of birds. It is widely distributed in sub-Saharan Africa and the southern Arabian Peninsula, preferring open woodland and savanna; it is largely absent from treeless places. Usually found alone or in pairs, it perches conspicuously at the tops of trees, poles or other high vantage points from where it can spot insects, lizards, scorpions, snails, small birds and rodents moving about at ground level.[2] Nesting takes place in a natural hole in a tree where a clutch of 2–4 eggs is laid, and incubated by both parents, who are extremely aggressive in defence of their nest, taking on raptors and other birds. During the breeding season the male will rise to great heights, descending in swoops and dives, while uttering harsh, discordant cries.
    								The sexes are alike in coloration. Juveniles do not have the long tail feathers that adults do.
    								This species is the national bird of Botswana and Kenya.',
							images: [lbr_images_1, lbr_images_2, lbr_images_3, lbr_images_4, lbr_images_5])






afe_images_1 = Image.new( photo: Rails.root.join("db/images/birds/AFE/afe1.jpg").open,
												 caption: 'Koos looking aroung')
afe_images_2 = Image.new( photo: Rails.root.join("db/images/birds/AFE/afe2.jpg").open,
												 caption: 'Koos looking cool')
afe_images_3 = Image.new( photo: Rails.root.join("db/images/birds/AFE/afe3.jpg").open,
												 caption: 'Koos portrait')
afe_images_4 = Image.new( photo: Rails.root.join("db/images/birds/AFE/afe4.jpg").open,
												 caption: "Koos flying high")
afe_images_5 = Image.new( photo: Rails.root.join("db/images/birds/AFE/afe5.jpg").open,
												 caption: 'Koos chillaxing')

Post.create!( heading: 'African Fish Eagle',
    					sub_heading: 'Pilansburg July 2014',
    					body: 'The African fish eagle (Haliaeetus vocifer)[2] or – to distinguish it from the true fish eagles (Ichthyophaga), the African sea eagle – is a large species of eagle that is found throughout sub-Saharan Africa wherever large bodies of open water occur that have an abundant food supply. It is the national bird of Zimbabwe, Zambia and South Sudan. As a result of its large range, it is known in many languages.[3] Examples of names include: Visarend in Afrikaans; Aigle Pêcheur in French;[4] Hungwe in Shona, and Inkwazi in isiZulu.
    								This species may resemble the bald eagle in appearance; though related, each species occurs on different continents, with the bald eagle being resident in North America.
    								The African fish eagle is a species placed in the genus Haliaeetus (sea eagles). The African fish eagles closest relative appears to be the critically endangered Madagascar fish eagle (H. vociferoides). Like all sea eagle species pairs, this one consists of a white-headed species (the African fish eagle) and a tan-headed one. These are an ancient lineage of sea eagles, and as such have dark talons, beaks, and eyes.[5] Both species have at least partially white tails even as juveniles. The scientific name is derived from Haliaeetus, New Latin for sea eagle (from the Ancient Greek haliaetos), and vocifer is derived from its original genus name, so named by the French naturalist François Levaillant, who called it the vociferous one',
    					images: [afe_images_1, afe_images_2, afe_images_3, afe_images_4, afe_images_5])







bv_images_1 = Image.new( photo: Rails.root.join("db/images/birds/BV/BV1.jpg").open,
												 caption: 'Jan landing')
bv_images_2 = Image.new( photo: Rails.root.join("db/images/birds/BV/BV2.jpg").open,
												 caption: "Jan's younger brother")
bv_images_3 = Image.new( photo: Rails.root.join("db/images/birds/BV/BV3.jpg").open,
												 caption: 'Jan looking scary')
bv_images_4 = Image.new( photo: Rails.root.join("db/images/birds/BV/BV4.jpg").open,
												 caption: 'Jan patrolling')
bv_images_5 = Image.new( photo: Rails.root.join("db/images/birds/BV/BV5.jpg").open,
												 caption: "Everyone's scared of Jan")


Post.create!( heading: 'Bearded Vulture',
    					sub_heading: 'Castle Rock December 2012',
    					body: 'The bearded vulture (Gypaetus barbatus), also known as the lammergeier or lammergeyer, is a bird of prey, and the only member of the genus Gypaetus. Traditionally considered an Old World vulture, it actually forms a minor lineage of Accipitridae together with the Egyptian vulture (Neophron percnopterus), its closest living relative. It is not much more closely related to the Old World vultures proper than to, for example, hawks, and differs from the former by its feathered neck. Although dissimilar, the Egyptian and bearded vulture each have a lozenge-shaped tail – unusual among birds of prey. In July 2014, the IUCN Red List has reassesed this species to be near threatened. Before July 2014, it was actually classed as Least Concern. Their population trend is decreasing.
    								It eats mainly carrion and lives and breeds on crags in high mountains in southern Europe, the Caucasus,[2][3][4] Africa,[5] the Indian subcontinent, and Tibet, laying one or two eggs in mid-winter that hatch at the beginning of spring. Populations are resident.
    								The bearded vulture is sparsely distributed across a considerable range. It may be found in mountainous regions from Europe through much of Asia and Africa. In Eurasia, it is found in the Pyrenees, the Alps, the Caucasus region, the Zagros Mountains, the Alborzs, the Altai Mountains, the Himalayas, western and central China, Israel and the Arabian Peninsula. In Africa, it is found in the Atlas Mountains, the Ethiopian Highlands and down from Sudan to northeastern Democratic Republic of the Congo, central Kenya and northern Tanzania. An isolated population inhabits the Drakensberg of South Africa',
    					images: [bv_images_1, bv_images_2, bv_images_3, bv_images_4, bv_images_5])






cbe_images_1 = Image.new( photo: Rails.root.join("db/images/birds/CBE/cbe1.jpg").open,
												 caption: 'Birds of a feather')
cbe_images_2 = Image.new( photo: Rails.root.join("db/images/birds/CBE/cbe2.jpg").open,
												 caption: 'Beauty in flight')
cbe_images_3 = Image.new( photo: Rails.root.join("db/images/birds/CBE/cbe3.jpg").open,
												 caption: 'Liking my mask?')
cbe_images_4 = Image.new( photo: Rails.root.join("db/images/birds/CBE/cbe4.jpg").open,
												 caption: "What's up?")
cbe_images_5 = Image.new( photo: Rails.root.join("db/images/birds/CBE/cbe5.jpg").open,
												 caption: 'Looking for a wive')


Post.create!( heading: 'Carmine Bee Eater',
    					sub_heading: 'Kgalagadi 2013',
    					body: 'The southern carmine bee-eater (Merops nubicoides) (formerly carmine bee-eater) occurs across sub-equatorial Africa, ranging from KwaZulu-Natal and Namibia to Gabon, eastern Democratic Republic of the Congo and Kenya.
    								This species, like other bee-eaters, is a richly coloured,striking bird, predominantly carmine in colouration, but with the crown and undertail coverts blue.
    								Its usual habitat included low-altitude river valleys and floodplains, preferring vertical banks suitable for tunneling when breeding, but readily digging vertical burrows in the level surface of small salt islands. This is a highly sociable species, gathering in large flocks, in or out of breeding season. They roost communally in trees or reedbeds, and disperse widely during the day. Nesting is at the end of a 1-2m long burrow in an earthen bank, where they lay from 2-5 eggs.
    								This is a migratory species, spending the breeding season, between August and November, in Zimbabwe, before moving south to South Africa for the summer months, and then migrating to equatorial Africa from March to August.
    								Their diet is made up primarily of bees and other flying insects, and their major hunting strategy involves hawking flying insects from perch. Perches may include branches of vegetation or even the backs of large animals, such as the kori bustard. They are attracted to wildfires because of the flushed insects, and are often seen circling high in the air.
    								They circle larger animals and even cars to catch the insects that try to escape.',
    					images: [cbe_images_1, cbe_images_2, cbe_images_3, cbe_images_4, cbe_images_5])






cbs_images_1 = Image.new( photo: Rails.root.join("db/images/birds/cbs/cbs1.jpg").open,
												 caption: 'Crimson beauty')
cbs_images_2 = Image.new( photo: Rails.root.join("db/images/birds/cbs/cbs2.jpg").open,
												 caption: 'Rare yellow form')
cbs_images_3 = Image.new( photo: Rails.root.join("db/images/birds/cbs/cbs3.jpg").open,
												 caption: 'Looking out')
cbs_images_4 = Image.new( photo: Rails.root.join("db/images/birds/cbs/cbs4.jpg").open,
												 caption: 'Dancing with pray')
cbs_images_5 = Image.new( photo: Rails.root.join("db/images/birds/cbs/cbs5.jpg").open,
												 caption: 'Loving shade')


Post.create!( heading: 'Crimson(and yellow) Breasted Shrike',
    					sub_heading: 'Madikwe August 2014',
    					body: 'The crimson-breasted shrike (Laniarius atrococcineus) or the crimson-breasted gonolek, (gonolek - supposedly imitative of its call),[2] is a southern African bird. The species is closely related to two other bushshrikes, the yellow-crowned gonolek (Laniarius barbarus) and the black-headed gonolek (Laniarius erythrogaster) of East Africa.
    								The species was first collected by William John Burchell in 1811 near the confluence of the Vaal and Orange Rivers. He named it atrococcineus meaning black/red, finding the striking colour combination quite remarkable. The generic name Laniarius was coined by the French ornithologist Louis Jean Pierre Vieillot and was meant to call attention to the butcher-like habits of the group. In South West Africa its colours reminded Germans of their homeland flag and it therefore became the Reichsvogel ("Empire bird").
    								The sexes have the same colouration and are indistinguishable from each other. A yellow-breasted form is occasionally seen, and was at first thought to be a separate species. Young birds have a mottled and barred buff-brown appearance with a pale bill.
    								The crimson-breasted shrike occurs in a broad swathe from southern Angola to the Free State province in South Africa. Its preferred habitat is drier thornbush areas, in thickets and riparian scrub. It makes small seasonal migrations, preferring lower altitudes during cold periods.',
    					images: [cbs_images_1, cbs_images_2, cbs_images_3, cbs_images_4, cbs_images_5])







bc_images_1 = Image.new( photo: Rails.root.join("db/images/birds/bc/bc1.jpg").open,
												 caption: 'Walking')
bc_images_2 = Image.new( photo: Rails.root.join("db/images/birds/bc/bc2.jpg").open,
												 caption: 'Still Walking')
bc_images_3 = Image.new( photo: Rails.root.join("db/images/birds/bc/bc3.jpg").open,
												 caption: 'Still Walking..')
bc_images_4 = Image.new( photo: Rails.root.join("db/images/birds/bc/bc4.jpg").open,
												 caption: 'Still Walking...')
bc_images_5 = Image.new( photo: Rails.root.join("db/images/birds/bc/bc5.jpg").open,
												 caption: 'Still Walking....')


Post.create!( heading: 'Black Crake',
    					sub_heading: 'Kruger March 2015',
    					body: 'The black crake (Amaurornis flavirostra) is a waterbird in the rail and crake family Rallidae. It breeds in most of sub-Saharan Africa except in very arid areas. It undertakes some seasonal movements in those parts of its range which are subject to drought. No subspecies have been described.
    								The adult black crake is 19–23 cm (7.5–9.1 in) long with a short tail and long toes. As its name implies, the adult has mainly black plumage, with a brown olive tone on the wings and upperparts which is rarely detectable in the field. The eye is red, the bill is yellow (hence the flavirostra of the binomial name), and the legs and feet are red, duller when not breeding.
    								The sexes are similar, but the male is slightly larger. Most males, but only 10% of females, have a hooked upper mandible. The immature bird has brown upperparts and a dark grey head and underparts. Its bill is greenish yellow, and its feet and legs are dull red. The downy chicks are black, as with all rails.
    								The main call of the black crake is a duet, starting with a throaty chattering krrrok-kraaaa. The response is a dove-like cooing coo-crr-COO.',
    					images: [bc_images_1, bc_images_2, bc_images_3, bc_images_4, bc_images_5])







wkf_images_1 = Image.new( photo: Rails.root.join("db/images/birds/wkf/wkf1.jpg").open,
												 caption: 'Lazy Sunday')
wkf_images_2 = Image.new( photo: Rails.root.join("db/images/birds/wkf/wkf2.jpg").open,
												 caption: 'Rule of thirds')
wkf_images_3 = Image.new( photo: Rails.root.join("db/images/birds/wkf/wkf3.jpg").open,
												 caption: 'Moving in')
wkf_images_4 = Image.new( photo: Rails.root.join("db/images/birds/wkf/wkf4.jpg").open,
												 caption: "What's up?")
wkf_images_5 = Image.new( photo: Rails.root.join("db/images/birds/wkf/wkf5.jpg").open,
												 caption: 'Spreading my wings!')


Post.create!( heading: 'Woodlands Kingfisher',
    					sub_heading: 'Louis Trichardt Christmas',
    					body: 'This is a medium-sized kingfisher, 20–23 cm in length. The adult has a bright blue back, wing panel and tail. Its head, neck and underparts are white, and its shoulders are black. The flight of the woodland kingfisher is rapid and direct. The large bill has a red upper mandible and black lower mandible. The legs are bright red. Some birds may have greyish heads, causing confusion with mangrove kingfisher.
    								However, the lores are dark, creating a dark stripe through the eye (the stripe does not extend through the eye in mangrove kingfisher), and the underwing, primaries and secondaries are black with white underwing coverts (there is a black carpal patch on the white coverts in mangrove kingfisher). The inner webs of the base of the flight feathers are white, creating an indistinct white wingbar (white completely absent from wings in mangrove kingfisher). The breast is white (tends to be much greyer in mangrove kingfisher). The sexes are similar, but juveniles are duller than adults and have a brown bill
    								The woodland kingfisher is widely distributed in tropical Africa south of the Sahara and from Pretoria northwards. This kingfisher is essentially resident within 8° of the equator, but northern and southern populations are migratory, moving into the equatorial zone in the dry season.
    								It is a common species of a variety of wooded habitats with some trees, especially Acacias, including around human habitation. Although it is a "kingfisher", it prefers drier habitats in more traditional woodland and can be far from water. It is often solitary but can occur in small groups.',
    					images: [wkf_images_1, wkf_images_2, wkf_images_3, wkf_images_4, wkf_images_5])







sbs_images_1 = Image.new( photo: Rails.root.join("db/images/birds/sbs/sbs1.jpg").open,
												 caption: 'Lunch')
sbs_images_2 = Image.new( photo: Rails.root.join("db/images/birds/sbs/sbs2.jpg").open,
												 caption: 'Elegant')
sbs_images_3 = Image.new( photo: Rails.root.join("db/images/birds/sbs/sbs3.jpg").open,
												 caption: 'Hence the name')
sbs_images_4 = Image.new( photo: Rails.root.join("db/images/birds/sbs/sbs4.jpg").open,
												 caption: 'I need water')
sbs_images_5 = Image.new( photo: Rails.root.join("db/images/birds/sbs/sbs5.jpg").open,
												 caption: 'Close up')


Post.create!( heading: 'Saddle Billed Stork',
    					sub_heading: 'April 2014 Okovango Delta',
    					body: 'The saddle-billed stork (Ephippiorhynchus senegalensis) is a large wading bird in the stork family, Ciconiidae. It is a widespread species which is a resident breeder in sub-Saharan Africa from Sudan, Ethiopia and Kenya south to South Africa, and in The Gambia, Senegal, Côte dIvoire and Chad in west Africa.
    								This is a close relative of the widespread Asian black-necked stork, the only other member of the genus Ephippiorhynchus.
    								This is a huge bird that regularly attains a height of 150 cm (59 in), a length of 142 cm (56 in) and a 2.4–2.7 m (7.9–8.9 ft) wingspan. The male is larger and heavier than the female, with a range of 5.1–7.52 kg (11.2–16.6 lb), with a mean mass of 6.38 kg (14.1 lb). The female is usually between 5 and 6.84 kg (11.0 and 15.1 lb), wit a mean mass of 5.95 kg (13.1 lb).[2] It is probably the tallest of the storks (though not the heaviest), due in no small part to it extremely long legs (tarsus length is up to 36.5 cm (14.4 in)). The long bill measures from 27.3 to 36 cm (10.7 to 14.2 in).[3] The sexes can be readily distinguished by the golden yellow irises of the female and the brown irises and dangling yellow wattles of the male.
    								It is spectacularly plumaged, identical in male and female when perched but the female shows much more white in the primaries in flight. The head, neck, back, wings, and tail are iridescent black, with the rest of the body and the primary flight feathers being white. Juveniles are browner grey in plumage. The massive bill is red with a black band and a yellow frontal shield (the "saddle"). The legs and feet are black with pink hocks. On the chest is a bare red patch of skin, whose colour darkens during breeding season.',
    					images: [sbs_images_1, sbs_images_2, sbs_images_3, sbs_images_4, sbs_images_5])








tbw_images_1 = Image.new( photo: Rails.root.join("db/images/birds/tbw/tbw1.jpg").open,
												 caption: 'Good start')
tbw_images_2 = Image.new( photo: Rails.root.join("db/images/birds/tbw/tbw2.jpg").open,
												 caption: 'Almost there')
tbw_images_3 = Image.new( photo: Rails.root.join("db/images/birds/tbw/tbw3.jpg").open,
												 caption: "Hope you're almost done!")
tbw_images_4 = Image.new( photo: Rails.root.join("db/images/birds/tbw/tbw4.jpg").open,
												 caption: 'Hard work!')
tbw_images_5 = Image.new( photo: Rails.root.join("db/images/birds/tbw/tbw5.jpg").open,
												 caption: 'Neatest in the business')


Post.create!( heading: 'Thick Billed Weaver',
    					sub_heading: 'Neatest nest in the business',
    					body: 'The thick-billed weaver or grosbeak weaver (Amblyospiza albifrons) is a species of bird in the Ploceidae family. It is monotypic within the genus Amblyospiza
    								It is found in Angola, Benin, Botswana, Burundi, Cameroon, Central African Republic, Republic of the Congo, Democratic Republic of the Congo, Ivory Coast, Equatorial Guinea, Ethiopia, Gabon, Ghana, Guinea, Kenya, Liberia, Malawi, Mozambique, Namibia, Nigeria, Rwanda, Senegal, Sierra Leone, Somalia, South Africa, South Sudan, Swaziland, Tanzania, Togo, Uganda, Zambia, and Zimbabwe
    								Occurs in patches of West and East Africa, extending south through Tanzania and northern DRC to Zambia, Angola and southern Africa. Here it is locally common in northern Botswana, Caprivi Strip (Namibia), Zimbabwes eastern highlands, central and southern Mozambique and north-eastern and south-eastern South Africa. In the breeding season it generally favours marshes, rivers, dams with rank grass, reedbeds and Papyrus (Cyperus papyrus) beds, but in the non-breeding season it prefers edges and clearings in evergreen forest, also occupying reed-beds adjacent to ponds in suburban parks, alien plantations and cultivated areas.',
    					images: [tbw_images_1, tbw_images_2, tbw_images_3, tbw_images_4, tbw_images_5])







bat_images_1 = Image.new( photo: Rails.root.join("db/images/birds/bat/bat1.jpg").open,
												 caption: 'Adult and Juvenile')
bat_images_2 = Image.new( photo: Rails.root.join("db/images/birds/bat/bat2.jpg").open,
												 caption: 'Close up')
bat_images_3 = Image.new( photo: Rails.root.join("db/images/birds/bat/bat3.jpg").open,
												 caption: 'Portrait')
bat_images_4 = Image.new( photo: Rails.root.join("db/images/birds/bat/bat4.jpg").open,
												 caption: 'Up where I belong')
bat_images_5 = Image.new( photo: Rails.root.join("db/images/birds/bat/bat5.jpg").open,
												 caption: 'Waiting')


Post.create!( heading: 'Bateleur',
    					sub_heading: 'Kruger May 2012',
    					body: 'The bateleur (Terathopius ecaudatus) is a medium-sized eagle in the family Accipitridae. Its closest relatives are the snake eagles. It is the only member of the genus Terathopius and may be the origin of the "Zimbabwe Bird", national emblem of Zimbabwe.[2] It is endemic to Africa and small parts of Arabia. "Bateleur" is French for "Street Performer"
    								The average adult is 55 to 70 cm (22 to 28 in) long with a 186 cm (6 ft 1 in) wingspan. The wing chord averages approximately 51 cm (20 in). Adult weight is typically 2 to 2.6 kg (4 lb 7 oz to 5 lb 12 oz)
    								The bateleur is a colourful species with a very short tail (ecaudatus is Latin for tailless) which, together with its white underwing coverts, makes it unmistakable in flight. The tail is so small the birds legs protrude slightly beyond the tail during flight. The bateleur is sexually dimorphic; both adults have black plumage, a chestnut mantle and tail, grey shoulders, tawny wing coverts, and red facial skin, bill and legs. The female additionally has tawny secondary wing feathers. Less commonly, the mantle may be white.[5] Immature birds are brown with white dappling and have greenish facial skin. It takes them seven or eight years to reach full maturity.
    								The bateleur is diurnal, and hunts over a territory of approximately 250 square miles (650 km2) a day. Bateleurs are hunters and scavengers; birds such as pigeons and sangrouse are preferred prey items, although it may attack small mammals and also takes carrion. The bateleur is generally silent, but on occasions it produces a variety of barks and screams. The bird spends a considerable amount of time on the wing, particularly in low-altitude glides.[6] "Bateleur" is French for "Street Performer" [3] which included performers such as tight-rope walkers. This name implies the bird’s characteristic habit of rocking its wings from side to side when gliding, as if catching its balance.',
    					images: [bat_images_1, bat_images_2, bat_images_3, bat_images_4, bat_images_5])







ybk_images_1 = Image.new( photo: Rails.root.join("db/images/birds/ybk/ybk1.jpg").open,
												 caption: 'Nice tree')
ybk_images_2 = Image.new( photo: Rails.root.join("db/images/birds/ybk/ybk2.jpg").open,
												 caption: 'Looking for pray')
ybk_images_3 = Image.new( photo: Rails.root.join("db/images/birds/ybk/ybk3.jpg").open,
												 caption: 'What?')
ybk_images_4 = Image.new( photo: Rails.root.join("db/images/birds/ybk/ybk4.jpg").open,
												 caption: 'Dinner soon')
ybk_images_5 = Image.new( photo: Rails.root.join("db/images/birds/ybk/ybk5.jpg").open,
												 caption: 'Ground scraping')


Post.create!( heading: 'Yellow Billed Kite',
    					sub_heading: 'Unique',
    					body: "The yellow-billed kite (Milvus aegyptius) is the Afrotropic counterpart of the black kite (Milvus migrans), of which it is most often considered a subspecies. However, recent DNA studies suggest that the yellow-billed kite differs significantly from black kites in the Eurasian clade, and should be considered as a separate, allopatric species
    								There are two subspecies: M. a. parasitus, found throughout most of sub-Saharan Africa (including Madagascar), except for the Congo Basin (with intra-African migrations) and M. a. aegyptius of Egypt, south-west Arabia and the Horn of Africa (which disperses south during the non-breeding season).
    								As suggested by its name, the yellow-billed kite is easily recognized by its entirely yellow bill, unlike that of the black kite (which is present in Africa as a visitor during the North Hemisphere winter). However, immature yellow-billed kites resemble the black kites of the corresponding age
    								It is mostly an intra-African breeding migrant, present in Southern Africa July–March and sometimes as late as May. It is generally common
    								They are found in almost all habitats, including parks in suburbia, but rare in the arid Namib and Karoo. They feed on a wide range of small vertebrates and insects, much of which is scavenged.",
    					images: [ybk_images_1, ybk_images_2, ybk_images_3, ybk_images_4, ybk_images_5])







asb_images_1 = Image.new( photo: Rails.root.join("db/images/birds/asb/asb1.jpg").open,
												 caption: 'Beaut!')
asb_images_2 = Image.new( photo: Rails.root.join("db/images/birds/asb/asb2.jpg").open,
												 caption: 'Looking for breakfast')
asb_images_3 = Image.new( photo: Rails.root.join("db/images/birds/asb/asb3.jpg").open,
												 caption: 'Rocky fishing')
asb_images_4 = Image.new( photo: Rails.root.join("db/images/birds/asb/asb4.jpg").open,
												 caption: 'Dinner already?')
asb_images_5 = Image.new( photo: Rails.root.join("db/images/birds/asb/asb5.jpg").open,
												 caption: 'Beauty in flight!')


Post.create!( heading: 'African Spoonbill',
    					sub_heading: 'Namibia 2015',
    					body: "The African spoonbill (Platalea alba) is a long-legged wading bird[2] of the ibis and spoonbill family Threskiornithidae. The species is widespread across Africa and Madagascar, including Botswana, Kenya, Mozambique, Namibia, South Africa, and Zimbabwe
    								It lives in marshy wetlands with some open shallow water and nests in colonies in trees or reedbeds. They usually don't share colonies with storks or herons. The African spoonbill feeds in shallow water, and fishes for various fish,[2] molluscs,[2] amphibians, crustaceans,[2] insects[2] and larvae.[2] The animal uses its open bill to catch foods by swinging it from side-to-side in the water, which catches foods in its mouth.[2] Long legs and thin, pointed toes enable it to walk easily through varying depths of water
    								The African spoonbill is almost unmistakable through most of its range. The breeding bird is all white except for its red legs and face and long grey spatulate bill. It has no crest, unlike the common spoonbill. Immature birds lack the red face and have a yellow bill. Unlike herons, spoonbills fly with their necks outstretched.
    								The African spoonbill begins breeding in the winter, which lasts until spring.[2] The spoonbill's nest, generally located in trees above water, is built from sticks and reeds and lined with leaves.[3] Three to five eggs are laid by the female birds, usually during the months of April or May.[2] The eggs are incubated by both parents for up to 29 days, and upon hatching the young birds are cared for by both parents for around 20 to 30 days.[2] The birds are ready to leave the nest soon afterward, and begin flying after another four weeks",
    					images: [asb_images_1, asb_images_2, asb_images_3, asb_images_4, asb_images_5])



Bio.create!(name: 'Lodewicus Adriaans',
            info: 'Pretoria',
            body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus accumsan, odio ut tincidunt interdum, lacus lacus interdum ipsum, in facilisis orci ligula ut tortor. Fusce ultricies blandit diam id tristique. Nulla facilisi. Aenean eu convallis mi, nec tristique ligula. Aenean sed mauris imperdiet, tristique turpis nec, laoreet lorem. Ut porttitor, elit vel vulputate accumsan, eros risus porttitor velit, quis molestie lectus mi quis lorem. Pellentesque rutrum bibendum cursus. Integer ut lectus scelerisque, lobortis neque at, ornare enim. Nulla luctus molestie felis, sed scelerisque nunc pulvinar quis. Morbi finibus vel mauris nec tristique.

Aliquam vitae est posuere, tincidunt lectus vel, ullamcorper magna. Cras venenatis orci quis velit rutrum, vitae bibendum ante dignissim. Sed aliquet diam vel tempus feugiat. Pellentesque hendrerit sed leo et consequat. Etiam ac enim vehicula, venenatis neque non, condimentum massa. Nullam eleifend risus nec egestas ultrices. Praesent vel leo sed dolor varius congue et nec felis. Maecenas commodo et nunc faucibus accumsan.

Nam rhoncus sit amet lacus ac tristique. Praesent eu volutpat diam. Cras hendrerit elit quis maximus tincidunt. Aliquam id finibus leo, eget sodales tellus. Curabitur maximus quis magna nec tempus. Nulla eget velit sit amet eros facilisis dapibus ac vel eros. Integer egestas hendrerit sollicitudin. Donec non congue nisl. Donec lacinia eget justo eu condimentum. Vivamus vel nunc a justo pharetra ullamcorper non ullamcorper dui. Suspendisse leo neque, sodales quis orci at, pulvinar sagittis quam. Maecenas quis ultrices erat. Phasellus sed lacus dui. Vestibulum dignissim eros sit amet ipsum sodales, et mattis nulla facilisis. Maecenas vehicula augue aliquam metus semper volutpat. Quisque at nunc leo.

Cras a viverra leo, sit amet scelerisque dolor. Pellentesque porttitor ex quis consequat imperdiet. Sed turpis urna, molestie ac gravida eleifend, pharetra eget tortor. Phasellus vel dapibus mauris, at dapibus libero. Aliquam mattis enim vel egestas rhoncus. Proin semper sapien vitae turpis accumsan varius. Cras aliquam tempor risus in volutpat. Phasellus ac nulla egestas, ullamcorper ligula in, fermentum ex.

In fermentum neque orci, eu elementum tellus eleifend id. Sed faucibus non arcu et lobortis. Phasellus sed ligula porta, tristique enim nec, tincidunt metus. Nam quis venenatis mi. Sed porttitor dapibus viverra. Donec tincidunt, risus pharetra eleifend faucibus, eros lacus semper purus, in dignissim justo mauris id nisl. Morbi tincidunt sem id tortor varius, eu lacinia sapien blandit. Sed quis pulvinar leo. Cras tempus sapien sed pulvinar pharetra. Proin vitae lorem egestas, dapibus dui in, tristique ligula.

Integer tincidunt pretium convallis. Proin nec magna sem. Morbi dictum velit a vehicula faucibus. In hac habitasse platea dictumst. Proin ut tortor eget tortor tempor blandit non eu felis. Fusce elementum mattis erat ut volutpat. Maecenas nec suscipit velit, eget tincidunt mauris. Curabitur eget nisi et magna aliquam commodo. Cras vitae justo quis purus dictum porttitor ac sit amet leo. Etiam tempor turpis quis orci scelerisque mollis.

Nulla lacinia efficitur aliquam. Nunc erat libero, pharetra sed rutrum non, facilisis et mi. Maecenas massa lectus, luctus non aliquet et, iaculis vel magna. Donec erat leo, semper a pulvinar id, gravida ac orci. Vestibulum ut est efficitur, rutrum lacus vel, ultrices massa. Vivamus commodo massa mi, eget tincidunt est commodo in. Sed feugiat metus convallis augue faucibus, quis porttitor nibh bibendum. Nunc sed odio vitae enim pulvinar blandit. Vestibulum tristique pharetra sapien, sagittis hendrerit elit dignissim vitae. Mauris nec tellus vitae magna imperdiet dapibus. Curabitur quis erat at urna luctus fermentum. Quisque fringilla varius vehicula. Phasellus hendrerit bibendum quam at ultricies.

Morbi placerat erat quis imperdiet ultrices. Curabitur ullamcorper neque at neque faucibus ullamcorper. Sed sem purus, sodales eu risus a, molestie posuere ligula. Nulla nec tellus eleifend, finibus justo non, auctor velit. Ut hendrerit lorem sed quam egestas, feugiat fringilla dui porttitor. Pellentesque nec egestas felis. Vivamus ut lacus iaculis, rutrum odio dapibus, iaculis turpis. Morbi elit lorem, interdum sit amet tincidunt et, hendrerit ac nulla. Nullam non lacus commodo, mollis sem sed, iaculis justo. Praesent vulputate semper elit, vitae convallis est rutrum quis. Nunc eget mauris mollis, viverra nulla sed, consequat lectus.

Sed nulla sapien, aliquet quis tincidunt at, imperdiet ut mi. Vivamus volutpat pellentesque ante nec viverra. Quisque neque sapien, cursus vitae convallis sed, commodo in tortor. Vivamus sodales urna eu accumsan congue. Proin vel blandit enim. Pellentesque ac elit neque. Integer mattis mi sed ipsum bibendum condimentum. Vestibulum condimentum est at massa gravida vehicula.

Curabitur a dolor at est scelerisque hendrerit et sed justo. Suspendisse pretium risus sit amet ornare auctor. Quisque a porta risus, eu sodales enim. Mauris id ipsum in sapien volutpat dignissim ac pretium ex. Nulla facilisi. Quisque sodales eu mauris vel condimentum. Praesent nisl sem, rhoncus sed lobortis lacinia, malesuada quis enim. Morbi enim ex, suscipit et dolor vel, fringilla finibus neque. Nulla condimentum dictum feugiat. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer tempus gravida porttitor. Phasellus enim orci, cursus sed sem at, convallis ultrices sapien. Etiam bibendum ex arcu, ut luctus tortor vulputate a. Phasellus egestas nibh nec metus dapibus, id interdum libero volutpat.

Proin nec suscipit felis. Aliquam erat volutpat. Donec in consequat erat, id tempor nisi. Phasellus libero nunc, scelerisque non urna quis, congue pulvinar eros. Nullam consequat scelerisque ex, eget suscipit diam luctus posuere. Quisque tempor pellentesque luctus. Fusce tempor eros in turpis pharetra, eget placerat est finibus.

Nam odio nunc, rutrum quis molestie at, imperdiet in justo. Quisque turpis leo, consectetur convallis risus a, ultricies volutpat neque. Quisque ante dolor, ultrices non faucibus laoreet, porttitor et tellus. Etiam pharetra leo quis turpis dictum feugiat. Aliquam viverra metus vitae leo pretium condimentum. Cras sed diam sem. Aenean volutpat mi lacus. Aliquam fringilla pellentesque diam non bibendum. Ut semper sem enim, vel varius diam tempor quis. Quisque non placerat nisl, quis ornare augue. Sed ac vehicula lorem. In malesuada tellus leo, ut elementum felis elementum ac.

Suspendisse fermentum pellentesque accumsan. Vestibulum finibus accumsan mauris, a finibus nisi aliquet eu. Suspendisse aliquam, nibh eget gravida dignissim, ante lectus porta lectus, sit amet blandit neque ex ac nunc. Etiam vehicula ornare tortor a placerat. Donec vel dui vel nisl consequat commodo viverra')



Detail.create!( name: 'Lodewicus Adriaanse',
                phone: '0828756591',
                email: 'lodewicus@gmail.com')


