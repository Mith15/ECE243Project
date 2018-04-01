/*******************************************************************
 * DrawSquare - draws one square of the game board starting at given
 * (x,y) location
 *		Input: r4 - x coordinate
 *			   r5 - y coordinate
 * calls CalculatePixelAddr subroutine
 *******************************************************************/
.equ BROWN, 0x92C0
.equ GREEN, 0x24A0
.equ SQUARE_DIMENSION_X, 19	# actual pixel dimension is SQUARE_DIMENSION+1
.equ SQUARE_DIMENSION_Y, 21
	
.global DrawSquare

DrawSquare:
# PROLOGUE
	subi sp, sp, 40
	stw ra, 0(sp)
	
	stw r4, 4(sp)		# store on stack for restoring
	stw r5, 8(sp)		# store on stack just in case
	
	stw r16, 12(sp)
	stw r17, 16(sp)
	stw r18, 20(sp)
	stw r19, 24(sp)
	stw r20, 28(sp)
	stw r21, 32(sp)
	stw r22, 36(sp)
# END PROLOGUE
	
	movui r16, BROWN
	movui r17, GREEN
	
	mov r18, r0		# counter x
	mov r19, r0		# counter y
	movi r20, SQUARE_DIMENSION_X
	movi r22, SQUARE_DIMENSION_Y

DrawSquare_yloop:
	bgt r19, r22, end_DrawSquare_yloop
	
	DrawSquare_xloop:
		bgt r18, r20, end_DrawSquare_xloop
		
		beq r19, r0, draw_brown		# if y is first row
		beq r19, r22, draw_brown	# if y is last row
		
		beq r18, r0, draw_brown		# if x is first pixel in row
		beq r18, r20, draw_brown	# if x is last pixel in row

		br draw_green
		
		draw_green:
			call CalculatePixelAddr	# calculate pixel addr	
			
			mov r21, r2
			sthio r17, 0(r21)	# draw pixel
			
			addi r4, r4, 1		# increment x coord
			addi r18, r18, 1	# increment x counter
			
			br DrawSquare_xloop
			
		draw_brown:
			call CalculatePixelAddr
			
			mov r21, r2
			sthio r16, 0(r21)
			
			addi r4, r4, 1		# increment x coord
			addi r18, r18, 1	# increment x counter
			
			br DrawSquare_xloop
			
	end_DrawSquare_xloop:
		addi r5, r5, 1		# increment y coord
		addi r19, r19, 1	# increment y counter
		
		mov r18, r0			# clear x counter
		ldw r4, 4(sp)		# reset x coord
		
		br DrawSquare_yloop			# go to top of outer loop
	
end_DrawSquare_yloop:
# EPILOGUE
	ldw ra, 0(sp)
	ldw r4, 4(sp)
	ldw r5, 8(sp)
	ldw r16, 12(sp)
	ldw r17, 16(sp)
	ldw r18, 20(sp)
	ldw r19, 24(sp)
	ldw r20, 28(sp)
	stw r21, 32(sp)
	ldw r22, 36(sp)
	addi sp, sp, 40
	
	ret
	
	