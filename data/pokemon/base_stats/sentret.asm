	db SENTRET ; 161

	db  40,  50,  40,  20,  40,  50
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 200 ; catch rate
	db 100 ; base exp
	db NO_ITEM, BERRY ; items
	db GENDER_F50 ; gender ratio
	
	db 15 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/sentret/front.dimensions"
	
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, TOXIC, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, ENDURE, FRUSTRATION, IRON_TAIL, RETURN, DIG, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, SWIFT, DEFENSE_CURL, THUNDERPUNCH, DETECT, REST, ATTRACT, THIEF, FIRE_PUNCH, FURY_CUTTER
	; end
