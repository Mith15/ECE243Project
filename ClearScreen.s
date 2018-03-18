/*****************************************************************
 * ClearScreen: return screen to fully black using the character
 * buffer
 *****************************************************************/
.global ClearScreen

ClearScreen:
# PROLOGUE
	subi, sp, sp, 16
	stw ra, 0(sp)
	stw r16, 4(sp)
	stw r20, 8(sp)
	stw r21, 12(sp)
	
	movui r16, ' '
	
	mov r4, r0		# x coordinate
	mov r5, r0		# y coordinate
	
	addi r20, r0, 240	# comparator for y
	addi r21, r0, 320	# comparator for x
	
loop_y1:
	bge r5, r20, end_loopy1
	
	loop_x1: 
		bge r4, r21, end_loopx1:
		
		call CalculateCharAddr
		mov r8, r2
		stbio r16, 0(r8)	# store character into buffer
		
		addi r4, r4, 1		# increment x by 1
		br loop_x1

	end_loopx1:
		addi r5, r5, 1		# increment y by 1
		mov r4, r0			# reset x to 0
		br loop_y1
	
end_loopy1:
# EPILOGUE
	ldw ra, 0(sp)
	ldw r16, 4(sp)
	ldw r20, 8(sp)
	ldw r21, 12(sp)
	addi sp, sp, 16
	
	ret
