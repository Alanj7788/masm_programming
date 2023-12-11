; no of a in a word

.model small
printn macro p
lea dx,p
mov ah,09h
int 21h
endm

.data
msg1 db 'Enter the string:$'
msg2 db 10,13,'No of A:$'
in db 40 dup(?)

.code
mov ax,@data
mov ds,ax

printn msg1

lea dx,in
mov ah,3fh
int 21h

mov cl,00h
lea si,in

back:   mov al,[si]
	cmp al,'$'
	je endi
	cmp al,'a'
	je occ
	inc si
	jmp back
occ : inc cl
      inc si
	jmp back

endi:mov dl,cl
add dl,30h
mov ah,02h
int 21h

mov ah,4ch
int 21h
end
