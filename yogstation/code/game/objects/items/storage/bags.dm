/obj/item/storage/bag/trash
	component_type = /datum/component/storage/concrete/trashbag

/obj/item/storage/bag/trash/proc/snap(mob/user) // Handles whenever the trash bag breaks
	to_chat(user,"<span class='danger'>The trash bag rips! Oh no!</span>")
	emptyStorage()
	icon_state = "[initial(icon_state)]_broken"
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_items = 0

/obj/item/storage/bag/trash/bluespace/snap(mob/user)
	return // Bluespace don't crack, as the old saying goes
