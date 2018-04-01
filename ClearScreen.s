/*****************************************************************
 * ClearScreen: return screen to fully black using the pixel
 * buffer
 *
 * calls CalculatePixelAddr subroutine
 *
 *****************************************************************/
 .equ BLACK, 0x0000
 .equ SCREEN_HEIGHT, 240
 .equ SCREEN_WIDTH, 320
.global ClearScreen

ClearScreen:
# PROLOGUE
	subi sp, sp, 20
	stw ra, 0(sp)
	stw r16, 4(sp)
	stw r20, 8(sp)
	stw r21, 12(sp)
	stw r22, 16(sp)
	
	movui r16, BLACK
	# start at (x,y) = (0,0)
	mov r4, r0		# starting x coordinate
	mov r5, r0		# starting y coordinate
	
	addi r20, r0, SCREEN_HEIGHT	# comparator for y
	addi r21, r0, SCREEN_WIDTH	# comparator for x
	
ClearScreen_yloop:
	bge r5, r20, end_ClearScreen_yloop
	
	ClearScreen_xloop: 
		bge r4, r21, end_ClearScreen_xloop:
		
		call CalculatePixelAddr	# calculate pixel address
		mov r22, r2		
		stbio r16, 0(r22)	# store pixel into buffer
		
		addi r4, r4, 1		# increment x by 1
		br ClearScreen_xloop

	end_ClearScreen_xloop:
		addi r5, r5, 1		# increment y by 1
		mov r4, r0			# reset x to 0
		br ClearScreen_yloop
	
end_ClearScreen_yloop:
# EPILOGUE
	ldw ra, 0(sp)
	ldw r16, 4(sp)
	ldw r20, 8(sp)
	ldw r21, 12(sp)
	ldw r22, 16(sp)
	addi sp, sp, 20
	
	ret
