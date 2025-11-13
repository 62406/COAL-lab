.model small
.stack 100h
.code
main proc
    mov cx, 5
    mov ax, 0
    mov bx, 0
    
add_loop:
    add ax, bx
    inc bx
    loop add_loop
    
    ; Result stored in AX register
    mov ah, 4ch
    int 21h
main endp
end main