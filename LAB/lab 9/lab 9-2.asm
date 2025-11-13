.model small
.stack 100h
.data
    msg1 DB 0Dh,0Ah, 'Enter first digit: $'
    msg2 DB 0Dh,0Ah, 'Enter second digit: $'
    msg_equal DB 0Dh,0Ah, 'Numbers are equal.$'
    msg_greater DB 0Dh,0Ah, 'First number is greater.$'
    msg_less DB 0Dh,0Ah, 'First number is smaller.$'
.code
main proc
    mov ax, @data
    mov ds, ax

    ; Show first number message
    mov ah, 09h
    lea dx, msg1
    int 21h
    
    ; Input first number
    mov ah, 01h
    int 21h
    sub al, 30h    ; Convert ASCII to number
    mov bl, al     ; Store first number in BL
    
    ; Show second number message
    mov ah, 09h
    lea dx, msg2
    int 21h
    
    ; Input second number
    mov ah, 01h
    int 21h
    sub al, 30h    ; Convert ASCII to number
    mov bh, al     ; Store second number in BH
    
    ; Compare both numbers
    cmp bl, bh
    je equal       ; if equal
    jg greater     ; if greater
    jl less        ; if less

equal:
    mov ah, 09h
    lea dx, msg_equal
    int 21h
    jmp exit

greater:
    mov ah, 09h
    lea dx, msg_greater
    int 21h
    jmp exit

less:
    mov ah, 09h
    lea dx, msg_less
    int 21h

exit:
    mov ah, 4Ch
    int 21h
main endp
end main