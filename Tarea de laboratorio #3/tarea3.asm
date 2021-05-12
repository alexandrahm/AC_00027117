org 100h


section     .text

	mov 	AX, 0000h ;limpiando AX
	mov	BX, 0000h ;limpiando BX
        mov     AX, 0d
        mov     BX, 3d
        ADD     AX, BX ;AX = 3

        mov     BX, 0d
        ADD     AX, BX ;AX =3 

        mov     BX, 1d
        ADD     AX, BX ; AX = 4

        mov     BX, 7d
        ADD     AX, BX ; AX = 11
        
	mov 	DX, 0000h; limpiando dx
	mov 	BX, 5h ;guardando el el divior
	div	BX	; cociente queda en ax = 2 y residuo queda en DX = 1

	mov 	[230h], DX ;guardando temporalmente el residuo
	mov	[231h], AX ;guardando temporalmente el cociente

        mov     di, 0d
        mov     cx, [len]

lupi:   mov     bl, [comnt+di]
        mov     [di+200h], bl
        inc     di
		cmp 	di, 14d
        jb      lupi
;---------------------------------------------------------------------------------

	mov 	DX, 0000h ;limpiando dx
	mov 	CX, 0000h; limpiando cx
	mov	AX, 2d;	AX Tendrá el valor inicial de 2
	mov	CX, 2d; BX tendrá el valor de 2
	mul 	CX
	mov	[210h], ax
	mov 	BX, 0000h ;limpiando bx

frstWhile:	inc bx
	mul cx
	mov [BX+ 210h], ax
	CMP ax, 0xFF; si es menor que 255 hexa
	jb frstWhile

scndWhile:	inc bx
	mul cx
	inc bx
	mov [bx+ 210h], ax
	cmp bx, 12d
	jb scndWhile

int 200h-