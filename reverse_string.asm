 include 'emu8086.inc'
 
 
.model small
.stack 100h


.data
    string db 'jnoflnf'


.code

    main proc
         
         mov ax,@data
         mov ds,ax
         
         mov si,offset string
         
        
          mov cx,7
          
          loop1:
          mov bx,[si]
          push bx
          
          inc si
          
          loop loop1
          
       mov cx,7
       
       loop2:
            pop dx
            mov ah,02h
            int 21h
            
           loop loop2    
        
        
    mov ah,04ch
    int 21h          
        
    main endp
end main    
            

