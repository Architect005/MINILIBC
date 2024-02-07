bits 64
section .text

global memmove:function

memmove:
push rbp
mov rbp, rsp
xor r10,r10
xor r8,r8
jmp comp

comp:
cmp rdx, 0
mov r8b, byte[rsi+r10]
je fin
mov byte[rdi+r10] , r8b
inc r10
dec rdx
jmp comp

fin:
leave
ret
