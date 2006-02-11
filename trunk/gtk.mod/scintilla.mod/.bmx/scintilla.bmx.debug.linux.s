	format	ELF
	extrn	__bb_blitz_blitz
	extrn	__bb_scintilla_config
	extrn	bbOnDebugEnterScope
	extrn	bbOnDebugLeaveScope
	public	__bb_scintilla_scintilla
	section	"code" executable
__bb_scintilla_scintilla:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_5],0
	je	_6
	mov	eax,0
	pop	ebx
	pop	ebp
	ret
_6:
	mov	dword [_5],1
	push	ebp
	push	_3
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	call	__bb_blitz_blitz
	call	__bb_scintilla_config
	mov	ebx,0
	jmp	_1
_1:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	pop	ebp
	ret
	section	"data" writeable align 8
	align	4
_5:
	dd	0
_4:
	db	"scintilla",0
	align	4
_3:
	dd	1
	dd	_4
	dd	0
