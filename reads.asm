;Taking input string and printing it
;while taking input add $ at the last of the string
.model small

printn macro p
    lea dx, p
    mov ah, 09h
    int 21h
endm

.data
    buffer db 40 ; 
    msg1 db 'Enter a string:$'
    msg2 db 10,13,'You entered:$'

.code
    mov ax, @data
    mov ds, ax

    printn msg1
    
    lea dx, buffer  
    mov ah, 0Ah    
    int 21h       
  
    printn msg2
 
    ; Print the entered string (use the buffer directly)
    lea dx, buffer+2
    mov ah, 09h
    int 21h

    mov ah, 4ch
    int 21h
end
