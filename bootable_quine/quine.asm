[bits 16]
	mov ax,07C0h
	mov ds,ax 
	mov ah,0
	mov al,03h 
	int 10h
	mov si,code
	call p 
	jmp $
p: mov ah,0Eh
r: lodsb
	cmp al,0
	je d
	cmp bx,0x42
	jne s
c: int 10h
	jmp r
s: cmp al,94 
	je re
	cmp al,63
	je q
	jmp c	
q: mov al,34
	jmp c
re: push si
	mov bx,0x42
	mov si,code
	call p 
	mov bx,0
	pop si	
	jmp p 
	
d: ret

code: db "[bits 16]\mov ax,07C0h\mov ds,ax\mov ah,0\mov al,03h\int 10h\mov si,code\call p\jmp $\p: mov ah,0Eh\r: lodsb\cmp al,0\je d\cmp bx,0x42\jne s\c: int 10h\jmp r\s: cmp al,94\je re\cmp al,63\je q\jmp c\q: mov al,34\jmp c\re: push si\mov bx,0x42\mov si,code\call p\mov bx,0\pop si\jmp p\\d: ret\\code: db ?^?\times 510-($-$$) db 0\dw 0xAA55"
times 510-($-$$) db 0
dw 0xAA55
