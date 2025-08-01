DEF CELADONGAMECORNERPRIZEROOM_TM14_COINS       EQU 5500
DEF CELADONGAMECORNERPRIZEROOM_TM25_COINS       EQU 5500
DEF CELADONGAMECORNERPRIZEROOM_TM38_COINS       EQU 5500
DEF CELADONGAMECORNERPRIZEROOM_BULBASAUR_COINS  EQU 3000
DEF CELADONGAMECORNERPRIZEROOM_CHARMANDER_COINS EQU 3000
DEF CELADONGAMECORNERPRIZEROOM_SQUIRTLE_COINS   EQU 3000

	object_const_def
	const CELADONGAMECORNERPRIZEROOM_GENTLEMAN
	const CELADONGAMECORNERPRIZEROOM_PHARMACIST

CeladonGameCornerPrizeRoom_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonGameCornerPrizeRoomGentlemanScript:
	jumptextfaceplayer CeladonGameCornerPrizeRoomGentlemanText

CeladonGameCornerPrizeRoomPharmacistScript:
	jumptextfaceplayer CeladonGameCornerPrizeRoomPharmacistText

CeladonGameCornerPrizeRoomTMVendor:
	faceplayer
	opentext
	writetext CeladonPrizeRoom_PrizeVendorIntroText
	waitbutton
	checkitem COIN_CASE
	iffalse CeladonPrizeRoom_NoCoinCase
	writetext CeladonPrizeRoom_AskWhichPrizeText
CeladonPrizeRoom_tmcounterloop:
	special DisplayCoinCaseBalance
	loadmenu CeladonPrizeRoom_TMMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Blizzard
	ifequal 2, .Thunder
	ifequal 3, .FireBlast
	sjump CeladonPrizeRoom_CancelPurchaseScript

.Blizzard:
	checkcoins CELADONGAMECORNERPRIZEROOM_TM14_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	getitemname STRING_BUFFER_3, TM_BLIZZARD
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	giveitem TM_BLIZZARD
	iffalse CeladonPrizeRoom_notenoughroom
	takecoins CELADONGAMECORNERPRIZEROOM_TM14_COINS
	sjump CeladonPrizeRoom_purchased

.Thunder:
	checkcoins CELADONGAMECORNERPRIZEROOM_TM25_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	getitemname STRING_BUFFER_3, TM_THUNDER
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	giveitem TM_THUNDER
	iffalse CeladonPrizeRoom_notenoughroom
	takecoins CELADONGAMECORNERPRIZEROOM_TM25_COINS
	sjump CeladonPrizeRoom_purchased

.FireBlast:
	checkcoins CELADONGAMECORNERPRIZEROOM_TM38_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	getitemname STRING_BUFFER_3, TM_FIRE_BLAST
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	giveitem TM_FIRE_BLAST
	iffalse CeladonPrizeRoom_notenoughroom
	takecoins CELADONGAMECORNERPRIZEROOM_TM38_COINS
	sjump CeladonPrizeRoom_purchased

CeladonPrizeRoom_askbuy:
	writetext CeladonPrizeRoom_ConfirmPurchaseText
	yesorno
	end

CeladonPrizeRoom_purchased:
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	sjump CeladonPrizeRoom_tmcounterloop

CeladonPrizeRoom_notenoughcoins:
	writetext CeladonPrizeRoom_NotEnoughCoinsText
	waitbutton
	closetext
	end

CeladonPrizeRoom_notenoughroom:
	writetext CeladonPrizeRoom_NotEnoughRoomText
	waitbutton
	closetext
	end

CeladonPrizeRoom_CancelPurchaseScript:
	writetext CeladonPrizeRoom_ComeAgainText
	waitbutton
	closetext
	end

CeladonPrizeRoom_NoCoinCase:
	writetext CeladonPrizeRoom_NoCoinCaseText
	waitbutton
	closetext
	end

CeladonPrizeRoom_TMMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "TM14    {d:CELADONGAMECORNERPRIZEROOM_TM14_COINS}@"
	db "TM25    {d:CELADONGAMECORNERPRIZEROOM_TM25_COINS}@"
	db "TM38    {d:CELADONGAMECORNERPRIZEROOM_TM38_COINS}@"
	db "CANCEL@"

CeladonGameCornerPrizeRoomPokemonVendor:
	faceplayer
	opentext
	writetext CeladonPrizeRoom_PrizeVendorIntroText
	waitbutton
	checkitem COIN_CASE
	iffalse CeladonPrizeRoom_NoCoinCase
.loop
	writetext CeladonPrizeRoom_AskWhichPrizeText
	special DisplayCoinCaseBalance
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Bulbasaur
	ifequal 2, .Charmander
	ifequal 3, .Squirtle
	sjump CeladonPrizeRoom_CancelPurchaseScript

.Bulbasaur:
	checkcoins CELADONGAMECORNERPRIZEROOM_BULBASAUR_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CeladonPrizeRoom_notenoughroom
	getmonname STRING_BUFFER_3, BULBASAUR
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	setval BULBASAUR
	special GameCornerPrizeMonCheckDex
	givepoke BULBASAUR, 5
	takecoins CELADONGAMECORNERPRIZEROOM_BULBASAUR_COINS
	sjump .loop

.Charmander:
	checkcoins CELADONGAMECORNERPRIZEROOM_CHARMANDER_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CeladonPrizeRoom_notenoughroom
	getmonname STRING_BUFFER_3, CHARMANDER
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	setval CHARMANDER
	special GameCornerPrizeMonCheckDex
	givepoke CHARMANDER, 5
	takecoins CELADONGAMECORNERPRIZEROOM_CHARMANDER_COINS
	sjump .loop

.Squirtle:
	checkcoins CELADONGAMECORNERPRIZEROOM_SQUIRTLE_COINS
	ifequal HAVE_LESS, CeladonPrizeRoom_notenoughcoins
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, CeladonPrizeRoom_notenoughroom
	getmonname STRING_BUFFER_3, SQUIRTLE
	scall CeladonPrizeRoom_askbuy
	iffalse CeladonPrizeRoom_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext CeladonPrizeRoom_HereYouGoText
	waitbutton
	setval SQUIRTLE
	special GameCornerPrizeMonCheckDex
	givepoke SQUIRTLE, 5
	takecoins CELADONGAMECORNERPRIZEROOM_SQUIRTLE_COINS
	sjump .loop

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 17, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "BULBASAUR    {d:CELADONGAMECORNERPRIZEROOM_BULBASAUR_COINS}@"
	db "CHARMANDER    {d:CELADONGAMECORNERPRIZEROOM_CHARMANDER_COINS}@"
	db "SQUIRTLE   {d:CELADONGAMECORNERPRIZEROOM_SQUIRTLE_COINS}@"
	db "CANCEL@"

CeladonGameCornerPrizeRoomGentlemanText:
	text "I wanted CHARMANDER,"
	line "but I was short by"
	cont "100 coins…"
	done

CeladonGameCornerPrizeRoomPharmacistText:
if DEF(_CRYSTAL_AU)
	text "I don't want to"
	line "lose my coins."
	done
else
	text "Whew…"

	para "I've got to stay"
	line "calm and cool…"

	para "I can't lose my"
	line "cool, or I'll lose"
	cont "all my money…"
	done
endc

CeladonPrizeRoom_PrizeVendorIntroText:
	text "Welcome!"

	para "We exchange your"
	line "coins for fabulous"
	cont "prizes!"
	done

CeladonPrizeRoom_AskWhichPrizeText:
	text "Which prize would"
	line "you like?"
	done

CeladonPrizeRoom_ConfirmPurchaseText:
	text "OK, so you wanted"
	line "a @"
	text_ram wStringBuffer3
	text "?"
	done

CeladonPrizeRoom_HereYouGoText:
	text "Here you go!"
	done

CeladonPrizeRoom_NotEnoughCoinsText:
	text "You don't have"
	line "enough coins."
	done

CeladonPrizeRoom_NotEnoughRoomText:
	text "You have no room"
	line "for it."
	done

CeladonPrizeRoom_ComeAgainText:
	text "Oh. Please come"
	line "back with coins!"
	done

CeladonPrizeRoom_NoCoinCaseText:
	text "Oh? You don't have"
	line "a COIN CASE."
	done

CeladonGameCornerPrizeRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  5, CELADON_CITY, 7
	warp_event  3,  5, CELADON_CITY, 7

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, CeladonGameCornerPrizeRoomTMVendor
	bg_event  4,  1, BGEVENT_READ, CeladonGameCornerPrizeRoomPokemonVendor

	def_object_events
	object_event  0,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerPrizeRoomGentlemanScript, -1
	object_event  4,  4, SPRITE_PHARMACIST, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerPrizeRoomPharmacistScript, -1
