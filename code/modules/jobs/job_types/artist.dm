/datum/job/artist
	title = "Artist"
	flag = ARTIST
	department_head = list("Head of Personnel")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#dddddd"

	outfit = /datum/outfit/job/artist

	access = list(ACCESS_LIBRARY)
	minimal_access = list(ACCESS_LIBRARY)
	paycheck = PAYCHECK_EASY
	paycheck_department = ACCOUNT_CIV

	display_order = JOB_DISPLAY_ORDER_ARTIST

/datum/outfit/job/artist
	name = "Artist"
	jobtype = /datum/job/artist

	belt = /obj/item/pda/artist
	ears = /obj/item/radio/headset/headset_srv
	uniform = /obj/item/clothing/under/rank/artist
	neck = /obj/item/clothing/neck/artist
	l_pocket = /obj/item/laser_pointer
	backpack_contents = list(
		/obj/item/stack/cable_coil/random/thirty = 1,
		/obj/item/toy/crayon/spraycan = 1,
		/obj/item/storage/crayons = 1,
		/obj/item/camera = 1
	)
