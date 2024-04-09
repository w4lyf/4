
ASSUME DS:DATA, CS:CODE

DATA SEGMENT
	NUM DB 01010101B 
DATA ENDS 
      
CODE SEGMENT
START: 
	MOV AX, DATA        
       	MOV DS, AX  

       	MOV CX, 8

	MOV SI, 0
       	MOV DI, 0

AGAIN: 
	SHR NUM, 1
       	JC ONE_BIT
       	INC SI
       	JMP NEXT

ONE_BIT: 
	INC DI

NEXT: 
	LOOP AGAIN  
	
	INT 03H
CODE ENDS
END START    
