.model small

printn macro p
lea dx,p
mov ah,09h
int 21h
endm

.data
msg db 'helloworld$'

.code
mov ax,@data
mov ds,ax
printn msg

mov ah,4ch
int 21h
end
