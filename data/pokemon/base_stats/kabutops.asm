	db KABUTOPS ; 141

	db  60, 120, 110,  80,  70,  70
	;   hp  atk  def  spd  sat  sdf

	db ROCK, WATER ; type
	db 100 ; catch rate
	db 100 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	
	db 30 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/kabutops/front.dimensions"
	
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, TOXIC, ROCK_SMASH, HIDDEN_POWER, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, GIGA_DRAIN, ENDURE, FRUSTRATION, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, REST, ATTRACT, THIEF, FURY_CUTTER, ICE_BEAM
	; end
