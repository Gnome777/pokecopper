	db WEEDLE ; 013

	db  40,  40,  30,  50,  20,  20
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 255 ; catch rate
	db 100 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	
	db 15 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/weedle/front.dimensions"
	
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm
	; end
