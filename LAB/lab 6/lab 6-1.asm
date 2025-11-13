org 100h
.model small
.stack 100h
.data
na DB 'Name: Ayesha Malik$'
program DB 'Program: BS-SE$'
roll DB 'Roll: Software Engineering$'
uni DB 'University: Riphah International, GGC$'

.code
main proc
    mov ax, @data
    mov ds, ax
    mov dx, offset na
    mov ah, 9
    int 21h

    mov dx, 10
    mov ah, 2
    int 21h
    mov dx, 13
    mov ah, 2
    int 21h

    mov dx, offset program
    mov ah, 9
    int 21h

    mov dx, 10
    mov ah, 2
    int 21h
    mov dx, 13
    mov ah, 2
    int 21h

    mov dx, offset roll
    mov ah, 9
    int 21h

    mov dx, 10
    mov ah, 2
    int 21h
    mov dx, 13
    mov ah, 2
    int 21h

    mov dx, offset uni
    mov ah, 9
    int 21h

    mov ah, 4ch
    int 21h
main endp
end main