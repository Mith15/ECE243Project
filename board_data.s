.equ EDGE, 0


/* Each board element is denoted by a coordinate i.e. A1, with
   the letter indicating the column, and the number indicating the row
   */
   
.global BOARD
BOARD:

.global A1
	A1: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global A2
	A2: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global A3
	A3: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global A4
	A4: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global A5
	A5: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global A6
	A6: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global A7
	A7: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global A8
	A8: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global B1
	B1: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global B2
	B2: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global B3
	B3: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global B4
	B4: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global B5
	B5: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global B6
	B6: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global B7
	B7: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global B8
	B8: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global C1
	C1: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global C2
	C2: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global C3
	C3: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global C4
	C4: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global C5
	C5: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global C6
	C6: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global C7
	C7: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global C8
	C8: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global D1
	D1: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global D2
	D2: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global D3
	D3: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global D4
	D4: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global D5
	D5: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global D6
	D6: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global D7
	D7: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global D8
	D8: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global E1
	E1: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global E2
	E2: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global E3
	E3: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global E4
	E4: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global E5
	E5: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global E6
	E6: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global E7
	E7: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global E8
	E8: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global F1
	F1: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global F2
	F2: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global F3
	F3: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global F4
	F4: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global F5
	F5: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global F6
	F6: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global F7
	F7: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global F8
	F8: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global G1
	G1: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global G2
	G2: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global G3
	G3: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global G4
	G4: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global G5
	G5: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global G6
	G6: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global G7
	G7: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global G8
	G8: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global H1
	H1: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global H2
	H2: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global H3
	H3: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global H4
	H4: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global H5
	H5: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global H6
	H6: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global H7
	H7: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left
.global H8
	H8: .word ' '	# data element
		.word EDGE	# top
		.word EDGE	# upper right
		.word B1	# right
		.word B2	# bottom right
		.word A2	# bottom
		.word EDGE	# bottom left
		.word EDGE	# left
		.word EDGE	# upper left