	db MACHOP ; 066

	db  70,  80,  50,  40,  40,  40
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 255 ; catch rate
	db 100 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/machop/front.dimensions"
	
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, ENDURE, FRUSTRATION, EARTHQUAKE, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, FIRE_BLAST, THUNDERPUNCH, DETECT, REST, ATTRACT, THIEF, FIRE_PUNCH, FLAMETHROWER
	; end
