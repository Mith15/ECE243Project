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
	subi sp, sp, 8
	stw r16, 0(sp)
	stw r17, 4(sp)
	
	muli r16, r4, 2		# 2*x
	muli r17, r5, 1024	# 1024*y

	add r2, r16, r17	# sum up offset
	add r2, r2, ADDR_VGA
	
	ldw r16, 0(sp)
	ldw r17, 4(sp)
	addi sp, sp, 8
	ret
