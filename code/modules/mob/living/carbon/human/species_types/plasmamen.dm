/datum/species/plasmaman
	name = "Plasmaman"
	id = "plasmaman"
	say_mod = "rattles"
	sexes = 0
	meat = /obj/item/stack/sheet/mineral/plasma
	species_traits = list(NOBLOOD,NOTRANSSTING)
	inherent_traits = list(TRAIT_RESISTCOLD,TRAIT_RADIMMUNE,TRAIT_NOHUNGER,TRAIT_CALCIUM_HEALER,TRAIT_ALWAYS_CLEAN)
	inherent_biotypes = list(MOB_INORGANIC, MOB_HUMANOID)
	mutantlungs = /obj/item/organ/lungs/plasmaman
	mutanttongue = /obj/item/organ/tongue/bone/plasmaman
	mutantliver = /obj/item/organ/liver/plasmaman
	mutantstomach = /obj/item/organ/stomach/plasmaman
	burnmod = 1.5
	heatmod = 1.5
	brutemod = 1.5
	breathid = "tox"
	damage_overlay_type = ""//let's not show bloody wounds or burns over bones.
	var/internal_fire = FALSE //If the bones themselves are burning clothes won't help you much
	disliked_food = FRUIT
	liked_food = VEGETABLES
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_PRIDE | MIRROR_MAGIC
	// Body temperature for Plasmen is much lower
	// they can handle colder environments
	// but they are hurt at hot temps faster as it is harder to hold their form
	// and they will regain temperature more slowly in some situations
	bodytemp_normal = (BODYTEMP_NORMAL - 40)
	bodytemp_autorecovery_min = 2
	bodytemp_heat_damage_limit = (BODYTEMP_HEAT_DAMAGE_LIMIT - 20) // about 40C
	// In the event they loss the cold resist trait
	// This also has an effect on how fast they stabilize body temp
	bodytemp_cold_damage_limit = (BODYTEMP_COLD_DAMAGE_LIMIT - 50) // about -50c

/datum/species/plasmaman/spec_life(mob/living/carbon/human/H)
	var/datum/gas_mixture/environment = H.loc.return_air()
	var/atmos_sealed = FALSE
	if (H.wear_suit && H.head && istype(H.wear_suit, /obj/item/clothing) && istype(H.head, /obj/item/clothing))
		var/obj/item/clothing/CS = H.wear_suit
		var/obj/item/clothing/CH = H.head
		if (CS.clothing_flags & CH.clothing_flags & STOPSPRESSUREDAMAGE)
			atmos_sealed = TRUE
	if((!istype(H.w_uniform, /obj/item/clothing/under/plasmaman) || !istype(H.head, /obj/item/clothing/head/helmet/space/plasmaman)) && !atmos_sealed)
		if(environment)
			if(environment.total_moles())
				if(environment.gases[/datum/gas/oxygen] && (environment.gases[/datum/gas/oxygen][MOLES]) >= 1) //Same threshhold that extinguishes fire
					H.adjust_fire_stacks(0.5)
					if(!H.on_fire && H.fire_stacks > 0)
						H.visible_message("<span class='danger'>[H]'s body reacts with the atmosphere and bursts into flames!</span>","<span class='userdanger'>Your body reacts with the atmosphere and bursts into flame!</span>")
					H.IgniteMob()
					internal_fire = TRUE
	else
		if(H.fire_stacks)
			var/obj/item/clothing/under/plasmaman/P = H.w_uniform
			if(istype(P))
				P.Extinguish(H)
				internal_fire = FALSE
		else
			internal_fire = FALSE
	H.update_fire()

/datum/species/plasmaman/handle_fire(mob/living/carbon/human/H, no_protection)
	if(internal_fire)
		no_protection = TRUE
	. = ..()

/datum/species/plasmaman/before_equip_job(datum/job/J, mob/living/carbon/human/H, visualsOnly = FALSE)
	var/current_job = J.title
	var/datum/outfit/plasmaman/O = new /datum/outfit/plasmaman
	switch(current_job)
		if("Bartender")
			O = new /datum/outfit/plasmaman/bartender

		if("Cook")
			O = new /datum/outfit/plasmaman/cook

		if("Botanist")
			O = new /datum/outfit/plasmaman/botanist

		if("Curator")
			O = new /datum/outfit/plasmaman/curator

		if("Chaplain")
			O = new /datum/outfit/plasmaman/chaplain

		if("Janitor")
			O = new /datum/outfit/plasmaman/janitor

		if("Security Officer")
			O = new /datum/outfit/plasmaman/security

		if("Detective")
			O = new /datum/outfit/plasmaman/detective

		if("Warden")
			O = new /datum/outfit/plasmaman/warden

		if("Cargo Technician")
			O = new /datum/outfit/plasmaman/cargo_tech

		if("Quartermaster")
			O = new /datum/outfit/plasmaman/quartermaster

		if("Shaft Miner")
			O = new /datum/outfit/plasmaman/miner

		if("Lawyer")
			O = new /datum/outfit/plasmaman/lawyer

		if("Medical Doctor")
			O = new /datum/outfit/plasmaman/doctor

		if("Virologist")
			O = new /datum/outfit/plasmaman/virologist

		if("Chemist")
			O = new /datum/outfit/plasmaman/chemist

		if("Geneticist")
			O = new /datum/outfit/plasmaman/geneticist

		if("Scientist")
			O = new /datum/outfit/plasmaman/scientist

		if("Roboticist")
			O = new /datum/outfit/plasmaman/roboticist

		if("Station Engineer")
			O = new /datum/outfit/plasmaman/engineer

		if("Atmospheric Technician")
			O = new /datum/outfit/plasmaman/atmos

		if("Mime")
			O = new /datum/outfit/plasmaman/mime

		if("Clown")
			O = new /datum/outfit/plasmaman/clown

	H.equipOutfit(O, visualsOnly)
	H.internal = H.get_item_for_held_index(2)
	H.update_internals_hud_icon(1)
	return 0

/datum/species/plasmaman/random_name(gender,unique,lastname)
	if(unique)
		return random_unique_plasmaman_name()

	var/randname = plasmaman_name()

	if(lastname)
		randname += " [lastname]"

	return randname
