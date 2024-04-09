ASSUME DS:DATA, CS:CODE

DATA SEGMENT
	NUM DB 20H
	RESULT DB ?
DATA ENDS

CODE SEGMENT
START:  
	MOV AX, DATA
        MOV DS, AX

	XOR AX, AX

        MOV AL, NUM
        RCR AL, 1
	JC IS_ODD
	MOV RESULT, 0
	JMP FINISH

IS_ODD:
	MOV RESULT, 1

FINISH:
        INT 03
CODE ENDS
END START
