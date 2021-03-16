/obj/item/stack/sheet/hot_ice
	name = "hot ice"
	icon_state = "hot-ice"
	item_state = "hot-ice"
	singular_name = "hot ice piece"
	icon = 'icons/obj/stack_objects.dmi'
	materials = list(/datum/material/hot_ice=MINERAL_MATERIAL_AMOUNT)
	grind_results = list(/datum/reagent/toxin/hot_ice = 25)

/obj/item/stack/sheet/hot_ice/suicide_act(mob/living/carbon/user)
	user.visible_message("<span class='suicide'>[user] begins licking \the [src]! It looks like [user.p_theyre()] trying to commit suicide!</span>")
	return FIRELOSS//dont you kids know that stuff is toxic?
