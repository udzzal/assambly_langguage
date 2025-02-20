include 'emu8086.inc'
.model small
.data
    n1 db ?
    n2 db ? 
.code
main proc
         
          mov cx,10 
          mov bl,1
          
           start:
           
                print 'hellow world:  ' 
                mov dl,bl
                add dl,48
                 
                mov ah,02
                int 21h
                
                
                mov dl,10
                mov ah,02
                int 21h
                
                mov dl,13
                mov ah,02
                int 21h
                       
                inc bl       
                
           loop start
           
           
       mov ah,04ch
       int 21h  
       
    main endp
end main