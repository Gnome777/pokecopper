DEF time_group EQUS "0," ; use the nth TimeFishGroups entry

MACRO fishgroup
; chance, old rod, good rod, super rod
	db \1
	dw \2, \3, \4
ENDM

FishGroups:
; entries correspond to FISHGROUP constants
	table_width FISHGROUP_DATA_LENGTH
	fishgroup 50 percent + 1, .Old,            .Good,            .Super
	assert_table_length NUM_FISHGROUPS

.Old:
	db 100 percent, MAGIKARP,  10
.Good:
	db 100 percent, TENTACOOL, 20
.Super:
	db 100 percent, TENTACOOL, 25

TimeFishGroups:
	;  day           nite
	db MAGIKARP, 10, MAGIKARP, 10 ; 0
