//Clerk
/obj/item/clothing/head/yogs/clerkcap
	name = "clerk's hat"
	desc = "It's a hat used by clerk's to help keep dust out of their eyes."
	icon_state = "clerkcap"
	item_state = "clerkcap"

//Mining Medic
/obj/item/clothing/head/soft/emt/mining
	name = "Mining Medic's cap"
	desc = "It's a baseball hat with a dark turquoise color and a reflective cross on the top."
	icon = 'yogstation/icons/obj/clothing/hats.dmi'
	alternate_worn_icon = 'yogstation/icons/mob/head.dmi'
	icon_state = "emtminesoft"
	item_color = "emtmine"

//Brig Physician
/obj/item/clothing/head/soft/emt/phys
	name = "Brig Physician's cap"
	desc = "It's a baseball hat with a dark brown color and a reflective cross on the top. On the back are "
	icon = 'yogstation/icons/obj/clothing/hats.dmi'
	alternate_worn_icon = 'yogstation/icons/mob/head.dmi'
	icon_state = "emtsecsoft"
	item_color = "emtsec"

/obj/item/clothing/head/beret/med/phys
	name = "Brig Physician's beret"
	desc = "A white beret with a red cross finely threaded into it. It has that sterile smell about it."
	icon_state = "beret_phys"

/obj/item/clothing/head/beret/corpsec/phys
	name = "corporate physician beret"
	desc = "A special black beret for the mundane life of a corporate brig physician."
	icon = 'yogstation/icons/obj/clothing/hats.dmi'
	alternate_worn_icon = 'yogstation/icons/mob/head.dmi'
	icon_state = "beret_corporate_phys"
	armor = list("bio" = 20) //So it isnt a direct upgrade over the normal berret
