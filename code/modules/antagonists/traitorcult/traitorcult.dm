/datum/antagonist/clockcult/agent
	name = "ClockCult Agent"
	antagpanel_category = "Cult Agent"
	make_team = FALSE
	agent = TRUE
	ignore_holy_water = TRUE
	var/datum/team/clock_agents/agent_team

/datum/antagonist/clockcult/agent/on_gain()
	SSticker.mode.clockagents += owner
	SSticker.mode.update_servant_icons_added(owner)
	owner.special_role = ROLE_CLOCK_AGENT
	agent_team = SSticker.mode.clock_agent_team //only one agent team can exist for each side
	if(!agent_team)
		agent_team = new
		SSticker.mode.clock_agent_team = agent_team
		agent_team.add_member(owner)
		agent_team.forge_clock_objectives()
		objectives += agent_team.objectives
	else
		agent_team.add_member(owner)
		objectives += agent_team.objectives
	..()

/datum/antagonist/clockcult/agent/greet()
	if(considered_alive(owner))
		to_chat(owner, "<span class='sevtug'>Here's the deal; Rats wants some stuff from this station and he's got me herding you idiots to get it. \
						We're running on fumes especially this far out so you'll be missing some scriptures, mainly the ones that make more cultists. Just finish our little shopping list and make a getaway. \
						There's some minds I can sense that seem to be stronger than the others, probably being manipulated by our enemy. I shouldn't have to say this more than once: Be. Careful.</span>")
	owner.current.playsound_local(get_turf(owner.current),'sound/effects/screech.ogg' , 100, FALSE, pressure_affected = FALSE)
	owner.announce_objectives()

/datum/antagonist/clockcult/agent/admin_add(datum/mind/new_owner, mob/admin)
	add_servant_of_ratvar(new_owner.current, TRUE, FALSE, TRUE)
	agent_team = SSticker.mode.clock_agent_team
	message_admins("[key_name_admin(admin)] has made [key_name_admin(new_owner)] into a Clockwork Agent.")
	log_admin("[key_name(admin)] has made [key_name(new_owner)] into a Clockwork Agent.")

/datum/antagonist/clockcult/agent/admin_remove(mob/user)
	remove_servant_of_ratvar(owner.current, TRUE)
	message_admins("[key_name_admin(user)] has removed clockwork agent status from [key_name_admin(owner)].")
	log_admin("[key_name(user)] has removed clockwork agent status from [key_name(owner)].")

/datum/antagonist/clockcult/agent/create_team(datum/team/clock_agents/new_team)
	if(!new_team)
		return
	if(!istype(new_team))
		stack_trace("Wrong team type passed to [type] initialization.")
	agent_team = new_team

/datum/team/clock_agents
	name = "Clockwork Agents"

/datum/team/clock_agents/proc/forge_clock_objectives()
	objectives = list()
	var/list/active_ais = active_ais()
	if(active_ais.len && prob(50))
		var/datum/objective/steal/AI = new
		AI.targetinfo = new /datum/objective_item/steal/functionalai
		add_objective(AI)
	else
		add_objective(new/datum/objective/soul_extraction)
	add_objective(new/datum/objective/escape/onesurvivor/clockagent)
	return

/datum/team/clock_agents/proc/add_objective(datum/objective/O)
	O.team = src
	O.update_explanation_text()
	objectives += O

/datum/objective/soul_extraction
	name = "soul extraction (clock antag required)"
	var/obj/item/mmi/posibrain/soul_vessel/agent/linked_vessel
	explanation_text = "<span class='nezbere'>tear out some fucker's brain hahaha</span>"

/datum/objective/soul_extraction/New()
	target = find_target_by_role(role = ROLE_CLOCK_AGENT, role_type = TRUE, invert = TRUE)
	update_explanation_text()

/datum/objective/soul_extraction/update_explanation_text()
	if(!target)
		explanation_text = "Free Objective"
	else
		explanation_text = "<span class='nezbere'>Extract the brain of [target], the [target.assigned_role] into a soul vessel. You'll need use a replica fabricator on a positronic brain to do this.</span>"

/datum/objective/soul_extraction/admin_edit(mob/admin)
	admin_simple_target_pick(admin)

/datum/objective/soul_extraction/check_completion()
	var/list/datum/mind/owners = get_owners()
	if(!target)
		return TRUE
	for(var/datum/mind/M in owners)
		if(!isliving(M.current))
			continue

		var/list/all_items = M.current.GetAllContents()	//this should get things in cheesewheels, books, etc.

		for(var/obj/item/mmi/posibrain/soul_vessel/agent/A in all_items) //Check for items
			if(A && A.brainmob?.mind == target)
				return TRUE
	return FALSE

/datum/objective/escape/onesurvivor/clockagent
	name = "escape clock agent"
	explanation_text = "<span class='inathneq'>Escape alive and out of custody.</span>"
	team_explanation_text = "<span class='inathneq'>Escape with your entire team intact and at least one member alive. Do not get captured.</span>"
