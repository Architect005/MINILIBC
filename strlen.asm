bits 64,

section .text
  global strlen:

strlen:
    push  rcx
    xor   rcx, rcx

move:
    cmp   [rdi], byte 0
    jz    null

    inc   rcx
    inc   rdi
    jmp   move

null:
    mov   rax, rcx
    pop   rcx
    ret
