ASSUME DS:DATA, CS:CODE

DATA SEGMENT
    	LST1 DB 01H, 41H, 81H, 61H, 29H, 91H, 51H, 11H, 71H, 31H 
	LST2 DB  0, 0, 0, 0, 0, 0, 0, 0, 0, 0
   	COUNT DB 0AH
DATA ENDS       
CODE SEGMENT
START: 
	MOV AX, DATA        
       	MOV DS, AX  
       	MOV CL, COUNT       
       	LEA SI, LST1 
       	LEA DI, LST2

AGAIN: 
	MOV AL, [SI]  
       	MOV [DI], AL   
       	INC SI  
       	INC DI     
	LOOP AGAIN  
	
	INT 03H
CODE ENDS
END START      
