;odd or even

.model small
printn macro p
lea dx,p
mov ah,09h
int 21h
endm

.data
msg1 db 'Enter a number:$'
msg2 db 10,13,'Given number is odd$'
msg3 db 10,13,'Given number is even$'

.code
mov ax,@data
mov ds,ax

printn msg1

mov ah,01h
int 21h
sub al,30h

div al,02
cmp ah,0
jz even
jnz odd
odd:printn msg2
    jmp done

even: printn msg3

done: 
mov ah,4ch
int 21h
end
