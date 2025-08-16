.MODEL SMALL
.STACK 100H
.DATA 
      text db "enter the number: $"
      text2 db 10,13,"Factorial is: $"
.CODE
MAIN PROC
    MOV AX, @DATA  
    MOV DS, AX 
      
     
    
    mov ah,01
    int 21h
    sub al,30h
    mov bl,al  
    
    
    mov ax,1
    fact:
    mul bl
    dec bl
    jnz fact
    
    add al,30h
    mov dl,al
    
    mov ah,02
    int 21h 
    
    mov ah,4ch
    int 21h
    main endp
end main
