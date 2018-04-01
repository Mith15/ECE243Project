/************************************************************************
 * DrawGameSquare - draws board based on given position and data value
 * 	r4 - x coordinate
 * 	r5 - y coordinate
 *  r6 - data value
 * calls DrawSquare subroutine
 ************************************************************************/

.equ EDGE, 	0
.equ DARK, 	1
.equ LIGHT, 2
.equ EMPTY, 0
 
 .equ DATA, 		0	# offset for data
 .equ X_COORD, 		4	# offset for x coordinate
 .equ Y_COORD,		8	# offset for y coordinate
 .equ TOP,			12	# vvv  offset to access adj squares  vvv
 .equ TOP_RIGHT, 	16
 .equ RIGHT,		20
 .equ BOTTOM_RIGHT, 24
 .equ BOTTOM, 		28
 .equ BOTTOM_LEFT,	32
 .equ LEFT,			36
 .equ UPPER_LEFT,	40
 .equ NEXT_OFFSET,	44	# offset to access next square in data structure
 
 .global DrawGameSquare
 DrawGameSquare:
 DrawGameSquare:
 # PROLOGUE
	subi sp, sp, 24
	stw ra, 0(sp)
	stw r4, 4(sp)
	stw r5, 8(sp)
	stw r6, 12(sp)
	
	stw r16, 16(sp)
	stw r17, 20(sp)

# END PROLOGUE

	movi r16, DARK
	movi r17, LIGHT
	
	call DrawSquare		# draw BG square
	
	beq r6, r16, draw_black_piece	# if data == DARK
	beq r6, r17, draw_white_piece	# else if data == LIGHT
	br end_DrawGameSquare

draw_black_piece:
	call DrawBlack
	br end_DrawGameSquare
	
draw_white_piece:
	call DrawWhite
	br end_DrawGameSquare

end_DrawGameSquare:
# EPILOGUE
	ldw ra, 0(sp)
	ldw r4, 4(sp)
	ldw r5, 8(sp)
	ldw r6, 12(sp)
	
	ldw r16, 16(sp)
	ldw r17, 20(sp)
	addi sp, sp, 24
	
	ret	