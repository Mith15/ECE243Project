/*****************************************************************
 * ClearScreen: return screen to fully black using the pixel
 * buffer
 *****************************************************************/
 .equ BLACK, 0x0000
 
.global ClearScreen

ClearScreen:
# PROLOGUE
	subi, sp, sp, 20
	stw ra, 0(sp)
	stw r16, 4(sp)
	stw r20, 8(sp)
	stw r21, 12(sp)
	stw r22, 16(sp)
	
	movui r16, BLACK
	# start at (x,y) = (0,0)
	mov r4, r0		# starting x coordinate
	mov r5, r0		# starting y coordinate
	
	addi r20, r0, 240	# comparator for y
	addi r21, r0, 320	# comparator for x
	
ClearScreen_loopy:
	bge r5, r20, ClearScreen_end_loopy
	
	ClearScreen_loopx: 
		bge r4, r21, ClearScreen_end_loopx:
		
		call CalculatePixelAddr	# calculate pixel address
		mov r22, r2		
		stbio r16, 0(r22)	# store pixel into buffer
		
		addi r4, r4, 1		# increment x by 1
		br ClearScreen_loopx

	ClearScreen_end_loopx:
		addi r5, r5, 1		# increment y by 1
		mov r4, r0			# reset x to 0
		br ClearScreen_loopy
	
ClearScreen_loopy:
# EPILOGUE
	ldw ra, 0(sp)
	ldw r16, 4(sp)
	ldw r20, 8(sp)
	ldw r21, 12(sp)
	ldw r22, 16(sp)
	addi sp, sp, 20
	
	ret
