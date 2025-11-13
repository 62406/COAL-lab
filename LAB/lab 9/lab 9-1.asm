; program to calculate sum of first ten natural numbers without using counter
include emu8086.inc
.model small
.stack 100h
.data
.code
main proc
    mov bx, 0
    mov ax, 0
    
label1:
    add ax, bx
    inc bx
    cmp bx, 11
    jne label1
    
    ; you can also replace above two instructions with following two instructions:
    ; cmp bx, 10
    ; jle label1
    
    call print_num
    
    mov ah, 4ch
    int 21h
main endp

DEFINE_PRINT_NUM      ; used by print_num proc
DEFINE_PRINT_NUM_UNS  ; used by print_num proc
end main