	db GYARADOS ; 130

	db 100, 130,  80,  90,  60, 100
	;   hp  atk  def  spd  sat  sdf

	db WATER, DRAGON ; type
	db 100 ; catch rate
	db 100 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	
	db 5 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/gyarados/front.dimensions"
	
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, DRAGONBREATH, THUNDER, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, FIRE_BLAST, REST, ATTRACT, FLAMETHROWER, THUNDERBOLT, ICE_BEAM
	; end
