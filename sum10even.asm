;sum of first 10 even numbers (0,2,4,6,8,10,12,14,16,18)
.model small
printn macro p
lea dx,p
mov ah,09h
int 21h
endm

.data
msg db 'Sum of first 10 even no:$'

.code
mov ax,@data
mov ds,ax
printn msg

mov cx,0ah
mov ax,0
mov bx,0
back:add ax,bx
     inc bx
     inc bx
     loop back


mov cl,0ah
div cl
mov ah,00h
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
