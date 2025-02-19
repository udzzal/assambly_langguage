include 'emu8086.inc'

.model small

.data
    n1 db ?
    n2 db ? 

.code

main proc
         
         ;add two variable  as msg in data section
         
         mov ax,@data 
         mov ds,ax
         
          print 'enter your first number' 
          mov ah,01h
          int 21h
          sub al,48
          mov n1,al
          
           ;new line code 
         mov dl,10
         mov ah,02h
         int 21h
         
         mov dl,13
         mov ah,02h
         int 21h   
         
         
          print 'enter your second number' 
          mov ah,01h
          int 21h 
          sub al,48 
          mov n2,al
         
          ;adding two variable
           mov bl,n1
           add bl,al
           add bl,48
        
           ;new line code 
          mov dl,10
         mov ah,02h
         int 21h
         
         mov dl,13
         mov ah,02h
         int 21h   
         
          ;printing data on dl register
          mov dl,bl
          
          mov ah,02h
          int 21h
          
           
           
       mov ah,04ch
       int 21h  
       
    main endp
end main
