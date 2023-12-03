; To add two no

.model small

printn macro p
lea dx,p
mov ah,09h
int 21h
endm

.data
msg1 db 'Enter 1st number:$'
msg2 db ' Enter 2nd number:$'
res db ' Result:$'

.code
mov ax,@data
mov ds,ax

printn msg1
mov ah,01h
int 21h
mov bl,al
sub bl,'0'

printn msg1
mov ah,01h
int 21h
sub al,'0'

printn res
add al,bl
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
