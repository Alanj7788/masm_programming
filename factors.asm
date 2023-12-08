.model small

printn macro p
    lea dx, p
    mov ah, 09h
    int 21h
endm

.data
    msg1 db 'Enter a number:$'
    msg2 db 10,13,'Factors:$'

.code
    mov ax, @data
    mov ds, ax
    printn msg1
    mov ah, 01h
    int 21h
    printn msg2

    mov bl, al
    sub bl, 30h
    mov cl, 0ah

label1:
    mov al, bl
    mov ah, 00h
    div cl
    cmp ah, 00h
    je prints
    cmp cl, 00h
    je endi
    dec cl
    jmp label1

prints:
    mov dl, al
    add dl, 30h
    mov ah, 02h
    int 21h
    dec cl
    jmp label1

endi:
    mov ah, 4ch
    int 21h
end
