section .data

message db "Hello world | Davuzk", 10

section .text
	
	global _start

_start:

	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, message
	mov edx, 0x15
	int 0x80

	mov eax, 0x1
	mov ebx, 0x0
	int 0x80
