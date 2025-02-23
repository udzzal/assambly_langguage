
.MODEL SMALL
.STACK 100H
.DATA      
     val db 5
     num db ?

     msg db 'enter two number : $'
     t db 'the larest number is : $'
     
.CODE
MAIN PROC
     mov ax,@data
     mov ds,ax
     
     
     mov ah,09
     lea dx,msg
     int 21h
     
    mov ah,01
    int 21h
    mov val,al
    mov ah,01
    int 21h 
    
    mov num,al
    mov bl,num
    
    
    
     cmp val,bl
     jge larger
     jl less
     
     larger:
           mov ah,09
           lea dx,t
           int 21h
           mov dl,val
           mov ah,02h
           int 21h
           jmp exits
           
        less:
        mov ah,09
        lea dx,t
        int 21h
        
        mov dl,num
        mov ah,02h
        int 21h
        
        
        
        exits:
            mov ah,04h
            int 21h
             
    
    MAIN ENDP
END MAIN 

