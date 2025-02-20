include 'emu8086.inc'

.model small

.data
    n db 5
    m db 6
    

.code

main proc 
    mov ax,@data
    mov ds,ax
    
                
         
          mov dl,n
          mov bl,m
          
          cmp dl,bl
          
          je show
           
                print 'both are not equal'
                mov ah,04h
                int 21h
             
             
             
             show:
                print 'both value is equal'
                
                
                mov ah,04h
                int 21h
                
                             
    main endp
end main