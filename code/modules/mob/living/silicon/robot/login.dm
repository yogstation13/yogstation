
/mob/living/silicon/robot/Login()
	if(!client?.MBAN_client_valid) return
	..()
	regenerate_icons()
	show_laws(0)
