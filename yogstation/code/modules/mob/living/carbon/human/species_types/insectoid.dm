/datum/species/insectoid
	// A race of psionic aliens, sold as labour by their more powerful masters.
	name = "Insectoids"
	id = "insectoid"
	say_mod = "hums" //super alien right
	default_color = "FFFFDD"
	species_traits = list(NOGUNS,NO_UNDERWEAR, TRAIT_ALWAYS_CLEAN, DIGITIGRADE) // NOGUNS - 3 fingers, DIGI - BIPEDAL INSECTS, ALWAYS_CLEAN - no sweat glands
	inherent_biotypes = list(MOB_ORGANIC, MOB_HUMANOID)
	changesource_flags = MIRROR_BADMIN //donor only :smirk:
	attack_verb = "slash"
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'
	nojumpsuit = 1
	meat = ''
	exotic_bloodtype = "X" //Xeno
	liked_food = JUNKFOOD //they like chocolate / sugary foods
	deathsound = ''
	damage_overlay_type = ""
	no_equip = list(SLOT_WEAR_MASK, SLOT_WEAR_SUIT, SLOT_GLOVES, SLOT_SHOES, SLOT_W_UNIFORM, SLOT_S_STORE) // humie clothes are too alien for aliens