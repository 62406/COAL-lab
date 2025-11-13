.model small
.stack 100h
.code
main proc
    mov cx, 5
    mov dl, '1'
    
odd_loop:
    mov ah, 2
    int 21h
    add dl, 2
    loop odd_loop
    
    mov ah, 4ch
    int 21h
main endp
end main