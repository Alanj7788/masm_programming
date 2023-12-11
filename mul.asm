; multiplication without mul ( output single digit )

.model small

printn macro p
lea dx,p
mov ah,09h
int 21h
endm

.data
msg1 db 'Enter the 1st number:$'
msg2 db 10,13,'Enter the 2nd number:$'
msg3 db 10,13,'Result:$'

.code
mov ax,@data
mov ds,ax

printn msg1
mov ah,01h
int 21h
sub al,30h
mov cl,al

printn msg2
mov ah,01h
int 21h
sub al,30h
mov bl,al
mov al,0

back: add al,bl
      loop back

printn msg3
add al,30h
mov dl,al
mov ah,02h
int 21h 

mov ah,4ch
int 21h
end
