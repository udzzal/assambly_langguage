include 'emu8086.inc'

.model small

.data
    n db 5,8,6,1,2,4,8,9
    

.code

main proc             
         
          mov ax,@data
          mov ds,ax
          
          
          mov si,offset n
          mov cx,8
          
          print 'array lement is :'
           
          ;loop body
          
          loopx:
          
             mov dl,[si]
             add dl,48
             
             mov ah,02h
             int 21h
             
             mov dl,32
             mov ah,02h
             int 21h
             
             ;increment array index
             inc si
          
          loop loopx
           
           
       mov ah,04ch
       int 21h  
       
    main endp
end main