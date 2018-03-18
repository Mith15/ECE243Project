.equ ADDR_CHAR, 0x09000000

/***********************************************************************
 * CalculateCharAddr
 *	- calculates the address of a character based on its
 *	  (x,y) coordinates using the formula offset = x + 128*y
 *	  and address = base + offset
 *	  
 * Inputs: r4 - x coord
 *		   r5 - y coord
 * 
 ***********************************************************************/
.global CalculateCharAddr

CalculateCharAddr:
	subi sp, sp, 12
	stw ra, 0(sp)
	stw r16, 4(sp)
	stw r17, 8(sp)
	
	muli r16, r5, 128	# 128*y

	add r2, r4, r16		# sum up offset = x + 128*y
	movia r17, ADDR_CHAR
	add r2, r2, r17
	
	ldw ra, 0(sp)
	ldw r16, 4(sp)
	ldw r17, 8(sp)

	addi sp, sp, 12
	ret