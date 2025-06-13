	db WOBBUFFET ; 202

	db 190,  40,  60,  40,  40,  60
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, DARK ; type
	db 128 ; catch rate
	db 100 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/wobbuffet/front.dimensions"
	
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm
	; end
