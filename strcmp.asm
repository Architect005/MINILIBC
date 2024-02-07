bits 64,

section .text
    global strcmp

strcmp:
    xor rcx, rcx

strt:
    mov r10b, [rdi + rcx]
    mov r11b, [rsi + rcx]
    cmp r10b, 0
    je bad
    cmp r10b, r11b
    jne bad
    inc rcx
    jmp strt

bad:
    cmp r11b, 0
    je suit
    mov rcx, 1
    ret

suit:
    movzx rax, r10b
    movzx rbx, r11b
    sub rax, rbx
    mov rcx, 0
    ret
