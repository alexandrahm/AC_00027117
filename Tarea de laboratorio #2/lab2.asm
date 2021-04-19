	org	100h

	section .text
	mov	AX, [200h] 
	mov [200h],"A"
	mov	byte [201h], "M"
	mov	byte [202h], "H"
	mov	byte [203h], "M"

; Direccionamiento directo o absoluto
	mov 	[200h], AX 
	mov 	SI, [200h]

; Direccionamiento indirecto por registro
; Usamos el registro base como puntero para acceder a la memoria
	mov	CX, [201h]

; Direccionamiento indirecto base mas indice 
; Usamos el registro base junto con un registro apuntador
	mov 	DX, [202h+DI]
	mov	[202h+DI], DX

; Direccionamiento relativo por registro
	mov	AX, [DI+203h]

	int 	20h