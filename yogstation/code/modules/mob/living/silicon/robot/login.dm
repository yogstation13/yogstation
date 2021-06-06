/mob/living/silicon/robot/Login()
	if(!client?.MBAN_client_valid) return
	..()
	if(mind)
		remove_thrall()
		remove_sling()
		remove_vampire()
