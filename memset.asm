bits 64
section .text

global memset:function

memset:
push rbp
mov rbp, rsp
xor r10,r10
xor r8,r8
jmp comp

comp:
cmp rdx, 0
je fin
mov byte[rdi+r10] , sil
inc r10
dec rdx
jmp comp

fin:
leave
ret

