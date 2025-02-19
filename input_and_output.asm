include 'emu8086.inc'

.model small

.data
    msg db 'hellow world$'

.code

main proc
    
         print 'enter your characture:'
         
         
         ;taking input from keyboard
         mov ah,01h
         int 21h 
         
         ;for newline instruction
         mov dl,10 
         mov ah,02h
         int 21h
         ;for cursor to start instruction
         mov dl,13
         int 21h
         
         ;print the input value from dl register
         mov dx,ax ;or mov dl,al spfic 8bit rgister 
         mov ah,02h
         int 21h   
    
    
    main endp
end main

