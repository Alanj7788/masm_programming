;To find squares of the given number

.model small
printn macro p
lea dx,p
mov ah,09h
int 21h
endm

.data
msg1 db 'Enter a number:$'
msg2 db 10,13,'Square of the given number:$'

.code
mov ax,@data
mov ds,ax

printn msg1

mov ah,01h
int 21h

printn msg2
sub al,30h
mul al

mov ah,00h
mov cl,0ah
div cl

mov bh,ah

add al,'0'
mov dl,al
mov ah,02h
int 21h

add bh,'0'
mov dl,bh
mov ah,02h
int 21h
 
mov ah,4ch
int 21h
end
