/* Diffrent misc types of sheets
 * Contains:
 * Iron
 * Plasteel
 * Wood
 * Cloth
 * Plastic
 * Cardboard
 * Paper Frames
 * Runed Metal (cult)
 * Bronze (bake brass)
 */

/*
 * Iron
 */
GLOBAL_LIST_INIT(metal_recipes, list ( \
	new/datum/stack_recipe("stool", /obj/structure/chair/stool, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
	new/datum/stack_recipe("bar stool", /obj/structure/chair/stool/bar, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
	new/datum/stack_recipe("bed", /obj/structure/bed, 2, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
	new/datum/stack_recipe("double bed", /obj/structure/bed/double, 4, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
	null, \
	new/datum/stack_recipe_list("office chairs", list( \
		new/datum/stack_recipe("dark office chair", /obj/structure/chair/office, 5, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
		new/datum/stack_recipe("light office chair", /obj/structure/chair/office/light, 5, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
		)), \
	new/datum/stack_recipe_list("comfy chairs", list( \
		new/datum/stack_recipe("beige comfy chair", /obj/structure/chair/comfy/beige, 2, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
		new/datum/stack_recipe("black comfy chair", /obj/structure/chair/comfy/black, 2, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
		new/datum/stack_recipe("brown comfy chair", /obj/structure/chair/comfy/brown, 2, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
		new/datum/stack_recipe("lime comfy chair", /obj/structure/chair/comfy/lime, 2, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
		new/datum/stack_recipe("teal comfy chair", /obj/structure/chair/comfy/teal, 2, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
		)), \
	new/datum/stack_recipe_list("sofas", list(
		new /datum/stack_recipe("sofa (middle)", /obj/structure/chair/sofa/middle, 1, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE),
		new /datum/stack_recipe("sofa (left)", /obj/structure/chair/sofa/left, 1, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE),
		new /datum/stack_recipe("sofa (right)", /obj/structure/chair/sofa/right, 1, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE),
		new /datum/stack_recipe("sofa (corner)", /obj/structure/chair/sofa/corner, 1, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE)
		)), \
	new/datum/stack_recipe_list("corporate sofas", list( \
		new /datum/stack_recipe("sofa (middle)", /obj/structure/chair/sofa/corp, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
		new /datum/stack_recipe("sofa (left)", /obj/structure/chair/sofa/corp/left, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
		new /datum/stack_recipe("sofa (right)", /obj/structure/chair/sofa/corp/right, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
		new /datum/stack_recipe("sofa (corner)", /obj/structure/chair/sofa/corp/corner, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
		)), \
	new /datum/stack_recipe_list("benches", list( \
		new /datum/stack_recipe("bench (middle)", /obj/structure/chair/sofa/bench, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
		new /datum/stack_recipe("bench (left)", /obj/structure/chair/sofa/bench/left, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
		new /datum/stack_recipe("bench (right)", /obj/structure/chair/sofa/bench/right, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
		new /datum/stack_recipe("bench (corner)", /obj/structure/chair/sofa/bench/corner, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
		)), \
	new /datum/stack_recipe_list("chess pieces", list( \
		new /datum/stack_recipe("White Pawn", /obj/structure/chess/whitepawn, 2, time = 1 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_ENTERTAINMENT), \
		new /datum/stack_recipe("White Rook", /obj/structure/chess/whiterook, 2, time = 1 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_ENTERTAINMENT), \
		new /datum/stack_recipe("White Knight", /obj/structure/chess/whiteknight, 2, time = 1 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_ENTERTAINMENT), \
		new /datum/stack_recipe("White Bishop", /obj/structure/chess/whitebishop, 2, time = 1 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_ENTERTAINMENT), \
		new /datum/stack_recipe("White Queen", /obj/structure/chess/whitequeen, 2, time = 1 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_ENTERTAINMENT), \
		new /datum/stack_recipe("White King", /obj/structure/chess/whiteking, 2, time = 1 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_ENTERTAINMENT), \
		new /datum/stack_recipe("Black Pawn", /obj/structure/chess/blackpawn, 2, time = 1 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_ENTERTAINMENT), \
		new /datum/stack_recipe("Black Rook", /obj/structure/chess/blackrook, 2, time = 1 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_ENTERTAINMENT), \
		new /datum/stack_recipe("Black Knight", /obj/structure/chess/blackknight, 2, time = 1 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_ENTERTAINMENT), \
		new /datum/stack_recipe("Black Bishop", /obj/structure/chess/blackbishop, 2, time = 1 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_ENTERTAINMENT), \
		new /datum/stack_recipe("Black Queen", /obj/structure/chess/blackqueen, 2, time = 1 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_ENTERTAINMENT), \
		new /datum/stack_recipe("Black King", /obj/structure/chess/blackking, 2, time = 1 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_ENTERTAINMENT), \
	)),
	new /datum/stack_recipe_list("checkers pieces", list( \
		new /datum/stack_recipe("White Checker Man", /obj/structure/chess/checker/whiteman, 2, time = 1 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_ENTERTAINMENT), \
		new /datum/stack_recipe("White Checker King", /obj/structure/chess/checker/whiteking, 2, time = 1 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_ENTERTAINMENT), \
		new /datum/stack_recipe("Black Checker Man", /obj/structure/chess/checker/blackman, 2, time = 1 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_ENTERTAINMENT), \
		new /datum/stack_recipe("Black Checker King", /obj/structure/chess/checker/blackking, 2, time = 1 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_ENTERTAINMENT), \
	)),
	null, \
	new/datum/stack_recipe("rack parts", /obj/item/rack_parts, category = CAT_FURNITURE), \
	new/datum/stack_recipe("cargo shelf parts", /obj/item/rack_parts/cargo_shelf, 4, category = CAT_FURNITURE), \
	new/datum/stack_recipe("closet", /obj/structure/closet, 2, time = 1.5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
	null, \
	new/datum/stack_recipe("pipe", /obj/item/pipe/quaternary/pipe/crafted, 1, time = 4 SECONDS, check_density = FALSE, category = CAT_ATMOSPHERIC), \
	null, \
	new/datum/stack_recipe("unfinished canister frame", /obj/structure/canister_frame/machine/unfinished_canister_frame, 5, time = 0.8 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_ATMOSPHERIC), \
	null, \
	new/datum/stack_recipe("floor tile", /obj/item/stack/tile/iron/base, 1, 4, 20, category = CAT_TILES), \
	new/datum/stack_recipe("iron rod", /obj/item/stack/rods, 1, 2, 60, category = CAT_MISC), \
	null, \
	new/datum/stack_recipe("wall girders (anchored)", /obj/structure/girder, 2, time = 4 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, trait_booster = TRAIT_QUICK_BUILD, trait_modifier = 0.75, category = CAT_STRUCTURE), \
	null, \
	new/datum/stack_recipe("tram wall girders (anchored)", /obj/structure/girder/tram, 2, time = 4 SECONDS, one_per_turf = TRUE, on_solid_ground = FALSE, check_density = FALSE, on_tram = TRUE, trait_booster = TRAIT_QUICK_BUILD, trait_modifier = 0.75, category = CAT_STRUCTURE), \
	null, \
	new/datum/stack_recipe("computer frame", /obj/structure/frame/computer, 5, time = 2.5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_EQUIPMENT), \
	new/datum/stack_recipe("modular console", /obj/machinery/modular_computer, 10, time = 2.5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_EQUIPMENT), \
	new/datum/stack_recipe("machine frame", /obj/structure/frame/machine, 5, time = 2.5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_EQUIPMENT), \
	null, \
	new /datum/stack_recipe_list("airlock assemblies", list( \
		new /datum/stack_recipe("standard airlock assembly", /obj/structure/door_assembly, 4, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_DOORS), \
		new /datum/stack_recipe("public airlock assembly", /obj/structure/door_assembly/door_assembly_public, 4, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_DOORS), \
		new /datum/stack_recipe("command airlock assembly", /obj/structure/door_assembly/door_assembly_com, 4, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_DOORS), \
		new /datum/stack_recipe("security airlock assembly", /obj/structure/door_assembly/door_assembly_sec, 4, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_DOORS), \
		new /datum/stack_recipe("engineering airlock assembly", /obj/structure/door_assembly/door_assembly_eng, 4, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_DOORS), \
		new /datum/stack_recipe("mining airlock assembly", /obj/structure/door_assembly/door_assembly_min, 4, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_DOORS), \
		new /datum/stack_recipe("atmospherics airlock assembly", /obj/structure/door_assembly/door_assembly_atmo, 4, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_DOORS), \
		new /datum/stack_recipe("research airlock assembly", /obj/structure/door_assembly/door_assembly_research, 4, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_DOORS), \
		new /datum/stack_recipe("freezer airlock assembly", /obj/structure/door_assembly/door_assembly_fre, 4, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_DOORS), \
		new /datum/stack_recipe("science airlock assembly", /obj/structure/door_assembly/door_assembly_science, 4, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_DOORS), \
		new /datum/stack_recipe("medical airlock assembly", /obj/structure/door_assembly/door_assembly_med, 4, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_DOORS), \
		new /datum/stack_recipe("hydroponics airlock assembly", /obj/structure/door_assembly/door_assembly_hydro, 4, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_DOORS), \
		new /datum/stack_recipe("virology airlock assembly", /obj/structure/door_assembly/door_assembly_viro, 4, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_DOORS), \
		new /datum/stack_recipe("maintenance airlock assembly", /obj/structure/door_assembly/door_assembly_mai, 4, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_DOORS), \
		new /datum/stack_recipe("external airlock assembly", /obj/structure/door_assembly/door_assembly_ext, 4, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_DOORS), \
		new /datum/stack_recipe("external maintenance airlock assembly", /obj/structure/door_assembly/door_assembly_extmai, 4, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_DOORS), \
		new /datum/stack_recipe("airtight hatch assembly", /obj/structure/door_assembly/door_assembly_hatch, 4, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_DOORS), \
		new /datum/stack_recipe("maintenance hatch assembly", /obj/structure/door_assembly/door_assembly_mhatch, 4, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_DOORS), \
	)), \
	null, \
	new/datum/stack_recipe("firelock frame", /obj/structure/firelock_frame, 3, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_DOORS), \
	new/datum/stack_recipe("turret frame", /obj/machinery/porta_turret_construct, 5, time = 2.5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_EQUIPMENT), \
	new/datum/stack_recipe("meatspike frame", /obj/structure/kitchenspike_frame, 5, time = 2.5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_EQUIPMENT), \
	new/datum/stack_recipe("reflector frame", /obj/structure/reflector, 5, time = 2.5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_EQUIPMENT), \
	null, \
	new/datum/stack_recipe("grenade casing", /obj/item/grenade/chem_grenade, check_density = FALSE, category = CAT_CHEMISTRY), \
	new/datum/stack_recipe("light fixture frame", /obj/item/wallframe/light_fixture, 2, check_density = FALSE, category = CAT_EQUIPMENT), \
	new/datum/stack_recipe("small light fixture frame", /obj/item/wallframe/light_fixture/small, 1, check_density = FALSE, category = CAT_EQUIPMENT), \
	new/datum/stack_recipe("floor light fixture", /obj/machinery/light/floor, 2, one_per_turf = TRUE, on_solid_ground = TRUE), \
	null, \
	new/datum/stack_recipe("apc frame", /obj/item/wallframe/apc, 2, check_density = FALSE, category = CAT_EQUIPMENT), \
	new/datum/stack_recipe("air alarm frame", /obj/item/wallframe/airalarm, 2, check_density = FALSE, category = CAT_EQUIPMENT), \
	new/datum/stack_recipe("fire alarm frame", /obj/item/wallframe/firealarm, 2, check_density = FALSE, category = CAT_EQUIPMENT), \
	new/datum/stack_recipe("extinguisher cabinet frame", /obj/item/wallframe/extinguisher_cabinet, 2, check_density = FALSE, category = CAT_EQUIPMENT), \
	new/datum/stack_recipe("button frame", /obj/item/wallframe/button, 1, check_density = FALSE, category = CAT_EQUIPMENT), \
	new/datum/stack_recipe("slime pen management frame", /obj/item/wallframe/slime_pen_controller, 1, check_density = FALSE, category = CAT_EQUIPMENT), \
	null, \
	new/datum/stack_recipe("iron door", /obj/structure/mineral_door/iron, 20, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, applies_mats = TRUE, category = CAT_DOORS), \
	new/datum/stack_recipe("filing cabinet", /obj/structure/filingcabinet, 2, time = 10 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
	new/datum/stack_recipe("desk bell", /obj/structure/desk_bell, 2, time = 3 SECONDS, check_density = FALSE, category = CAT_FURNITURE), \
	new/datum/stack_recipe("floodlight frame", /obj/structure/floodlight_frame, 5, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_EQUIPMENT), \
	new/datum/stack_recipe("voting box", /obj/structure/votebox, 15, time = 5 SECONDS, check_density = FALSE, category = CAT_ENTERTAINMENT), \
	new/datum/stack_recipe("pestle", /obj/item/pestle, 1, time = 5 SECONDS, check_density = FALSE, category = CAT_CHEMISTRY), \
	new/datum/stack_recipe("hygienebot assembly", /obj/item/bot_assembly/hygienebot, 2, time = 5 SECONDS, check_density = FALSE, category = CAT_ROBOT), \
	new/datum/stack_recipe("shower frame", /obj/structure/showerframe, 2, time = 2 SECONDS, check_density = FALSE, category = CAT_FURNITURE), \
	new/datum/stack_recipe("urinal", /obj/item/wallframe/urinal, 2, time = 1 SECONDS, check_density = FALSE, category = CAT_FURNITURE), \
	new/datum/stack_recipe("window sill", /obj/structure/window_sill, 1, time = 2 SECONDS, check_density = TRUE, category = CAT_FURNITURE), \

	new/datum/stack_recipe("remote chemical tank", /obj/structure/chemical_tank, 10, time = 2 SECONDS, check_density = TRUE, category = CAT_FURNITURE), \
	new/datum/stack_recipe("remote injector",/obj/structure/chemical_tank/injector, 10, time = 2 SECONDS, check_density = TRUE, category = CAT_FURNITURE), \
	new/datum/stack_recipe("remote patcher",/obj/structure/chemical_tank/patcher, 10, time = 2 SECONDS, check_density = TRUE, category = CAT_FURNITURE), \
	new/datum/stack_recipe("remote factory output", /obj/structure/chemical_tank/factory, 10, time = 2 SECONDS, check_density = TRUE, category = CAT_FURNITURE), \
	new/datum/stack_recipe("remote chemical input tank", /obj/structure/chemical_input, 10, time = 2 SECONDS, check_density = TRUE, category = CAT_FURNITURE), \
	new/datum/stack_recipe("remote chemical grinder", /obj/structure/chemical_input/grinder, 10, time = 2 SECONDS, check_density = TRUE, category = CAT_FURNITURE), \
	new/datum/stack_recipe("remote chemical fermenter", /obj/structure/chemical_input/fermenter, 10, time = 2 SECONDS, check_density = TRUE, category = CAT_FURNITURE), \
	new/datum/stack_recipe("remote geyser pump", /obj/structure/chemical_input/liquid_pump, 10, time = 2 SECONDS, check_density = TRUE, category = CAT_FURNITURE)
))

/obj/item/stack/sheet/iron
	name = "iron"
	desc = "Sheets made out of iron."
	singular_name = "iron sheet"
	icon_state = "sheet-metal"
	inhand_icon_state = "sheet-metal"
	mats_per_unit = list(/datum/material/iron=SHEET_MATERIAL_AMOUNT)
	throwforce = 10
	flags_1 = CONDUCT_1
	resistance_flags = FIRE_PROOF
	merge_type = /obj/item/stack/sheet/iron
	grind_results = list(/datum/reagent/iron = 20)
	point_value = 2
	tableVariant = /obj/structure/table
	material_type = /datum/material/iron
	matter_amount = 4
	cost = 500
	source = /datum/robot_energy_storage/iron
	stairs_type = /obj/structure/stairs

/obj/item/stack/sheet/iron/Initialize(mapload)
	. = ..()
	var/static/list/tool_behaviors = list(
		TOOL_WELDER = list(
			SCREENTIP_CONTEXT_LMB = "Craft iron rods",
			SCREENTIP_CONTEXT_RMB = "Craft floor tiles",
		),
	)
	AddElement(/datum/element/contextual_screentip_tools, tool_behaviors)

/obj/item/stack/sheet/iron/examine(mob/user)
	. = ..()
	. += span_notice("You can build a wall girder (unanchored) by right clicking on an empty floor.")

/obj/item/stack/sheet/iron/narsie_act()
	new /obj/item/stack/sheet/runed_metal(loc, amount)
	qdel(src)

/obj/item/stack/sheet/iron/fifty
	amount = 50

/obj/item/stack/sheet/iron/twenty
	amount = 20

/obj/item/stack/sheet/iron/ten
	amount = 10

/obj/item/stack/sheet/iron/five
	amount = 5

/obj/item/stack/sheet/iron/get_main_recipes()
	. = ..()
	. += GLOB.metal_recipes

/obj/item/stack/sheet/iron/suicide_act(mob/living/carbon/user)
	user.visible_message(span_suicide("[user] begins whacking [user.p_them()]self over the head with \the [src]! It looks like [user.p_theyre()] trying to commit suicide!"))
	return BRUTELOSS

/obj/item/stack/sheet/iron/welder_act(mob/living/user, obj/item/tool)
	if(get_amount() < 1)
		return
	if(tool.use_tool(src, user, delay = 0, volume = 40))
		var/obj/item/stack/rods/two/new_item = new(user.loc)
		user.visible_message(
			span_notice("[user.name] shaped [src] into floor rods with [tool]."),
			blind_message = span_hear("You hear welding."),
			vision_distance = COMBAT_MESSAGE_RANGE,
			ignored_mobs = user
		)
		use(1)
		user.put_in_inactive_hand(new_item)
		return TOOL_ACT_TOOLTYPE_SUCCESS

/obj/item/stack/sheet/iron/welder_act_secondary(mob/living/user, obj/item/tool)
	if(get_amount() < 1)
		return
	if(tool.use_tool(src, user, delay = 0, volume = 40))
		var/obj/item/stack/tile/iron/four/new_item = new(user.loc)
		user.visible_message(
			span_notice("[user.name] shaped [src] into floor tiles with [tool]."),
			blind_message = span_hear("You hear welding."),
			vision_distance = COMBAT_MESSAGE_RANGE,
			ignored_mobs = user
		)
		use(1)
		user.put_in_inactive_hand(new_item)
		return TOOL_ACT_TOOLTYPE_SUCCESS

/obj/item/stack/sheet/iron/afterattack_secondary(atom/target, mob/user, proximity_flag, click_parameters)
	if(isopenturf(target))
		var/turf/open/build_on = target
		if(!user.Adjacent(build_on))
			return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN
		if(isgroundlessturf(build_on))
			user.balloon_alert(user, "can't place it here!")
			return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN
		if(build_on.is_blocked_turf())
			user.balloon_alert(user, "something is blocking the tile!")
			return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN
		if(get_amount() < 2)
			user.balloon_alert(user, "not enough material!")
			return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN
		if(!do_after(user, 4 SECONDS, build_on))
			return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN
		if(build_on.is_blocked_turf())
			user.balloon_alert(user, "something is blocking the tile!")
			return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN
		if(!use(2))
			user.balloon_alert(user, "not enough material!")
			return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN
		new/obj/structure/girder/displaced(build_on)
		return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN
	return SECONDARY_ATTACK_CONTINUE_CHAIN

/*
 * Plasteel
 */
GLOBAL_LIST_INIT(plasteel_recipes, list ( \
	new/datum/stack_recipe("AI core", /obj/structure/ai_core, 4, time = 5 SECONDS, one_per_turf = TRUE, check_density = FALSE, category = CAT_ROBOT),
	new/datum/stack_recipe("bomb assembly", /obj/machinery/syndicatebomb/empty, 10, time = 5 SECONDS, check_density = FALSE, category = CAT_CHEMISTRY),
	new/datum/stack_recipe("Large Gas Tank", /obj/structure/tank_frame, 4, time=1 SECONDS, one_per_turf=TRUE, check_density = FALSE, category = CAT_ATMOSPHERIC),
	null,
	new /datum/stack_recipe_list("airlock assemblies", list( \
		new/datum/stack_recipe("high security airlock assembly", /obj/structure/door_assembly/door_assembly_highsecurity, 4, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_DOORS),
		new/datum/stack_recipe("vault door assembly", /obj/structure/door_assembly/door_assembly_vault, 6, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_DOORS),
	)), \
))

/obj/item/stack/sheet/plasteel
	name = "plasteel"
	singular_name = "plasteel sheet"
	desc = "This sheet is an alloy of iron and plasma."
	icon_state = "sheet-plasteel"
	inhand_icon_state = "sheet-plasteel"
	mats_per_unit = list(/datum/material/alloy/plasteel=SHEET_MATERIAL_AMOUNT)
	material_type = /datum/material/alloy/plasteel
	throwforce = 10
	flags_1 = CONDUCT_1
	armor_type = /datum/armor/sheet_plasteel
	resistance_flags = FIRE_PROOF
	merge_type = /obj/item/stack/sheet/plasteel
	grind_results = list(/datum/reagent/iron = 20, /datum/reagent/toxin/plasma = 20)
	point_value = 23
	tableVariant = /obj/structure/table/reinforced
	material_flags = NONE
	matter_amount = 12

/datum/armor/sheet_plasteel
	fire = 100
	acid = 80

/obj/item/stack/sheet/plasteel/get_main_recipes()
	. = ..()
	. += GLOB.plasteel_recipes

/obj/item/stack/sheet/plasteel/twenty
	amount = 20

/obj/item/stack/sheet/plasteel/fifty
	amount = 50

/*
 * Wood
 */
GLOBAL_LIST_INIT(wood_recipes, list ( \
	new/datum/stack_recipe("wooden sandals", /obj/item/clothing/shoes/sandal, 1, check_density = FALSE, category = CAT_CLOTHING), \
	new/datum/stack_recipe("wood floor tile", /obj/item/stack/tile/wood, 1, 4, 20, check_density = FALSE, category = CAT_TILES), \
	new/datum/stack_recipe("wood table frame", /obj/structure/table_frame/wood, 2, time = 1 SECONDS, check_density = FALSE, category = CAT_FURNITURE), \
	new/datum/stack_recipe("rolling pin", /obj/item/kitchen/rollingpin, 2, time = 3 SECONDS, check_density = FALSE, category = CAT_TOOLS), \
	new/datum/stack_recipe("wooden chair", /obj/structure/chair/wood/, 3, time = 1 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
	new/datum/stack_recipe("winged wooden chair", /obj/structure/chair/wood/wings, 3, time = 1 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
	new/datum/stack_recipe("wooden barricade", /obj/structure/barricade/wooden, 5, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_STRUCTURE), \
	new/datum/stack_recipe("wooden door", /obj/structure/mineral_door/wood, 10, time = 2 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_DOORS), \
	new/datum/stack_recipe("wooden stairs frame", /obj/structure/stairs_frame/wood, 10, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_STRUCTURE), \
	new/datum/stack_recipe("wooden fence", /obj/structure/railing/wooden_fence, 2, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_STRUCTURE), \
	new/datum/stack_recipe("coffin", /obj/structure/closet/crate/coffin, 5, time = 1.5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
	new/datum/stack_recipe("book case", /obj/structure/bookcase, 4, time = 1.5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
	new/datum/stack_recipe("drying rack", /obj/machinery/smartfridge/drying_rack, 10, time = 1.5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_TOOLS), \
	new/datum/stack_recipe("wooden barrel", /obj/structure/fermenting_barrel, 8, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_CONTAINERS), \
	new/datum/stack_recipe("fermenting keg", /obj/structure/fermentation_keg, 8, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_CONTAINERS), \
	new/datum/stack_recipe("dog bed", /obj/structure/bed/dogbed, 10, time = 1 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
	new/datum/stack_recipe("dresser", /obj/structure/dresser, 10, time = 1.5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
	new/datum/stack_recipe("picture frame", /obj/item/wallframe/picture, 1, time = 1 SECONDS, check_density = FALSE, category = CAT_ENTERTAINMENT),\
	new/datum/stack_recipe("painting frame", /obj/item/wallframe/painting, 1, time = 1 SECONDS, check_density = FALSE, category = CAT_ENTERTAINMENT),\
	new/datum/stack_recipe("display case chassis", /obj/structure/displaycase_chassis, 5, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
	new/datum/stack_recipe("wooden buckler", /obj/item/shield/buckler, 20, time = 4 SECONDS, check_density = FALSE, category = CAT_EQUIPMENT), \
	new/datum/stack_recipe("apiary", /obj/structure/beebox, 40, time = 5 SECONDS, check_density = FALSE, category = CAT_TOOLS),\
	new/datum/stack_recipe("mannequin", /obj/structure/mannequin/wood, 25, time = 5 SECONDS, one_per_turf = TRUE, category = CAT_ENTERTAINMENT), \
	new/datum/stack_recipe("tiki mask", /obj/item/clothing/mask/gas/tiki_mask, 2, check_density = FALSE, category = CAT_CLOTHING), \
	new/datum/stack_recipe("smoking pipe", /obj/item/clothing/mask/cigarette/pipe, 2, check_density = FALSE, category = CAT_CLOTHING), \
	new/datum/stack_recipe("honey frame", /obj/item/honey_frame, 5, time = 1 SECONDS, check_density = FALSE, category = CAT_TOOLS),\
	new/datum/stack_recipe("wooden bucket", /obj/item/reagent_containers/cup/bucket/wooden, 3, time = 1 SECONDS, check_density = FALSE, category = CAT_CONTAINERS),\
	new/datum/stack_recipe("rake", /obj/item/cultivator/rake, 5, time = 1 SECONDS, check_density = FALSE, category = CAT_TOOLS),\
	new/datum/stack_recipe("ore box", /obj/structure/ore_box, 4, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_CONTAINERS),\
	new/datum/stack_recipe("wooden crate", /obj/structure/closet/crate/wooden, 6, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE),\
	new/datum/stack_recipe("baseball bat", /obj/item/melee/baseball_bat, 5, time = 1.5 SECONDS, check_density = FALSE, category = CAT_WEAPON_MELEE),\
	new/datum/stack_recipe("wooden crutch", /obj/item/cane/crutch/wood, 5, time = 1.5 SECONDS, check_density = FALSE, category = CAT_WEAPON_MELEE),\
	new/datum/stack_recipe("loom", /obj/structure/loom, 10, time = 1.5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_TOOLS), \
	new/datum/stack_recipe("mortar", /obj/item/reagent_containers/cup/mortar, 3, category = CAT_CHEMISTRY), \
	new/datum/stack_recipe("firebrand", /obj/item/match/firebrand, 2, time = 10 SECONDS, category = CAT_TOOLS), \
	new/datum/stack_recipe("nesting box", /obj/structure/nestbox, 5, time = 10 SECONDS, category = CAT_FURNITURE), \
	new/datum/stack_recipe("bonfire", /obj/structure/bonfire, 10, time = 6 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_TOOLS), \
	new/datum/stack_recipe("easel", /obj/structure/easel, 5, time = 1 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_ENTERTAINMENT), \
	new/datum/stack_recipe("noticeboard", /obj/item/wallframe/noticeboard, 1, time = 1 SECONDS, one_per_turf = FALSE, on_solid_ground = FALSE, check_density = FALSE, category = CAT_FURNITURE), \
	new/datum/stack_recipe("test tube rack", /obj/item/storage/test_tube_rack, 1, time = 1 SECONDS, check_density = FALSE, category = CAT_CHEMISTRY), \
	null, \
	new/datum/stack_recipe_list("pews", list(
		new /datum/stack_recipe("pew (middle)", /obj/structure/chair/pew, 3, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE),
		new /datum/stack_recipe("pew (left)", /obj/structure/chair/pew/left, 3, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE),
		new /datum/stack_recipe("pew (right)", /obj/structure/chair/pew/right, 3, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE)
		)),
	null, \
	))

/obj/item/stack/sheet/mineral/wood
	name = "wooden plank"
	desc = "One can only guess that this is a bunch of wood."
	singular_name = "wood plank"
	icon_state = "sheet-wood"
	inhand_icon_state = "sheet-wood"
	icon = 'icons/obj/stack_objects.dmi'
	mats_per_unit = list(/datum/material/wood=SHEET_MATERIAL_AMOUNT)
	sheettype = "wood"
	armor_type = /datum/armor/mineral_wood
	resistance_flags = FLAMMABLE
	merge_type = /obj/item/stack/sheet/mineral/wood
	material_type = /datum/material/wood
	grind_results = list(/datum/reagent/cellulose = 20) //no lignocellulose or lignin reagents yet,
	walltype = /turf/closed/wall/mineral/wood
	stairs_type = /obj/structure/stairs/wood

/datum/armor/mineral_wood
	fire = 50

/obj/item/stack/sheet/mineral/wood/get_main_recipes()
	. = ..()
	. += GLOB.wood_recipes

/obj/item/stack/sheet/mineral/wood/fifty
	amount = 50

/*
 * Bamboo
 */

GLOBAL_LIST_INIT(bamboo_recipes, list ( \
	new/datum/stack_recipe("punji sticks trap", /obj/structure/punji_sticks, 5, time = 3 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_EQUIPMENT), \
	new/datum/stack_recipe("bamboo spear", /obj/item/spear/bamboospear, 25, time = 9 SECONDS, check_density = FALSE, category = CAT_WEAPON_MELEE), \
	new/datum/stack_recipe("blow gun", /obj/item/gun/syringe/blowgun, 10, time = 7 SECONDS, check_density = FALSE, category = CAT_WEAPON_RANGED), \
	new/datum/stack_recipe("crude syringe", /obj/item/reagent_containers/syringe/crude, 5, time = 1 SECONDS, check_density = FALSE, category = CAT_CHEMISTRY), \
	new/datum/stack_recipe("rice hat", /obj/item/clothing/head/costume/rice_hat, 10, time = 7 SECONDS, check_density = FALSE, category = CAT_CLOTHING), \
	null, \
	new/datum/stack_recipe("bamboo stool", /obj/structure/chair/stool/bamboo, 2, time = 1 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
	new/datum/stack_recipe("bamboo mat piece", /obj/item/stack/tile/bamboo, 1, 4, 20, check_density = FALSE, category = CAT_TILES), \
	null, \
	new/datum/stack_recipe_list("bamboo benches", list(
		new /datum/stack_recipe("bamboo bench (middle)", /obj/structure/chair/sofa/bamboo, 3, time = 1 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE),
		new /datum/stack_recipe("bamboo bench (left)", /obj/structure/chair/sofa/bamboo/left, 3, time = 1 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE),
		new /datum/stack_recipe("bamboo bench (right)", /obj/structure/chair/sofa/bamboo/right, 3, time = 1 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE)
		)),	\
	))

/obj/item/stack/sheet/mineral/bamboo
	name = "bamboo cuttings"
	desc = "Finely cut bamboo sticks."
	singular_name = "cut bamboo stick"
	icon_state = "sheet-bamboo"
	inhand_icon_state = "sheet-bamboo"
	icon = 'icons/obj/stack_objects.dmi'
	sheettype = "bamboo"
	mats_per_unit = list(/datum/material/bamboo = SHEET_MATERIAL_AMOUNT)
	throwforce = 15
	armor_type = /datum/armor/mineral_bamboo
	resistance_flags = FLAMMABLE
	merge_type = /obj/item/stack/sheet/mineral/bamboo
	grind_results = list(/datum/reagent/cellulose = 10)
	material_type = /datum/material/bamboo
	walltype = /turf/closed/wall/mineral/bamboo

/datum/armor/mineral_bamboo
	fire = 50

/obj/item/stack/sheet/mineral/bamboo/get_main_recipes()
	. = ..()
	. += GLOB.bamboo_recipes

/obj/item/stack/sheet/mineral/bamboo/fifty
	amount = 50

/*
 * Cloth
 */
GLOBAL_LIST_INIT(cloth_recipes, list ( \
	new/datum/stack_recipe("white jumpskirt", /obj/item/clothing/under/color/jumpskirt/white, 3, check_density = FALSE, category = CAT_CLOTHING), /*Ladies first*/ \
	new/datum/stack_recipe("white jumpsuit", /obj/item/clothing/under/color/white, 3, check_density = FALSE, category = CAT_CLOTHING), \
	new/datum/stack_recipe("white shoes", /obj/item/clothing/shoes/sneakers/white, 2, check_density = FALSE, category = CAT_CLOTHING), \
	new/datum/stack_recipe("white scarf", /obj/item/clothing/neck/scarf, 1, check_density = FALSE, category = CAT_CLOTHING), \
	new/datum/stack_recipe("white bandana", /obj/item/clothing/mask/bandana/white, 2, check_density = FALSE, category = CAT_CLOTHING), \
	null, \
	new/datum/stack_recipe("backpack", /obj/item/storage/backpack, 4, check_density = FALSE, category = CAT_CONTAINERS), \
	new/datum/stack_recipe("satchel", /obj/item/storage/backpack/satchel, 4, check_density = FALSE, category = CAT_CONTAINERS), \
	new/datum/stack_recipe("duffel bag", /obj/item/storage/backpack/duffelbag, 6, check_density = FALSE, category = CAT_CONTAINERS), \
	null, \
	new/datum/stack_recipe("plant bag", /obj/item/storage/bag/plants, 4, check_density = FALSE, category = CAT_CONTAINERS), \
	new/datum/stack_recipe("book bag", /obj/item/storage/bag/books, 4, check_density = FALSE, category = CAT_CONTAINERS), \
	new/datum/stack_recipe("mining satchel", /obj/item/storage/bag/ore, 4, check_density = FALSE, category = CAT_CONTAINERS), \
	new/datum/stack_recipe("chemistry bag", /obj/item/storage/bag/chemistry, 4, check_density = FALSE, category = CAT_CONTAINERS), \
	new/datum/stack_recipe("bio bag", /obj/item/storage/bag/bio, 4, check_density = FALSE, category = CAT_CONTAINERS), \
	new/datum/stack_recipe("science bag", /obj/item/storage/bag/xeno, 4, check_density = FALSE, category = CAT_CONTAINERS), \
	new/datum/stack_recipe("construction bag", /obj/item/storage/bag/construction, 4, check_density = FALSE, category = CAT_CONTAINERS), \
	new/datum/stack_recipe("egg bag", /obj/item/storage/bag/egg, 4, check_density = FALSE, category = CAT_CONTAINERS), \
	null, \
	new/datum/stack_recipe("improvised gauze", /obj/item/stack/medical/gauze/improvised, 1, 2, 6, check_density = FALSE, category = CAT_TOOLS), \
	new/datum/stack_recipe("rag", /obj/item/reagent_containers/cup/rag, 1, check_density = FALSE, category = CAT_CHEMISTRY), \
	new/datum/stack_recipe("bedsheet", /obj/item/bedsheet, 3, check_density = FALSE, category = CAT_FURNITURE), \
	new/datum/stack_recipe("double bedsheet", /obj/item/bedsheet/double, 6, check_density = FALSE, category = CAT_FURNITURE), \
	new/datum/stack_recipe("empty sandbag", /obj/item/emptysandbag, 4, check_density = FALSE, category = CAT_CONTAINERS), \
	null, \
	new/datum/stack_recipe("fingerless gloves", /obj/item/clothing/gloves/fingerless, 1, check_density = FALSE, category = CAT_CLOTHING), \
	new/datum/stack_recipe("white gloves", /obj/item/clothing/gloves/color/white, 3, check_density = FALSE, category = CAT_CLOTHING), \
	new/datum/stack_recipe("white softcap", /obj/item/clothing/head/soft/mime, 2, check_density = FALSE, category = CAT_CLOTHING), \
	new/datum/stack_recipe("white beanie", /obj/item/clothing/head/beanie, 2, check_density = FALSE, category = CAT_CLOTHING), \
	null, \
	new/datum/stack_recipe("blindfold", /obj/item/clothing/glasses/blindfold, 2, check_density = FALSE, category = CAT_ENTERTAINMENT), \
	null, \
	new/datum/stack_recipe("19x19 canvas", /obj/item/canvas/nineteen_nineteen, 3, check_density = FALSE, category = CAT_ENTERTAINMENT), \
	new/datum/stack_recipe("23x19 canvas", /obj/item/canvas/twentythree_nineteen, 4, check_density = FALSE, category = CAT_ENTERTAINMENT), \
	new/datum/stack_recipe("23x23 canvas", /obj/item/canvas/twentythree_twentythree, 5, check_density = FALSE, category = CAT_ENTERTAINMENT), \
	new/datum/stack_recipe("pillow", /obj/item/pillow, 3, category = CAT_FURNITURE), \
	))

/obj/item/stack/sheet/cloth
	name = "cloth"
	desc = "Is it cotton? Linen? Denim? Burlap? Canvas? You can't tell."
	singular_name = "cloth roll"
	icon_state = "sheet-cloth"
	inhand_icon_state = null
	resistance_flags = FLAMMABLE
	force = 0
	throwforce = 0
	merge_type = /obj/item/stack/sheet/cloth
	drop_sound = 'sound/items/handling/cloth_drop.ogg'
	pickup_sound = 'sound/items/handling/cloth_pickup.ogg'
	grind_results = list(/datum/reagent/cellulose = 20)

/obj/item/stack/sheet/cloth/get_main_recipes()
	. = ..()
	. += GLOB.cloth_recipes

/obj/item/stack/sheet/cloth/ten
	amount = 10

/obj/item/stack/sheet/cloth/five
	amount = 5

GLOBAL_LIST_INIT(durathread_recipes, list ( \
	new/datum/stack_recipe("durathread jumpsuit", /obj/item/clothing/under/misc/durathread, 4, time = 4 SECONDS, check_density = FALSE, category = CAT_CLOTHING),
	new/datum/stack_recipe("durathread beret", /obj/item/clothing/head/beret/durathread, 2, time = 4 SECONDS, check_density = FALSE, category = CAT_CLOTHING), \
	new/datum/stack_recipe("durathread beanie", /obj/item/clothing/head/beanie/durathread, 2, time = 4 SECONDS, check_density = FALSE, category = CAT_CLOTHING), \
	new/datum/stack_recipe("durathread bandana", /obj/item/clothing/mask/bandana/durathread, 1, time = 2.5 SECONDS, check_density = FALSE, category = CAT_CLOTHING), \
	))

/obj/item/stack/sheet/durathread
	name = "durathread"
	desc = "A fabric sown from incredibly durable threads, known for its usefulness in armor production."
	singular_name = "durathread roll"
	icon_state = "sheet-durathread"
	inhand_icon_state = null
	resistance_flags = FLAMMABLE
	force = 0
	throwforce = 0
	merge_type = /obj/item/stack/sheet/durathread
	drop_sound = 'sound/items/handling/cloth_drop.ogg'
	pickup_sound = 'sound/items/handling/cloth_pickup.ogg'

/obj/item/stack/sheet/durathread/get_main_recipes()
	. = ..()
	. += GLOB.durathread_recipes

/obj/item/stack/sheet/cotton
	name = "raw cotton bundle"
	desc = "A bundle of raw cotton ready to be spun on the loom."
	singular_name = "raw cotton ball"
	icon_state = "sheet-cotton"
	resistance_flags = FLAMMABLE
	force = 0
	throwforce = 0
	merge_type = /obj/item/stack/sheet/cotton
	grind_results = list(/datum/reagent/cellulose = 20)
	var/loom_result = /obj/item/stack/sheet/cloth
	var/loom_time = 1 SECONDS

/obj/item/stack/sheet/cotton/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/loomable, resulting_atom = loom_result, loom_time = loom_time)

/obj/item/stack/sheet/cotton/durathread
	name = "raw durathread bundle"
	desc = "A bundle of raw durathread ready to be spun on the loom."
	singular_name = "raw durathread ball"
	icon_state = "sheet-durathreadraw"
	merge_type = /obj/item/stack/sheet/cotton/durathread
	grind_results = list()
	loom_result = /obj/item/stack/sheet/durathread

/obj/item/stack/sheet/cotton/wool
	name = "raw wool bundle"
	desc = "A bundle of raw wool ready to be spun on the loom."
	singular_name = "raw wool ball"
	icon_state = "sheet-wool"
	merge_type = /obj/item/stack/sheet/cotton/wool
	grind_results = list()
	loom_result = /obj/item/stack/sheet/cloth

/*
 * Cardboard
 */
GLOBAL_LIST_INIT(cardboard_recipes, list ( \
	new/datum/stack_recipe("box", /obj/item/storage/box, check_density = FALSE, category = CAT_CONTAINERS), \
	new/datum/stack_recipe("cardborg suit", /obj/item/clothing/suit/costume/cardborg, 3, check_density = FALSE, category = CAT_CLOTHING), \
	new/datum/stack_recipe("cardborg helmet", /obj/item/clothing/head/costume/cardborg, check_density = FALSE, category = CAT_CLOTHING), \
	new/datum/stack_recipe("large box", /obj/structure/closet/cardboard, 4, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_CONTAINERS), \
	new/datum/stack_recipe("cardboard cutout", /obj/item/cardboard_cutout, 5, check_density = FALSE, category = CAT_ENTERTAINMENT), \
	null, \

	new/datum/stack_recipe("pizza box", /obj/item/pizzabox, check_density = FALSE, category = CAT_CONTAINERS), \
	new/datum/stack_recipe("folder", /obj/item/folder, check_density = FALSE, category = CAT_CONTAINERS), \
	null, \
	//TO-DO: Find a proper way to just change the illustration on the box. Code isn't the issue, input is.
	new/datum/stack_recipe_list("fancy boxes", list(
		new /datum/stack_recipe("donut box", /obj/item/storage/fancy/donut_box, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("egg box", /obj/item/storage/fancy/egg_box, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("donk-pockets box", /obj/item/storage/box/donkpockets, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("donk-pockets spicy box", /obj/item/storage/box/donkpockets/donkpocketspicy, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("donk-pockets teriyaki box", /obj/item/storage/box/donkpockets/donkpocketteriyaki, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("donk-pockets pizza box", /obj/item/storage/box/donkpockets/donkpocketpizza, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("donk-pockets berry box", /obj/item/storage/box/donkpockets/donkpocketberry, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("donk-pockets honk box", /obj/item/storage/box/donkpockets/donkpockethonk, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("monkey cube box", /obj/item/storage/box/monkeycubes, check_density = FALSE, category = CAT_CONTAINERS),
		new /datum/stack_recipe("nugget box", /obj/item/storage/fancy/nugget_box, check_density = FALSE, category = CAT_CONTAINERS), \
		null, \

		new /datum/stack_recipe("lethal ammo box", /obj/item/storage/box/lethalshot, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("rubber shot ammo box", /obj/item/storage/box/rubbershot, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("bean bag ammo box", /obj/item/storage/box/beanbag, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("flashbang box", /obj/item/storage/box/flashbangs, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("flashes box", /obj/item/storage/box/flashes, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("handcuffs box", /obj/item/storage/box/handcuffs, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("ID card box", /obj/item/storage/box/ids, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("PDA box", /obj/item/storage/box/pdas, check_density = FALSE, category = CAT_CONTAINERS), \
		null, \

		new /datum/stack_recipe("pillbottle box", /obj/item/storage/box/pillbottles, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("beaker box", /obj/item/storage/box/beakers, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("syringe box", /obj/item/storage/box/syringes, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("latex gloves box", /obj/item/storage/box/gloves, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("sterile masks box", /obj/item/storage/box/masks, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("body bag box", /obj/item/storage/box/bodybags, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("perscription glasses box", /obj/item/storage/box/rxglasses, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("medipen box", /obj/item/storage/box/medipens, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("oxygen tank box", /obj/item/storage/box/emergencytank, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("extended oxygen tank box", /obj/item/storage/box/engitank, check_density = FALSE, category = CAT_CONTAINERS), \
		null, \

		new /datum/stack_recipe("survival box", /obj/item/storage/box/survival/crafted, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("extended tank survival box", /obj/item/storage/box/survival/engineer/crafted, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("disk box", /obj/item/storage/box/disks, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("light tubes box", /obj/item/storage/box/lights/tubes, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("light bulbs box", /obj/item/storage/box/lights/bulbs, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("mixed lights box", /obj/item/storage/box/lights/mixed, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("mouse traps box", /obj/item/storage/box/mousetraps, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("candle box", /obj/item/storage/fancy/candle_box, check_density = FALSE, category = CAT_CONTAINERS), \
		new /datum/stack_recipe("cigarette box", /obj/item/storage/fancy/cigarettes/crafted, check_density = FALSE, category = CAT_CONTAINERS)
		)),

	null, \
))

/obj/item/stack/sheet/cardboard //BubbleWrap //it's cardboard you fuck
	name = "cardboard"
	desc = "Large sheets of card, like boxes folded flat."
	singular_name = "cardboard sheet"
	icon_state = "sheet-card"
	inhand_icon_state = "sheet-card"
	mats_per_unit = list(/datum/material/cardboard = SHEET_MATERIAL_AMOUNT)
	resistance_flags = FLAMMABLE
	force = 0
	throwforce = 0
	merge_type = /obj/item/stack/sheet/cardboard
	novariants = TRUE
	grind_results = list(/datum/reagent/cellulose = 10)
	material_type = /datum/material/cardboard

/obj/item/stack/sheet/cardboard/get_main_recipes()
	. = ..()
	. += GLOB.cardboard_recipes

/obj/item/stack/sheet/cardboard/fifty
	amount = 50

/obj/item/stack/sheet/cardboard/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/stamp/clown) && !istype(loc, /obj/item/storage))
		var/atom/droploc = drop_location()
		if(use(1))
			playsound(I, 'sound/items/bikehorn.ogg', 50, TRUE, -1)
			to_chat(user, span_notice("You stamp the cardboard! It's a clown box! Honk!"))
			if (amount >= 0)
				new/obj/item/storage/box/clown(droploc) //bugfix
	if(istype(I, /obj/item/stamp/chameleon) && !istype(loc, /obj/item/storage))
		var/atom/droploc = drop_location()
		if(use(1))
			to_chat(user, span_notice("You stamp the cardboard in a sinister way."))
			if (amount >= 0)
				new/obj/item/storage/box/syndie_kit(droploc)
	else
		. = ..()

/*
 * Bronze
 */

GLOBAL_LIST_INIT(bronze_recipes, list ( \
	new/datum/stack_recipe("wall gear", /obj/structure/girder/bronze, 2, time = 2 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_STRUCTURE), \
	null,
	new/datum/stack_recipe("directional bronze window", /obj/structure/window/bronze/unanchored, time = 0, on_solid_ground = TRUE, check_direction = TRUE, category = CAT_WINDOWS), \
	new/datum/stack_recipe("fulltile bronze window", /obj/structure/window/bronze/fulltile/unanchored, 2, time = 0, on_solid_ground = TRUE, is_fulltile = TRUE, category = CAT_WINDOWS), \
	new/datum/stack_recipe("pinion airlock assembly", /obj/structure/door_assembly/door_assembly_bronze, 4, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_DOORS), \
	new/datum/stack_recipe("bronze pinion airlock assembly", /obj/structure/door_assembly/door_assembly_bronze/seethru, 4, time = 5 SECONDS, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_DOORS), \
	new/datum/stack_recipe("bronze floor tile", /obj/item/stack/tile/bronze, 1, 4, 20, check_density = FALSE, category = CAT_TILES), \
	new/datum/stack_recipe("bronze hat", /obj/item/clothing/head/costume/bronze, check_density = FALSE, category = CAT_CLOTHING), \
	new/datum/stack_recipe("bronze suit", /obj/item/clothing/suit/costume/bronze, check_density = FALSE, category = CAT_CLOTHING), \
	new/datum/stack_recipe("bronze boots", /obj/item/clothing/shoes/bronze, check_density = FALSE, category = CAT_CLOTHING), \
	null,
	new/datum/stack_recipe("bronze chair", /obj/structure/chair/bronze, 1, time = 0, one_per_turf = TRUE, on_solid_ground = TRUE, category = CAT_FURNITURE), \
))

/obj/item/stack/sheet/bronze
	name = "bronze"
	desc = "On closer inspection, what appears to be wholly-unsuitable-for-building brass is actually more structurally stable bronze."
	singular_name = "bronze sheet"
	icon_state = "sheet-brass"
	inhand_icon_state = "sheet-brass"
	icon = 'icons/obj/stack_objects.dmi'
	mats_per_unit = list(/datum/material/bronze = SHEET_MATERIAL_AMOUNT)
	lefthand_file = 'icons/mob/inhands/items/sheets_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/items/sheets_righthand.dmi'
	resistance_flags = FIRE_PROOF | ACID_PROOF
	sheettype = "bronze"
	force = 5
	throwforce = 10
	max_amount = 50
	throw_speed = 1
	throw_range = 3
	novariants = FALSE
	grind_results = list(/datum/reagent/iron = 20, /datum/reagent/copper = 12) //we have no "tin" reagent so this is the closest thing
	merge_type = /obj/item/stack/sheet/bronze
	tableVariant = /obj/structure/table/bronze
	material_type = /datum/material/bronze
	walltype = /turf/closed/wall/mineral/bronze
	has_unique_girder = TRUE

/obj/item/stack/sheet/bronze/get_main_recipes()
	. = ..()
	. += GLOB.bronze_recipes

/obj/item/stack/sheet/paperframes/Initialize(mapload, new_amount, merge = TRUE, list/mat_override=null, mat_amt=1)
	. = ..()
	pixel_x = 0
	pixel_y = 0

/obj/item/stack/sheet/bronze/thirty
	amount = 30

/*
 * Lesser and Greater gems - unused
 */
/obj/item/stack/sheet/lessergem
	name = "lesser gems"
	desc = "Rare kind of gems which are only gained by blood sacrifice to minor deities. They are needed in crafting powerful objects."
	singular_name = "lesser gem"
	icon_state = "sheet-lessergem"
	inhand_icon_state = null
	novariants = TRUE
	merge_type = /obj/item/stack/sheet/lessergem

/obj/item/stack/sheet/greatergem
	name = "greater gems"
	desc = "Rare kind of gems which are only gained by blood sacrifice to minor deities. They are needed in crafting powerful objects."
	singular_name = "greater gem"
	icon_state = "sheet-greatergem"
	inhand_icon_state = null
	novariants = TRUE
	merge_type = /obj/item/stack/sheet/greatergem

/*
 * Bones
 */
/obj/item/stack/sheet/bone
	name = "bones"
	icon = 'icons/obj/stack_objects.dmi'
	icon_state = "bone"
	inhand_icon_state = null
	mats_per_unit = list(/datum/material/bone = SHEET_MATERIAL_AMOUNT)
	singular_name = "bone"
	desc = "Someone's been drinking their milk."
	force = 7
	throwforce = 5
	max_amount = 12
	w_class = WEIGHT_CLASS_NORMAL
	throw_speed = 1
	throw_range = 3
	grind_results = list(/datum/reagent/carbon = 10)
	merge_type = /obj/item/stack/sheet/bone
	material_type = /datum/material/bone

GLOBAL_LIST_INIT(plastic_recipes, list(
	new /datum/stack_recipe("plastic floor tile", /obj/item/stack/tile/plastic, 1, 4, 20, check_density = FALSE, category = CAT_TILES), \
	new /datum/stack_recipe("folding plastic chair", /obj/structure/chair/plastic, 2, check_density = FALSE, category = CAT_FURNITURE), \
	new /datum/stack_recipe("plastic flaps", /obj/structure/plasticflaps, 5, one_per_turf = TRUE, on_solid_ground = TRUE, time = 4 SECONDS, category = CAT_FURNITURE), \
	new /datum/stack_recipe("water bottle", /obj/item/reagent_containers/cup/glass/waterbottle/empty, check_density = FALSE, category = CAT_CONTAINERS), \
	new /datum/stack_recipe("large water bottle", /obj/item/reagent_containers/cup/glass/waterbottle/large/empty, 3, check_density = FALSE, category = CAT_CONTAINERS), \
	new /datum/stack_recipe("colo cups", /obj/item/reagent_containers/cup/glass/colocup, 1, check_density = FALSE, category = CAT_CONTAINERS), \
	new /datum/stack_recipe("mannequin", /obj/structure/mannequin/plastic, 25, time = 5 SECONDS, one_per_turf = TRUE, check_density = FALSE, category = CAT_ENTERTAINMENT), \
	new /datum/stack_recipe("wet floor sign", /obj/item/clothing/suit/caution, 2, check_density = FALSE, category = CAT_EQUIPMENT), \
	new /datum/stack_recipe("warning cone", /obj/item/clothing/head/cone, 2, check_density = FALSE, category = CAT_EQUIPMENT), \
	new /datum/stack_recipe("blank wall sign", /obj/item/sign, 1, check_density = FALSE, category = CAT_FURNITURE)))

/obj/item/stack/sheet/plastic
	name = "plastic"
	desc = "Compress dinosaur over millions of years, then refine, split and mold, and voila! You have plastic."
	singular_name = "plastic sheet"
	icon_state = "sheet-plastic"
	inhand_icon_state = "sheet-plastic"
	mats_per_unit = list(/datum/material/plastic=SHEET_MATERIAL_AMOUNT)
	throwforce = 7
	material_type = /datum/material/plastic
	merge_type = /obj/item/stack/sheet/plastic

/obj/item/stack/sheet/plastic/fifty
	amount = 50

/obj/item/stack/sheet/plastic/five
	amount = 5

/obj/item/stack/sheet/plastic/get_main_recipes()
	. = ..()
	. += GLOB.plastic_recipes

GLOBAL_LIST_INIT(paperframe_recipes, list(
new /datum/stack_recipe("paper frame separator", /obj/structure/window/paperframe, 2, one_per_turf = TRUE, on_solid_ground = TRUE, is_fulltile = TRUE, time = 1 SECONDS), \
new /datum/stack_recipe("paper frame door", /obj/structure/mineral_door/paperframe, 3, one_per_turf = TRUE, on_solid_ground = TRUE, time = 1 SECONDS )))

/obj/item/stack/sheet/paperframes
	name = "paper frames"
	desc = "A thin wooden frame with paper attached."
	singular_name = "paper frame"
	icon_state = "sheet-paper"
	inhand_icon_state = "sheet-paper"
	mats_per_unit = list(/datum/material/paper = SHEET_MATERIAL_AMOUNT)
	merge_type = /obj/item/stack/sheet/paperframes
	resistance_flags = FLAMMABLE
	grind_results = list(/datum/reagent/cellulose = 20)
	material_type = /datum/material/paper

/obj/item/stack/sheet/paperframes/get_main_recipes()
	. = ..()
	. += GLOB.paperframe_recipes
/obj/item/stack/sheet/paperframes/five
	amount = 5
/obj/item/stack/sheet/paperframes/twenty
	amount = 20
/obj/item/stack/sheet/paperframes/fifty
	amount = 50

/obj/item/stack/sheet/meat
	name = "meat sheets"
	desc = "Something's bloody meat compressed into a nice solid sheet."
	singular_name = "meat sheet"
	icon_state = "sheet-meat"
	material_flags = MATERIAL_EFFECTS | MATERIAL_COLOR
	mats_per_unit = list(/datum/material/meat = SHEET_MATERIAL_AMOUNT)
	merge_type = /obj/item/stack/sheet/meat
	material_type = /datum/material/meat
	material_modifier = 1 //None of that wussy stuff

/obj/item/stack/sheet/meat/fifty
	amount = 50
/obj/item/stack/sheet/meat/twenty
	amount = 20
/obj/item/stack/sheet/meat/five
	amount = 5

/obj/item/stack/sheet/pizza
	name = "pepperoni sheetzzas"
	desc = "It's a delicious pepperoni sheetzza!"
	singular_name = "pepperoni sheetzza"
	icon_state = "sheet-pizza"
	mats_per_unit = list(/datum/material/pizza = SHEET_MATERIAL_AMOUNT)
	merge_type = /obj/item/stack/sheet/pizza
	material_type = /datum/material/pizza
	material_modifier = 1

/obj/item/stack/sheet/pizza/fifty
	amount = 50
/obj/item/stack/sheet/pizza/twenty
	amount = 20
/obj/item/stack/sheet/pizza/five
	amount = 5

/obj/item/stack/sheet/sandblock
	name = "blocks of sand"
	desc = "You're too old to be playing with sandcastles. Now you build... sandstations."
	singular_name = "sand block"
	icon_state = "sheet-sandstone"
	mats_per_unit = list(/datum/material/sand = SHEET_MATERIAL_AMOUNT)
	merge_type = /obj/item/stack/sheet/sandblock
	material_type = /datum/material/sand
	material_modifier = 1

/obj/item/stack/sheet/sandblock/fifty
	amount = 50
/obj/item/stack/sheet/sandblock/twenty
	amount = 20
/obj/item/stack/sheet/sandblock/five
	amount = 5


/obj/item/stack/sheet/hauntium
	name = "haunted sheets"
	desc = "These sheets seem cursed."
	singular_name = "haunted sheet"
	icon_state = "sheet-meat"
	material_flags = MATERIAL_EFFECTS | MATERIAL_COLOR
	mats_per_unit = list(/datum/material/hauntium = SHEET_MATERIAL_AMOUNT)
	merge_type = /obj/item/stack/sheet/hauntium
	material_type = /datum/material/hauntium
	material_modifier = 1 //None of that wussy stuff
	grind_results = list(/datum/reagent/hauntium = 20)

/obj/item/stack/sheet/hauntium/fifty
	amount = 50
/obj/item/stack/sheet/hauntium/twenty
	amount = 20
/obj/item/stack/sheet/hauntium/five
	amount = 5
