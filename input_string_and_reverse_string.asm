include 'emu8086.inc'
.MODEL SMALL
.STACK 100h

.DATA 
    string db 10 dup('$')
      ; length of string = 10

.CODE
main proc 
    mov ax,@data
    mov ds,ax
    
    
    mov ah,10
    mov string,11
    lea dx,string
    int 21h
    
    
    
    mov si,offset string 
    mov cx,10
    
loop1:
    mov al,[si]    ; get one char
    mov ah,0       ; clear upper byte
    push ax        ; push it (word, but char in AL)
    inc si
    loop loop1
    
    mov cx,10     ; reload counter for pop loop
    
loop2:
    pop ax
    mov dl,al      ; print character
    mov ah,02h
    int 21h
    loop loop2
    
    mov ah,04ch
    int 21h
    
main endp
end main
