; Virtual Console macros

MACRO vc_hook
	.VC_\1::
ENDM

MACRO vc_patch
		assert !DEF(CURRENT_VC_PATCH), "Already started a vc_patch"
		DEF CURRENT_VC_PATCH EQUS "\1"
	.VC_{CURRENT_VC_PATCH}::
ENDM

MACRO vc_patch_end
		assert DEF(CURRENT_VC_PATCH), "No vc_patch started"
	.VC_{CURRENT_VC_PATCH}_End::
		PURGE CURRENT_VC_PATCH
ENDM

MACRO vc_assert
		assert \#
ENDM
