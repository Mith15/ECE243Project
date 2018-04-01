/*********************************************************************
 * RefreshBoard - redraw entire game board
 * 
 * 
 * 
 * 
 * 
 *********************************************************************/
 
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
 .equ NEXT_SQUARE_OFFSET,	44	# offset to access next square in data structure
 
 .global RefreshBoard
 RefreshBoard:
# PROLOGUE
	subi sp, sp, 16
	stw ra, 0(sp)
	stw r16, 2(sp)
	stw r17, 8(sp)
	stw r18, 12(sp)

# END PROLOGUE

	movia r16, GAME_BOARD	# address at beginning of board
	
	mov r17, r0			# counter
	addi r18, r0, 64	# total number of squares
	
RefreshBoard_loop1:
	bge r17, r18, end_RefreshBoard_loop1

	ldw r4, X_COORD(r16)	# load x coordinate of square
	ldw r5, Y_COORD(r16)	# load y coordinate of square
	ldw r6, DATA(r16)		# load data value of square
	call DrawGameSquare		# draw game square
	
	addi r17, r17, 1		# increment counter
	addi r16, r16, NEXT_SQUARE_OFFSET	# pointer to next square listed in memory
	
	br RefreshBoard_loop1
	
end_RefreshBoard_loop1:
	stw ra, 0(sp)
	stw r16, 2(sp)
	stw r17, 8(sp)
	stw r18, 12(sp)
	addi sp, sp, 16
	
	ret