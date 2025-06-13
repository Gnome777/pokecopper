	db SMEARGLE ; 235

	db  60,  20,  40,  80,  20,  50
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 128 ; catch rate
	db 100 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	
	db 20 ; step cycles to hatch
	
	INCBIN "gfx/pokemon/smeargle/front.dimensions"
	
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm
	; end
