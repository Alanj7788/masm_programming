;division without div (single digit input)

.model small
printn macro p
lea dx,p
mov ah,09h
int 21h
endm

.data
msg1 db 'Enter the divident:$'
msg2 db 10,13,'Enter the divisor:$'
msg3 db 10,13,'Quotient:$'
msg4 db 10,13,'Remainder:$'

.code
mov ax,@data
mov ds,ax

printn msg1
mov ah,01h
int 21h
sub al,30h
mov bl,al

printn msg2
mov ah,01h
int 21h
sub al,30h
mov bh,al
mov cl,0

back: cmp bl,bh
      jl next
      sub bl,bh
      inc cl
      jmp back

next: printn msg4
      add bl,30h
      mov dl,bl
      mov ah,02h
      int 21h

printn msg3
add cl,30h
mov dl,cl
mov ah,02h
int 21h

mov ah,4ch
int 21h
end
