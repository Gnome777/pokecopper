	db PINSIR ; 127

	db  70, 130, 100,  90,  60,  70
	;   hp  atk  def  spd  sat  sdf

	db BUG, FIGHTING ; type
	db 128 ; catch rate
	db 100 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	
	db 25 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/pinsir/front.dimensions"
	
	db GROWTH_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, HYPER_BEAM, PROTECT, ENDURE, FRUSTRATION, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, REST, ATTRACT, THIEF, FURY_CUTTER
	; end
