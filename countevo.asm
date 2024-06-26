ASSUME DS:DATA, CS:CODE

DATA SEGMENT
	NUM DB 01H, 21H, 71H, 10H, 81H, 20H, 30H, 41H, 11H, 31H
	E DW 00H
	O DW 00H
DATA ENDS

CODE SEGMENT
START:  
	MOV AX,DATA
        MOV DS,AX
	
	XOR DI,DI
	MOV CL, 0AH
	LEA BX,NUM

REPEAT: 
	MOV AL,[BX+DI]
        RCR AL, 1
        JC IS_ODD
        INC E
	JMP SKIP

IS_ODD:    
	INC OA

SKIP:   
	INC DI
	DEC CL
	JNZ REPEAT
        
	MOV AX, E
        MOV BX, O
        INT 03
CODE ENDS
END START
