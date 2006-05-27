	format	ELF
	extrn	__bb_blitz_blitz
	extrn	__bb_linkedlist_linkedlist
	extrn	__bb_oop_oop
	extrn	__bb_retro_retro
	extrn	__bb_scintilla_ScintillaConstants
	extrn	__bb_scintilla_config
	extrn	_gtk_oop_GObject_SignalConnect
	extrn	_gtk_oop_GtkWidget_CreateWidgetFromHandle
	extrn	_gtk_oop_GtkWidget_Delete
	extrn	_gtk_oop_GtkWidget_Destroy
	extrn	_gtk_oop_GtkWidget_Hide
	extrn	_gtk_oop_GtkWidget_HideAll
	extrn	_gtk_oop_GtkWidget_New
	extrn	_gtk_oop_GtkWidget_SetSensitive
	extrn	_gtk_oop_GtkWidget_SetSizeRequest
	extrn	_gtk_oop_GtkWidget_Show
	extrn	_gtk_oop_GtkWidget_ShowAll
	extrn	bbArrayNew1D
	extrn	bbEmptyString
	extrn	bbNullObject
	extrn	bbObjectClass
	extrn	bbObjectCompare
	extrn	bbObjectCtor
	extrn	bbObjectDowncast
	extrn	bbObjectDtor
	extrn	bbObjectFree
	extrn	bbObjectNew
	extrn	bbObjectReserved
	extrn	bbObjectSendMessage
	extrn	bbObjectToString
	extrn	bbStringClass
	extrn	bbStringCompare
	extrn	bbStringConcat
	extrn	bbStringFromChar
	extrn	bbStringToCString
	extrn	g_type_check_instance_cast
	extrn	gtk_oop_GtkWidget
	extrn	scintilla_get_type
	extrn	scintilla_new
	extrn	scintilla_send_message
	public	__bb_scintilla_scintilla
	public	_gtk_scintilla_GtkScintilla_AddText
	public	_gtk_scintilla_GtkScintilla_AppendText
	public	_gtk_scintilla_GtkScintilla_CanRedo
	public	_gtk_scintilla_GtkScintilla_CanUndo
	public	_gtk_scintilla_GtkScintilla_ClearAll
	public	_gtk_scintilla_GtkScintilla_ClearStyle
	public	_gtk_scintilla_GtkScintilla_Copy
	public	_gtk_scintilla_GtkScintilla_Create
	public	_gtk_scintilla_GtkScintilla_CreateFromHandle
	public	_gtk_scintilla_GtkScintilla_Cut
	public	_gtk_scintilla_GtkScintilla_DecodeColor
	public	_gtk_scintilla_GtkScintilla_DefineMarker
	public	_gtk_scintilla_GtkScintilla_Delete
	public	_gtk_scintilla_GtkScintilla_DisableSelectionBack
	public	_gtk_scintilla_GtkScintilla_DisableSelectionFore
	public	_gtk_scintilla_GtkScintilla_EmptyUndoBuffer
	public	_gtk_scintilla_GtkScintilla_EncodeColor
	public	_gtk_scintilla_GtkScintilla_GetCaretColor
	public	_gtk_scintilla_GtkScintilla_GetCaretLineBack
	public	_gtk_scintilla_GtkScintilla_GetCaretLineVisible
	public	_gtk_scintilla_GtkScintilla_GetCurrentPosition
	public	_gtk_scintilla_GtkScintilla_GetLexer
	public	_gtk_scintilla_GtkScintilla_GetLine
	public	_gtk_scintilla_GtkScintilla_GetLineCount
	public	_gtk_scintilla_GtkScintilla_GetLineFromPosition
	public	_gtk_scintilla_GtkScintilla_GetMarginMask
	public	_gtk_scintilla_GtkScintilla_GetMarginSensitive
	public	_gtk_scintilla_GtkScintilla_GetMarginType
	public	_gtk_scintilla_GtkScintilla_GetMarginWidth
	public	_gtk_scintilla_GtkScintilla_GetStyleBits
	public	_gtk_scintilla_GtkScintilla_GetTabWidth
	public	_gtk_scintilla_GtkScintilla_InsertText
	public	_gtk_scintilla_GtkScintilla_New
	public	_gtk_scintilla_GtkScintilla_Paste
	public	_gtk_scintilla_GtkScintilla_Redo
	public	_gtk_scintilla_GtkScintilla_SetBGColor
	public	_gtk_scintilla_GtkScintilla_SetCaretColor
	public	_gtk_scintilla_GtkScintilla_SetCaretLineBack
	public	_gtk_scintilla_GtkScintilla_SetCaretLineVisible
	public	_gtk_scintilla_GtkScintilla_SetFont
	public	_gtk_scintilla_GtkScintilla_SetFontBGColor
	public	_gtk_scintilla_GtkScintilla_SetKeywordList
	public	_gtk_scintilla_GtkScintilla_SetKeywords
	public	_gtk_scintilla_GtkScintilla_SetLexer
	public	_gtk_scintilla_GtkScintilla_SetMarginMask
	public	_gtk_scintilla_GtkScintilla_SetMarginSensitive
	public	_gtk_scintilla_GtkScintilla_SetMarginType
	public	_gtk_scintilla_GtkScintilla_SetMarginWidth
	public	_gtk_scintilla_GtkScintilla_SetProperty
	public	_gtk_scintilla_GtkScintilla_SetSelectionBack
	public	_gtk_scintilla_GtkScintilla_SetSelectionFore
	public	_gtk_scintilla_GtkScintilla_SetStyleBits
	public	_gtk_scintilla_GtkScintilla_SetTabWidth
	public	_gtk_scintilla_GtkScintilla_ToggleFoldPoint
	public	_gtk_scintilla_GtkScintilla_Undo
	public	_gtk_scintilla_SCNotification_Delete
	public	_gtk_scintilla_SCNotification_New
	public	gtk_scintilla_GtkScintilla
	public	gtk_scintilla_SCNotification
	section	"code" executable
__bb_scintilla_scintilla:
	push	ebp
	mov	ebp,esp
	cmp	dword [_265],0
	je	_266
	mov	eax,0
	mov	esp,ebp
	pop	ebp
	ret
_266:
	mov	dword [_265],1
	call	__bb_blitz_blitz
	call	__bb_linkedlist_linkedlist
	call	__bb_retro_retro
	call	__bb_oop_oop
	call	__bb_scintilla_config
	call	__bb_scintilla_ScintillaConstants
	mov	eax,0
_14:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_SCNotification_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	bbObjectCtor
	add	esp,4
	mov	dword [ebx],gtk_scintilla_SCNotification
	mov	dword [ebx+8],0
	mov	dword [ebx+12],0
	mov	dword [ebx+16],0
	mov	dword [ebx+20],0
	mov	dword [ebx+24],0
	mov	dword [ebx+28],0
	mov	dword [ebx+32],0
	mov	dword [ebx+36],0
	mov	dword [ebx+40],0
	mov	dword [ebx+44],0
	mov	dword [ebx+48],0
	mov	dword [ebx+52],0
	mov	dword [ebx+56],0
	mov	dword [ebx+60],0
	mov	dword [ebx+64],0
	mov	dword [ebx+68],0
	mov	dword [ebx+72],0
	mov	dword [ebx+76],0
	mov	eax,0
_17:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_SCNotification_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_20:
	mov	dword [eax],bbObjectClass
	push	eax
	call	bbObjectDtor
	add	esp,4
	mov	eax,0
_267:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_gtk_oop_GtkWidget_New
	add	esp,4
	mov	dword [ebx],gtk_scintilla_GtkScintilla
	mov	dword [ebx+12],0
	mov	eax,0
_23:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_26:
	mov	dword [eax],gtk_oop_GtkWidget
	push	eax
	call	_gtk_oop_GtkWidget_Delete
	add	esp,4
	mov	eax,0
_268:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_Create:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	gtk_scintilla_GtkScintilla
	call	bbObjectNew
	add	esp,4
	mov	ebx,eax
	call	scintilla_new
	mov	dword [ebx+8],eax
	call	scintilla_get_type
	push	eax
	push	dword [ebx+8]
	call	g_type_check_instance_cast
	add	esp,8
	mov	dword [ebx+12],eax
	mov	eax,ebx
_28:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_CreateFromHandle:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	esi,dword [ebp+8]
	push	gtk_scintilla_GtkScintilla
	call	bbObjectNew
	add	esp,4
	mov	ebx,eax
	mov	dword [ebx+8],esi
	call	scintilla_get_type
	push	eax
	push	dword [ebx+8]
	call	g_type_check_instance_cast
	add	esp,8
	mov	dword [ebx+12],eax
	mov	eax,ebx
_31:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_InsertText:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	esi,dword [ebp+8]
	mov	eax,dword [ebp+12]
	mov	ebx,dword [ebp+16]
	push	eax
	call	bbStringToCString
	add	esp,4
	push	eax
	mov	eax,ebx
	push	eax
	push	2003
	push	dword [esi+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_36:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_AppendText:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp+12]
	push	ebx
	call	bbStringToCString
	add	esp,4
	push	eax
	mov	eax,dword [ebx+8]
	push	eax
	push	2282
	push	dword [esi+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_40:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_AddText:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp+12]
	push	ebx
	call	bbStringToCString
	add	esp,4
	push	eax
	mov	eax,dword [ebx+8]
	push	eax
	push	2001
	push	dword [esi+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_44:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetLine:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp+12]
	push	1024
	push	_271
	call	bbArrayNew1D
	add	esp,8
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp-4]
	lea	eax,byte [eax+24]
	push	eax
	mov	eax,ebx
	push	eax
	push	2153
	push	dword [esi+12]
	call	scintilla_send_message
	add	esp,16
	mov	esi,bbEmptyString
	mov	ebx,0
	jmp	_275
_6:
	mov	eax,dword [ebp-4]
	movzx	eax,byte [eax+ebx+24]
	mov	eax,eax
	cmp	eax,0
	jne	_276
	jmp	_48
_276:
	mov	eax,dword [ebp-4]
	movzx	eax,byte [eax+ebx+24]
	mov	eax,eax
	push	eax
	call	bbStringFromChar
	add	esp,4
	push	eax
	push	esi
	call	bbStringConcat
	add	esp,8
	mov	esi,eax
_4:
	add	ebx,1
_275:
	cmp	ebx,1023
	jle	_6
_5:
	mov	esi,bbEmptyString
_48:
	mov	eax,esi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetLineCount:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	push	0
	push	0
	push	2154
	push	dword [eax+12]
	call	scintilla_send_message
	add	esp,16
_51:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_ClearAll:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	push	0
	push	0
	push	2004
	push	dword [eax+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_54:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_ClearStyle:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	push	0
	push	0
	push	2005
	push	dword [eax+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_57:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetLexer:
	push	ebp
	mov	ebp,esp
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	0
	mov	eax,eax
	push	eax
	push	4001
	push	dword [edx+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_61:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetLexer:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	push	0
	push	0
	push	4002
	push	dword [eax+12]
	call	scintilla_send_message
	add	esp,16
_64:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetStyleBits:
	push	ebp
	mov	ebp,esp
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	0
	mov	eax,eax
	push	eax
	push	2090
	push	dword [edx+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_68:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetStyleBits:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	push	0
	push	0
	push	2091
	push	dword [eax+12]
	call	scintilla_send_message
	add	esp,16
_71:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetKeywords:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp+12]
	mov	eax,dword [ebp+16]
	push	eax
	call	bbStringToCString
	add	esp,4
	push	eax
	mov	eax,ebx
	push	eax
	push	4005
	push	dword [esi+12]
	call	scintilla_send_message
	add	esp,16
_76:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetKeywordList:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+16]
	mov	esi,bbEmptyString
	mov	ebx,eax
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_7
_9:
	mov	eax,edi
	push	bbStringClass
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	bbObjectDowncast
	add	esp,8
	cmp	eax,bbNullObject
	je	_7
	push	_10
	push	eax
	call	bbStringConcat
	add	esp,8
	push	eax
	push	esi
	call	bbStringConcat
	add	esp,8
	mov	esi,eax
_7:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_9
_8:
	mov	eax,dword [ebp+8]
	push	esi
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,12
	mov	eax,0
_81:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetFont:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+16]
	mov	ebx,dword [ebp+20]
	movzx	eax,byte [ebp+36]
	mov	edi,eax
	movzx	eax,byte [ebp+40]
	mov	eax,eax
	mov	byte [ebp+40],al
	movzx	eax,byte [ebp+44]
	mov	eax,eax
	mov	byte [ebp+44],al
	push	_1
	push	esi
	call	bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_285
	push	esi
	call	bbStringToCString
	add	esp,4
	push	eax
	mov	eax,dword [ebp+12]
	push	eax
	push	2056
	mov	eax,dword [ebp+8]
	push	dword [eax+12]
	call	scintilla_send_message
	add	esp,16
_285:
	cmp	ebx,-1
	je	_286
	mov	eax,ebx
	push	eax
	mov	eax,dword [ebp+12]
	push	eax
	push	2055
	mov	eax,dword [ebp+8]
	push	dword [eax+12]
	call	scintilla_send_message
	add	esp,16
_286:
	mov	eax,edi
	cmp	eax,2
	je	_287
	mov	eax,edi
	push	eax
	mov	eax,dword [ebp+12]
	push	eax
	push	2053
	mov	eax,dword [ebp+8]
	push	dword [eax+12]
	call	scintilla_send_message
	add	esp,16
_287:
	movzx	eax,byte [ebp+44]
	mov	eax,eax
	cmp	eax,2
	je	_288
	movzx	eax,byte [ebp+44]
	mov	eax,eax
	push	eax
	mov	eax,dword [ebp+12]
	push	eax
	push	2054
	mov	eax,dword [ebp+8]
	push	dword [eax+12]
	call	scintilla_send_message
	add	esp,16
_288:
	movzx	eax,byte [ebp+40]
	mov	eax,eax
	cmp	eax,2
	je	_289
	movzx	eax,byte [ebp+40]
	mov	eax,eax
	push	eax
	mov	eax,dword [ebp+12]
	push	eax
	push	2059
	mov	eax,dword [ebp+8]
	push	dword [eax+12]
	call	scintilla_send_message
	add	esp,16
_289:
	mov	eax,dword [ebp+24]
	cmp	eax,-1
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_290
	mov	eax,dword [ebp+28]
	cmp	eax,-1
	setne	al
	movzx	eax,al
_290:
	cmp	eax,0
	je	_292
	mov	eax,dword [ebp+32]
	cmp	eax,-1
	setne	al
	movzx	eax,al
_292:
	cmp	eax,0
	je	_294
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+32]
	and	eax,0xff
	push	eax
	mov	eax,dword [ebp+28]
	and	eax,0xff
	push	eax
	mov	eax,dword [ebp+24]
	and	eax,0xff
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+152]
	add	esp,16
	mov	eax,eax
	push	eax
	mov	eax,dword [ebp+12]
	push	eax
	push	2051
	mov	eax,dword [ebp+8]
	push	dword [eax+12]
	call	scintilla_send_message
	add	esp,16
_294:
	mov	eax,0
_93:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetFontBGColor:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp+12]
	movzx	ecx,byte [ebp+16]
	movzx	edx,byte [ebp+20]
	movzx	eax,byte [ebp+24]
	push	eax
	push	edx
	push	ecx
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+152]
	add	esp,16
	mov	eax,eax
	push	eax
	mov	eax,ebx
	push	eax
	push	2052
	push	dword [esi+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_100:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_EncodeColor:
	push	ebp
	mov	ebp,esp
	movzx	eax,byte [ebp+12]
	movzx	edx,byte [ebp+16]
	movzx	ecx,byte [ebp+20]
	mov	eax,eax
	mov	edx,edx
	shl	edx,8
	add	eax,edx
	mov	edx,ecx
	shl	edx,16
	add	eax,edx
_106:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_DecodeColor:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	ebx,dword [ebp+12]
	mov	esi,dword [ebp+16]
	mov	ecx,dword [ebp+20]
	mov	edx,dword [ebp+24]
	mov	eax,ebx
	and	eax,255
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [esi],al
	mov	eax,ebx
	and	eax,65280
	shr	eax,8
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [ecx],al
	and	ebx,16711680
	shr	ebx,16
	mov	eax,ebx
	and	eax,0xff
	mov	eax,eax
	mov	byte [edx],al
	mov	eax,0
_113:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetBGColor:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	movzx	eax,byte [ebp+12]
	mov	edi,eax
	movzx	eax,byte [ebp+16]
	mov	esi,eax
	movzx	eax,byte [ebp+20]
	mov	eax,eax
	mov	byte [ebp+20],al
	mov	ebx,0
	jmp	_299
_13:
	mov	edx,dword [ebp+8]
	movzx	eax,byte [ebp+20]
	push	eax
	push	esi
	push	edi
	push	ebx
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+148]
	add	esp,20
_11:
	add	ebx,1
_299:
	cmp	ebx,19
	jle	_13
_12:
	mov	edx,dword [ebp+8]
	movzx	eax,byte [ebp+20]
	push	eax
	push	esi
	push	edi
	push	32
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+148]
	add	esp,20
	mov	eax,0
_119:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetMarginType:
	push	ebp
	mov	ebp,esp
	mov	ecx,dword [ebp+8]
	mov	edx,dword [ebp+12]
	mov	eax,dword [ebp+16]
	mov	eax,eax
	push	eax
	mov	eax,edx
	push	eax
	push	2240
	push	dword [ecx+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_124:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetMarginType:
	push	ebp
	mov	ebp,esp
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	0
	mov	eax,eax
	push	eax
	push	2241
	push	dword [edx+12]
	call	scintilla_send_message
	add	esp,16
_128:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetMarginMask:
	push	ebp
	mov	ebp,esp
	mov	ecx,dword [ebp+8]
	mov	edx,dword [ebp+12]
	mov	eax,dword [ebp+16]
	mov	eax,eax
	push	eax
	mov	eax,edx
	push	eax
	push	2244
	push	dword [ecx+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_133:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetMarginMask:
	push	ebp
	mov	ebp,esp
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	0
	mov	eax,eax
	push	eax
	push	2245
	push	dword [edx+12]
	call	scintilla_send_message
	add	esp,16
_137:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetMarginWidth:
	push	ebp
	mov	ebp,esp
	mov	ecx,dword [ebp+8]
	mov	edx,dword [ebp+12]
	mov	eax,dword [ebp+16]
	mov	eax,eax
	push	eax
	mov	eax,edx
	push	eax
	push	2242
	push	dword [ecx+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_142:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetMarginWidth:
	push	ebp
	mov	ebp,esp
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	0
	mov	eax,eax
	push	eax
	push	2243
	push	dword [edx+12]
	call	scintilla_send_message
	add	esp,16
_146:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetMarginSensitive:
	push	ebp
	mov	ebp,esp
	mov	edx,dword [ebp+8]
	mov	ecx,dword [ebp+12]
	movzx	eax,byte [ebp+16]
	mov	eax,eax
	push	eax
	mov	eax,ecx
	push	eax
	push	2246
	push	dword [edx+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_151:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetMarginSensitive:
	push	ebp
	mov	ebp,esp
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	0
	mov	eax,eax
	push	eax
	push	2247
	push	dword [edx+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,eax
	and	eax,0xff
_155:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetCaretColor:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	movzx	ecx,byte [ebp+12]
	movzx	edx,byte [ebp+16]
	movzx	eax,byte [ebp+20]
	push	0
	push	eax
	push	edx
	push	ecx
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+152]
	add	esp,16
	mov	eax,eax
	push	eax
	push	2069
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_161:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetCaretColor:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	mov	ecx,dword [ebp+12]
	mov	edx,dword [ebp+16]
	mov	eax,dword [ebp+20]
	push	eax
	push	edx
	push	ecx
	push	0
	push	0
	push	2138
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+156]
	add	esp,20
	mov	eax,0
_167:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetCaretLineVisible:
	push	ebp
	mov	ebp,esp
	mov	edx,dword [ebp+8]
	movzx	eax,byte [ebp+12]
	push	0
	mov	eax,eax
	push	eax
	push	2096
	push	dword [edx+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_171:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetCaretLineVisible:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	push	0
	push	0
	push	2095
	push	dword [eax+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,eax
	and	eax,0xff
_174:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetCaretLineBack:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	movzx	ecx,byte [ebp+12]
	movzx	edx,byte [ebp+16]
	movzx	eax,byte [ebp+20]
	push	0
	push	eax
	push	edx
	push	ecx
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+152]
	add	esp,16
	mov	eax,eax
	push	eax
	push	2098
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_180:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetCaretLineBack:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	mov	ecx,dword [ebp+12]
	mov	edx,dword [ebp+16]
	mov	eax,dword [ebp+20]
	push	eax
	push	edx
	push	ecx
	push	0
	push	0
	push	2097
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+156]
	add	esp,20
	mov	eax,0
_186:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetSelectionFore:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	movzx	ecx,byte [ebp+12]
	movzx	edx,byte [ebp+16]
	movzx	eax,byte [ebp+20]
	push	eax
	push	edx
	push	ecx
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+152]
	add	esp,16
	mov	eax,eax
	push	eax
	mov	eax,1
	push	eax
	push	2067
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_192:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetSelectionBack:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	movzx	ecx,byte [ebp+12]
	movzx	edx,byte [ebp+16]
	movzx	eax,byte [ebp+20]
	push	eax
	push	edx
	push	ecx
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+152]
	add	esp,16
	mov	eax,eax
	push	eax
	mov	eax,1
	push	eax
	push	2068
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_198:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_DisableSelectionFore:
	push	ebp
	mov	ebp,esp
	mov	edx,dword [ebp+8]
	push	0
	mov	eax,0
	push	eax
	push	2067
	push	dword [edx+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_201:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_DisableSelectionBack:
	push	ebp
	mov	ebp,esp
	mov	edx,dword [ebp+8]
	push	0
	mov	eax,0
	push	eax
	push	2068
	push	dword [edx+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_204:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetTabWidth:
	push	ebp
	mov	ebp,esp
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	0
	mov	eax,eax
	push	eax
	push	2036
	push	dword [edx+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_208:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetTabWidth:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	push	0
	push	0
	push	2121
	push	dword [eax+12]
	call	scintilla_send_message
	add	esp,16
_212:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetProperty:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	ebx,dword [ebp+8]
	mov	esi,dword [ebp+12]
	mov	eax,dword [ebp+16]
	push	eax
	call	bbStringToCString
	add	esp,4
	push	eax
	push	esi
	call	bbStringToCString
	add	esp,4
	push	eax
	push	4004
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_217:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_DefineMarker:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp+12]
	mov	edx,dword [ebp+16]
	movzx	eax,byte [ebp+20]
	mov	eax,eax
	mov	byte [ebp+20],al
	movzx	eax,byte [ebp+24]
	mov	eax,eax
	mov	byte [ebp+24],al
	movzx	eax,byte [ebp+28]
	mov	edi,eax
	movzx	eax,byte [ebp+32]
	mov	eax,eax
	mov	byte [ebp+32],al
	movzx	eax,byte [ebp+36]
	mov	eax,eax
	mov	byte [ebp+36],al
	movzx	eax,byte [ebp+40]
	mov	eax,eax
	mov	byte [ebp+40],al
	mov	eax,edx
	push	eax
	mov	eax,ebx
	push	eax
	push	2040
	push	dword [esi+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,esi
	push	edi
	movzx	edx,byte [ebp+24]
	push	edx
	movzx	edx,byte [ebp+20]
	push	edx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+152]
	add	esp,16
	mov	eax,eax
	push	eax
	mov	eax,ebx
	push	eax
	push	2041
	push	dword [esi+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,esi
	movzx	edx,byte [ebp+40]
	push	edx
	movzx	edx,byte [ebp+36]
	push	edx
	movzx	edx,byte [ebp+32]
	push	edx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+152]
	add	esp,16
	mov	eax,eax
	push	eax
	mov	eax,ebx
	push	eax
	push	2042
	push	dword [esi+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_228:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetLineFromPosition:
	push	ebp
	mov	ebp,esp
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	0
	mov	eax,eax
	push	eax
	push	2166
	push	dword [edx+12]
	call	scintilla_send_message
	add	esp,16
_232:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetCurrentPosition:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	push	0
	push	0
	push	2008
	push	dword [eax+12]
	call	scintilla_send_message
	add	esp,16
_235:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_ToggleFoldPoint:
	push	ebp
	mov	ebp,esp
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	0
	mov	eax,eax
	push	eax
	push	2231
	push	dword [edx+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_239:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_Cut:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	push	0
	push	0
	push	2177
	push	dword [eax+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_242:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_Copy:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	push	0
	push	0
	push	2178
	push	dword [eax+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_245:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_Paste:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	push	0
	push	0
	push	2179
	push	dword [eax+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_248:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_Undo:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	push	0
	push	0
	push	2176
	push	dword [eax+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_251:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_CanUndo:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	push	0
	push	0
	push	2174
	push	dword [eax+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,eax
	and	eax,0xff
_254:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_Redo:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	push	0
	push	0
	push	2011
	push	dword [eax+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_257:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_CanRedo:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	push	0
	push	0
	push	2016
	push	dword [eax+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,eax
	and	eax,0xff
_260:
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_EmptyUndoBuffer:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	push	0
	push	0
	push	2175
	push	dword [eax+12]
	call	scintilla_send_message
	add	esp,16
	mov	eax,0
_263:
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" writeable align 8
	align	4
_265:
	dd	0
	align	4
gtk_scintilla_SCNotification:
	dd	bbObjectClass
	dd	bbObjectFree
	dd	0
	dd	80
	dd	_gtk_scintilla_SCNotification_New
	dd	_gtk_scintilla_SCNotification_Delete
	dd	bbObjectToString
	dd	bbObjectCompare
	dd	bbObjectSendMessage
	dd	bbObjectReserved
	dd	bbObjectReserved
	dd	bbObjectReserved
	align	4
gtk_scintilla_GtkScintilla:
	dd	gtk_oop_GtkWidget
	dd	bbObjectFree
	dd	0
	dd	16
	dd	_gtk_scintilla_GtkScintilla_New
	dd	_gtk_scintilla_GtkScintilla_Delete
	dd	bbObjectToString
	dd	bbObjectCompare
	dd	bbObjectSendMessage
	dd	bbObjectReserved
	dd	bbObjectReserved
	dd	bbObjectReserved
	dd	_gtk_oop_GObject_SignalConnect
	dd	_gtk_oop_GtkWidget_CreateWidgetFromHandle
	dd	_gtk_oop_GtkWidget_Show
	dd	_gtk_oop_GtkWidget_ShowAll
	dd	_gtk_oop_GtkWidget_Hide
	dd	_gtk_oop_GtkWidget_HideAll
	dd	_gtk_oop_GtkWidget_SetSizeRequest
	dd	_gtk_oop_GtkWidget_Destroy
	dd	_gtk_oop_GtkWidget_SetSensitive
	dd	_gtk_scintilla_GtkScintilla_Create
	dd	_gtk_scintilla_GtkScintilla_CreateFromHandle
	dd	_gtk_scintilla_GtkScintilla_InsertText
	dd	_gtk_scintilla_GtkScintilla_AppendText
	dd	_gtk_scintilla_GtkScintilla_AddText
	dd	_gtk_scintilla_GtkScintilla_GetLine
	dd	_gtk_scintilla_GtkScintilla_GetLineCount
	dd	_gtk_scintilla_GtkScintilla_ClearAll
	dd	_gtk_scintilla_GtkScintilla_ClearStyle
	dd	_gtk_scintilla_GtkScintilla_SetLexer
	dd	_gtk_scintilla_GtkScintilla_GetLexer
	dd	_gtk_scintilla_GtkScintilla_SetStyleBits
	dd	_gtk_scintilla_GtkScintilla_GetStyleBits
	dd	_gtk_scintilla_GtkScintilla_SetKeywords
	dd	_gtk_scintilla_GtkScintilla_SetKeywordList
	dd	_gtk_scintilla_GtkScintilla_SetFont
	dd	_gtk_scintilla_GtkScintilla_SetFontBGColor
	dd	_gtk_scintilla_GtkScintilla_EncodeColor
	dd	_gtk_scintilla_GtkScintilla_DecodeColor
	dd	_gtk_scintilla_GtkScintilla_SetBGColor
	dd	_gtk_scintilla_GtkScintilla_SetMarginType
	dd	_gtk_scintilla_GtkScintilla_GetMarginType
	dd	_gtk_scintilla_GtkScintilla_SetMarginMask
	dd	_gtk_scintilla_GtkScintilla_GetMarginMask
	dd	_gtk_scintilla_GtkScintilla_SetMarginWidth
	dd	_gtk_scintilla_GtkScintilla_GetMarginWidth
	dd	_gtk_scintilla_GtkScintilla_SetMarginSensitive
	dd	_gtk_scintilla_GtkScintilla_GetMarginSensitive
	dd	_gtk_scintilla_GtkScintilla_SetCaretColor
	dd	_gtk_scintilla_GtkScintilla_GetCaretColor
	dd	_gtk_scintilla_GtkScintilla_SetCaretLineVisible
	dd	_gtk_scintilla_GtkScintilla_GetCaretLineVisible
	dd	_gtk_scintilla_GtkScintilla_SetCaretLineBack
	dd	_gtk_scintilla_GtkScintilla_GetCaretLineBack
	dd	_gtk_scintilla_GtkScintilla_SetSelectionFore
	dd	_gtk_scintilla_GtkScintilla_SetSelectionBack
	dd	_gtk_scintilla_GtkScintilla_DisableSelectionFore
	dd	_gtk_scintilla_GtkScintilla_DisableSelectionBack
	dd	_gtk_scintilla_GtkScintilla_SetTabWidth
	dd	_gtk_scintilla_GtkScintilla_GetTabWidth
	dd	_gtk_scintilla_GtkScintilla_SetProperty
	dd	_gtk_scintilla_GtkScintilla_DefineMarker
	dd	_gtk_scintilla_GtkScintilla_GetLineFromPosition
	dd	_gtk_scintilla_GtkScintilla_GetCurrentPosition
	dd	_gtk_scintilla_GtkScintilla_ToggleFoldPoint
	dd	_gtk_scintilla_GtkScintilla_Cut
	dd	_gtk_scintilla_GtkScintilla_Copy
	dd	_gtk_scintilla_GtkScintilla_Paste
	dd	_gtk_scintilla_GtkScintilla_Undo
	dd	_gtk_scintilla_GtkScintilla_CanUndo
	dd	_gtk_scintilla_GtkScintilla_Redo
	dd	_gtk_scintilla_GtkScintilla_CanRedo
	dd	_gtk_scintilla_GtkScintilla_EmptyUndoBuffer
_271:
	db	"b",0
	align	4
_10:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	32
	align	4
_1:
	dd	bbStringClass
	dd	2147483647
	dd	0
