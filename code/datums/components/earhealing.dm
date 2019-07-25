// An item worn in the ear slot with this component will heal your ears each
// Life() tick, even if normally your ears would be too damaged to heal.

/datum/component/earhealing
	var/mob/living/carbon/wearer

/datum/component/earhealing/Initialize()
	if(!isitem(parent))
		return COMPONENT_INCOMPATIBLE
	RegisterSignal(parent, list(COMSIG_ITEM_EQUIPPED, COMSIG_ITEM_DROPPED), .proc/equippedChanged)

/datum/component/earhealing/proc/equippedChanged(datum/source, mob/living/carbon/user, slot)
	if (slot == SLOT_EARS && istype(user))
		if (!wearer)
			START_PROCESSING(SSobj, src)
		wearer = user
	else
		if (wearer)
			STOP_PROCESSING(SSobj, src)
		wearer = null

/datum/component/earhealing/process()
	if (!wearer)
		STOP_PROCESSING(SSobj, src)
		return
	if(!HAS_TRAIT(wearer, TRAIT_DEAF))
		var/obj/item/organ/ears/ears = wearer.getorganslot(ORGAN_SLOT_EARS)
		if (ears)
			var/minDmg = 0
			if(ears.damage < ears.maxHealth)
				minDmg = 1
			ears.deaf = max(ears.deaf - 1, minDmg) // Do not completly undeaf until we are healed
			ears.damage = max(ears.damage - 0.1, 0)
