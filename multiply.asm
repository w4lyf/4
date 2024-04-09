ASSUME DS:DATA, CS:CODE

DATA SEGMENT
	N1 DB 10H,90H
	N2 DW 5000H, 1000H
	N3 DW 0
	N4 DW 0,0
DATA ENDS

CODE SEGMENT
START: 
	MOV AX, DATA    
       	MOV DS, AX
       	
	XOR AX, AX

	MOV AL, N1
       	MOV BL, N1 +1
       	MUL BL
	MOV N3,AX

	XOR AX, AX

       	MOV AX, N2
       	MOV BX,N2+2
       	MUL BX 
       	MOV N4, AX
       	MOV N4+2, DX  
INT 03
CODE ENDS
END START
