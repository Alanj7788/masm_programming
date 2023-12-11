; multiplication without mul ( output 2 digit )

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

mov cl,0ah
mov ah,00h
div cl
mov bl,ah

mov dl,al
add dl,30h
mov ah,02h
int 21h

mov dl,bl
add dl,30h
mov ah,02h
int 21h 

mov ah,4ch
int 21h
end
