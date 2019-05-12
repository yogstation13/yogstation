/obj/item/clothing/suit/space/hardsuit/engine
  jetpack = /obj/item/tank/jetpack/suit

/obj/item/clothing/suit/space/hardsuit/security
  jetpack = /obj/item/tank/jetpack/suit

//POWERARMORS
//Currently are no different from normal hardsuits, except maybe for the higher armor ratings.
/obj/item/clothing/head/helmet/space/hardsuit/powerarmor
	alternate_worn_icon = 'yogstation/icons/mob/head.dmi'
	icon = 'yogstation/icons/obj/clothing/hats.dmi'
/obj/item/clothing/suit/space/hardsuit/powerarmor
	alternate_worn_icon = 'yogstation/icons/mob/suit.dmi'
	icon = 'yogstation/icons/obj/clothing/suits.dmi'

/obj/item/clothing/head/helmet/space/hardsuit/powerarmor/t45b
	name = "Salvaged T-45b helmet"
	desc = "It's some barely-functional power armor helmet from a by-gone age."
	icon_state = "t45bhelmet"
	item_state = "t45bhelmet"
	armor = list("melee" = 50, "bullet" = 48, "laser" = 25, "energy" = 25, "bomb" = 48, "bio" = 100, "rad" = 50, "fire" = 50, "acid" = 25)
/obj/item/clothing/suit/space/hardsuit/powerarmor/t45b
	name = "Salvaged T-45b power armor"
	desc = "It's some barely-functional power armor, probably hundreds of years old."
	icon_state = "t45bpowerarmor"
	item_state = "t45bpowerarmor"
	armor = list("melee" = 50, "bullet" = 48, "laser" = 25, "energy" = 25, "bomb" = 48, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 25)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/powerarmor/t45b

/obj/item/clothing/head/helmet/space/hardsuit/powerarmor/advanced
	name = "Advanced power helmet"
	desc = "It's an advanced power armor Mk I helmet. It looks somewhat threatening."
	icon_state = "advhelmet1"
	item_state = "advhelmet1"
	armor = list("melee" = 50, "bullet" = 48, "laser" = 25, "energy" = 25, "bomb" = 48, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 25)
/obj/item/clothing/suit/space/hardsuit/powerarmor/advanced
	name = "Advanced power armor"
	desc = "An advanced suit of power armor. It looks pretty impressive and threatening."
	icon_state = "advpowerarmor1"
	item_state = "advpowerarmor1"
	armor = list("melee" = 50, "bullet" = 48, "laser" = 25, "energy" = 25, "bomb" = 48, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 25)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/powerarmor/advanced

obj/item/clothing/head/helmet/space/hardsuit/mining/freeminer
	name = "syndicate mining hardsuit helmet"
	desc = "A modified version of the Gorlex Maruader's advanced hardsuit. This one has had its dual-mode functionality removed in place for extra shielding against fauna, and its blood-red design stripped to avoid Nanotrasen targeting systems."
	alternate_worn_icon = 'yogstation/icons/mob/head.dmi'
	icon = 'yogstation/icons/obj/clothing/hats.dmi'
	icon_state = "hardsuit0-freeminer"
	item_state = "freeminer"
	item_color = "freeminer"
/obj/item/clothing/suit/space/hardsuit/mining/freeminer
	name = "syndicate mining hardsuit"
	desc = "A modified version of the Gorlex Maruader's advanced hardsuit. This one has had its dual-mode functionality removed in place for extra shielding against fauna, and its blood-red design stripped to avoid Nanotrasen targeting systems."
	alternate_worn_icon = 'yogstation/icons/mob/suit.dmi'
	icon = 'yogstation/icons/obj/clothing/suits.dmi'
	icon_state = "hardsuit-freeminer"
	item_state = "hardsuit-freeminer"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/mining/freeminer


