section .text
globl _start ;must be decalred for linker (ld)

_start:
	mov edx, len ; msg lenght
	mov ecx,msg  
	mov ebx,1    ; message to write 
	int 0x80    ; file descriptor
	
	mov eax,1   ; system call number (sys_exit)
	int 0x80 ; call kernel
section .data

msg db 'Hello, world! ;0xa
len equ $ - msg       ;lenght of our dear string
