	db SHELLDER ; 090

	db  30,  70, 100,  40,  50,  30
	;   hp  atk  def  spd  sat  sdf

	db WATER, STEEL ; type
	db 200 ; catch rate
	db 100 ; base exp
	db PEARL, BIG_PEARL ; items
	db GENDER_F50 ; gender ratio
	
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/shellder/front.dimensions"
	
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SNORE, BLIZZARD, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, REST, ATTRACT, ICE_BEAM
	; end
