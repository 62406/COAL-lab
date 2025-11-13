.model small
.stack 100h
.data
.code
main proc
    mov ah, 1
    int 21h
    sub al, '0'
    mov bl, al
    
    mul al
    mov dl, al
    add dl, 30h
    mov ah, 2
    int 21h
    
    mov ah, 4Ch
    int 21h
main endp
end main