/***********************************************************************
 * DrawWhite - draw white game marker at given location
 * 		r4 - input x coordinate
 * 		r5 - input y coordinate
 * calls CalculatePixelAddr subroutine
 ***********************************************************************/

.equ WHITE, 0xFFFF

.global DrawWhite
DrawWhite:
#PROLOGUE
	subi sp, sp, 20
	stw ra, 0(sp)
	stw r16, 4(sp)
	stw r20, 8(sp)
	stw r21, 12(sp)
	
	stw r4, 16(sp)
#END PROLOGUE
	
	movui r16, WHITE
	mov r20, r0		# set up x coordinate counter
	mov r21, r0		# set up x coordinate comparator

	########################################################## row1
	addi r5, r5, 1
	addi r21, r0, 5
	addi r4, r4, 1
	
	addi r4, r4, 6			# increment x by 6
	call CalculatePixelAddr
	sthio r16, 0(r2)		# draw first pixel of row
	addi r20, r20, 1
	
	row1_loopWH:
		bgt r20, r21, end_row1_loopWH
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1
		br row1_loopWH
		
	end_row1_loopWH:
		ldw r4, 16(sp)		# restore input x
		mov r20, r0
		mov r21, r0
########################################################## row 2
	addi r5, r5, 1
	addi r21, r21, 9
	addi r4, r4, 1
	
	addi r4, r4, 4
	call CalculatePixelAddr
	sthio r16, 0(r2)
	addi r20, r20, 1
	
	row2_loopWH:
		bgt r20, r21, end_row2_loopWH
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row2_loopWH
		
	end_row2_loopWH:
		ldw r4, 16(sp)
		mov r20, r0
		mov r21, r0
########################################################## row 3
	addi r5, r5, 1
	addi r21, r21, 11		# different for each row
	addi r4, r4, 1
	
	addi r4, r4, 3			# different for each row
	call CalculatePixelAddr
	sthio r16, 0(r2)
	addi r20, r20, 1
	
	row3_loopWH:
		bgt r20, r21, end_row3_loopWH
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row3_loopWH
		
	end_row3_loopWH:
		ldw r4, 16(sp)
		mov r20, r0
		mov r21, r0
########################################################## row 4
	addi r5, r5, 1
	addi r21, r21, 13		# different for each row
	addi r4, r4, 1
	
	addi r4, r4, 2			# different for each row
	call CalculatePixelAddr
	sthio r16, 0(r2)
	addi r20, r20, 1
	
	row4_loopWH:
		bgt r20, r21, end_row4_loopWH
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row4_loopWH
		
	end_row4_loopWH:
		ldw r4, 16(sp)
		mov r20, r0
		mov r21, r0
########################################################## row 5
	addi r5, r5, 1
	addi r21, r21, 15		# different for each row
	addi r4, r4, 1
	
	addi r4, r4, 1			# different for each row
	call CalculatePixelAddr
	sthio r16, 0(r2)
	addi r20, r20, 1
	
	row5_loopWH:
		bgt r20, r21, end_row5_loopWH
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row5_loopWH
		
	end_row5_loopWH:
		ldw r4, 16(sp)
		mov r20, r0
		mov r21, r0
########################################################## row 6 = row 5
	addi r5, r5, 1
	addi r21, r21, 15		# different for each row
	addi r4, r4, 1
	
	addi r4, r4, 1			# different for each row
	call CalculatePixelAddr
	sthio r16, 0(r2)
	addi r20, r20, 1
	
	row6_loopWH:
		bgt r20, r21, end_row6_loopWH
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row6_loopWH
		
	end_row6_loopWH:
		ldw r4, 16(sp)
		mov r20, r0
		mov r21, r0
########################################################## row 7
	addi r5, r5, 1
	addi r21, r21, 17		# different for each row
	addi r4, r4, 1
	
	call CalculatePixelAddr
	sthio r16, 0(r2)
	addi r20, r20, 1
	
	row7_loopWH:
		bgt r20, r21, end_row7_loopWH
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row7_loopWH
		
	end_row7_loopWH:
		ldw r4, 16(sp)
		mov r20, r0
		mov r21, r0
########################################################## row 8
	addi r5, r5, 1
	addi r21, r21, 17		# different for each row
	addi r4, r4, 1
	
	call CalculatePixelAddr
	sthio r16, 0(r2)
	addi r20, r20, 1
	
	row8_loopWH:
		bgt r20, r21, end_row8_loopWH
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row8_loopWH
		
	end_row8_loopWH:
		ldw r4, 16(sp)
		mov r20, r0
		mov r21, r0
########################################################## row 9
	addi r5, r5, 1
	addi r21, r21, 17		# different for each row
	addi r4, r4, 1
	
	call CalculatePixelAddr
	sthio r16, 0(r2)
	addi r20, r20, 1
	
	row9_loopWH:
		bgt r20, r21, end_row9_loopWH
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row9_loopWH
		
	end_row9_loopWH:
		ldw r4, 16(sp)
		mov r20, r0
		mov r21, r0
########################################################## row 10
	addi r5, r5, 1
	addi r21, r21, 17		# different for each row
	addi r4, r4, 1
	
	call CalculatePixelAddr
	sthio r16, 0(r2)
	addi r20, r20, 1
	
	row10_loopWH:
		bgt r20, r21, end_row10_loopWH
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row10_loopWH
		
	end_row10_loopWH:
		ldw r4, 16(sp)
		mov r20, r0
		mov r21, r0
########################################################## row 11
	addi r5, r5, 1
	addi r21, r21, 17		# different for each row
	addi r4, r4, 1
	
	call CalculatePixelAddr
	sthio r16, 0(r2)
	addi r20, r20, 1
	
	row11_loopWH:
		bgt r20, r21, end_row11_loopWH
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row11_loopWH
		
	end_row11_loopWH:
		ldw r4, 16(sp)
		mov r20, r0
		mov r21, r0
########################################################## row 12
	addi r5, r5, 1
	addi r21, r21, 17		# different for each row
	addi r4, r4, 1
	
	call CalculatePixelAddr
	sthio r16, 0(r2)
	addi r20, r20, 1
	
	row12_loopWH:
		bgt r20, r21, end_row12_loopWH
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row12_loopWH
		
	end_row12_loopWH:
		ldw r4, 16(sp)
		mov r20, r0
		mov r21, r0
########################################################## row 13
	addi r5, r5, 1
	addi r21, r21, 17		# different for each row
	addi r4, r4, 1
	
	call CalculatePixelAddr
	sthio r16, 0(r2)
	addi r20, r20, 1
	
	row13_loopWH:
		bgt r20, r21, end_row13_loopWH
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row13_loopWH
		
	end_row13_loopWH:
		ldw r4, 16(sp)
		mov r20, r0
		mov r21, r0
########################################################## row 14
	addi r5, r5, 1
	addi r21, r21, 17		# different for each row
	addi r4, r4, 1
	
	call CalculatePixelAddr
	sthio r16, 0(r2)
	addi r20, r20, 1
	
	row14_loopWH:
		bgt r20, r21, end_row14_loopWH
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row14_loopWH
		
	end_row14_loopWH:
		ldw r4, 16(sp)
		mov r20, r0
		mov r21, r0
########################################################## row 15
	addi r5, r5, 1
	addi r21, r21, 15		# different for each row
	addi r4, r4, 1
	
	addi r4, r4, 1			# different for each row
	call CalculatePixelAddr
	sthio r16, 0(r2)
	addi r20, r20, 1
	
	row15_loopWH:
		bgt r20, r21, end_row15_loopWH
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row15_loopWH
		
	end_row15_loopWH:
		ldw r4, 16(sp)
		mov r20, r0
		mov r21, r0
########################################################## row 16
	addi r5, r5, 1
	addi r21, r21, 15		# different for each row
	addi r4, r4, 1
	
	addi r4, r4, 1			# different for each row
	call CalculatePixelAddr
	sthio r16, 0(r2)
	addi r20, r20, 1
	
	row16_loopWH:
		bgt r20, r21, end_row16_loopWH
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row16_loopWH
		
	end_row16_loopWH:
		ldw r4, 16(sp)
		mov r20, r0
		mov r21, r0
########################################################## row 17
	addi r5, r5, 1
	addi r21, r21, 13		# different for each row
	addi r4, r4, 1
	
	addi r4, r4, 2			# different for each row
	call CalculatePixelAddr
	sthio r16, 0(r2)
	addi r20, r20, 1
	
	row17_loopWH:
		bgt r20, r21, end_row17_loopWH
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row17_loopWH
		
	end_row17_loopWH:
		ldw r4, 16(sp)
		mov r20, r0
		mov r21, r0
########################################################## row 18
	addi r5, r5, 1
	addi r21, r21, 11		# different for each row
	addi r4, r4, 1
	
	addi r4, r4, 3			# different for each row
	call CalculatePixelAddr
	sthio r16, 0(r2)
	addi r20, r20, 1
	
	row18_loopWH:
		bgt r20, r21, end_row18_loopWH
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row18_loopWH
		
	end_row18_loopWH:
		ldw r4, 16(sp)
		mov r20, r0
		mov r21, r0
########################################################## row 19
	addi r5, r5, 1
	addi r21, r21, 9		# different for each row
	addi r4, r4, 1
	
	addi r4, r4, 4			# different for each row
	call CalculatePixelAddr
	sthio r16, 0(r2)
	addi r20, r20, 1
	
	row19_loopWH:
		bgt r20, r21, end_row19_loopWH
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row19_loopWH
		
	end_row19_loopWH:
		ldw r4, 16(sp)
		mov r20, r0
		mov r21, r0
########################################################## row 20
	addi r5, r5, 1
	addi r21, r21, 5		# different for each row
	addi r4, r4, 1
	
	addi r4, r4, 6			# different for each row
	call CalculatePixelAddr
	sthio r16, 0(r2)
	addi r20, r20, 1
	
	row20_loopWH:
		bgt r20, r21, end_row20_loopWH
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row20_loopWH
		
	end_row20_loopWH:
		ldw r4, 16(sp)
		mov r20, r0
		mov r21, r0
		
#EPILOGUE
	ldw ra, 0(sp)
	ldw r16, 4(sp)
	ldw r20, 8(sp)
	ldw r21, 12(sp)
	ldw r4, 16(sp)
	addi sp, sp, 20
	
	ret