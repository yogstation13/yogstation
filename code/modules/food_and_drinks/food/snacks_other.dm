
////////////////////////////////////////////OTHER////////////////////////////////////////////

/obj/item/reagent_containers/food/snacks/watermelonslice
	name = "watermelon slice"
	desc = "A slice of watery goodness."
	icon_state = "watermelonslice"
	filling_color = "#FF1493"
	tastes = list("watermelon" = 1)
	foodtype = FRUIT
	juice_results = list(/datum/reagent/consumable/watermelonjuice = 5)

/obj/item/reagent_containers/food/snacks/candy_corn
	name = "candy corn"
	desc = "It's a handful of candy corn. Can be stored in a detective's hat."
	icon_state = "candy_corn"
	list_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/sugar = 2)
	filling_color = "#FF8C00"
	tastes = list("candy corn" = 1)
	foodtype = JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/candy_corn/prison
	name = "desiccated candy corn"
	desc = "If this candy corn were any harder Security would confiscate it for being a potential shiv."
	force = 1 // the description isn't lying
	throwforce = 1 // if someone manages to bust out of jail with candy corn god bless them
	tastes = list("bitter wax" = 1)
	foodtype = GROSS

/obj/item/reagent_containers/food/snacks/chocolatebar
	name = "chocolate bar"
	desc = "Such sweet, fattening food."
	icon_state = "chocolatebar"
	list_reagents = list(/datum/reagent/consumable/nutriment = 2, /datum/reagent/consumable/sugar = 2, /datum/reagent/consumable/coco = 2)
	filling_color = "#A0522D"
	tastes = list("chocolate" = 1)
	foodtype = JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/hugemushroomslice
	name = "huge mushroom slice"
	desc = "A slice from a huge mushroom."
	icon_state = "hugemushroomslice"
	list_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/nutriment/vitamin = 1)
	tastes = list("mushroom" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/popcorn
	name = "popcorn"
	desc = "Now let's find some cinema."
	icon_state = "popcorn"
	trash = /obj/item/trash/popcorn
	list_reagents = list(/datum/reagent/consumable/nutriment = 2)
	bitesize = 0.1 //this snack is supposed to be eating during looooong time. And this it not dinner food! --rastaf0
	filling_color = "#FFEFD5"
	tastes = list("popcorn" = 3, "butter" = 1)
	foodtype = JUNKFOOD

/obj/item/reagent_containers/food/snacks/popcorn/Initialize()
	. = ..()
	eatverb = pick("bite","nibble","gnaw","gobble","chomp")

/obj/item/reagent_containers/food/snacks/loadedbakedpotato
	name = "loaded baked potato"
	desc = "Totally baked."
	icon_state = "loadedbakedpotato"
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/nutriment/vitamin = 2)
	list_reagents = list(/datum/reagent/consumable/nutriment = 6)
	filling_color = "#D2B48C"
	tastes = list("potato" = 1)
	foodtype = VEGETABLES | DAIRY

/obj/item/reagent_containers/food/snacks/fries
	name = "space fries"
	desc = "AKA: French Fries, Freedom Fries, etc."
	icon_state = "fries"
	trash = /obj/item/trash/plate
	list_reagents = list(/datum/reagent/consumable/nutriment = 4)
	filling_color = "#FFD700"
	tastes = list("fries" = 3, "salt" = 1)
	foodtype = VEGETABLES | GRAIN | FRIED

/obj/item/reagent_containers/food/snacks/tatortot
	name = "tator tot"
	desc = "A large fried potato nugget that may or may not try to valid you."
	icon_state = "tatortot"
	list_reagents = list(/datum/reagent/consumable/nutriment = 4)
	filling_color = "FFD700"
	tastes = list("potato" = 3, "valids" = 1)
	foodtype = FRIED | VEGETABLES

/obj/item/reagent_containers/food/snacks/soydope
	name = "soy dope"
	desc = "Dope from a soy."
	icon_state = "soydope"
	trash = /obj/item/trash/plate
	list_reagents = list(/datum/reagent/consumable/nutriment = 2)
	filling_color = "#DEB887"
	tastes = list("soy" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/cheesyfries
	name = "cheesy fries"
	desc = "Fries. Covered in cheese. Duh."
	icon_state = "cheesyfries"
	trash = /obj/item/trash/plate
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/nutriment/vitamin = 2)
	list_reagents = list(/datum/reagent/consumable/nutriment = 6)
	filling_color = "#FFD700"
	tastes = list("fries" = 3, "cheese" = 1)
	foodtype = VEGETABLES | GRAIN

/obj/item/reagent_containers/food/snacks/badrecipe
	name = "burned mess"
	desc = "Someone should be demoted from cook for this."
	icon_state = "badrecipe"
	list_reagents = list(/datum/reagent/toxin/bad_food = 30)
	filling_color = "#8B4513"
	foodtype = GROSS

/obj/item/reagent_containers/food/snacks/carrotfries
	name = "carrot fries"
	desc = "Tasty fries from fresh carrots."
	icon_state = "carrotfries"
	trash = /obj/item/trash/plate
	list_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/medicine/oculine = 3, /datum/reagent/consumable/nutriment/vitamin = 2)
	filling_color = "#FFA500"
	tastes = list("carrots" = 3, "salt" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/candiedapple
	name = "candied apple"
	desc = "An apple coated in sugary sweetness."
	icon_state = "candiedapple"
	bitesize = 3
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 2, /datum/reagent/consumable/sugar = 3)
	list_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/sugar = 2, /datum/reagent/consumable/caramel = 5)
	filling_color = "#FF4500"
	tastes = list("apple" = 2, "caramel" = 3)
	foodtype = JUNKFOOD | FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/mint
	name = "mint"
	desc = "It is only wafer thin."
	icon_state = "mint"
	bitesize = 1
	trash = /obj/item/trash/plate
	list_reagents = list(/datum/reagent/toxin/minttoxin = 2)
	filling_color = "#800000"
	foodtype = TOXIC | SUGAR

/obj/item/reagent_containers/food/snacks/beans
	name = "tin of beans"
	desc = "Musical fruit in a slightly less musical container."
	icon_state = "beans"
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/nutriment/vitamin = 1)
	list_reagents = list(/datum/reagent/consumable/nutriment = 10)
	filling_color = "#B22222"
	tastes = list("beans" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/spidereggs
	name = "spider eggs"
	desc = "A cluster of juicy spider eggs. A great side dish for when you care not for your health."
	icon_state = "spidereggs"
	list_reagents = list(/datum/reagent/consumable/nutriment = 2, /datum/reagent/toxin = 2)
	filling_color = "#008000"
	tastes = list("cobwebs" = 1)
	foodtype = MEAT | TOXIC | EGG // "Spidereggpeople" sounds like a fun ashwalker-ey variant of eggpeople

/obj/item/reagent_containers/food/snacks/spiderling
	name = "spiderling"
	desc = "It's slightly twitching in your hand. Ew..."
	icon_state = "spiderling"
	list_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/toxin = 4)
	filling_color = "#00800"
	tastes = list("cobwebs" = 1, "guts" = 2)
	foodtype = MEAT | TOXIC

/obj/item/reagent_containers/food/snacks/spiderlollipop
	name = "spider lollipop"
	desc = "Still gross, but at least it has a mountain of sugar on it."
	icon_state = "spiderlollipop"
	list_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/toxin = 1, /datum/reagent/iron = 10, /datum/reagent/consumable/sugar = 5, /datum/reagent/medicine/omnizine = 2) //lollipop, but vitamins = toxins
	filling_color = "#00800"
	tastes = list("cobwebs" = 1, "sugar" = 2)
	foodtype = JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/chococoin
	name = "chocolate coin"
	desc = "A completely edible but non-flippable festive coin."
	icon_state = "chococoin"
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/sugar = 1)
	list_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/coco = 1)
	filling_color = "#A0522D"
	tastes = list("chocolate" = 1)
	foodtype = JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/fudgedice
	name = "fudge dice"
	desc = "A little cube of chocolate that tends to have a less intense taste if you eat too many at once."
	icon_state = "chocodice"
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/sugar = 1)
	list_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/coco = 1)
	filling_color = "#A0522D"
	trash = /obj/item/dice/fudge
	tastes = list("fudge" = 1)
	foodtype = JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/chocoorange
	name = "chocolate orange"
	desc = "A festive chocolate orange."
	icon_state = "chocoorange"
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/sugar = 1)
	list_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/sugar = 1)
	filling_color = "#A0522D"
	tastes = list("chocolate" = 3, "oranges" = 1)
	foodtype = JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/eggplantparm
	name = "eggplant parmigiana"
	desc = "The only good recipe for eggplant."
	icon_state = "eggplantparm"
	trash = /obj/item/trash/plate
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/nutriment/vitamin = 3)
	list_reagents = list(/datum/reagent/consumable/nutriment = 6, /datum/reagent/consumable/nutriment/vitamin = 2)
	filling_color = "#BA55D3"
	tastes = list("eggplant" = 3, "cheese" = 1)
	foodtype = VEGETABLES | DAIRY

/obj/item/reagent_containers/food/snacks/tortilla
	name = "tortilla"
	desc = "The base for all your burritos."
	icon = 'icons/obj/food/food_ingredients.dmi'
	icon_state = "tortilla"
	list_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/nutriment/vitamin = 1)
	filling_color = "#FFEFD5"
	tastes = list("tortilla" = 1)
	foodtype = GRAIN

/obj/item/reagent_containers/food/snacks/burrito
	name = "burrito"
	desc = "Tortilla wrapped goodness."
	icon_state = "burrito"
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 2, /datum/reagent/consumable/nutriment/vitamin = 2)
	list_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 1)
	filling_color = "#FFEFD5"
	tastes = list("torilla" = 2, "meat" = 3)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/cheesyburrito
	name = "cheesy burrito"
	desc = "It's a burrito filled with cheese."
	icon_state = "cheesyburrito"
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/nutriment/vitamin = 2)
	list_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 2)
	filling_color = "#FFD800"
	tastes = list("torilla" = 2, "meat" = 3, "cheese" = 1)
	foodtype = GRAIN | MEAT | DAIRY

/obj/item/reagent_containers/food/snacks/carneburrito
	name = "carne de asada burrito"
	desc = "The best burrito for meat lovers."
	icon_state = "carneburrito"
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 2, /datum/reagent/consumable/nutriment/vitamin = 1)
	list_reagents = list(/datum/reagent/consumable/nutriment = 5, /datum/reagent/consumable/nutriment/vitamin = 1)
	filling_color = "#A0522D"
	tastes = list("torilla" = 2, "meat" = 4)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/fuegoburrito
	name = "fuego plasma burrito"
	desc = "A super spicy burrito."
	icon_state = "fuegoburrito"
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 2, /datum/reagent/consumable/nutriment/vitamin = 3)
	list_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/capsaicin = 5, /datum/reagent/consumable/nutriment/vitamin = 3)
	filling_color = "#FF2000"
	tastes = list("torilla" = 2, "meat" = 3, "hot peppers" = 1)
	foodtype = GRAIN | MEAT

/obj/item/reagent_containers/food/snacks/nachos
	name = "nachos"
	desc = "Chips from Space Mexico."
	icon_state = "nachos"
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/nutriment/vitamin = 1)
	list_reagents = list(/datum/reagent/consumable/nutriment = 6, /datum/reagent/consumable/nutriment/vitamin = 2)
	filling_color = "#F4A460"
	tastes = list("nachos" = 1)
	foodtype = VEGETABLES | FRIED

/obj/item/reagent_containers/food/snacks/cheesynachos
	name = "cheesy nachos"
	desc = "A delicious combination of nachos and melting cheese."
	icon_state = "cheesynachos"
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/nutriment/vitamin = 2)
	list_reagents = list(/datum/reagent/consumable/nutriment = 6, /datum/reagent/consumable/nutriment/vitamin = 3)
	filling_color = "#FFD700"
	tastes = list("nachos" = 2, "cheese" = 1)
	foodtype = VEGETABLES | FRIED | DAIRY

/obj/item/reagent_containers/food/snacks/cubannachos
	name = "Cuban nachos"
	desc = "That's some dangerously spicy nachos."
	icon_state = "cubannachos"
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 2, /datum/reagent/consumable/nutriment/vitamin = 3)
	list_reagents = list(/datum/reagent/consumable/nutriment = 7, /datum/reagent/consumable/capsaicin = 8, /datum/reagent/consumable/nutriment/vitamin = 4)
	filling_color = "#DC143C"
	tastes = list("nachos" = 2, "hot pepper" = 1)
	foodtype = VEGETABLES | FRIED | DAIRY

/obj/item/reagent_containers/food/snacks/melonkeg
	name = "melon keg"
	desc = "Who knew vodka was a fruit?"
	icon_state = "melonkeg"
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/nutriment/vitamin = 3)
	list_reagents = list(/datum/reagent/consumable/nutriment = 9, /datum/reagent/consumable/ethanol/vodka = 15, /datum/reagent/consumable/nutriment/vitamin = 4)
	filling_color = "#FFD700"
	volume = 80
	bitesize = 5
	tastes = list("grain alcohol" = 1, "fruit" = 1)
	foodtype = FRUIT | ALCOHOL

/obj/item/reagent_containers/food/snacks/honeybar
	name = "honey nut bar"
	desc = "Oats and nuts compressed together into a bar, held together with a honey glaze."
	icon_state = "honeybar"
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 2, /datum/reagent/consumable/honey = 2, /datum/reagent/consumable/nutriment/vitamin = 2)
	list_reagents = list(/datum/reagent/consumable/nutriment = 5, /datum/reagent/consumable/honey = 5)
	filling_color = "#F2CE91"
	tastes = list("oats" = 3, "nuts" = 2, "honey" = 1)
	foodtype = FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/stuffedlegion
	name = "stuffed legion"
	desc = "The former skull of a damned human, filled with goliath meat. It has a decorative lava pool made of ketchup and hotsauce."
	icon_state = "stuffed_legion"
	bonus_reagents = list(/datum/reagent/consumable/nutriment/vitamin = 3, /datum/reagent/consumable/capsaicin = 1, /datum/reagent/medicine/tricordrazine = 5)
	list_reagents = list(/datum/reagent/consumable/nutriment = 5, /datum/reagent/consumable/nutriment/vitamin = 5, /datum/reagent/consumable/capsaicin = 2, /datum/reagent/medicine/tricordrazine = 10)
	tastes = list("death" = 2, "rock" = 1, "meat" = 1, "hot peppers" = 1)
	foodtype = MEAT

/obj/item/reagent_containers/food/snacks/powercrepe
	name = "Powercrepe"
	desc = "With great power, comes great crepes. It looks like a pancake filled with jelly but packs quite a punch."
	icon_state = "powercrepe"
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 5, /datum/reagent/consumable/nutriment/vitamin = 3, /datum/reagent/iron = 10)
	list_reagents = list(/datum/reagent/consumable/nutriment = 10, /datum/reagent/consumable/nutriment/vitamin = 5, /datum/reagent/consumable/cherryjelly = 5)
	force = 20
	throwforce = 10
	block_chance = 50
	armour_penetration = 75
	attack_verb = list("slapped", "slathered")
	w_class = WEIGHT_CLASS_BULKY
	tastes = list("cherry" = 1, "crepe" = 1)
	foodtype = GRAIN | FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/lollipop
	name = "lollipop"
	desc = "A delicious lollipop. Makes for a great Valentine's present."
	icon = 'icons/obj/lollipop.dmi'
	icon_state = "lollipop_stick"
	list_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/nutriment/vitamin = 1, /datum/reagent/iron = 10, /datum/reagent/consumable/sugar = 5, /datum/reagent/medicine/omnizine = 2)	//Honk
	var/mutable_appearance/head
	var/headcolor = rgb(0, 0, 0)
	tastes = list("candy" = 1)
	foodtype = JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/lollipop/Initialize()
	. = ..()
	head = mutable_appearance('icons/obj/lollipop.dmi', "lollipop_head")
	change_head_color(rgb(rand(0, 255), rand(0, 255), rand(0, 255)))

/obj/item/reagent_containers/food/snacks/lollipop/proc/change_head_color(C)
	headcolor = C
	cut_overlay(head)
	head.color = C
	add_overlay(head)

/obj/item/reagent_containers/food/snacks/lollipop/throw_impact(atom/hit_atom, datum/thrownthing/throwingdatum)
	..(hit_atom)
	throw_speed = 1
	throwforce = 0

/obj/item/reagent_containers/food/snacks/lollipop/cyborg
	var/spamchecking = TRUE

/obj/item/reagent_containers/food/snacks/lollipop/cyborg/Initialize()
	. = ..()
	addtimer(CALLBACK(src, .proc/spamcheck), 1200)

/obj/item/reagent_containers/food/snacks/lollipop/cyborg/equipped(mob/living/user, slot)
	. = ..(user, slot)
	spamchecking = FALSE

/obj/item/reagent_containers/food/snacks/lollipop/cyborg/proc/spamcheck()
	if(spamchecking)
		qdel(src)

/obj/item/reagent_containers/food/snacks/gumball
	name = "gumball"
	desc = "A colorful, sugary gumball."
	icon = 'icons/obj/lollipop.dmi'
	icon_state = "gumball"
	list_reagents = list(/datum/reagent/consumable/sugar = 5, /datum/reagent/medicine/bicaridine = 2, /datum/reagent/medicine/kelotane = 2)	//Kek
	tastes = list("candy")
	foodtype = JUNKFOOD

/obj/item/reagent_containers/food/snacks/gumball/Initialize()
	. = ..()
	color = rgb(rand(0, 255), rand(0, 255), rand(0, 255))

/obj/item/reagent_containers/food/snacks/gumball/cyborg
	var/spamchecking = TRUE

/obj/item/reagent_containers/food/snacks/gumball/cyborg/Initialize()
	. = ..()
	addtimer(CALLBACK(src, .proc/spamcheck), 1200)

/obj/item/reagent_containers/food/snacks/gumball/cyborg/equipped(mob/living/user, slot)
	. = ..(user, slot)
	spamchecking = FALSE

/obj/item/reagent_containers/food/snacks/gumball/cyborg/proc/spamcheck()
	if(spamchecking)
		qdel(src)

/obj/item/reagent_containers/food/snacks/taco
	name = "taco"
	desc = "A traditional taco with meat, cheese and lettuce."
	icon_state = "taco"
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/nutriment/vitamin = 2)
	list_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 2)
	filling_color = "F0D830"
	tastes = list("taco" = 4, "meat" = 2, "cheese" = 2, "lettuce" = 1)
	foodtype = MEAT | DAIRY | GRAIN | VEGETABLES

/obj/item/reagent_containers/food/snacks/taco/plain
	desc = "A traditional taco with meat and cheese, minus the rabbit food."
	icon_state = "taco_plain"
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 2, /datum/reagent/consumable/nutriment/vitamin = 2)
	list_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/nutriment/vitamin = 1)
	tastes = list("taco" = 4, "meat" = 2, "cheese" = 2)
	foodtype = MEAT | DAIRY | GRAIN

/obj/item/reagent_containers/food/snacks/branrequests
	name = "Bran Requests cereal"
	desc = "A dry cereal that satiates your requests for bran. Tastes uniquely like raisins and salt."
	icon_state = "bran_requests"
	list_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/consumable/sodiumchloride = 5)
	bonus_reagents = list(/datum/reagent/consumable/sodiumchloride = 10)
	tastes = list("bran" = 4, "raisins" = 3, "salt" = 1)
	foodtype = GRAIN | FRUIT | BREAKFAST

/obj/item/reagent_containers/food/snacks/butter
	name = "stick of butter"
	desc = "A stick of delicious, golden, fatty goodness."
	icon_state = "butter"
	list_reagents = list(/datum/reagent/consumable/nutriment = 5)
	filling_color = "#FFD700"
	tastes = list("butter" = 1)
	foodtype = DAIRY

/obj/item/reagent_containers/food/snacks/onionrings
	name = "onion rings"
	desc = "Onion slices coated in batter."
	icon_state = "onionrings"
	list_reagents = list(/datum/reagent/consumable/nutriment = 3)
	filling_color = "#C0C9A0"
	gender = PLURAL
	tastes = list("batter" = 3, "onion" = 1)
	foodtype = VEGETABLES

/obj/item/reagent_containers/food/snacks/pineappleslice
	name = "pineapple slice"
	desc = "A sliced piece of juicy pineapple."
	icon_state = "pineapple_slice"
	filling_color = "#F6CB0B"
	tastes = list("pineapple" = 1)
	foodtype = FRUIT | PINEAPPLE

/obj/item/reagent_containers/food/snacks/tinychocolate
	name = "chocolate"
	desc = "A tiny and sweet chocolate."
	icon_state = "tiny_chocolate"
	list_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/sugar = 1, /datum/reagent/consumable/coco = 1)
	filling_color = "#A0522D"
	tastes = list("chocolate" = 1)
	foodtype = JUNKFOOD | SUGAR

/obj/item/reagent_containers/food/snacks/cannedpeaches
	name = "Canned Peaches"
	desc = "A nice can of ripe peaches swimming in their own juices, somehow left untouched."
	icon_state = "peachcan"
	grind_results = null
	juice_results = list(/datum/reagent/consumable/peachjuice = 20, /datum/reagent/consumable/sugar = 8, /datum/reagent/consumable/nutriment = 2)
	filling_color = "#ffdf26"
	w_class = WEIGHT_CLASS_NORMAL
	tastes = list("peaches" = 7, "tin" = 1)
	foodtype = FRUIT | SUGAR

/obj/item/reagent_containers/food/snacks/cannedpeaches/maint
	name = "Maintenance Peaches"
	desc = "A can of peaches, perhaps stashed here long ago to hide them from the wizards."
	icon_state = "peachcanmaint"
	tastes = list("peaches" = 1, "tin" = 7)

/obj/item/reagent_containers/food/snacks/dolphincereal
	name = "dolphin cereal"
	desc = "Finest dolphin skin flakes. This looks flippin' disgusting."
	icon = 'yogstation/icons/obj/food/food.dmi'
	icon_state = "dolphincereal"
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/nutriment/vitamin = 1)
	list_reagents = list(/datum/reagent/consumable/nutriment = 6, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("milk" = 1, "old cardboard" = 1)

/obj/item/reagent_containers/food/snacks/dolphinandchips
	name = "dolphin and chips"
	desc = "Dolphin and chips, wrapped in the finest newspaper from the clown's newscaster channel."
	icon = 'yogstation/icons/obj/food/food.dmi'
	icon_state = "dolphinandchips"
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/nutriment/vitamin = 1)
	list_reagents = list(/datum/reagent/consumable/nutriment = 6, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("dolphin meat" = 1, "fries" = 1)

/obj/item/reagent_containers/food/snacks/youmonster
	name = "full dolphin platter"
	desc = "A whole dolphin. Good luck eating this. (WARNING: do not consume any wafer thin mints after consumption)"
	icon = 'yogstation/icons/obj/food/food.dmi'
	icon_state = "youmonster"
	bonus_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/nutriment/vitamin = 1)
	list_reagents = list(/datum/reagent/consumable/nutriment = 100, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("dolphin meat" = 1, "regret" = 1)
