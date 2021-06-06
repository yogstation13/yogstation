/mob/living/carbon/alien/Login()
	if(!client?.MBAN_client_valid) return
	..()
	AddInfectionImages()
	return
