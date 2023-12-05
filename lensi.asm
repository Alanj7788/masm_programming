;length of string (input given by user)
.model small

printn macro p
    lea dx,p
    mov ah,09h
    int 21h
endm

.data
    buffer db 40 dup(?)
    msg1 db 'Enter the string:$'
    msg2 db 10,13,'Length of string:$'

.code
    mov ax,@data
    mov ds,ax
    printn msg1
    lea dx,buffer
    mov ah,3fh
    int 21h
    lea si,  buffer ; Initialize di with the address of buffer
    mov cx,0
    printn msg2
    
loop:
    mov al,[si]
    cmp al,'$'
    je out
    inc cx
    inc si
    jmp loop

out:
    MOV AH, 02H
    MOV DL, cx
    ADD DL, '0'
    INT 21H


mov ah,4ch
int 21h
end
