;simple print program	
;testing variable declaration and simple print 
;testing print i/o
;easiest program to see whether or not it is assembled correct
;if it is not assembled correctly, there the output will be wrong
;standard header
.model tiny
.data
	hello db "hello$" ; creating a variable hello with the string hello
.code
org 100h
Start:	
	mov ax, seg hello ;moves the segment that hello is in into ax
	mov ds, ax
	mov dx, offset hello
	mov ah, 09 ; interupt 21h to print a string
	int 21h ;terminates the string
	
	;exit sequence
	mov ah, 4ch
	mov al,00h
	int 21h

END START
	
	
