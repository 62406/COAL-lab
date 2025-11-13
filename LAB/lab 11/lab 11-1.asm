.model small
.stack 100h
.data
values dw 450, 0, 487, 101, 500, 0, 359, 0, 458
count equ 9
.code
main proc
    mov ax, @data
    mov ds, ax
    
    ; Push values to stack
    mov cx, count
    mov si, offset values
    
push_loop:
    push [si]
    add si, 2
    loop push_loop
    
    ; Remove zeros and update stack
    mov cx, count
    mov bx, sp
    
remove_zeros:
    pop ax
    cmp ax, 0
    je skip_zero
    push ax
skip_zero:
    loop remove_zeros
    
    mov ah, 4ch
    int 21h
main endp
end main