	format	ELF
	extrn	__bb_blitz_blitz
	extrn	__bb_scintilla_config
	public	__bb_scintilla_scintilla
	section	"code" executable
__bb_scintilla_scintilla:
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
	call	__bb_scintilla_config
	mov	eax,0
	jmp	_1
_1:
	pop	ebp
	ret
	section	"data" writeable align 8
	align	4
_3:
	dd	0
