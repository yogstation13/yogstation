/datum/round_event_control/grey_tide
	name = "Grey Tide"
	typepath = /datum/round_event/grey_tide
	max_occurrences = 2
	min_players = 5

/datum/round_event/grey_tide
	announceWhen = 50
	endWhen = 20
	var/list/area/areasToOpen = list()
	var/list/potential_areas = list(/area/bridge,
									/area/engine,
									/area/medical,
									/area/security,
									/area/quartermaster,
									/area/science)
	var/severity = 1


/datum/round_event/grey_tide/setup()
	announceWhen = rand(50, 60)
	endWhen = rand(20, 30)
	severity = rand(1,3)
	for(var/i in 1 to severity)
		var/picked_area = pick_n_take(potential_areas)
		for(var/area/A in world)
			if(istype(A, picked_area))
				areasToOpen += A


/datum/round_event/grey_tide/announce(fake)
	if(areasToOpen && areasToOpen.len > 0)
		priority_announce("Gr3y.T1d3 virus detected in [station_name()] door subroutines. Severity level of [severity]. Recommend station AI involvement.", "Security Alert")
	else
		log_world("ERROR: Could not initiate grey-tide. No areas in the list!")
		kill()


/datum/round_event/grey_tide/start()
	for(var/area/A in areasToOpen)
		for(var/obj/machinery/light/L in A)
			L.flicker(10)

/datum/round_event/grey_tide/end()
	var/keycard_auths_found = 0
	for(var/area/A in areasToOpen)
		for(var/obj/O in A)
			if(istype(O, /obj/structure/closet/secure_closet))
				var/obj/structure/closet/secure_closet/temp = O
				temp.locked = FALSE
				temp.update_icon()
			else if(istype(O, /obj/machinery/door/airlock))
				var/obj/machinery/door/airlock/temp = O
				if(temp.critical_machine) //Skip doors in critical positions, such as the SM chamber.
					continue
				temp.prison_open()
			else if(istype(O, /obj/machinery/door_timer))
				var/obj/machinery/door_timer/temp = O
				temp.timer_end(forced = TRUE)

			else if(istype(O, /obj/machinery/camera))
				var/obj/machinery/camera/temp = O
				// 75% chance we just leave it be, to not kill the AI/CE's joy *too much*
				if(prob(75))
					continue
				var/option = pick(list(1, 2, 3, 4))
				switch(option)
					// As if a multitool was used on it
					if(1)
						temp.setViewRange((view_range == initial(view_range)) ? short_range : initial(view_range))

					// As if EMPed
					if(2)
						temp.emp_act(2)
					
					// EMP-proof it, but with a 50/50 chance we don't tell them
					if(3)
						var/secret = prob(50)
						temp.upgradeEmpProof(secret)

					// Give it a proximity alarm, can be either a boon or a curse depending on which camera gets it.
					// Either way, the CE/Engineers can always just take the camera down and replace it.
					if(4)
						temp.upgradeMotion()
			
			// If we hit 2 keycard auths we'll open maint unless it's already open
			// If we opened maint, we'll red alert at 4 keycard auths
			else if(istype(O, /obj/machinery/keycard_auth))
				var/obj/machinery/keycard_auth/temp = O
				keycard_auths_found++
				// Simulate the confirmation requirement
				if(!(keycard_auths_found % 2) || keycard_auths_found > 4)
					continue
				if(!GLOB.emergency_access)
					make_maint_all_access()
				else if(GLOB.security_level != SEC_LEVEL_DELTA)
					set_security_level(SEC_LEVEL_RED)




				

