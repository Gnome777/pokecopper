Marts:
; entries correspond to MART_* constants (see constants/mart_constants.asm)
	table_width 2
	dw MartCherrygrove
	dw MartCherrygroveDex
	dw MartViolet
	dw MartAzalea
	dw MartCianwood
	dw MartGoldenrod2F1
	dw MartGoldenrod2F2
	dw MartGoldenrod3F
	dw MartGoldenrod4F
	dw MartGoldenrod5F1
	dw MartGoldenrod5F2
	dw MartGoldenrod5F3
	dw MartGoldenrod5F4
	dw MartGoldenrod5F5
	dw MartOlivine
	dw MartEcruteak
	dw MartMahogany1
	dw MartMahogany2
	dw MartBlackthorn
	dw MartViridian
	dw MartPewter
	dw MartCerulean
	dw MartLavender
	dw MartVermilion
	dw MartCeladon2F1
	dw MartCeladon2F2
	dw MartCeladon3F
	dw MartCeladon4F
	dw MartCeladon5F1
	dw MartCeladon5F2
	dw MartFuchsia
	dw MartSaffron
	dw MartMtMoon
	dw MartIndigoPlateau
	dw MartUnderground
	assert_table_length NUM_MARTS

MartCherrygrove:
	db 1 ; # items
	db POTION
	db -1 ; end

MartCherrygroveDex:
	db 6 ; # items
	db POKE_BALL
	db POTION
	db BERRY
	db PSNCUREBERRY
	db PRZCUREBERRY
	db BURNT_BERRY
	db ICE_BERRY
	db -1 ; end

MartViolet:
	db 9 ; # items
	db POKE_BALL
	db POTION
	db GREAT_BALL
	db SUPER_POTION
	db BERRY
	db PSNCUREBERRY
	db PRZCUREBERRY
	db BURNT_BERRY
	db ICE_BERRY
	db -1 ; end

MartAzalea:
	db 10 ; # items
	db POKE_BALL
	db POTION
	db SUPER_POTION
	db PSNCUREBERRY
	db PRZCUREBERRY
	db BURNT_BERRY
	db ICE_BERRY
	db BITTER_BERRY
	db MINT_BERRY
	db GOLD_BERRY
	db -1 ; end

MartCianwood:
	db 5 ; # items
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db MAX_POTION
	db FULL_RESTORE
	db -1 ; end

MartGoldenrod2F1:
	db 10 ; # items
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db MAX_POTION
	db FULL_RESTORE
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db FULL_HEAL
	db -1 ; end

MartGoldenrod2F2:
	db 10 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db FAST_BALL
	db FRIEND_BALL
	db HEAVY_BALL
	db LEVEL_BALL
	db LOVE_BALL
	db LURE_BALL
	db MOON_BALL
	db -1 ; end

MartGoldenrod3F:
	db 10 ; # items
	db X_ACCURACY
	db X_ATTACK
	db X_DEFEND
	db X_SPECIAL
	db X_SPEED
	db DIRE_HIT
	db GUARD_SPEC
	db REPEL
	db SUPER_REPEL
	db MAX_REPEL
	db -1 ; end

MartGoldenrod4F:
	db 10 ; # items
	db PROTEIN
	db IRON
	db CARBOS
	db CALCIUM
	db HP_UP
	db BURNT_BERRY
	db ICE_BERRY
	db MINT_BERRY
	db PRZCUREBERRY
	db PSNCUREBERRY
	db -1 ; end

MartGoldenrod5F1:
	db 10 ; # items
	db TM_DYNAMICPUNCH
	db TM_HEADBUTT
	db TM_CURSE
	db TM_ROLLOUT
	db TM_ROAR
	db TM_TOXIC
	db TM_ZAP_CANNON
	db TM_ROCK_SMASH
	db TM_PSYCH_UP
	db TM_HIDDEN_POWER
	db -1 ; end

MartGoldenrod5F2:
	db 10 ; # items
	db TM_SUNNY_DAY
	db TM_SWEET_SCENT
	db TM_SNORE
	db TM_BLIZZARD
	db TM_HYPER_BEAM
	db TM_ICY_WIND
	db TM_PROTECT
	db TM_RAIN_DANCE
	db TM_GIGA_DRAIN
	db TM_ENDURE
	db -1 ; end

MartGoldenrod5F3:
	db 10 ; # items
	db TM_FRUSTRATION
	db TM_SOLARBEAM
	db TM_IRON_TAIL
	db TM_DRAGONBREATH
	db TM_THUNDER
	db TM_EARTHQUAKE
	db TM_RETURN
	db TM_DIG
	db TM_PSYCHIC_M
	db TM_SHADOW_BALL
	db -1 ; end

MartGoldenrod5F4:
	db 10 ; # items
	db TM_MUD_SLAP
	db TM_DOUBLE_TEAM
	db TM_ICE_PUNCH
	db TM_SWAGGER
	db TM_SLEEP_TALK
	db TM_SLUDGE_BOMB
	db TM_SANDSTORM
	db TM_FIRE_BLAST
	db TM_SWIFT
	db TM_DEFENSE_CURL
	db -1 ; end

MartGoldenrod5F5:
	db 10 ; # items
	db TM_THUNDERPUNCH
	db TM_DREAM_EATER
	db TM_DETECT
	db TM_REST
	db TM_ATTRACT
	db TM_THIEF
	db TM_STEEL_WING
	db TM_FIRE_PUNCH
	db TM_FURY_CUTTER
	db TM_NIGHTMARE
	db -1 ; end

MartOlivine:
	db 10 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db FAST_BALL
	db FRIEND_BALL
	db HEAVY_BALL
	db LEVEL_BALL
	db LOVE_BALL
	db LURE_BALL
	db MOON_BALL
	db -1 ; end

MartEcruteak:
	db 10 ; # items
	db POKE_BALL
	db POTION
	db GREAT_BALL
	db SUPER_POTION
	db ULTRA_BALL
	db HYPER_POTION
	db MAX_POTION
	db FULL_HEAL
	db WATER_STONE
	db THUNDERSTONE
	db FIRE_STONE
	db -1 ; end

MartMahogany1:
	db 10 ; # items
	db SLOWPOKETAIL
	db POKE_BALL
	db POTION
	db GREAT_BALL
	db SUPER_POTION
	db ULTRA_BALL
	db HYPER_POTION
	db MAX_POTION
	db FULL_RESTORE
	db FULL_HEAL
	db -1 ; end

MartMahogany2:
	db 10 ; # items
	db RAGECANDYBAR
	db POKE_BALL
	db POTION
	db GREAT_BALL
	db SUPER_POTION
	db ULTRA_BALL
	db HYPER_POTION
	db MAX_POTION
	db FULL_RESTORE
	db FULL_HEAL
	db -1 ; end

MartBlackthorn:
	db 10 ; # items
	db ULTRA_BALL
	db HYPER_POTION
	db MAX_POTION
	db FULL_RESTORE
	db FULL_HEAL
	db MAX_ELIXER
	db MAX_ETHER
	db MAX_REPEL
	db -1 ; end

MartViridian:
	db 5 ; # items
	db POKE_BALL
	db POTION
	db GREAT_BALL
	db ANTIDOTE
	db PARLYZ_HEAL
	db -1 ; end

MartPewter:
	db 10 ; # items
	db POKE_BALL
	db POTION
	db GREAT_BALL
	db SUPER_POTION
	db ESCAPE_ROPE
	db REPEL
	db SUPER_REPEL
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db -1 ; end

MartCerulean:
	db 10 ; # items
	db POKE_BALL
	db POTION
	db GREAT_BALL
	db SUPER_POTION
	db ULTRA_BALL
	db HYPER_POTION
	db ESCAPE_ROPE
	db REPEL
	db SUPER_REPEL
	db MAX_REPEL
	db FULL_HEAL
	db -1 ; end

MartLavender:
	db 10 ; # items
	db POKE_BALL
	db POTION
	db GREAT_BALL
	db SUPER_POTION
	db ULTRA_BALL
	db HYPER_POTION
	db ESCAPE_ROPE
	db REPEL
	db SUPER_REPEL
	db MAX_REPEL
	db FULL_HEAL
	db -1 ; end

MartVermilion:
	db 10 ; # items
	db POKE_BALL
	db POTION
	db GREAT_BALL
	db SUPER_POTION
	db ULTRA_BALL
	db HYPER_POTION
	db ESCAPE_ROPE
	db REPEL
	db SUPER_REPEL
	db MAX_REPEL
	db FULL_HEAL
	db -1 ; end

MartCeladon2F1:
	db 10 ; # items
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db MAX_POTION
	db FULL_RESTORE
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db FULL_HEAL
	db -1 ; end

MartCeladon2F2:
	db 10 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db FAST_BALL
	db FRIEND_BALL
	db HEAVY_BALL
	db LEVEL_BALL
	db LOVE_BALL
	db LURE_BALL
	db MOON_BALL
	db -1 ; end

MartCeladon3F:
	db 10 ; # items
	db TM_DIG
	db TM_DOUBLE_TEAM
	db TM_DREAM_EATER
	db TM_EARTHQUAKE
	db TM_HYPER_BEAM
	db TM_PSYCHIC_M
	db TM_REST
	db TM_SOLARBEAM
	db TM_SWIFT
	db TM_TOXIC
	db -1 ; end

MartCeladon4F:
	db 10 ; # items
	db BLUESKY_MAIL
	db EON_MAIL
	db FLOWER_MAIL
	db LITEBLUEMAIL
	db LOVELY_MAIL
	db MIRAGE_MAIL
	db MORPH_MAIL
	db MUSIC_MAIL
	db PORTRAITMAIL
	db SURF_MAIL
	db -1 ; end

MartCeladon5F1:
	db 5 ; # items
	db HP_UP
	db PROTEIN
	db IRON
	db CARBOS
	db CALCIUM
	db -1 ; end

MartCeladon5F2:
	db 7 ; # items
	db X_ACCURACY
	db GUARD_SPEC
	db DIRE_HIT
	db X_ATTACK
	db X_DEFEND
	db X_SPEED
	db X_SPECIAL
	db -1 ; end

MartFuchsia:
	db 10 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db MAX_POTION
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db REPEL
	db SUPER_REPEL
	db MAX_REPEL
	db -1 ; end

MartSaffron:
	db 10 ; # items
	db POKE_BALL
	db POTION
	db GREAT_BALL
	db SUPER_POTION
	db ULTRA_BALL
	db HYPER_POTION
	db ESCAPE_ROPE
	db REPEL
	db SUPER_REPEL
	db MAX_REPEL
	db FULL_HEAL
	db -1 ; end

MartMtMoon:
	db 10 ; # items
	db POKE_BALL
	db POTION
	db GREAT_BALL
	db SUPER_POTION
	db ULTRA_BALL
	db HYPER_POTION
	db ESCAPE_ROPE
	db WATER_STONE
	db THUNDERSTONE
	db FIRE_STONE
	db MOON_STONE
	db -1 ; end

MartIndigoPlateau:
	db 10 ; # items
	db ULTRA_BALL
	db MAX_POTION
	db FULL_RESTORE
	db FULL_HEAL
	db MAX_ELIXER
	db MAX_ETHER
	db MAX_REPEL
	db REVIVE
	db MAX_REVIVE
	db REVIVAL_HERB
	db -1 ; end

MartUnderground:
	db 10 ; # items
	db BLACKBELT_I
	db BLACKGLASSES
	db CHARCOAL
	db DRAGON_FANG
	db HARD_STONE
	db MAGNET
	db METAL_COAT
	db NEVERMELTICE
	db POISON_BARB
	db SOFT_SAND
	db -1 ; end

DefaultMart:
	db 10 ; # items
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db MAX_POTION
	db FULL_RESTORE
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db FULL_HEAL
	db -1 ; end
