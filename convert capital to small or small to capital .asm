.model small 

.stack 100h

.data


.code


main proc
    
     mov ax,@data
     mov ds,ax
     
     mov ah,01h
     int 21h
     mov bl,al
     
     mov al,97
     cmp bl,al
     
     jl small 
     jge big
     
     big:
     mov bl,al
     
     mov ah,02h
     sub bl,32
     mov dl,bl
     int 21h 
     
     mov ah,04ch
     int 21h
     
     small:
     
     mov ah,02h
     add bl,32
     mov dl,bl
     int 21h
     
     mov ah,04ch
        int 21h
    
        main endp
    end main  
    
