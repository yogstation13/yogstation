//YOGS FUCK YEAH DOLPHINS
/mob/living/simple_animal/hostile/retaliate/dolphin
	name = "space dolphin"
	desc = "A dolphin in space."
	icon = 'yogstation/icons/mob/animal.dmi' // yogs -- separation of icons and state
	icon_state = "dolphin"
	icon_living = "dolphin"
	icon_dead = "dolphin_dead"
	icon_gib = "dolphin_gib"
	speak_chance = 0
	turns_per_move = 5
	butcher_results = list(/obj/item/reagent_containers/food/snacks/dolphinmeat = 2)
	response_help = "pets"
	response_disarm = "gently pushes aside"
	response_harm = "hits"
	emote_taunt = list("gnashes")
	taunt_chance = 30
	speed = 0
	maxHealth = 25
	health = 25
	a_intent = "harm"
	spacewalk = TRUE

	environment_smash = 0
	harm_intent_damage = 8
	melee_damage_lower = 15
	melee_damage_upper = 15
	pass_flags = PASSTABLE | PASSCOMPUTER //secretly a tactical dolphin buff.
	attacktext = "bites"
	attack_sound = 'sound/weapons/bite.ogg'
	speak_emote = list("chitters", "squeeks", "clicks")

	//Space dolphins aren't affected by cold.
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 0
	maxbodytemp = 1500

	faction = list("dolphin")//why do carps not attack dolphins again? //i dunno now they do

/mob/living/simple_animal/hostile/retaliate/dolphin/Process_Spacemove(movement_dir = 0)
	return TRUE	//No drifting in space for space dolphins!	//original comments do not steal //Too late.

/mob/living/simple_animal/hostile/retaliate/dolphin/AttackingTarget()
	..()
	if(ishuman(target))
		var/mob/living/carbon/human/H = target
		H.adjustStaminaLoss(8)

/mob/living/simple_animal/hostile/retaliate/dolphin/handle_automated_action()
	if(..())
		for(var/mob/living/simple_animal/hostile/carp/C in view(src, 10))
			if(C.stat != DEAD)
				enemies |= C

/mob/living/simple_animal/hostile/retaliate/dolphin/manatee
	name = "space manatee"
	desc = "This one looks quite menacing."
	icon_state = "manatee"
	icon_living = "manatee"
	icon_dead = "manatee_dead"
	icon_gib = "dolphin_gib"
	maxHealth = 50 //thicc
	health = 50

