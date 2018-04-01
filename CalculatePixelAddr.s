.equ ADDR_VGA, 0x08000000

/***********************************************************************
 * CalculatePixelAddr
 *	- calculates the address of a pixel based on its
 *	  its (x,y) coordinates using the formula offset = 2*x + 1024*y
 *	  and address = base + offset
 *	  
 * Inputs: r4 - x coord
 *		   r5 - y coord
 * 
 ***********************************************************************/
.global CalculatePixelAddr

CalculatePixelAddr:
	subi sp, sp, 16
	stw ra, 0(sp)
	stw r16, 4(sp)
	stw r17, 8(sp)
	stw r18, 12(sp)
	
	muli r16, r4, 2		# 2*x
	muli r17, r5, 1024	# 1024*y

	add r2, r16, r17	# sum up offset
	movia r18, ADDR_VGA
	add r2, r2, r18
	
	ldw ra, 0(sp)
	ldw r16, 4(sp)
	ldw r17, 8(sp)
	ldw r18, 12(sp)
	addi sp, sp, 16
	ret