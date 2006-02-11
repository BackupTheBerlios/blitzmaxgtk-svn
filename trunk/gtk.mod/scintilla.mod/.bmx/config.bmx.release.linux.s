	format	ELF
	extrn	__bb_blitz_blitz
	public	__bb_scintilla_config
	section	"code" executable
__bb_scintilla_config:
	push	ebp
	mov	ebp,esp
	cmp	dword [_3],0
	je	_4
	mov	eax,0
	pop	ebp
	ret
_4:
	mov	dword [_3],1
	call	__bb_blitz_blitz
	mov	eax,0
	jmp	_1
_1:
	pop	ebp
	ret
	section	"data" writeable align 8
	align	4
_3:
	dd	0
