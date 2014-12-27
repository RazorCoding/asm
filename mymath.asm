; The formula that I am trying to implement is (a+b-c)*d/e 
; Caution: will not work with negative and floating point numbers
BITS 32	;declare it as a 32 bit code
GLOBAL _start
SECTION .text
_start: 
	mov	ebx,4	;variable a
	mov 	eax,4	;variable b
	mov	ecx,5	;variable c
	mov	edx,2	;variable d
	mov	esi,4	;variable e
	add	eax,ebx	;a+b and stored the result in eax
	sub	eax,ecx	;eax = eax - ecx (a+b-c)
	imul	edx,eax	;the value of eax * the value of edx and stored the result in edx (a+b-c)*d
	mov	eax,edx	;copying (a+b-c)*d result to eax
	mov	edx,0	;cleaning edx for the idiv op
	cmp 	esi, 0 	; checking for divide by zero error
	je _exit		;if it is divide by zero exit
	idiv	esi	; doing "EDX:EAX / ESI" 
	
	
_exit:
	mov  ebx, eax          ; move the return status eax into the ebx register (the single argument to sys_exit)
	mov  eax, 0x1          ; move the identifier for "sys_exit" system call into the eax register
	int 0x80               ; invoke interrupt 128, asking the Linux kernel to service the syscall specified in eax