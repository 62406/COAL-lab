.model small
.stack 100h
.data
buffer db 100 dup(?)
msg db 'Enter a string: $'
.code
main proc
    mov ax, @data
    mov ds, ax
    
    ; Display prompt
    mov dx, offset msg
    mov ah, 9
    int 21h
    
    ; Input string
    mov cx, 0
    mov si, offset buffer
    
input_loop:
    mov ah, 1
    int 21h
    cmp al, 13
    je end_input
    push ax
    inc cx
    jmp input_loop
    
end_input:
    ; New line
    mov dl, 10
    mov ah, 2
    int 21h
    mov dl, 13
    mov ah, 2
    int 21h
    
    ; Print reversed string
reverse_loop:
    pop dx
    mov ah, 2
    int 21h
    loop reverse_loop
    
    mov ah, 4ch
    int 21h
main endp
end main