.MODEL SMALL
.STACK 100H
.DATA 
    TEXT DB "UPPER LETTERS ARE: $"
    TEXT2 DB 10,13,"LOWER LETTERS ARE: $"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    
    mov ah,09
    lea dx,TEXT
    int 21h 
    
    mov cx,24
    mov dx,65
    
    
    loop1:
          mov ah,02h
          int 21h
          
          inc dx
          
          mov bl,dl
          mov dl,32
          
          mov ah,02h
          int 21h
          mov dl,bl
        
        
        loop loop1 
        
        
     mov ah,09
    lea dx,TEXT2
    int 21h 
    
    mov cx,24
    mov dx,97 
    
        loop2:
          mov ah,02h
          int 21h
          
          inc dx
          
          mov bl,dl
          mov dl,32
          
          mov ah,02h
          int 21h
          mov dl,bl
        
        
        loop loop2
    
      
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN

