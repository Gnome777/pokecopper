DEF ABSOLUTE_X EQU $00
DEF RELATIVE_X EQU $01

MACRO battleanimobj
	db \1 ; flags
	; bit 7: priority
	; bit 6: y flip (for enemy)
	; bit 5: x flip (for enemy)
	; bit 0: enable enemy animation coord fixing (x = $b4 - x; see below for y)
	db \2 ; enemy animation y fix param
	; if $FF: y = y + 5 tiles
	; else:   y = -y - (1 tile) * (is_softboiled_animation)
	db \3 ; video sequence
	db \4 ; callback
	db \5 ; palette
	db \6 ; tile offset
ENDM

BattleAnimObjects:
; entries correspond to BATTLE_ANIM_OBJ_* constants
	table_width BATTLEANIMOBJ_LENGTH
; BATTLE_ANIM_OBJ_HIT_BIG_YFIX
	battleanimobj RELATIVE_X, $ff, BATTLE_ANIM_FRAMESET_HIT_BIG, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_HIT
; BATTLE_ANIM_OBJ_HIT_YFIX
	battleanimobj RELATIVE_X, $ff, BATTLE_ANIM_FRAMESET_HIT, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_HIT
; BATTLE_ANIM_OBJ_HIT_SMALL_YFIX
	battleanimobj RELATIVE_X, $ff, BATTLE_ANIM_FRAMESET_HIT_SMALL, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_HIT
; BATTLE_ANIM_OBJ_HIT_BIG
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_HIT_BIG, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_HIT
; BATTLE_ANIM_OBJ_HIT
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_HIT, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_HIT
; BATTLE_ANIM_OBJ_HIT_SMALL
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_HIT_SMALL, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_HIT
; BATTLE_ANIM_OBJ_PUNCH
	battleanimobj RELATIVE_X, $ff, BATTLE_ANIM_FRAMESET_PUNCH, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_HIT
; BATTLE_ANIM_OBJ_KICK
	battleanimobj RELATIVE_X, $ff, BATTLE_ANIM_FRAMESET_KICK, BATTLE_ANIM_FUNC_KICK, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_HIT
; BATTLE_ANIM_OBJ_PALM
	battleanimobj RELATIVE_X, $ff, BATTLE_ANIM_FRAMESET_PALM, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_HIT
; BATTLE_ANIM_OBJ_FANG
	battleanimobj RELATIVE_X, $ff, BATTLE_ANIM_FRAMESET_FANG, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_HIT
; BATTLE_ANIM_OBJ_PUNCH_SHAKE
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_PUNCH_SHAKE, BATTLE_ANIM_FUNC_SHAKE, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_HIT
; BATTLE_ANIM_OBJ_EMBER
	battleanimobj RELATIVE_X, $aa, BATTLE_ANIM_FRAMESET_EMBER, BATTLE_ANIM_FUNC_EMBER, PAL_BATTLE_OB_RED, BATTLE_ANIM_GFX_FIRE
; BATTLE_ANIM_OBJ_DRAGON_RAGE
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_DRAGON_RAGE, BATTLE_ANIM_FUNC_WAVE_TO_TARGET, PAL_BATTLE_OB_RED, BATTLE_ANIM_GFX_FIRE
; BATTLE_ANIM_OBJ_FLAMETHROWER
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_FLAMETHROWER, BATTLE_ANIM_FUNC_MOVE_IN_CIRCLE, PAL_BATTLE_OB_RED, BATTLE_ANIM_GFX_FIRE
; BATTLE_ANIM_OBJ_FIRE_SPIN
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_EMBER, BATTLE_ANIM_FUNC_USER_TO_TARGET_SPIN, PAL_BATTLE_OB_RED, BATTLE_ANIM_GFX_FIRE
; BATTLE_ANIM_OBJ_FIRE_BLAST
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_FLAMETHROWER, BATTLE_ANIM_FUNC_FIRE_BLAST, PAL_BATTLE_OB_RED, BATTLE_ANIM_GFX_FIRE
; BATTLE_ANIM_OBJ_BURNED
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_BURNED, BATTLE_ANIM_FUNC_MOVE_IN_CIRCLE, PAL_BATTLE_OB_RED, BATTLE_ANIM_GFX_FIRE
; BATTLE_ANIM_OBJ_BLIZZARD
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_BLIZZARD, BATTLE_ANIM_FUNC_USER_TO_TARGET_SPIN, PAL_BATTLE_OB_BLUE, BATTLE_ANIM_GFX_ICE
; BATTLE_ANIM_OBJ_ICE
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_ICE, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_BLUE, BATTLE_ANIM_GFX_ICE
; BATTLE_ANIM_OBJ_ICE_BEAM
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_ICE_BEAM, BATTLE_ANIM_FUNC_USER_TO_TARGET, PAL_BATTLE_OB_BLUE, BATTLE_ANIM_GFX_ICE
; BATTLE_ANIM_OBJ_RAZOR_LEAF
	battleanimobj RELATIVE_X | OAM_XFLIP, $78, BATTLE_ANIM_FRAMESET_RAZOR_LEAF_1, BATTLE_ANIM_FUNC_RAZOR_LEAF, PAL_BATTLE_OB_GREEN, BATTLE_ANIM_GFX_PLANT
; BATTLE_ANIM_OBJ_POKE_BALL
	battleanimobj ABSOLUTE_X, $00, BATTLE_ANIM_FRAMESET_POKE_BALL_1, BATTLE_ANIM_FUNC_POKEBALL, PAL_BATTLE_OB_RED, BATTLE_ANIM_GFX_POKE_BALL
; BATTLE_ANIM_OBJ_POKE_BALL_BLOCKED
	battleanimobj ABSOLUTE_X, $00, BATTLE_ANIM_FRAMESET_POKE_BALL_1, BATTLE_ANIM_FUNC_POKEBALL_BLOCKED, PAL_BATTLE_OB_RED, BATTLE_ANIM_GFX_POKE_BALL
; BATTLE_ANIM_OBJ_EXPLOSION1
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_EXPLOSION, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_RED, BATTLE_ANIM_GFX_EXPLOSION
; BATTLE_ANIM_OBJ_EXPLOSION2
	battleanimobj RELATIVE_X, $ff, BATTLE_ANIM_FRAMESET_EXPLOSION, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_RED, BATTLE_ANIM_GFX_EXPLOSION
; BATTLE_ANIM_OBJ_ACID
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_ACID, BATTLE_ANIM_FUNC_THROW_TO_TARGET_DISAPPEAR, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_POISON
; BATTLE_ANIM_OBJ_SLUDGE
	battleanimobj RELATIVE_X, $b4, BATTLE_ANIM_FRAMESET_SLUDGE_BUBBLE, BATTLE_ANIM_FUNC_SLUDGE, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_POISON
; BATTLE_ANIM_OBJ_BETA_BALL_POOF
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_BALL_POOF, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_SMOKE
; BATTLE_ANIM_OBJ_BALL_POOF
	battleanimobj RELATIVE_X, $a0, BATTLE_ANIM_FRAMESET_BALL_POOF, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_SMOKE
; BATTLE_ANIM_OBJ_BIG_ROCK
	battleanimobj RELATIVE_X, $ff, BATTLE_ANIM_FRAMESET_BIG_ROCK, BATTLE_ANIM_FUNC_DROP, PAL_BATTLE_OB_BROWN, BATTLE_ANIM_GFX_ROCKS
; BATTLE_ANIM_OBJ_SMALL_ROCK
	battleanimobj RELATIVE_X, $ff, BATTLE_ANIM_FRAMESET_SMALL_ROCK, BATTLE_ANIM_FUNC_DROP, PAL_BATTLE_OB_BROWN, BATTLE_ANIM_GFX_ROCKS
; BATTLE_ANIM_OBJ_STRENGTH
	battleanimobj RELATIVE_X, $b0, BATTLE_ANIM_FRAMESET_STRENGTH, BATTLE_ANIM_FUNC_STRENGTH_SEISMIC_TOSS, PAL_BATTLE_OB_BROWN, BATTLE_ANIM_GFX_ROCKS
; BATTLE_ANIM_OBJ_SEISMIC_TOSS
	battleanimobj RELATIVE_X, $b0, BATTLE_ANIM_FRAMESET_SEISMIC_TOSS, BATTLE_ANIM_FUNC_STRENGTH_SEISMIC_TOSS, PAL_BATTLE_OB_BLUE, BATTLE_ANIM_GFX_GLOBE
; BATTLE_ANIM_OBJ_BUBBLE
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_SMALL_BUBBLE, BATTLE_ANIM_FUNC_BUBBLE, PAL_BATTLE_OB_BLUE, BATTLE_ANIM_GFX_BUBBLE
; BATTLE_ANIM_OBJ_SURF
	battleanimobj ABSOLUTE_X, $00, BATTLE_ANIM_FRAMESET_SURF, BATTLE_ANIM_FUNC_SURF, PAL_BATTLE_OB_BLUE, BATTLE_ANIM_GFX_BUBBLE
; BATTLE_ANIM_OBJ_SING
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_MUSIC_NOTE_1, BATTLE_ANIM_FUNC_SING, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_NOISE
; BATTLE_ANIM_OBJ_WATER_GUN
	battleanimobj RELATIVE_X | OAM_XFLIP | OAM_YFLIP, $80, BATTLE_ANIM_FRAMESET_WATER_GUN_1, BATTLE_ANIM_FUNC_WATER_GUN, PAL_BATTLE_OB_BLUE, BATTLE_ANIM_GFX_WATER
; BATTLE_ANIM_OBJ_HYDRO_PUMP
	battleanimobj RELATIVE_X, $b4, BATTLE_ANIM_FRAMESET_HYDRO_PUMP, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_BLUE, BATTLE_ANIM_GFX_WATER
; BATTLE_ANIM_OBJ_POWDER
	battleanimobj RELATIVE_X, $40, BATTLE_ANIM_FRAMESET_POWDER, BATTLE_ANIM_FUNC_POWDER, PAL_BATTLE_OB_GREEN, BATTLE_ANIM_GFX_POWDER
; BATTLE_ANIM_OBJ_BEAM
	battleanimobj RELATIVE_X | OAM_XFLIP | OAM_YFLIP, $98, BATTLE_ANIM_FRAMESET_BEAM, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_BEAM
; BATTLE_ANIM_OBJ_BEAM_TIP
	battleanimobj RELATIVE_X | OAM_XFLIP | OAM_YFLIP, $98, BATTLE_ANIM_FRAMESET_BEAM_TIP, BATTLE_ANIM_FUNC_SHAKE, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_BEAM
; BATTLE_ANIM_OBJ_ICE_BUILDUP
	battleanimobj RELATIVE_X, $b8, BATTLE_ANIM_FRAMESET_ICE_BUILDUP, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_BLUE, BATTLE_ANIM_GFX_ICE
; BATTLE_ANIM_OBJ_FROZEN
	battleanimobj RELATIVE_X, $b8, BATTLE_ANIM_FRAMESET_FROZEN, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_BLUE, BATTLE_ANIM_GFX_ICE
; BATTLE_ANIM_OBJ_MASTER_BALL_SPARKLE
	battleanimobj RELATIVE_X, $b8, BATTLE_ANIM_FRAMESET_CIRCLING_SPARKLE, BATTLE_ANIM_FUNC_RECOVER, PAL_BATTLE_OB_BROWN, BATTLE_ANIM_GFX_SPEED
; BATTLE_ANIM_OBJ_RECOVER
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_SMALL_BUBBLE, BATTLE_ANIM_FUNC_RECOVER, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_BUBBLE
; BATTLE_ANIM_OBJ_THUNDER_CENTER
	battleanimobj RELATIVE_X | OAM_XFLIP, $b0, BATTLE_ANIM_FRAMESET_THUNDER_CENTER, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_LIGHTNING
; BATTLE_ANIM_OBJ_THUNDER_LEFT
	battleanimobj RELATIVE_X | OAM_XFLIP, $b0, BATTLE_ANIM_FRAMESET_THUNDER_LEFT, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_LIGHTNING
; BATTLE_ANIM_OBJ_THUNDER_RIGHT
	battleanimobj RELATIVE_X | OAM_XFLIP, $b0, BATTLE_ANIM_FRAMESET_THUNDER_RIGHT, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_LIGHTNING
; BATTLE_ANIM_OBJ_THUNDER_WAVE
	battleanimobj RELATIVE_X | OAM_XFLIP, $90, BATTLE_ANIM_FRAMESET_THUNDER_WAVE_DISABLE, BATTLE_ANIM_FUNC_THUNDER_WAVE, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_LIGHTNING
; BATTLE_ANIM_OBJ_THUNDERBOLT_SPARKS
	battleanimobj RELATIVE_X | OAM_XFLIP, $90, BATTLE_ANIM_FRAMESET_THUNDERBOLT_SPARKS, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_LIGHTNING
; BATTLE_ANIM_OBJ_THUNDERBOLT_CORE
	battleanimobj RELATIVE_X | OAM_XFLIP, $90, BATTLE_ANIM_FRAMESET_THUNDERBOLT_CORE, BATTLE_ANIM_FUNC_MOVE_IN_CIRCLE, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_EXPLOSION
; BATTLE_ANIM_OBJ_THUNDERSHOCK_SPARKS
	battleanimobj RELATIVE_X | OAM_XFLIP, $90, BATTLE_ANIM_FRAMESET_THUNDERSHOCK_SPARKS, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_LIGHTNING
; BATTLE_ANIM_OBJ_THUNDERSHOCK_CORE
	battleanimobj RELATIVE_X | OAM_XFLIP, $90, BATTLE_ANIM_FRAMESET_THUNDERSHOCK_CORE, BATTLE_ANIM_FUNC_MOVE_IN_CIRCLE, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_EXPLOSION
; BATTLE_ANIM_OBJ_CLAMP
	battleanimobj RELATIVE_X | OAM_XFLIP, $90, BATTLE_ANIM_FRAMESET_CLAMP, BATTLE_ANIM_FUNC_CLAMP_ENCORE, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_CUT
; BATTLE_ANIM_OBJ_BITE
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_BITE_1, BATTLE_ANIM_FUNC_BITE, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_CUT
; BATTLE_ANIM_OBJ_CUT_DOWN_LEFT
	battleanimobj RELATIVE_X | OAM_XFLIP, $ff, BATTLE_ANIM_FRAMESET_CUT_DOWN_LEFT, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_CUT
; BATTLE_ANIM_OBJ_CUT_DOWN_RIGHT
	battleanimobj RELATIVE_X | OAM_XFLIP, $ff, BATTLE_ANIM_FRAMESET_CUT_DOWN_RIGHT, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_CUT
; BATTLE_ANIM_OBJ_CUT_UP_RIGHT
	battleanimobj RELATIVE_X | OAM_XFLIP, $ff, BATTLE_ANIM_FRAMESET_CUT_UP_RIGHT, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_CUT
; BATTLE_ANIM_OBJ_CUT_LONG_DOWN_LEFT
	battleanimobj RELATIVE_X | OAM_XFLIP, $ff, BATTLE_ANIM_FRAMESET_CUT_LONG_DOWN_LEFT, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_CUT
; BATTLE_ANIM_OBJ_CUT_LONG_DOWN_RIGHT
	battleanimobj RELATIVE_X | OAM_XFLIP, $ff, BATTLE_ANIM_FRAMESET_CUT_LONG_DOWN_RIGHT, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_CUT
; BATTLE_ANIM_OBJ_SOLAR_BEAM_CHARGE
	battleanimobj RELATIVE_X, $88, BATTLE_ANIM_FRAMESET_CHARGE_ORB_1, BATTLE_ANIM_FUNC_SOLAR_BEAM, PAL_BATTLE_OB_GREEN, BATTLE_ANIM_GFX_CHARGE
; BATTLE_ANIM_OBJ_ABSORB_CENTER
	battleanimobj RELATIVE_X, $88, BATTLE_ANIM_FRAMESET_ABSORB_CENTER, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GREEN, BATTLE_ANIM_GFX_CHARGE
; BATTLE_ANIM_OBJ_GUST
	battleanimobj RELATIVE_X | OAM_XFLIP, $b8, BATTLE_ANIM_FRAMESET_GUST, BATTLE_ANIM_FUNC_GUST, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_WIND
; BATTLE_ANIM_OBJ_VINE_WHIP1
	battleanimobj RELATIVE_X | OAM_XFLIP, $ff, BATTLE_ANIM_FRAMESET_VINE_WHIP_1, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_WHIP
; BATTLE_ANIM_OBJ_VINE_WHIP2
	battleanimobj RELATIVE_X | OAM_XFLIP, $ff, BATTLE_ANIM_FRAMESET_VINE_WHIP_2, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_WHIP
; BATTLE_ANIM_OBJ_RAZOR_WIND1
	battleanimobj RELATIVE_X | OAM_XFLIP, $ff, BATTLE_ANIM_FRAMESET_RAZOR_WIND_1, BATTLE_ANIM_FUNC_RAZOR_WIND, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_WHIP
; BATTLE_ANIM_OBJ_RAZOR_WIND2
	battleanimobj RELATIVE_X | OAM_XFLIP, $ff, BATTLE_ANIM_FRAMESET_RAZOR_WIND_2, BATTLE_ANIM_FUNC_RAZOR_WIND, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_WHIP
; BATTLE_ANIM_OBJ_SONICBOOM_JP
	battleanimobj RELATIVE_X | OAM_XFLIP, $98, BATTLE_ANIM_FRAMESET_SONICBOOM_JP, BATTLE_ANIM_FUNC_USER_TO_TARGET, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_WHIP
; BATTLE_ANIM_OBJ_WARP
	battleanimobj RELATIVE_X | OAM_XFLIP, $80, BATTLE_ANIM_FRAMESET_WARP, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_SPEED
; BATTLE_ANIM_OBJ_ABSORB
	battleanimobj RELATIVE_X, $88, BATTLE_ANIM_FRAMESET_CHARGE_ORB_2, BATTLE_ANIM_FUNC_ABSORB, PAL_BATTLE_OB_GREEN, BATTLE_ANIM_GFX_CHARGE
; BATTLE_ANIM_OBJ_EGG
	battleanimobj RELATIVE_X | OAM_XFLIP, $b0, BATTLE_ANIM_FRAMESET_EGG, BATTLE_ANIM_FUNC_EGG, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_EGG
; BATTLE_ANIM_OBJ_FOCUS
	battleanimobj RELATIVE_X, $b0, BATTLE_ANIM_FRAMESET_FOCUS, BATTLE_ANIM_FUNC_MOVE_UP, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_SPEED
; BATTLE_ANIM_OBJ_BIND1
	battleanimobj RELATIVE_X | OAM_XFLIP, $ff, BATTLE_ANIM_FRAMESET_BIND_1, BATTLE_ANIM_FUNC_WRAP, PAL_BATTLE_OB_GREEN, BATTLE_ANIM_GFX_ROPE
; BATTLE_ANIM_OBJ_BIND2
	battleanimobj RELATIVE_X | OAM_XFLIP, $ff, BATTLE_ANIM_FRAMESET_BIND_3, BATTLE_ANIM_FUNC_WRAP, PAL_BATTLE_OB_GREEN, BATTLE_ANIM_GFX_ROPE
; BATTLE_ANIM_OBJ_LEECH_SEED
	battleanimobj RELATIVE_X | OAM_XFLIP, $68, BATTLE_ANIM_FRAMESET_LEECH_SEED_1, BATTLE_ANIM_FUNC_LEECH_SEED, PAL_BATTLE_OB_GREEN, BATTLE_ANIM_GFX_PLANT
; BATTLE_ANIM_OBJ_SOUND
	battleanimobj RELATIVE_X | OAM_XFLIP, $90, BATTLE_ANIM_FRAMESET_SOUND_1, BATTLE_ANIM_FUNC_SOUND, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_NOISE
; BATTLE_ANIM_OBJ_WAVE
	battleanimobj RELATIVE_X | OAM_XFLIP, $90, BATTLE_ANIM_FRAMESET_WAVE, BATTLE_ANIM_FUNC_USER_TO_TARGET_DISAPPEAR, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_PSYCHIC
; BATTLE_ANIM_OBJ_CONFUSE_RAY
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_CONFUSE_RAY_1, BATTLE_ANIM_FUNC_CONFUSE_RAY, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_SPEED
; BATTLE_ANIM_OBJ_LEER
	battleanimobj RELATIVE_X | OAM_XFLIP | OAM_YFLIP, $88, BATTLE_ANIM_FRAMESET_LEER, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_BEAM
; BATTLE_ANIM_OBJ_LEER_TIP
	battleanimobj RELATIVE_X | OAM_XFLIP | OAM_YFLIP, $88, BATTLE_ANIM_FRAMESET_BEAM_TIP, BATTLE_ANIM_FUNC_SHAKE, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_BEAM
; BATTLE_ANIM_OBJ_SCREEN
	battleanimobj RELATIVE_X | OAM_XFLIP, $88, BATTLE_ANIM_FRAMESET_REFLECT, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_REFLECT
; BATTLE_ANIM_OBJ_HARDEN
	battleanimobj RELATIVE_X | OAM_XFLIP, $80, BATTLE_ANIM_FRAMESET_REFLECT, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_REFLECT
; BATTLE_ANIM_OBJ_CHICK
	battleanimobj RELATIVE_X | OAM_XFLIP, $50, BATTLE_ANIM_FRAMESET_CHICK_1, BATTLE_ANIM_FUNC_DIZZY, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_STATUS
; BATTLE_ANIM_OBJ_AMNESIA
	battleanimobj RELATIVE_X, $80, BATTLE_ANIM_FRAMESET_AMNESIA_1, BATTLE_ANIM_FUNC_AMNESIA, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_STATUS
; BATTLE_ANIM_OBJ_ASLEEP
	battleanimobj RELATIVE_X, $80, BATTLE_ANIM_FRAMESET_ASLEEP, BATTLE_ANIM_FUNC_FLOAT_UP, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_STATUS
; BATTLE_ANIM_OBJ_SKULL_CROSSBONE
	battleanimobj RELATIVE_X, $50, BATTLE_ANIM_FRAMESET_SKULL_CROSSBONE, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_POISON
; BATTLE_ANIM_OBJ_DIG_SAND
	battleanimobj RELATIVE_X | OAM_XFLIP, $a8, BATTLE_ANIM_FRAMESET_DIG_SAND, BATTLE_ANIM_FUNC_DIG, PAL_BATTLE_OB_BROWN, BATTLE_ANIM_GFX_SAND
; BATTLE_ANIM_OBJ_DIG_PILE
	battleanimobj RELATIVE_X | OAM_XFLIP, $a8, BATTLE_ANIM_FRAMESET_DIG_PILE, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_BROWN, BATTLE_ANIM_GFX_SAND
; BATTLE_ANIM_OBJ_SAND
	battleanimobj RELATIVE_X | OAM_XFLIP, $90, BATTLE_ANIM_FRAMESET_SAND, BATTLE_ANIM_FUNC_USER_TO_TARGET, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_SAND
; BATTLE_ANIM_OBJ_PARALYZED
	battleanimobj RELATIVE_X | OAM_XFLIP, $90, BATTLE_ANIM_FRAMESET_PARALYZED, BATTLE_ANIM_FUNC_PARALYZED, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_STATUS
; BATTLE_ANIM_OBJ_STRING_SHOT
	battleanimobj RELATIVE_X | OAM_XFLIP, $90, BATTLE_ANIM_FRAMESET_STRING_SHOT_1, BATTLE_ANIM_FUNC_STRING, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_WEB
; BATTLE_ANIM_OBJ_HAZE
	battleanimobj ABSOLUTE_X, $00, BATTLE_ANIM_FRAMESET_HAZE, BATTLE_ANIM_FUNC_SPIRAL_DESCENT, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_HAZE
; BATTLE_ANIM_OBJ_MIST
	battleanimobj RELATIVE_X | OAM_XFLIP, $48, BATTLE_ANIM_FRAMESET_MIST, BATTLE_ANIM_FUNC_SPIRAL_DESCENT, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_HAZE
; BATTLE_ANIM_OBJ_SMOG
	battleanimobj RELATIVE_X | OAM_XFLIP, $48, BATTLE_ANIM_FRAMESET_HAZE, BATTLE_ANIM_FUNC_SPIRAL_DESCENT, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_HAZE
; BATTLE_ANIM_OBJ_POISON_GAS
	battleanimobj RELATIVE_X | OAM_XFLIP, $78, BATTLE_ANIM_FRAMESET_HAZE, BATTLE_ANIM_FUNC_POISON_GAS, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_HAZE
; BATTLE_ANIM_OBJ_HORN
	battleanimobj RELATIVE_X | OAM_XFLIP | OAM_YFLIP, $90, BATTLE_ANIM_FRAMESET_HORN, BATTLE_ANIM_FUNC_HORN, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_HORN
; BATTLE_ANIM_OBJ_NEEDLE
	battleanimobj RELATIVE_X | OAM_XFLIP | OAM_YFLIP, $90, BATTLE_ANIM_FRAMESET_NEEDLE, BATTLE_ANIM_FUNC_NEEDLE, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_HORN
; BATTLE_ANIM_OBJ_PETAL_DANCE
	battleanimobj RELATIVE_X, $48, BATTLE_ANIM_FRAMESET_FLOWER, BATTLE_ANIM_FUNC_PETAL_DANCE, PAL_BATTLE_OB_RED, BATTLE_ANIM_GFX_FLOWER
; BATTLE_ANIM_OBJ_SLUDGE_BOMB
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_BARRAGE_BALL, BATTLE_ANIM_FUNC_THROW_TO_TARGET_DISAPPEAR, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_EGG
; BATTLE_ANIM_OBJ_PAY_DAY
	battleanimobj RELATIVE_X, $ff, BATTLE_ANIM_FRAMESET_PAY_DAY, BATTLE_ANIM_FUNC_THIEF_PAYDAY, PAL_BATTLE_OB_BROWN, BATTLE_ANIM_GFX_STATUS
; BATTLE_ANIM_OBJ_SONICBOOM_JP_UNUSED
	battleanimobj RELATIVE_X | OAM_XFLIP, $90, BATTLE_ANIM_FRAMESET_SONICBOOM_JP, BATTLE_ANIM_FUNC_USER_TO_TARGET_DISAPPEAR, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_WHIP
; BATTLE_ANIM_OBJ_MIMIC
	battleanimobj RELATIVE_X, $80, BATTLE_ANIM_FRAMESET_CIRCLING_SPARKLE, BATTLE_ANIM_FUNC_ABSORB_CIRCLE, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_SPEED
; BATTLE_ANIM_OBJ_ATTRACT
	battleanimobj RELATIVE_X, $78, BATTLE_ANIM_FRAMESET_HEART, BATTLE_ANIM_FUNC_POISON_GAS, PAL_BATTLE_OB_RED, BATTLE_ANIM_GFX_OBJECTS
; BATTLE_ANIM_OBJ_BONEMERANG
	battleanimobj RELATIVE_X, $80, BATTLE_ANIM_FRAMESET_SPINNING_BONE, BATTLE_ANIM_FUNC_BONEMERANG, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_MISC
; BATTLE_ANIM_OBJ_BONE_CLUB
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_SPINNING_BONE, BATTLE_ANIM_FUNC_USER_TO_TARGET_DISAPPEAR, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_MISC
; BATTLE_ANIM_OBJ_BONE_RUSH
	battleanimobj RELATIVE_X, $ff, BATTLE_ANIM_FRAMESET_SPINNING_BONE, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_MISC
; BATTLE_ANIM_OBJ_SWIFT
	battleanimobj RELATIVE_X, $80, BATTLE_ANIM_FRAMESET_STAR, BATTLE_ANIM_FUNC_USER_TO_TARGET_SPIN, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_OBJECTS
; BATTLE_ANIM_OBJ_KINESIS
	battleanimobj RELATIVE_X | OAM_XFLIP, $90, BATTLE_ANIM_FRAMESET_SPOON, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_MISC
; BATTLE_ANIM_OBJ_FLASH
	battleanimobj RELATIVE_X, $ff, BATTLE_ANIM_FRAMESET_SPARKLE, BATTLE_ANIM_FUNC_SHINY, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_SPEED
; BATTLE_ANIM_OBJ_SHINY
	battleanimobj RELATIVE_X, $88, BATTLE_ANIM_FRAMESET_SPARKLE, BATTLE_ANIM_FUNC_SHINY, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_SPEED
; BATTLE_ANIM_OBJ_SKY_ATTACK
	battleanimobj RELATIVE_X | OAM_XFLIP, $88, BATTLE_ANIM_FRAMESET_SKY_ATTACK, BATTLE_ANIM_FUNC_SKY_ATTACK, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_SKY_ATTACK
; BATTLE_ANIM_OBJ_LICK
	battleanimobj RELATIVE_X | OAM_XFLIP, $98, BATTLE_ANIM_FRAMESET_LICK, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_WATER
; BATTLE_ANIM_OBJ_WITHDRAW
	battleanimobj RELATIVE_X | OAM_XFLIP, $80, BATTLE_ANIM_FRAMESET_WITHDRAW_SHELL, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_REFLECT
; BATTLE_ANIM_OBJ_DRAIN
	battleanimobj RELATIVE_X, $80, BATTLE_ANIM_FRAMESET_SMALL_BUBBLE, BATTLE_ANIM_FUNC_ABSORB_CIRCLE, PAL_BATTLE_OB_BLUE, BATTLE_ANIM_GFX_BUBBLE
; BATTLE_ANIM_OBJ_GROWTH
	battleanimobj RELATIVE_X, $b0, BATTLE_ANIM_FRAMESET_SHRINKING_CHARGE_ORB, BATTLE_ANIM_FUNC_GROWTH_SWORDS_DANCE, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_CHARGE
; BATTLE_ANIM_OBJ_CONVERSION2
	battleanimobj RELATIVE_X, $80, BATTLE_ANIM_FRAMESET_CONVERSION, BATTLE_ANIM_FUNC_ABSORB_CIRCLE, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_EXPLOSION
; BATTLE_ANIM_OBJ_SMOKE
	battleanimobj RELATIVE_X | OAM_XFLIP, $a0, BATTLE_ANIM_FRAMESET_HAZE, BATTLE_ANIM_FUNC_SMOKE_FLAME_WHEEL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_HAZE
; BATTLE_ANIM_OBJ_SMOKESCREEN
	battleanimobj RELATIVE_X | OAM_XFLIP, $a0, BATTLE_ANIM_FRAMESET_BARRAGE_BALL, BATTLE_ANIM_FUNC_PRESENT_SMOKESCREEN, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_EGG
; BATTLE_ANIM_OBJ_SWORDS_DANCE
	battleanimobj RELATIVE_X | OAM_XFLIP, $b0, BATTLE_ANIM_FRAMESET_SWORD, BATTLE_ANIM_FUNC_GROWTH_SWORDS_DANCE, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_WHIP
; BATTLE_ANIM_OBJ_SPEED_LINE
	battleanimobj RELATIVE_X, $88, BATTLE_ANIM_FRAMESET_SPEED_LINE_1, BATTLE_ANIM_FUNC_SPEED_LINE, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_SPEED
; BATTLE_ANIM_OBJ_SHARPEN
	battleanimobj RELATIVE_X, $88, BATTLE_ANIM_FRAMESET_SHARPEN, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_SHAPES
; BATTLE_ANIM_OBJ_DEFENSE_CURL
	battleanimobj RELATIVE_X, $88, BATTLE_ANIM_FRAMESET_DEFENSE_CURL, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_SHAPES
; BATTLE_ANIM_OBJ_METRONOME_HAND
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_METRONOME_HAND, BATTLE_ANIM_FUNC_METRONOME_HAND, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_MISC
; BATTLE_ANIM_OBJ_METRONOME_SPARKLE
	battleanimobj RELATIVE_X, $80, BATTLE_ANIM_FRAMESET_CIRCLING_SPARKLE, BATTLE_ANIM_FUNC_METRONOME_SPARKLE_SKETCH, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_SPEED
; BATTLE_ANIM_OBJ_DISABLE
	battleanimobj RELATIVE_X | OAM_XFLIP, $90, BATTLE_ANIM_FRAMESET_THUNDER_WAVE_DISABLE, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_LIGHTNING
; BATTLE_ANIM_OBJ_AGILITY
	battleanimobj RELATIVE_X | OAM_XFLIP | OAM_PRIO, $88, BATTLE_ANIM_FRAMESET_AGILITY, BATTLE_ANIM_FUNC_AGILITY, PAL_BATTLE_OB_BLUE, BATTLE_ANIM_GFX_WIND
; BATTLE_ANIM_OBJ_HEART
	battleanimobj RELATIVE_X, $80, BATTLE_ANIM_FRAMESET_HEART, BATTLE_ANIM_FUNC_FLOAT_UP, PAL_BATTLE_OB_RED, BATTLE_ANIM_GFX_OBJECTS
; BATTLE_ANIM_OBJ_FLAME_WHEEL
	battleanimobj RELATIVE_X, $98, BATTLE_ANIM_FRAMESET_EMBER, BATTLE_ANIM_FUNC_SMOKE_FLAME_WHEEL, PAL_BATTLE_OB_RED, BATTLE_ANIM_GFX_FIRE
; BATTLE_ANIM_OBJ_SACRED_FIRE
	battleanimobj RELATIVE_X, $a8, BATTLE_ANIM_FRAMESET_FLAMETHROWER, BATTLE_ANIM_FUNC_SACRED_FIRE, PAL_BATTLE_OB_RED, BATTLE_ANIM_GFX_FIRE
; BATTLE_ANIM_OBJ_COTTON_SPORE
	battleanimobj RELATIVE_X | OAM_XFLIP, $68, BATTLE_ANIM_FRAMESET_COTTON, BATTLE_ANIM_FUNC_SPIRAL_DESCENT, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_MISC
; BATTLE_ANIM_OBJ_MILK_DRINK
	battleanimobj RELATIVE_X | OAM_XFLIP, $b0, BATTLE_ANIM_FRAMESET_MILK_BOTTLE, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_MISC
; BATTLE_ANIM_OBJ_ANGER
	battleanimobj RELATIVE_X | OAM_XFLIP, $80, BATTLE_ANIM_FRAMESET_ANGER_VEIN, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_MISC
; BATTLE_ANIM_OBJ_HEAL_BELL
	battleanimobj RELATIVE_X | OAM_XFLIP, $50, BATTLE_ANIM_FRAMESET_HEAL_BELL, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_MISC
; BATTLE_ANIM_OBJ_HEAL_BELL_NOTE
	battleanimobj RELATIVE_X, $40, BATTLE_ANIM_FRAMESET_MUSIC_NOTE_1, BATTLE_ANIM_FUNC_HEAL_BELL_NOTES, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_NOISE
; BATTLE_ANIM_OBJ_BATON_PASS
	battleanimobj RELATIVE_X | OAM_XFLIP, $a8, BATTLE_ANIM_FRAMESET_BATON_PASS, BATTLE_ANIM_FUNC_BATON_PASS, PAL_BATTLE_OB_RED, BATTLE_ANIM_GFX_MISC
; BATTLE_ANIM_OBJ_LOCK_ON
	battleanimobj RELATIVE_X | OAM_XFLIP, $88, BATTLE_ANIM_FRAMESET_LOCK_ON_1, BATTLE_ANIM_FUNC_LOCK_ON_MIND_READER, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_MISC
; BATTLE_ANIM_OBJ_MIND_READER
	battleanimobj RELATIVE_X | OAM_XFLIP, $88, BATTLE_ANIM_FRAMESET_MIND_READER_1, BATTLE_ANIM_FUNC_LOCK_ON_MIND_READER, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_MISC
; BATTLE_ANIM_OBJ_SAFEGUARD
	battleanimobj RELATIVE_X | OAM_XFLIP, $90, BATTLE_ANIM_FRAMESET_SAFEGUARD, BATTLE_ANIM_FUNC_SAFEGUARD_PROTECT, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_MISC
; BATTLE_ANIM_OBJ_PROTECT
	battleanimobj RELATIVE_X | OAM_XFLIP, $90, BATTLE_ANIM_FRAMESET_STAR, BATTLE_ANIM_FUNC_SAFEGUARD_PROTECT, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_OBJECTS
; BATTLE_ANIM_OBJ_THIEF
	battleanimobj RELATIVE_X, $ff, BATTLE_ANIM_FRAMESET_ITEM_BAG, BATTLE_ANIM_FUNC_THIEF_PAYDAY, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_STATUS
; BATTLE_ANIM_OBJ_OCTAZOOKA
	battleanimobj RELATIVE_X | OAM_XFLIP, $a0, BATTLE_ANIM_FRAMESET_BARRAGE_BALL, BATTLE_ANIM_FUNC_USER_TO_TARGET_DISAPPEAR, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_EGG
; BATTLE_ANIM_OBJ_PRESENT
	battleanimobj RELATIVE_X | OAM_XFLIP, $a0, BATTLE_ANIM_FRAMESET_ITEM_BAG, BATTLE_ANIM_FUNC_PRESENT_SMOKESCREEN, PAL_BATTLE_OB_RED, BATTLE_ANIM_GFX_STATUS
; BATTLE_ANIM_OBJ_SPIKES
	battleanimobj RELATIVE_X | OAM_XFLIP, $70, BATTLE_ANIM_FRAMESET_SPIKE, BATTLE_ANIM_FUNC_SPIKES, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_MISC
; BATTLE_ANIM_OBJ_POWDER_SNOW
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_POWDER_SNOW, BATTLE_ANIM_FUNC_USER_TO_TARGET_SPIN, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_ICE
; BATTLE_ANIM_OBJ_DRAGONBREATH
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_BURNED, BATTLE_ANIM_FUNC_USER_TO_TARGET_DISAPPEAR, PAL_BATTLE_OB_RED, BATTLE_ANIM_GFX_FIRE
; BATTLE_ANIM_OBJ_CONVERSION
	battleanimobj RELATIVE_X, $80, BATTLE_ANIM_FRAMESET_CONVERSION, BATTLE_ANIM_FUNC_CONVERSION, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_EXPLOSION
; BATTLE_ANIM_OBJ_SPIDER_WEB
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_SPIDER_WEB, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_WEB
; BATTLE_ANIM_OBJ_CAKE_UNUSED
	battleanimobj RELATIVE_X | OAM_XFLIP, $a0, BATTLE_ANIM_FRAMESET_UNUSED_CAKE, BATTLE_ANIM_FUNC_PRESENT_SMOKESCREEN, PAL_BATTLE_OB_RED, BATTLE_ANIM_GFX_OBJECTS
; BATTLE_ANIM_OBJ_NIGHTMARE
	battleanimobj RELATIVE_X | OAM_XFLIP, $80, BATTLE_ANIM_FRAMESET_IMP, BATTLE_ANIM_FUNC_DIZZY, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_ANGELS
; BATTLE_ANIM_OBJ_IN_NIGHTMARE
	battleanimobj RELATIVE_X | OAM_XFLIP, $80, BATTLE_ANIM_FRAMESET_IMP_FLIPPED, BATTLE_ANIM_FUNC_FLOAT_UP, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_ANGELS
; BATTLE_ANIM_OBJ_LOVELY_KISS
	battleanimobj RELATIVE_X | OAM_XFLIP, $80, BATTLE_ANIM_FRAMESET_IMP, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_ANGELS
; BATTLE_ANIM_OBJ_SWEET_KISS
	battleanimobj RELATIVE_X | OAM_XFLIP, $80, BATTLE_ANIM_FRAMESET_CHERUB, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_BLUE, BATTLE_ANIM_GFX_ANGELS
; BATTLE_ANIM_OBJ_SKETCH
	battleanimobj RELATIVE_X | OAM_XFLIP | OAM_YFLIP, $80, BATTLE_ANIM_FRAMESET_PENCIL, BATTLE_ANIM_FUNC_METRONOME_SPARKLE_SKETCH, PAL_BATTLE_OB_GREEN, BATTLE_ANIM_GFX_OBJECTS
; BATTLE_ANIM_OBJ_ENCORE_HAND
	battleanimobj RELATIVE_X | OAM_XFLIP, $80, BATTLE_ANIM_FRAMESET_ENCORE_HAND, BATTLE_ANIM_FUNC_CLAMP_ENCORE, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_OBJECTS
; BATTLE_ANIM_OBJ_ENCORE_STAR
	battleanimobj RELATIVE_X | OAM_XFLIP, $70, BATTLE_ANIM_FRAMESET_STAR, BATTLE_ANIM_FUNC_ENCORE_BELLY_DRUM, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_OBJECTS
; BATTLE_ANIM_OBJ_DESTINY_BOND
	battleanimobj RELATIVE_X | OAM_XFLIP, $c0, BATTLE_ANIM_FRAMESET_DESTINY_BOND, BATTLE_ANIM_FUNC_USER_TO_TARGET, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_ANGELS
; BATTLE_ANIM_OBJ_MORNING_SUN
	battleanimobj RELATIVE_X | OAM_XFLIP, $40, BATTLE_ANIM_FRAMESET_MORNING_SUN, BATTLE_ANIM_FUNC_SWAGGER_MORNING_SUN, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_SHINE
; BATTLE_ANIM_OBJ_GLIMMER
	battleanimobj RELATIVE_X, $80, BATTLE_ANIM_FRAMESET_GLIMMER, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_SHINE
; BATTLE_ANIM_OBJ_MOONLIGHT
	battleanimobj RELATIVE_X, $80, BATTLE_ANIM_FRAMESET_MOONLIGHT, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_SHINE
; BATTLE_ANIM_OBJ_HIDDEN_POWER
	battleanimobj RELATIVE_X, $88, BATTLE_ANIM_FRAMESET_CHARGE_ORB_1, BATTLE_ANIM_FUNC_HIDDEN_POWER, PAL_BATTLE_OB_RED, BATTLE_ANIM_GFX_CHARGE
; BATTLE_ANIM_OBJ_CROSS_CHOP1
	battleanimobj RELATIVE_X | OAM_XFLIP, $ff, BATTLE_ANIM_FRAMESET_CROSS_CHOP_1, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_CUT
; BATTLE_ANIM_OBJ_CROSS_CHOP2
	battleanimobj RELATIVE_X | OAM_XFLIP, $ff, BATTLE_ANIM_FRAMESET_CROSS_CHOP_2, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_CUT
; BATTLE_ANIM_OBJ_SANDSTORM
	battleanimobj RELATIVE_X | OAM_XFLIP, $00, BATTLE_ANIM_FRAMESET_SANDSTORM, BATTLE_ANIM_FUNC_RAIN_SANDSTORM, PAL_BATTLE_OB_BROWN, BATTLE_ANIM_GFX_POWDER
; BATTLE_ANIM_OBJ_ZAP_CANNON
	battleanimobj RELATIVE_X | OAM_XFLIP, $90, BATTLE_ANIM_FRAMESET_ZAP_CANNON, BATTLE_ANIM_FUNC_USER_TO_TARGET_DISAPPEAR, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_LIGHTNING
; BATTLE_ANIM_OBJ_SPITE
	battleanimobj RELATIVE_X | OAM_XFLIP, $40, BATTLE_ANIM_FRAMESET_IMP, BATTLE_ANIM_FUNC_POWDER, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_ANGELS
; BATTLE_ANIM_OBJ_CURSE
	battleanimobj RELATIVE_X | OAM_XFLIP | OAM_YFLIP, $90, BATTLE_ANIM_FRAMESET_CURSE_NAIL, BATTLE_ANIM_FUNC_CURSE, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_OBJECTS
; BATTLE_ANIM_OBJ_PERISH_SONG
	battleanimobj ABSOLUTE_X, $00, BATTLE_ANIM_FRAMESET_MUSIC_NOTE_1, BATTLE_ANIM_FUNC_PERISH_SONG, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_NOISE
; BATTLE_ANIM_OBJ_FORESIGHT
	battleanimobj RELATIVE_X, $80, BATTLE_ANIM_FRAMESET_FORESIGHT_SHINE, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_SHINE
; BATTLE_ANIM_OBJ_RAPID_SPIN
	battleanimobj RELATIVE_X | OAM_XFLIP, $b8, BATTLE_ANIM_FRAMESET_RAPID_SPIN, BATTLE_ANIM_FUNC_RAPID_SPIN, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_WIND
; BATTLE_ANIM_OBJ_SWAGGER
	battleanimobj RELATIVE_X | OAM_XFLIP, $90, BATTLE_ANIM_FRAMESET_SWAGGER, BATTLE_ANIM_FUNC_SWAGGER_MORNING_SUN, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_WIND
; BATTLE_ANIM_OBJ_BELLY_DRUM_HAND
	battleanimobj RELATIVE_X, $a8, BATTLE_ANIM_FRAMESET_PALM, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_HIT
; BATTLE_ANIM_OBJ_BELLY_DRUM_NOTE
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_MUSIC_NOTE_1, BATTLE_ANIM_FUNC_ENCORE_BELLY_DRUM, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_NOISE
; BATTLE_ANIM_OBJ_MEAN_LOOK
	battleanimobj RELATIVE_X, $88, BATTLE_ANIM_FRAMESET_MEAN_LOOK, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_BLUE, BATTLE_ANIM_GFX_PSYCHIC
; BATTLE_ANIM_OBJ_BETA_PURSUIT
	battleanimobj RELATIVE_X, $a8, BATTLE_ANIM_FRAMESET_UPSIDE_DOWN_PUNCH, BATTLE_ANIM_FUNC_BETA_PURSUIT, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_HIT
; BATTLE_ANIM_OBJ_SHOOTING_SPARKLE
	battleanimobj RELATIVE_X | OAM_XFLIP, $90, BATTLE_ANIM_FRAMESET_GROWING_SPARKLE, BATTLE_ANIM_FUNC_USER_TO_TARGET, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_SPEED
; BATTLE_ANIM_OBJ_RAIN
	battleanimobj RELATIVE_X | OAM_XFLIP, $00, BATTLE_ANIM_FRAMESET_RAIN, BATTLE_ANIM_FUNC_RAIN_SANDSTORM, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_WATER
; BATTLE_ANIM_OBJ_B0
	battleanimobj ABSOLUTE_X, $00, BATTLE_ANIM_FRAMESET_MIST, BATTLE_ANIM_FUNC_BATTLE_ANIM_OBJ_B0, PAL_BATTLE_OB_RED, BATTLE_ANIM_GFX_HAZE
; BATTLE_ANIM_OBJ_PSYCH_UP
	battleanimobj RELATIVE_X, $88, BATTLE_ANIM_FRAMESET_PSYCH_UP, BATTLE_ANIM_FUNC_PSYCH_UP, PAL_BATTLE_OB_GRAY, BATTLE_ANIM_GFX_STATUS
; BATTLE_ANIM_OBJ_ANCIENTPOWER
	battleanimobj RELATIVE_X, $b8, BATTLE_ANIM_FRAMESET_BIG_ROCK, BATTLE_ANIM_FUNC_ANCIENT_POWER, PAL_BATTLE_OB_BROWN, BATTLE_ANIM_GFX_ROCKS
; BATTLE_ANIM_OBJ_AEROBLAST
	battleanimobj RELATIVE_X | OAM_XFLIP | OAM_YFLIP, $98, BATTLE_ANIM_FRAMESET_AEROBLAST, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_YELLOW, BATTLE_ANIM_GFX_AEROBLAST
; BATTLE_ANIM_OBJ_SHADOW_BALL
	battleanimobj RELATIVE_X | OAM_XFLIP | OAM_YFLIP, $98, BATTLE_ANIM_FRAMESET_BARRAGE_BALL, BATTLE_ANIM_FUNC_WAVE_TO_TARGET, PAL_BATTLE_OB_BLUE, BATTLE_ANIM_GFX_EGG
; BATTLE_ANIM_OBJ_ROCK_SMASH
	battleanimobj RELATIVE_X | OAM_XFLIP, $ff, BATTLE_ANIM_FRAMESET_BIG_ROCK, BATTLE_ANIM_FUNC_ROCK_SMASH, PAL_BATTLE_OB_BROWN, BATTLE_ANIM_GFX_ROCKS
; BATTLE_ANIM_OBJ_FLOWER
	battleanimobj RELATIVE_X, $90, BATTLE_ANIM_FRAMESET_FLOWER, BATTLE_ANIM_FUNC_USER_TO_TARGET_SPIN, PAL_BATTLE_OB_RED, BATTLE_ANIM_GFX_FLOWER
; BATTLE_ANIM_OBJ_COTTON
	battleanimobj RELATIVE_X, $ff, BATTLE_ANIM_FRAMESET_COTTON, BATTLE_ANIM_FUNC_COTTON, PAL_BATTLE_OB_RED, BATTLE_ANIM_GFX_MISC
; BATTLE_ANIM_OBJ_ENEMYFEET_1ROW
	battleanimobj ABSOLUTE_X, $00, BATTLE_ANIM_FRAMESET_ENEMYFEET_1ROW, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_ENEMY, BATTLE_ANIM_GFX_PLAYERHEAD
; BATTLE_ANIM_OBJ_PLAYERHEAD_1ROW
	battleanimobj ABSOLUTE_X, $00, BATTLE_ANIM_FRAMESET_PLAYERHEAD_1ROW, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_PLAYER, BATTLE_ANIM_GFX_ENEMYFEET
; BATTLE_ANIM_OBJ_ENEMYFEET_2ROW
	battleanimobj ABSOLUTE_X, $00, BATTLE_ANIM_FRAMESET_ENEMYFEET_2ROW, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_ENEMY, BATTLE_ANIM_GFX_PLAYERHEAD
; BATTLE_ANIM_OBJ_PLAYERHEAD_2ROW
	battleanimobj ABSOLUTE_X, $00, BATTLE_ANIM_FRAMESET_PLAYERHEAD_2ROW, BATTLE_ANIM_FUNC_NULL, PAL_BATTLE_OB_PLAYER, BATTLE_ANIM_GFX_ENEMYFEET
; BATTLE_ANIM_OBJ_HAIL
	battleanimobj RELATIVE_X | X_FLIP, $00, BATTLE_ANIM_FRAMESET_HAIL, BATTLE_ANIM_FUNC_RAIN_SANDSTORM, PAL_BATTLE_OB_BLUE, BATTLE_ANIM_GFX_ICE
	assert_table_length NUM_BATTLE_ANIM_OBJS
