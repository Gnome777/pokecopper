	db GRANBULL ; 210

	db  90, 120,  80,  50,  60,  60
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 100 ; catch rate
	db 100 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/granbull/front.dimensions"
	
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROAR, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, HYPER_BEAM, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, THUNDER, RETURN, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, DEFENSE_CURL, THUNDERPUNCH, DETECT, REST, ATTRACT, THIEF, FIRE_PUNCH, THUNDERBOLT
	; end
