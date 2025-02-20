 include 'emu8086.inc'
 
.model small
.stack 100h


.data
    string db 2,4,8,1,3


.code

    main proc
         
         mov ax,@data
         mov ds,ax
         
         mov si,offset string
         mov cx,5
         
         mov bl,[si]
         
         loop1:
            cmp [si],bl
           
            jle update
            resume:
                inc si
                  
            loop loop1
            
            call newline 
            
            print 'smallest value of array '
            add bl,48
            mov dl,bl
            mov ah,02h
            int 21h
            
          mov ah,04ch
          int 21h  
            
         update:
             
             mov bl,[si]
             jmp resume    
          
    mov ah,04ch
    int 21h          
        
    main endp 
    
    newline proc
        
            mov dl,10
            mov ah,02h
            int 21h
            
            mov dl,13
            mov ah,02h
            int 21h
        
           ret
        newline endp
    
end main    
           