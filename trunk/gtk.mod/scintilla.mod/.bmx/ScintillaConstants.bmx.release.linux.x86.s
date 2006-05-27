	format	ELF
	extrn	__bb_blitz_blitz
	public	__bb_scintilla_ScintillaConstants
	section	"code" executable
__bb_scintilla_ScintillaConstants:
	push	ebp
	mov	ebp,esp
	cmp	dword [_3],0
	je	_4
	mov	eax,0
	mov	esp,ebp
	pop	ebp
	ret
_4:
	mov	dword [_3],1
	call	__bb_blitz_blitz
	mov	eax,0
_1:
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" writeable align 8
	align	4
_3:
	dd	0
