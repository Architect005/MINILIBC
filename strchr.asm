bits 64,

section .text
    global strchr

strchr:
    enter 0, 0
    xor rax, rax

strt:
    cmp rdi, 0x0
    je nop
    cmp [rdi], sil
    je got
    inc rdi
    jmp strt

nop:
    leave
    ret

got:
    mov rax, rdi

    leave
    ret
