HiddenPowerDamage:
; Override Hidden Power's type and power based on the user's DVs.

	ld hl, wBattleMonDVs
	ldh a, [hBattleTurn]
	and a
	jr z, .got_dvs
	ld hl, wEnemyMonDVs
.got_dvs

; Power: base 10, +1 per DV point, max 100

	ld b, 6         ; 6 DVs: Atk, Def, Spd, Spc (combined), HP
	ld c, 0         ; total DV sum

.sum_loop
	ld a, [hli]
	ld d, a
	swap a
	and $0F         ; upper nibble
	add c
	ld c, a
	ld a, d
	and $0F         ; lower nibble
	add c
	ld c, a
	dec b
	jr nz, .sum_loop

	ld a, c
	add 10          ; base power 10
	ld d, a

; Type: determined solely by Special DV (upper 4 bits)

	ld a, [hl]        ; hl now points to Special/Speed DV byte
	swap a            ; move upper nibble (Special DV) to lower
	and $0F           ; mask to 0–15
	inc a             ; shift from 0–15 to 1–16
	ld b, a

	; Assume table of valid type IDs (skip Normal and Bird)
	ld hl, HiddenPowerTypeTable
	dec b
	ld c, 0
	add hl, bc
	ld a, [hl]

; Overwrite the current move type.
	push af
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVarAddr
	pop af
	ld [hl], a

; Get the rest of the damage formula variables
; based on the new type, but keep base power.
	ld a, d
	push af
	farcall BattleCommand_DamageStats ; damagestats
	pop af
	or SPECIAL
	ld d, a
	ret

HiddenPowerTypeTable:
	db FIGHTING
	db FLYING
	db POISON
	db FIRE
	db WATER
	db GRASS
	db ELECTRIC
	db PSYCHIC_TYPE
	db ICE
	db GROUND
	db ROCK
	db BUG
	db GHOST
	db DARK
	db STEEL
	db DRAGON