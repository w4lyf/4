ASSUME DS:DATA, CS:CODE

DATA SEGMENT
        MSG1 DB "HELLO"
        COUNT DW 05H
DATA ENDS    
	
CODE SEGMENT
START:  
	MOV  AX, DATA
        MOV  DS, AX           
        MOV  CX, COUNT
        LEA  SI,MSG1 
         
AGAIN:  
	MOV  DL, [SI]         
        MOV  AH,02H           
        INT  21H              
        INC  SI	
	LOOP AGAIN
	
	MOV AX,4C00H
	INT 21H
	INT 03H
CODE ENDS
END START

