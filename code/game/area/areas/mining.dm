/**********************Mine areas**************************/

/area/mine
	icon_state = "mining"
	has_gravity = STANDARD_GRAVITY
	flora_allowed = TRUE

/area/mine/explored
	name = "Mine"
	icon_state = "explored"
	always_unpowered = TRUE
	requires_power = TRUE
	poweralm = FALSE
	power_environ = FALSE
	power_equip = FALSE
	power_light = FALSE
	outdoors = TRUE
	flags_1 = NONE
	ambientsounds = MINING
	flora_allowed = FALSE

/area/mine/unexplored
	name = "Mine"
	icon_state = "unexplored"
	always_unpowered = TRUE
	requires_power = TRUE
	poweralm = FALSE
	power_environ = FALSE
	power_equip = FALSE
	power_light = FALSE
	outdoors = TRUE
	flags_1 = NONE
	ambientsounds = MINING
	tunnel_allowed = TRUE

/area/mine/lobby
	name = "Mining Station"

/area/mine/infirmary
	name = "Mining Station Infirmary"
	icon_state = "mining_infirmary"

/area/mine/storage
	name = "Mining Station Storage"
	icon_state = "mining_storage"

/area/mine/production
	name = "Mining Station Starboard Wing"
	icon_state = "mining_production"

/area/mine/abandoned
	name = "Abandoned Mining Station"

/area/mine/living_quarters
	name = "Mining Station Living Quarters"
	icon_state = "mining_living"

/area/mine/break_room
	name = "Mining Station Break Room"
	icon_state = "mining_breakroom"

/area/mine/eva
	name = "Mining Station EVA"
	icon_state = "mining_eva"

/area/mine/eva_secondary
	name = "Mining Station Secondary EVA"
	icon_state = "mining_eva_secondary"

/area/mine/maintenance
	name = "Mining Station Communications"
	icon_state = "mining_engineering"

/area/mine/vacant
	name = "Mining Station Vacant Room"
	icon_state = "mining_vacant"

/area/mine/cafeteria
	name = "Mining Station Cafeteria"

/area/mine/hydroponics
	name = "Mining Station Hydroponics"

/area/mine/sleeper
	name = "Mining Station Emergency Sleeper"

/area/mine/laborcamp
	name = "Labor Camp"

/area/mine/laborcamp/security
	name = "Labor Camp Security"
	icon_state = "security"
	ambientsounds = HIGHSEC




/**********************Lavaland Areas**************************/

/area/lavaland
	icon_state = "mining"
	has_gravity = STANDARD_GRAVITY
	flags_1 = NONE
	flora_allowed = TRUE

/area/lavaland/surface
	name = "Lavaland"
	icon_state = "explored"
	always_unpowered = TRUE
	poweralm = FALSE
	power_environ = FALSE
	power_equip = FALSE
	power_light = FALSE
	requires_power = TRUE
	ambientsounds = MINING

/area/lavaland/underground
	name = "Lavaland Caves"
	icon_state = "unexplored"
	always_unpowered = TRUE
	requires_power = TRUE
	poweralm = FALSE
	power_environ = FALSE
	power_equip = FALSE
	power_light = FALSE
	ambientsounds = MINING


/area/lavaland/surface/outdoors
	name = "Lavaland Wastes"
	outdoors = TRUE

/area/lavaland/surface/outdoors/unexplored //monsters and ruins spawn here
	icon_state = "unexplored"
	tunnel_allowed = TRUE
	mob_spawn_allowed = TRUE

/area/lavaland/surface/outdoors/unexplored/danger //megafauna will also spawn here
	icon_state = "danger"
	megafauna_spawn_allowed = TRUE

/area/lavaland/surface/outdoors/explored
	name = "Lavaland Labor Camp"
	flora_allowed = FALSE



/**********************Ice Moon Areas**************************/

/area/icemoon
	icon_state = "mining"
	has_gravity = STANDARD_GRAVITY
	flags_1 = NONE
	flora_allowed = TRUE
	blob_allowed = FALSE

/area/icemoon/surface
	name = "Icemoon"
	icon_state = "explored"
	always_unpowered = TRUE
	poweralm = FALSE
	power_environ = FALSE
	power_equip = FALSE
	power_light = FALSE
	requires_power = TRUE
	ambientsounds = MINING

/area/icemoon/underground
	name = "Icemoon Caves"
	outdoors = TRUE
	always_unpowered = TRUE
	requires_power = TRUE
	poweralm = FALSE
	power_environ = FALSE
	power_equip = FALSE
	power_light = FALSE
	ambientsounds = MINING

/area/icemoon/underground/unexplored // mobs and megafauna and ruins spawn here
	name = "Icemoon Caves"
	icon_state = "unexplored"
	tunnel_allowed = TRUE
	mob_spawn_allowed = TRUE
	megafauna_spawn_allowed = TRUE

/area/icemoon/underground/explored
	name = "Icemoon Underground"
	flora_allowed = FALSE

/area/icemoon/surface/outdoors
	name = "Icemoon Wastes"
	outdoors = TRUE

/area/icemoon/surface/outdoors/unexplored //monsters and ruins spawn here
	icon_state = "unexplored"
	tunnel_allowed = TRUE
	mob_spawn_allowed = TRUE

/area/icemoon/surface/outdoors/unexplored/danger
	icon_state = "danger"

/area/icemoon/surface/outdoors/explored
	name = "Icemoon Labor Camp"
	flora_allowed = FALSE
