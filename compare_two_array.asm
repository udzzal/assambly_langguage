include 'emu8086.inc'

.model small

.data
    n db 5,5,6,7,8
    m db 5,5,6,3,9
    

.code

main proc 
    mov ax,@data
    mov ds,ax
    
    mov si,offset n
    mov di,offset m
    
    mov cx,5
    
    loopx:
        
        mov al,[si]
        mov bl,[di]
        
        cmp al,bl
        
        jne notsame
            inc si
            inc di
            
         loop loopx
         
         print 'both are same'
         mov ah,04ch
         int 21h
         
        
        
        notsame:
            print 'not are not same'
            mov ah,04ch
            int 21h
                        
         
          
                             
    main endp
end main