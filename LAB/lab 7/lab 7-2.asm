.model small
.stack 100h
.data
rm DB "reminder $"
qt DB "quotient $"
.code
main proc
    mov ax, 27
    mov bl, 5
    div bl
    mov cl, al
    mov ch, ah
    
    mov ax, @data
    mov ds, ax
    mov dx, offset qt
    mov ah, 9
    int 21h
    
    mov dl, cl
    add dl, 48
    mov ah, 2
    int 21h
    
    mov dl, 10      ; new line
    mov ah, 2
    int 21h
    
    mov dl, 13      ; carriage return
    mov ah, 2
    int 21h
    
    mov ax, @data
    mov ds, ax
    mov dx, offset rm
    mov ah, 9
    int 21h
    
    mov dl, ch
    add dl, 48
    mov ah, 2
    int 21h
    
    mov ah, 4ch
    int 21h
main endp
end main