/mob/living/brain/say(message, bubble_type, var/list/spans = list(), sanitize = TRUE, datum/language/language = null, ignore_spam = FALSE, forced = null)
	if(!istype(container, /obj/item/mmi) && !istype(loc, /obj/item/reagent_containers/food/snacks/egg))
		return //No MMI, and no EGG RP, can't speak, bucko./N
	else
		if(prob(emp_damage*4))
			if(prob(10))//10% chane to drop the message entirely
				return
			else
				message = Gibberish(message, (emp_damage*6))//scrambles the message, gets worse when emp_damage is higher

		..()

/mob/living/brain/radio(message, list/message_mods = list(), list/spans, language)
	if(message_mods[MODE_HEADSET] && istype(container, /obj/item/mmi))
		var/obj/item/mmi/R = container
		if(R.radio)
			R.radio.talk_into(src, message, language = language, message_mods = message_mods)
			return ITALICS | REDUCE_RANGE
	else
		return ..()

/mob/living/brain/lingcheck()
	return LINGHIVE_NONE

/mob/living/brain/treat_message(message)
	message = capitalize(message)
	return message

/mob/living/brain/could_speak_language(datum/language/dt)
	if(istype(container, /obj/item/mmi/posibrain/soul_vessel))
		// soul vessels can only speak ratvarian.
		. = ispath(dt, /datum/language/ratvar)
	else
		. = ..()
