bits 64,

section .text
    global strncmp

strncmp:
    push r10

strt:
    mov r10b, [rdi + rcx]
    cmp r10b, 0
    je suit
    mov r11b, [rsi + rcx]
    cmp r11b, 0
    je suit
    cmp r10b, r11b
    jne suit
    inc rcx
    jmp strt

suit:
    sub r10b, r11b
    movzx r10, r10b
    pop r10
    ret
