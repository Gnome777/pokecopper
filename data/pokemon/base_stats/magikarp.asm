	db MAGIKARP ; 129

	db  20,  10,  60,  80,  20,  20
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 200 ; catch rate
	db 100 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	
	db 5 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/magikarp/front.dimensions"
	
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm
	; end
