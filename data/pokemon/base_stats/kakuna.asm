	db KAKUNA ; 014

	db  50,  30,  50,  40,  30,  30
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 120 ; catch rate
	db 71 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	
	db 15 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/kakuna/front.dimensions"
	
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm
	; end
