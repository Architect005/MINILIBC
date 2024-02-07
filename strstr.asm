bits 64
section .bss

section .text
global strstr:function

strstr:
        push rbp
        mov rbp, rsp
        xor r10, r10
        xor r11, r11
        mov r9,0
        jmp loopverif

loopverif:
    cmp byte[rdi + r10] , 0
    je fin2
    mov r11,r10
     inc r10
    xor r9,r9
    jmp verf

verf:
cmp byte[rsi + r9], 0
je fin
inc r9
inc r11
jmp verf2

verf2:
mov r8b, byte[rsi+r9-1]
cmp byte[rdi + r11-1], r8b
je verf
jmp loopverif


fin:
mov rax, rdi
add r10, -1
add rax,r10
leave 
ret

fin2:
xor rax,rax 
leave 
ret