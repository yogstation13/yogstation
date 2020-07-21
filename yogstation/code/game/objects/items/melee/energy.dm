/obj/item/melee/transforming/energy/sword/saber/attackby(obj/item/W, mob/living/user, params)
	if(istype(W, /obj/item/multitool))
		var/color = input(user, "Select a color!", "Esword color") as null|anything in list("red", "green", "blue", "purple", "rainbow")
		if(!color)
			return
		item_color = color

		if(active)
			icon_state = "sword[color]"
			user.update_inv_hands()
	else
		..()

/obj/item/melee/transforming/energy/sword/hit_reaction(mob/living/carbon/human/owner, atom/movable/hitby, attack_text = "the attack", damage = 0, attack_type = MELEE_ATTACK)
	if(active)
		var/turf/T = get_turf(src)
		for(var/obj/structure/table/X in T)
			if(X)
				owner.say(pick("IT'S OVER!!", "I HAVE THE HIGH GROUND!!")) //to do move this to where i can actually use it
				return ..()
		return ..()
	else
		return 0