;program that divide 6 by 3
.model small
.stack 200h
.code
Start:	
		mov ax,6 ;preparing the dividend
		mov dx,0 ;zero extension
		mov cx,3 ;preparing the divisor
		div cx   ;divides AX by CX, with quotient being stored in AX, and remainder in DX
        mov ah, 4ch ;preparing exit call
        mov al,00h ; preparing exit call
		int 21h ; exit call
End Start