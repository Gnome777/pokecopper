	db OMANYTE ; 138

	db  40,  40, 100,  40,  90,  60
	;   hp  atk  def  spd  sat  sdf

	db ROCK, WATER ; type
	db 200 ; catch rate
	db 100 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	
	db 30 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/omanyte/front.dimensions"
	
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, TOXIC, ROCK_SMASH, HIDDEN_POWER, SNORE, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, REST, ATTRACT, THIEF, ICE_BEAM
	; end
