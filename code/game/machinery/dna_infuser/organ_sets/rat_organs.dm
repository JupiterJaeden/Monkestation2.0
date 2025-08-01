#define RAT_ORGAN_COLOR "#646464"
#define RAT_SCLERA_COLOR "#f0e055"
#define RAT_PUPIL_COLOR "#000000"
#define RAT_COLORS RAT_ORGAN_COLOR + RAT_SCLERA_COLOR + RAT_PUPIL_COLOR

///bonus of the rat: you can ventcrawl!
/datum/status_effect/organ_set_bonus/rat
	id = "organ_set_bonus_rat"
	organs_needed = 4
	bonus_activate_text = span_notice("Rodent DNA is deeply infused with you! You've learned how to traverse ventilation!")
	bonus_deactivate_text = span_notice("Your DNA is no longer majority rat, and so fades your ventilation skills...")
	bonus_traits = list(TRAIT_VENTCRAWLER_NUDE)

///way better night vision, super sensitive. lotta things work like this, huh?
/obj/item/organ/internal/eyes/night_vision/rat
	name = "mutated rat-eyes"
	desc = "Rat DNA infused into what was once a normal pair of eyes."
	flash_protect = FLASH_PROTECTION_HYPER_SENSITIVE
	eye_color_left = "#000000"
	eye_color_right = "#000000"

	icon = 'icons/obj/medical/organs/infuser_organs.dmi'
	icon_state = "eyes"
	greyscale_config = /datum/greyscale_config/mutant_organ
	greyscale_colors = RAT_COLORS
	low_light_cutoff = list(16, 11, 0)
	medium_light_cutoff = list(30, 20, 5)
	high_light_cutoff = list(45, 35, 10)

/obj/item/organ/internal/eyes/night_vision/rat/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/noticable_organ, "eyes have deep, shifty black pupils, surrounded by a sickening yellow sclera.", BODY_ZONE_PRECISE_EYES)
	AddElement(/datum/element/organ_set_bonus, /datum/status_effect/organ_set_bonus/rat)

///increases hunger, disgust recovers quicker, expands what is defined as "food"
/obj/item/organ/internal/stomach/rat
	name = "mutated rat-stomach"
	desc = "Rat DNA infused into what was once a normal stomach."
	disgust_metabolism = 3

	icon = 'icons/obj/medical/organs/infuser_organs.dmi'
	icon_state = "stomach"
	greyscale_config = /datum/greyscale_config/mutant_organ
	greyscale_colors = RAT_COLORS
	/// Multiplier of [physiology.hunger_mod].
	hunger_modifier = 10

/obj/item/organ/internal/stomach/rat/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/organ_set_bonus, /datum/status_effect/organ_set_bonus/rat)
	AddElement(/datum/element/noticable_organ, "mouth is drooling excessively.", BODY_ZONE_PRECISE_MOUTH)

/// makes you smaller, walk over tables, and take 1.5x damage
/obj/item/organ/internal/heart/rat
	name = "mutated rat-heart"
	desc = "Rat DNA infused into what was once a normal heart."

	icon = 'icons/obj/medical/organs/infuser_organs.dmi'
	icon_state = "heart"
	greyscale_config = /datum/greyscale_config/mutant_organ
	greyscale_colors = RAT_COLORS

/obj/item/organ/internal/heart/rat/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/organ_set_bonus, /datum/status_effect/organ_set_bonus/rat)
	AddElement(/datum/element/noticable_organ, "hunch%PRONOUN_ES over unnaturally!")

/obj/item/organ/internal/heart/rat/on_insert(mob/living/carbon/receiver)
	. = ..()
	if(!ishuman(receiver))
		return
	var/mob/living/carbon/human/human_receiver = receiver
	if(human_receiver.can_mutate())
		human_receiver.dna.add_mutation(/datum/mutation/dwarfism, MUTATION_SOURCE_RAT_HEART)
	//but 1.5 damage
	human_receiver.physiology?.damage_resistance -= 50

/obj/item/organ/internal/heart/rat/on_remove(mob/living/carbon/heartless, special)
	. = ..()
	if(!ishuman(heartless))
		return
	var/mob/living/carbon/human/human_heartless = heartless
	human_heartless.dna.remove_mutation(/datum/mutation/dwarfism, MUTATION_SOURCE_RAT_HEART)
	human_heartless.physiology?.damage_resistance += 50

/// you occasionally squeak, and have some rat related verbal tics
/obj/item/organ/internal/tongue/rat
	name = "mutated rat-tongue"
	desc = "Rat DNA infused into what was once a normal tongue."
	icon = 'icons/obj/medical/organs/infuser_organs.dmi'
	icon_state = "tongue"
	say_mod = "squeaks"
	modifies_speech = TRUE
	greyscale_config = /datum/greyscale_config/mutant_organ
	greyscale_colors = RAT_COLORS
	liked_foodtypes = DAIRY //mmm, cheese. doesn't especially like anything else
	disliked_foodtypes = NONE //but a rat can eat anything without issue
	toxic_foodtypes = NONE

/obj/item/organ/internal/tongue/rat/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/noticable_organ, "teeth are oddly shaped and yellowing.", BODY_ZONE_PRECISE_MOUTH)
	AddElement(/datum/element/organ_set_bonus, /datum/status_effect/organ_set_bonus/rat)

/obj/item/organ/internal/tongue/rat/modify_speech(datum/source, list/speech_args)
	. = ..()
	var/message = lowertext(speech_args[SPEECH_MESSAGE])
	if(message == "hi" || message == "hi.")
		speech_args[SPEECH_MESSAGE] = "Cheesed to meet you!"
	if(message == "hi?")
		speech_args[SPEECH_MESSAGE] = "Um... cheesed to meet you?"

/obj/item/organ/internal/tongue/rat/on_insert(mob/living/carbon/tongue_owner, special, drop_if_replaced)
	. = ..()
	RegisterSignal(tongue_owner, COMSIG_CARBON_ITEM_GIVEN, PROC_REF(its_on_the_mouse))

/obj/item/organ/internal/tongue/rat/on_remove(mob/living/carbon/tongue_owner)
	. = ..()
	UnregisterSignal(tongue_owner, COMSIG_CARBON_ITEM_GIVEN)

/obj/item/organ/internal/tongue/rat/proc/on_item_given(mob/living/carbon/offerer, mob/living/taker, obj/item/given)
	SIGNAL_HANDLER
	INVOKE_ASYNC(src, PROC_REF(its_on_the_mouse), offerer, taker)

/obj/item/organ/internal/tongue/rat/proc/its_on_the_mouse(mob/living/carbon/offerer, mob/living/taker)
	offerer.say("For you, it's on the mouse.")
	taker.add_mood_event("it_was_on_the_mouse", /datum/mood_event/it_was_on_the_mouse)

/obj/item/organ/internal/tongue/rat/on_life(seconds_per_tick, times_fired)
	. = ..()
	if(prob(5))
		owner.emote("squeaks")
		playsound(owner, 'sound/effects/mousesqueek.ogg', 100)

#undef RAT_ORGAN_COLOR
#undef RAT_SCLERA_COLOR
#undef RAT_PUPIL_COLOR
#undef RAT_COLORS
