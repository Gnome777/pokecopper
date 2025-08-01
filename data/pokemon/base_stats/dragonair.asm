	db DRAGONAIR ; 148

	db  70,  90,  70,  70,  70,  70
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, WATER ; type
	db 170 ; catch rate
	db 100 ; base exp
	db NO_ITEM, DRAGON_SCALE ; items
	db GENDER_F50 ; gender ratio
	
	db 40 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/dragonair/front.dimensions"
	
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, ZAP_CANNON, HIDDEN_POWER, SNORE, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, IRON_TAIL, DRAGONBREATH, THUNDER, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, FIRE_BLAST, SWIFT, DETECT, REST, ATTRACT, FLAMETHROWER, THUNDERBOLT, ICE_BEAM
	; end
