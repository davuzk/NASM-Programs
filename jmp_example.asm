global _start

section .text

_start:
	call ignoreinstruction 

ignoreinstruction:
	cmp eax, eax
	xor eax, eax
	xor eax, eax
	xor eax, eax
	xor ebx, ebx
	inc eax
	xor eax, eax
	cmp ebx, eax
	jmp jumpiter ; jump no matter what to the "jumpiter" label. JE = Jump if equal, JNE = Jump if not equal, JMP = Jump no mater what, and so on...
	mov eax, 0x4 ; fuck this.
	mov ebx, 0x1
	mov ecx, pusk
	mov edx, puskl
	int 0x80

jumpiter:
	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, jpt
	mov edx, jptl
	int 0x80
	jmp exit

exit:
	mov eax, 0x1
	mov ebx, 0x0
	int 0x80

section .data

pusk db "Pusk", 10
puskl equ $-pusk
jpt db "Jumpt me", 10
jptl equ $-jpt

section .bss
input resb 255
