	org	100h

	section .text

	mov AX, "A" 
        mov CX, "M"
	mov DX, "H"
	mov DI, "M"
	    mov byte [200h], AX
	    mov byte [201h], CX
	    mov byte [202h], DX
	    mov byte [203h], DI
	    int 20h 
