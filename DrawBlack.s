/***********************************************************************
 * DrawBlack - draw black game marker at given location
 * 		r4 - input x coordinate
 * 		r5 - input y coordinate
 * calls CalculatePixelAddr subroutine
 ***********************************************************************/

.equ WHITE, 0x0000

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
	
	movui r16, BLACK
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
	
	row1_loopBLK:
		bgt r20, r21, end_row1_loopBLK
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1
		br row1_loopBLKBLK
		
	end_row1_loopBLK:
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
	
	row2_loopBLK:
		bgt r20, r21, end_row2_loopBLK
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row2_loopBLK
		
	end_row2_loopBLK:
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
	
	row3_loopBLK:
		bgt r20, r21, end_row3_loopBLK
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row3_loopBLK
		
	end_row3_loopBLK:
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
	
	row4_loopBLK:
		bgt r20, r21, end_row4_loopBLK
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row4_loopBLK
		
	end_row4_loopBLK:
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
	
	row5_loopBLK:
		bgt r20, r21, end_row5_loopBLK
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row5_loopBLK
		
	end_row5_loopBLK:
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
	
	row6_loopBLK:
		bgt r20, r21, end_row6_loopBLK
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row6_loopBLK
		
	end_row6_loopBLK:
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
	
	row7_loopBLK:
		bgt r20, r21, end_row7_loopBLK
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row7_loopBLK
		
	end_row7_loopBLK:
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
	
	row8_loopBLK:
		bgt r20, r21, end_row8_loopBLK
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row8_loopBLK
		
	end_row8_loopBLK:
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
	
	row9_loopBLK:
		bgt r20, r21, end_row9_loopBLK
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row9_loopBLK
		
	end_row9_loopBLK:
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
	
	row10_loopBLK:
		bgt r20, r21, end_row10_loopBLK
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row10_loopBLK
		
	end_row10_loopBLK:
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
	
	row11_loopBLK:
		bgt r20, r21, end_row11_loopBLK
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row11_loopBLK
		
	end_row11_loopBLK:
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
	
	row12_loopBLK:
		bgt r20, r21, end_row12_loopBLK
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row12_loopBLK
		
	end_row12_loopBLK:
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
	
	row13_loopBLK:
		bgt r20, r21, end_row13_loopBLK
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row13_loopBLK
		
	end_row13_loopBLK:
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
	
	row14_loopBLK:
		bgt r20, r21, end_row14_loopBLK
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row14_loopBLK
		
	end_row14_loopBLK:
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
	
	row15_loopBLK:
		bgt r20, r21, end_row15_loopBLK
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row15_loopBLK
		
	end_row15_loopBLK:
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
	
	row16_loopBLK:
		bgt r20, r21, end_row16_loopBLK
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row16_loopBLK
		
	end_row16_loopBLK:
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
	
	row17_loopBLK:
		bgt r20, r21, end_row17_loopBLK
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row17_loopBLK
		
	end_row17_loopBLK:
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
	
	row18_loopBLK:
		bgt r20, r21, end_row18_loopBLK
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row18_loopBLK
		
	end_row18_loopBLK:
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
	
	row19_loopBLK:
		bgt r20, r21, end_row19_loopBLK
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row19_loopBLK
		
	end_row19_loopBLK:
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
	
	row20_loopBLK:
		bgt r20, r21, end_row20_loopBLK
		
		addi r4, r4, 1
		call CalculatePixelAddr
		sthio r16, 0(r2)
		
		addi r20, r20, 1	# incr counter
		br row20_loopBLK
		
	end_row20_loopBLK:
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