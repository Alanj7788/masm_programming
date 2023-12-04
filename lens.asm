;length of string (input given in the code itself)
.model small

printn macro p
    lea dx,p
    mov ah,09h
    int 21h
endm

.data
    msg1 db 'hello$'
    msg2 db 10,13,'Length of string:$'

.code
    mov ax,@data
    mov ds,ax
    lea si,  msg1 ; Initialize di with the address of msg
    mov cx,0
    printn msg1
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
