	object_const_def
	const OLIVINECAFE_SAILOR1
	const OLIVINECAFE_FISHING_GURU
	const OLIVINECAFE_SAILOR2

OlivineCafe_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineCafeStrengthSailorScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_MUSCLES
	iftrue .GotStrength
	writetext OlivineCafeStrengthSailorText
	promptbutton
	verbosegiveitem MUSCLES
	setevent EVENT_GOT_MUSCLES
.GotStrength:
	writetext OlivineCafeStrengthSailorText_GotStrength
	waitbutton
	closetext
	end

OlivineCafeFishingGuruScript:
	jumptextfaceplayer OlivineCafeFishingGuruText

OlivineCafeSailorScript:
	jumptextfaceplayer OlivineCafeSailorText

OlivineCafeStrengthSailorText:
	text "Hah! You sure look"
	line "look like a"
	cont "lightweight!"

	para "How about you work"
	line "out and get some"
	cont "MUSCLES!"
	done

OlivineCafeStrengthSailorText_GotStrength:
	text "On the sea, the"
	line "only thing you can"

	para "count on is your"
	line "own good self!"

	para "I'm so proud of my"
	line "buff bod!"
	done

OlivineCafeFishingGuruText:
	text "OLIVINE CAFE's"
	line "menu is chock full"

	para "of hearty fare for"
	line "beefy SAILORS!"
	done

OlivineCafeSailorText:
	text "Whenever I roll"
	line "into this town, I"

	para "always visit the"
	line "OLIVINE CAFE."

	para "Everything on the"
	line "menu makes me feel"

	para "stronger. I can't"
	line "stop eating!"
	done

OlivineCafe_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, OLIVINE_CITY, 7
	warp_event  3,  7, OLIVINE_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  3, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCafeStrengthSailorScript, -1
	object_event  7,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCafeFishingGuruScript, -1
	object_event  6,  6, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCafeSailorScript, -1
