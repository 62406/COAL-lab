org 100h
.model small
.stack 100h
.data
msg1 db 'Enter a lowercase character: $'
msg2 db 'After conversion to uppercase: $'
char db ?

.code
main proc
    mov ax, @data
    mov ds, ax
    mov dx, offset msg1
    mov ah, 9
    int 21h

    mov ah, 1
    int 21h
    mov char, al

    ; Convert lowercase to UPPER CASE
    sub char, 32

    mov dl, 10
    mov ah, 2
    int 21h
    mov dl, 13
    mov ah, 2
    int 21h

    mov dx, offset msg2
    mov ah, 9
    int 21h

    ; Print converted character
    mov dl, char
    mov ah, 2
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main