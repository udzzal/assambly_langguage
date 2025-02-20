 include 'emu8086.inc'
 
 
.model small
.stack 100h


.data
    string db 'jnoflnf'


.code

    main proc
         
         print 'enter your message'
         
         call newline  
         
         print 'hellow world'
         
        
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
            

