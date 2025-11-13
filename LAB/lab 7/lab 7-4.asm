.model small
.stack 100h
.data
base DB 0
result DB 0
height DB 0
.code
main proc
    mov ah, 1
    int 21h
    sub al, '0'
    mov base, al
    
    mov ah, 1
    int 21h
    sub al, '0'
    mov height, al
    
    mov al, base
    mul height
    mov bl, 2
    div bl
    mov result, al
    
    add al, 30h
    mov dl, al
    mov ah, 2
    int 21h
    
    mov ah, 4Ch
    int 21h
main endp
end main