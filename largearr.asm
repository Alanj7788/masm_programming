;large in a array (single digit)(input in code itself)
.MODEL small

.DATA
    array DB 7,8,9,1,2

    maxm db 'The largest element is: $'

.CODE
    mov ax, @data
    mov ds, ax

    
    lea si, array         ; Array index
    mov bl, [si] ; Initial maximum value
    inc si
    mov cx,4

    
loop1:
    cmp bl,[si]
    jg next
    mov bl,[si]
next:
	inc si
	loop loop1

	lea dx,maxm
	mov ah,09h
	int 21h

	mov dl,bl
	add dl,48

	mov ah,02h
	int 21h
    
    mov ah, 4ch
    int 21h

END
