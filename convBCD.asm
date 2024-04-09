ASSUME DS:DATA, CS:CODE
DATA SEGMENT
	NUM DB 45H
DATA ENDS
CODE SEGMENT
START: 
	MOV AX, DATA    
       	MOV DS, AX

       	MOV AL, NUM
       	AND AL, 0FH
       	MOV BL,AL

       	MOV AL, NUM
       	ROR AL, 4     
       	AND AL, 0FH  
       	MOV BH, AL

	INT 03
CODE ENDS
END START
