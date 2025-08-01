/obj/item/clothing/shoes/sandal
	desc = "A pair of rather plain wooden sandals."
	name = "sandals"
	icon_state = "wizard"
	inhand_icon_state = "wizshoe"
	custom_materials = list(/datum/material/wood = SHEET_MATERIAL_AMOUNT * 0.5)
	resistance_flags = FLAMMABLE
	strip_delay = 5
	equip_delay_other = 50
	armor_type = /datum/armor/shoes_sandal
	can_be_tied = FALSE
	species_exception = list(/datum/species/golem)

/datum/armor/shoes_sandal
	bio = 10

/obj/item/clothing/shoes/sandal/magic
	name = "magical sandals"
	desc = "A pair of sandals imbued with magic."
	resistance_flags = FIRE_PROOF | ACID_PROOF

/obj/item/clothing/shoes/sandal/gilded
	name = "gilded sandals"
	desc = "A well maid pair of sandals that appear to have been made with gold."
	icon_state = "gildedsandals"
	inhand_icon_state = "gildedsandals"

/obj/item/clothing/shoes/sandal/alt
	desc = "A pair of shiny black wooden sandals."
	name = "black sandals"
	icon_state = "blacksandals"
	inhand_icon_state = "blacksandals"

