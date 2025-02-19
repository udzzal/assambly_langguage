include 'emu8086.inc'

.model small

.data
    msg db ? 

.code

main proc
         
         ;print variable  as msg in data section
         
         mov ax,@data 
         mov ds,ax
         
         print 'your nuumber is ' 
         mov ah,01h
         int 21h 
         
         ;shhifting valu of al to msg
         mov msg,al
         
         mov dl,10
         mov ah,02h
         int 21h
         
         mov dl,13
         mov ah,02h
         int 21h
         
         ;instruction for print the msg ariable
         mov dl,msg
         mov ah,02h
         int 21h
           
         
           
       mov ah,04ch
       int 21h  
       
    main endp
end main