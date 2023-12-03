; To read a single digit number and print it

.model small

printn macro p
lea dx,p
mov ah,09h
int 21h
endm

.data
msg db 'Enter a number:$'

.code
mov ax,@data
mov ds,ax
printn msg
mov ah,01h
int 21h

mov dl,al
mov ah,02h
int 21h

mov ah,4ch
int 21h
end
