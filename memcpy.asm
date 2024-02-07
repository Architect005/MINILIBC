bits 64,

section .text
    global memcpy

memcpy:
    push r10
    xor rcx, rcx

body:
    cmp rdx, 0
    je end
    mov r10b, byte [rsi + rcx]
    mov [rdi], r10b
    inc rdi
    inc rcx
    dec rdx
    jmp body

end:
    movzx r10, r10b
    pop r10
    ret
