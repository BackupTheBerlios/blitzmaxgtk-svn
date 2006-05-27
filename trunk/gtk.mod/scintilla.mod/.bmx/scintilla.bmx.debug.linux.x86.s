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
	extrn	bbEmptyArray
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
	extrn	bbOnDebugEnterScope
	extrn	bbOnDebugEnterStm
	extrn	bbOnDebugLeaveScope
	extrn	bbStringClass
	extrn	bbStringCompare
	extrn	bbStringConcat
	extrn	bbStringFromChar
	extrn	bbStringToCString
	extrn	brl_blitz_ArrayBoundsError
	extrn	brl_blitz_NullObjectError
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
	push	ebx
	cmp	dword [_2619],0
	je	_2620
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_2620:
	mov	dword [_2619],1
	push	ebp
	push	_290
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	call	__bb_blitz_blitz
	call	__bb_linkedlist_linkedlist
	call	__bb_retro_retro
	call	__bb_oop_oop
	call	__bb_scintilla_config
	call	__bb_scintilla_ScintillaConstants
	mov	ebx,0
_39:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_SCNotification_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_2696
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],gtk_scintilla_SCNotification
	push	ebp
	push	_2694
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2621
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2624
	call	brl_blitz_NullObjectError
_2624:
	mov	dword [ebx+8],0
	push	_2626
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2628
	call	brl_blitz_NullObjectError
_2628:
	mov	dword [ebx+12],0
	push	_2630
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2632
	call	brl_blitz_NullObjectError
_2632:
	mov	dword [ebx+16],0
	push	_2634
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2636
	call	brl_blitz_NullObjectError
_2636:
	mov	dword [ebx+20],0
	push	_2638
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2640
	call	brl_blitz_NullObjectError
_2640:
	mov	dword [ebx+24],0
	push	_2642
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2644
	call	brl_blitz_NullObjectError
_2644:
	mov	dword [ebx+28],0
	push	_2646
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2648
	call	brl_blitz_NullObjectError
_2648:
	mov	dword [ebx+32],0
	push	_2650
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2652
	call	brl_blitz_NullObjectError
_2652:
	mov	dword [ebx+36],0
	push	_2654
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2656
	call	brl_blitz_NullObjectError
_2656:
	mov	dword [ebx+40],0
	push	_2658
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2660
	call	brl_blitz_NullObjectError
_2660:
	mov	dword [ebx+44],0
	push	_2662
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2664
	call	brl_blitz_NullObjectError
_2664:
	mov	dword [ebx+48],0
	push	_2666
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2668
	call	brl_blitz_NullObjectError
_2668:
	mov	dword [ebx+52],0
	push	_2670
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2672
	call	brl_blitz_NullObjectError
_2672:
	mov	dword [ebx+56],0
	push	_2674
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2676
	call	brl_blitz_NullObjectError
_2676:
	mov	dword [ebx+60],0
	push	_2678
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2680
	call	brl_blitz_NullObjectError
_2680:
	mov	dword [ebx+64],0
	push	_2682
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2684
	call	brl_blitz_NullObjectError
_2684:
	mov	dword [ebx+68],0
	push	_2686
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2688
	call	brl_blitz_NullObjectError
_2688:
	mov	dword [ebx+72],0
	push	_2690
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2692
	call	brl_blitz_NullObjectError
_2692:
	mov	dword [ebx+76],0
	call	dword [bbOnDebugLeaveScope]
	push	ebp
	push	_2695
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	call	dword [bbOnDebugLeaveScope]
	mov	ebx,0
_42:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_SCNotification_Delete:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_2702
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	ebp
	push	_2700
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	call	dword [bbOnDebugLeaveScope]
_45:
	mov	eax,dword [ebp-4]
	mov	dword [eax],bbObjectClass
	push	dword [ebp-4]
	call	bbObjectDtor
	add	esp,4
	mov	ebx,0
_2701:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_2711
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_gtk_oop_GtkWidget_New
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],gtk_scintilla_GtkScintilla
	push	ebp
	push	_2709
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2704
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2707
	call	brl_blitz_NullObjectError
_2707:
	mov	dword [ebx+12],0
	call	dword [bbOnDebugLeaveScope]
	push	ebp
	push	_2710
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	call	dword [bbOnDebugLeaveScope]
	mov	ebx,0
_48:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_Delete:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_2715
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	ebp
	push	_2713
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	call	dword [bbOnDebugLeaveScope]
_51:
	mov	eax,dword [ebp-4]
	mov	dword [eax],gtk_oop_GtkWidget
	push	dword [ebp-4]
	call	_gtk_oop_GtkWidget_Delete
	add	esp,4
	mov	ebx,0
_2714:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	mov	dword [ebp-4],bbNullObject
	push	ebp
	push	_2729
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2716
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	gtk_scintilla_GtkScintilla
	call	bbObjectNew
	add	esp,4
	mov	dword [ebp-4],eax
	push	_2718
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2720
	call	brl_blitz_NullObjectError
_2720:
	call	scintilla_new
	mov	dword [ebx+8],eax
	push	_2722
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2724
	call	brl_blitz_NullObjectError
_2724:
	mov	esi,dword [ebp-4]
	cmp	esi,bbNullObject
	jne	_2727
	call	brl_blitz_NullObjectError
_2727:
	call	scintilla_get_type
	push	eax
	push	dword [esi+8]
	call	g_type_check_instance_cast
	add	esp,8
	mov	dword [ebx+12],eax
	push	_2728
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
_53:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_CreateFromHandle:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],bbNullObject
	push	ebp
	push	_2745
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2732
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	gtk_scintilla_GtkScintilla
	call	bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_2734
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,bbNullObject
	jne	_2736
	call	brl_blitz_NullObjectError
_2736:
	mov	eax,dword [ebp-4]
	mov	dword [ebx+8],eax
	push	_2738
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,bbNullObject
	jne	_2740
	call	brl_blitz_NullObjectError
_2740:
	mov	esi,dword [ebp-8]
	cmp	esi,bbNullObject
	jne	_2743
	call	brl_blitz_NullObjectError
_2743:
	call	scintilla_get_type
	push	eax
	push	dword [esi+8]
	call	g_type_check_instance_cast
	add	esp,8
	mov	dword [ebx+12],eax
	push	_2744
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
_56:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_InsertText:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	push	ebp
	push	_2751
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2748
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2750
	call	brl_blitz_NullObjectError
_2750:
	push	dword [ebp-8]
	call	bbStringToCString
	add	esp,4
	push	eax
	mov	eax,dword [ebp-12]
	push	eax
	push	2003
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_61:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_AppendText:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_2759
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2756
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2758
	call	brl_blitz_NullObjectError
_2758:
	push	dword [ebp-8]
	call	bbStringToCString
	add	esp,4
	push	eax
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax+8]
	push	eax
	push	2282
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_65:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_AddText:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_2764
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2761
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2763
	call	brl_blitz_NullObjectError
_2763:
	push	dword [ebp-8]
	call	bbStringToCString
	add	esp,4
	push	eax
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax+8]
	push	eax
	push	2001
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_69:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetLine:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],bbEmptyArray
	mov	dword [ebp-16],bbEmptyString
	mov	dword [ebp-20],0
	push	ebp
	push	_2787
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2766
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	1024
	push	_2767
	call	bbArrayNew1D
	add	esp,8
	mov	dword [ebp-12],eax
	push	_2769
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2771
	call	brl_blitz_NullObjectError
_2771:
	mov	eax,dword [ebp-12]
	lea	eax,byte [eax+24]
	push	eax
	mov	eax,dword [ebp-8]
	push	eax
	push	2153
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	push	_2772
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],bbEmptyString
	push	_2774
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	dword [ebp-20],0
	jmp	_2776
_6:
	push	ebp
	push	_2786
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2777
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_2779
	call	brl_blitz_ArrayBoundsError
_2779:
	mov	eax,dword [ebp-12]
	movzx	eax,byte [eax+ebx+24]
	mov	eax,eax
	cmp	eax,0
	jne	_2780
	push	ebp
	push	_2782
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2781
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	call	dword [bbOnDebugLeaveScope]
	call	dword [bbOnDebugLeaveScope]
	jmp	_73
_2780:
	push	_2783
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	mov	eax,dword [ebp-12]
	cmp	ebx,dword [eax+20]
	jb	_2785
	call	brl_blitz_ArrayBoundsError
_2785:
	mov	eax,dword [ebp-12]
	movzx	eax,byte [eax+ebx+24]
	mov	eax,eax
	push	eax
	call	bbStringFromChar
	add	esp,4
	push	eax
	push	dword [ebp-16]
	call	bbStringConcat
	add	esp,8
	mov	dword [ebp-16],eax
	call	dword [bbOnDebugLeaveScope]
_4:
	add	dword [ebp-20],1
_2776:
	cmp	dword [ebp-20],1023
	jle	_6
_5:
	mov	ebx,bbEmptyString
_73:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetLineCount:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_2796
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2793
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2795
	call	brl_blitz_NullObjectError
_2795:
	push	0
	push	0
	push	2154
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,eax
_76:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_ClearAll:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_2801
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2798
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2800
	call	brl_blitz_NullObjectError
_2800:
	push	0
	push	0
	push	2004
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_79:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_ClearStyle:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_2806
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2803
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2805
	call	brl_blitz_NullObjectError
_2805:
	push	0
	push	0
	push	2005
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_82:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetLexer:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_2811
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2808
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2810
	call	brl_blitz_NullObjectError
_2810:
	push	0
	mov	eax,dword [ebp-8]
	push	eax
	push	4001
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_86:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetLexer:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_2817
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2814
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2816
	call	brl_blitz_NullObjectError
_2816:
	push	0
	push	0
	push	4002
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,eax
_89:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetStyleBits:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_2822
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2819
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2821
	call	brl_blitz_NullObjectError
_2821:
	push	0
	mov	eax,dword [ebp-8]
	push	eax
	push	2090
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_93:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetStyleBits:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_2828
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2825
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2827
	call	brl_blitz_NullObjectError
_2827:
	push	0
	push	0
	push	2091
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,eax
_96:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetKeywords:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	push	ebp
	push	_2833
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2830
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2832
	call	brl_blitz_NullObjectError
_2832:
	push	dword [ebp-12]
	call	bbStringToCString
	add	esp,4
	push	eax
	mov	eax,dword [ebp-8]
	push	eax
	push	4005
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,eax
_101:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetKeywordList:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	dword [ebp-16],bbEmptyString
	mov	dword [ebp-20],bbEmptyString
	push	ebp
	push	_2855
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2837
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],bbEmptyString
	push	_2839
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],bbEmptyString
	mov	esi,dword [ebp-12]
	cmp	esi,bbNullObject
	jne	_2843
	call	brl_blitz_NullObjectError
_2843:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_7
_9:
	cmp	ebx,bbNullObject
	jne	_2848
	call	brl_blitz_NullObjectError
_2848:
	push	bbStringClass
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	bbObjectDowncast
	add	esp,8
	mov	dword [ebp-20],eax
	cmp	dword [ebp-20],bbNullObject
	je	_7
	push	ebp
	push	_2850
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2849
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_10
	push	dword [ebp-20]
	call	bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-16]
	call	bbStringConcat
	add	esp,8
	mov	dword [ebp-16],eax
	call	dword [bbOnDebugLeaveScope]
_7:
	cmp	ebx,bbNullObject
	jne	_2846
	call	brl_blitz_NullObjectError
_2846:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_9
_8:
	push	_2852
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2854
	call	brl_blitz_NullObjectError
_2854:
	push	dword [ebp-16]
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,12
	mov	ebx,0
_106:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetFont:
	push	ebp
	mov	ebp,esp
	sub	esp,44
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	mov	eax,dword [ebp+28]
	mov	dword [ebp-24],eax
	mov	eax,dword [ebp+32]
	mov	dword [ebp-28],eax
	movzx	eax,byte [ebp+36]
	mov	eax,eax
	mov	byte [ebp-32],al
	movzx	eax,byte [ebp+40]
	mov	eax,eax
	mov	byte [ebp-36],al
	movzx	eax,byte [ebp+44]
	mov	eax,eax
	mov	byte [ebp-40],al
	mov	dword [ebp-44],0
	push	ebp
	push	_2905
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2859
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-12]
	call	bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2860
	push	ebp
	push	_2864
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2861
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2863
	call	brl_blitz_NullObjectError
_2863:
	push	dword [ebp-12]
	call	bbStringToCString
	add	esp,4
	push	eax
	mov	eax,dword [ebp-8]
	push	eax
	push	2056
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	call	dword [bbOnDebugLeaveScope]
_2860:
	push	_2865
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],-1
	je	_2866
	push	ebp
	push	_2870
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2867
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2869
	call	brl_blitz_NullObjectError
_2869:
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [ebp-8]
	push	eax
	push	2055
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	call	dword [bbOnDebugLeaveScope]
_2866:
	push	_2871
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-32]
	mov	eax,eax
	cmp	eax,2
	je	_2872
	push	ebp
	push	_2876
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2873
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2875
	call	brl_blitz_NullObjectError
_2875:
	movzx	eax,byte [ebp-32]
	mov	eax,eax
	push	eax
	mov	eax,dword [ebp-8]
	push	eax
	push	2053
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	call	dword [bbOnDebugLeaveScope]
_2872:
	push	_2877
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-40]
	mov	eax,eax
	cmp	eax,2
	je	_2878
	push	ebp
	push	_2882
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2879
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2881
	call	brl_blitz_NullObjectError
_2881:
	movzx	eax,byte [ebp-40]
	mov	eax,eax
	push	eax
	mov	eax,dword [ebp-8]
	push	eax
	push	2054
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	call	dword [bbOnDebugLeaveScope]
_2878:
	push	_2883
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-36]
	mov	eax,eax
	cmp	eax,2
	je	_2884
	push	ebp
	push	_2888
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2885
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2887
	call	brl_blitz_NullObjectError
_2887:
	movzx	eax,byte [ebp-36]
	mov	eax,eax
	push	eax
	mov	eax,dword [ebp-8]
	push	eax
	push	2059
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	call	dword [bbOnDebugLeaveScope]
_2884:
	push	_2889
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-20]
	cmp	eax,-1
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_2890
	mov	eax,dword [ebp-24]
	cmp	eax,-1
	setne	al
	movzx	eax,al
_2890:
	cmp	eax,0
	je	_2892
	mov	eax,dword [ebp-28]
	cmp	eax,-1
	setne	al
	movzx	eax,al
_2892:
	cmp	eax,0
	je	_2894
	push	ebp
	push	_2903
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2895
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],0
	push	_2897
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2899
	call	brl_blitz_NullObjectError
_2899:
	mov	eax,dword [ebp-28]
	and	eax,0xff
	push	eax
	mov	eax,dword [ebp-24]
	and	eax,0xff
	push	eax
	mov	eax,dword [ebp-20]
	and	eax,0xff
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+152]
	add	esp,16
	mov	dword [ebp-44],eax
	push	_2900
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2902
	call	brl_blitz_NullObjectError
_2902:
	mov	eax,dword [ebp-44]
	push	eax
	mov	eax,dword [ebp-8]
	push	eax
	push	2051
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	call	dword [bbOnDebugLeaveScope]
_2894:
	mov	ebx,0
_118:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetFontBGColor:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	movzx	eax,byte [ebp+16]
	mov	eax,eax
	mov	byte [ebp-12],al
	movzx	eax,byte [ebp+20]
	mov	eax,eax
	mov	byte [ebp-16],al
	movzx	eax,byte [ebp+24]
	mov	eax,eax
	mov	byte [ebp-20],al
	push	ebp
	push	_2922
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2917
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2919
	call	brl_blitz_NullObjectError
_2919:
	mov	esi,dword [ebp-4]
	cmp	esi,bbNullObject
	jne	_2921
	call	brl_blitz_NullObjectError
_2921:
	movzx	eax,byte [ebp-20]
	push	eax
	movzx	eax,byte [ebp-16]
	push	eax
	movzx	eax,byte [ebp-12]
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+152]
	add	esp,16
	mov	eax,eax
	push	eax
	mov	eax,dword [ebp-8]
	push	eax
	push	2052
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_125:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_EncodeColor:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	movzx	eax,byte [ebp+12]
	mov	eax,eax
	mov	byte [ebp-8],al
	movzx	eax,byte [ebp+16]
	mov	eax,eax
	mov	byte [ebp-12],al
	movzx	eax,byte [ebp+20]
	mov	eax,eax
	mov	byte [ebp-16],al
	push	ebp
	push	_2925
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2924
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-8]
	mov	ebx,eax
	movzx	eax,byte [ebp-12]
	mov	eax,eax
	shl	eax,8
	add	ebx,eax
	movzx	eax,byte [ebp-16]
	mov	eax,eax
	shl	eax,16
	add	ebx,eax
_131:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_DecodeColor:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	push	ebp
	push	_2930
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2927
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-12]
	mov	eax,dword [ebp-8]
	and	eax,255
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [edx],al
	push	_2928
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-16]
	mov	eax,dword [ebp-8]
	and	eax,65280
	shr	eax,8
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [edx],al
	push	_2929
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-8]
	and	eax,16711680
	shr	eax,16
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [edx],al
	mov	ebx,0
_138:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetBGColor:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	movzx	eax,byte [ebp+12]
	mov	eax,eax
	mov	byte [ebp-8],al
	movzx	eax,byte [ebp+16]
	mov	eax,eax
	mov	byte [ebp-12],al
	movzx	eax,byte [ebp+20]
	mov	eax,eax
	mov	byte [ebp-16],al
	mov	dword [ebp-20],0
	push	ebp
	push	_2944
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2933
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	dword [ebp-20],0
	jmp	_2935
_13:
	push	ebp
	push	_2939
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2936
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2938
	call	brl_blitz_NullObjectError
_2938:
	movzx	eax,byte [ebp-16]
	push	eax
	movzx	eax,byte [ebp-12]
	push	eax
	movzx	eax,byte [ebp-8]
	push	eax
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+148]
	add	esp,20
	call	dword [bbOnDebugLeaveScope]
_11:
	add	dword [ebp-20],1
_2935:
	cmp	dword [ebp-20],19
	jle	_13
_12:
	push	_2941
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2943
	call	brl_blitz_NullObjectError
_2943:
	movzx	eax,byte [ebp-16]
	push	eax
	movzx	eax,byte [ebp-12]
	push	eax
	movzx	eax,byte [ebp-8]
	push	eax
	push	32
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+148]
	add	esp,20
	mov	ebx,0
_144:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetMarginType:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	push	ebp
	push	_2949
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2946
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2948
	call	brl_blitz_NullObjectError
_2948:
	mov	eax,dword [ebp-12]
	push	eax
	mov	eax,dword [ebp-8]
	push	eax
	push	2240
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_149:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetMarginType:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_2956
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2953
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2955
	call	brl_blitz_NullObjectError
_2955:
	push	0
	mov	eax,dword [ebp-8]
	push	eax
	push	2241
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,eax
_153:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetMarginMask:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	push	ebp
	push	_2961
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2958
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2960
	call	brl_blitz_NullObjectError
_2960:
	mov	eax,dword [ebp-12]
	push	eax
	mov	eax,dword [ebp-8]
	push	eax
	push	2244
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_158:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetMarginMask:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_2967
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2964
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2966
	call	brl_blitz_NullObjectError
_2966:
	push	0
	mov	eax,dword [ebp-8]
	push	eax
	push	2245
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,eax
_162:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetMarginWidth:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	push	ebp
	push	_2972
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2969
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2971
	call	brl_blitz_NullObjectError
_2971:
	mov	eax,dword [ebp-12]
	push	eax
	mov	eax,dword [ebp-8]
	push	eax
	push	2242
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_167:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetMarginWidth:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_2978
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2975
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2977
	call	brl_blitz_NullObjectError
_2977:
	push	0
	mov	eax,dword [ebp-8]
	push	eax
	push	2243
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,eax
_171:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetMarginSensitive:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	movzx	eax,byte [ebp+16]
	mov	eax,eax
	mov	byte [ebp-12],al
	push	ebp
	push	_2983
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2980
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2982
	call	brl_blitz_NullObjectError
_2982:
	movzx	eax,byte [ebp-12]
	mov	eax,eax
	push	eax
	mov	eax,dword [ebp-8]
	push	eax
	push	2246
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_176:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetMarginSensitive:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_2989
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2986
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2988
	call	brl_blitz_NullObjectError
_2988:
	push	0
	mov	eax,dword [ebp-8]
	push	eax
	push	2247
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,eax
	and	ebx,0xff
_180:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetCaretColor:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	movzx	eax,byte [ebp+12]
	mov	eax,eax
	mov	byte [ebp-8],al
	movzx	eax,byte [ebp+16]
	mov	eax,eax
	mov	byte [ebp-12],al
	movzx	eax,byte [ebp+20]
	mov	eax,eax
	mov	byte [ebp-16],al
	push	ebp
	push	_2996
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2991
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_2993
	call	brl_blitz_NullObjectError
_2993:
	mov	esi,dword [ebp-4]
	cmp	esi,bbNullObject
	jne	_2995
	call	brl_blitz_NullObjectError
_2995:
	push	0
	movzx	eax,byte [ebp-16]
	push	eax
	movzx	eax,byte [ebp-12]
	push	eax
	movzx	eax,byte [ebp-8]
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+152]
	add	esp,16
	mov	eax,eax
	push	eax
	push	2069
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_186:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetCaretColor:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	push	ebp
	push	_3003
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_2998
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_3000
	call	brl_blitz_NullObjectError
_3000:
	mov	esi,dword [ebp-4]
	cmp	esi,bbNullObject
	jne	_3002
	call	brl_blitz_NullObjectError
_3002:
	push	dword [ebp-16]
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	0
	push	0
	push	2138
	push	dword [esi+12]
	call	scintilla_send_message
	add	esp,16
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+156]
	add	esp,20
	mov	ebx,0
_192:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetCaretLineVisible:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	movzx	eax,byte [ebp+12]
	mov	eax,eax
	mov	byte [ebp-8],al
	push	ebp
	push	_3008
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_3005
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_3007
	call	brl_blitz_NullObjectError
_3007:
	push	0
	movzx	eax,byte [ebp-8]
	mov	eax,eax
	push	eax
	push	2096
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_196:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetCaretLineVisible:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_3014
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_3011
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_3013
	call	brl_blitz_NullObjectError
_3013:
	push	0
	push	0
	push	2095
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,eax
	and	ebx,0xff
_199:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetCaretLineBack:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	movzx	eax,byte [ebp+12]
	mov	eax,eax
	mov	byte [ebp-8],al
	movzx	eax,byte [ebp+16]
	mov	eax,eax
	mov	byte [ebp-12],al
	movzx	eax,byte [ebp+20]
	mov	eax,eax
	mov	byte [ebp-16],al
	push	ebp
	push	_3021
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_3016
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_3018
	call	brl_blitz_NullObjectError
_3018:
	mov	esi,dword [ebp-4]
	cmp	esi,bbNullObject
	jne	_3020
	call	brl_blitz_NullObjectError
_3020:
	push	0
	movzx	eax,byte [ebp-16]
	push	eax
	movzx	eax,byte [ebp-12]
	push	eax
	movzx	eax,byte [ebp-8]
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+152]
	add	esp,16
	mov	eax,eax
	push	eax
	push	2098
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_205:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetCaretLineBack:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	push	ebp
	push	_3028
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_3023
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_3025
	call	brl_blitz_NullObjectError
_3025:
	mov	esi,dword [ebp-4]
	cmp	esi,bbNullObject
	jne	_3027
	call	brl_blitz_NullObjectError
_3027:
	push	dword [ebp-16]
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	0
	push	0
	push	2097
	push	dword [esi+12]
	call	scintilla_send_message
	add	esp,16
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+156]
	add	esp,20
	mov	ebx,0
_211:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetSelectionFore:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	movzx	eax,byte [ebp+12]
	mov	eax,eax
	mov	byte [ebp-8],al
	movzx	eax,byte [ebp+16]
	mov	eax,eax
	mov	byte [ebp-12],al
	movzx	eax,byte [ebp+20]
	mov	eax,eax
	mov	byte [ebp-16],al
	push	ebp
	push	_3035
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_3030
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_3032
	call	brl_blitz_NullObjectError
_3032:
	mov	esi,dword [ebp-4]
	cmp	esi,bbNullObject
	jne	_3034
	call	brl_blitz_NullObjectError
_3034:
	movzx	eax,byte [ebp-16]
	push	eax
	movzx	eax,byte [ebp-12]
	push	eax
	movzx	eax,byte [ebp-8]
	push	eax
	push	esi
	mov	eax,dword [esi]
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
	mov	ebx,0
_217:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetSelectionBack:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	movzx	eax,byte [ebp+12]
	mov	eax,eax
	mov	byte [ebp-8],al
	movzx	eax,byte [ebp+16]
	mov	eax,eax
	mov	byte [ebp-12],al
	movzx	eax,byte [ebp+20]
	mov	eax,eax
	mov	byte [ebp-16],al
	push	ebp
	push	_3042
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_3037
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_3039
	call	brl_blitz_NullObjectError
_3039:
	mov	esi,dword [ebp-4]
	cmp	esi,bbNullObject
	jne	_3041
	call	brl_blitz_NullObjectError
_3041:
	movzx	eax,byte [ebp-16]
	push	eax
	movzx	eax,byte [ebp-12]
	push	eax
	movzx	eax,byte [ebp-8]
	push	eax
	push	esi
	mov	eax,dword [esi]
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
	mov	ebx,0
_223:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_DisableSelectionFore:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_3047
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_3044
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_3046
	call	brl_blitz_NullObjectError
_3046:
	push	0
	mov	eax,0
	push	eax
	push	2067
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_226:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_DisableSelectionBack:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_3052
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_3049
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_3051
	call	brl_blitz_NullObjectError
_3051:
	push	0
	mov	eax,0
	push	eax
	push	2068
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_229:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetTabWidth:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_3057
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_3054
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_3056
	call	brl_blitz_NullObjectError
_3056:
	push	0
	mov	eax,dword [ebp-8]
	push	eax
	push	2036
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_233:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetTabWidth:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_3062
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_3059
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_3061
	call	brl_blitz_NullObjectError
_3061:
	push	0
	push	0
	push	2121
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,eax
_237:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_SetProperty:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	push	ebp
	push	_3067
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_3064
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_3066
	call	brl_blitz_NullObjectError
_3066:
	push	dword [ebp-12]
	call	bbStringToCString
	add	esp,4
	push	eax
	push	dword [ebp-8]
	call	bbStringToCString
	add	esp,4
	push	eax
	push	4004
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_242:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_DefineMarker:
	push	ebp
	mov	ebp,esp
	sub	esp,36
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	movzx	eax,byte [ebp+20]
	mov	eax,eax
	mov	byte [ebp-16],al
	movzx	eax,byte [ebp+24]
	mov	eax,eax
	mov	byte [ebp-20],al
	movzx	eax,byte [ebp+28]
	mov	eax,eax
	mov	byte [ebp-24],al
	movzx	eax,byte [ebp+32]
	mov	eax,eax
	mov	byte [ebp-28],al
	movzx	eax,byte [ebp+36]
	mov	eax,eax
	mov	byte [ebp-32],al
	movzx	eax,byte [ebp+40]
	mov	eax,eax
	mov	byte [ebp-36],al
	push	ebp
	push	_3084
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_3071
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_3073
	call	brl_blitz_NullObjectError
_3073:
	mov	eax,dword [ebp-12]
	push	eax
	mov	eax,dword [ebp-8]
	push	eax
	push	2040
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	push	_3074
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_3076
	call	brl_blitz_NullObjectError
_3076:
	mov	esi,dword [ebp-4]
	cmp	esi,bbNullObject
	jne	_3078
	call	brl_blitz_NullObjectError
_3078:
	movzx	eax,byte [ebp-24]
	push	eax
	movzx	eax,byte [ebp-20]
	push	eax
	movzx	eax,byte [ebp-16]
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+152]
	add	esp,16
	mov	eax,eax
	push	eax
	mov	eax,dword [ebp-8]
	push	eax
	push	2041
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	push	_3079
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_3081
	call	brl_blitz_NullObjectError
_3081:
	mov	esi,dword [ebp-4]
	cmp	esi,bbNullObject
	jne	_3083
	call	brl_blitz_NullObjectError
_3083:
	movzx	eax,byte [ebp-36]
	push	eax
	movzx	eax,byte [ebp-32]
	push	eax
	movzx	eax,byte [ebp-28]
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+152]
	add	esp,16
	mov	eax,eax
	push	eax
	mov	eax,dword [ebp-8]
	push	eax
	push	2042
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_253:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetLineFromPosition:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_3097
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_3094
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_3096
	call	brl_blitz_NullObjectError
_3096:
	push	0
	mov	eax,dword [ebp-8]
	push	eax
	push	2166
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,eax
_257:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_GetCurrentPosition:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_3103
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_3100
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_3102
	call	brl_blitz_NullObjectError
_3102:
	push	0
	push	0
	push	2008
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,eax
_260:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_ToggleFoldPoint:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_3108
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_3105
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_3107
	call	brl_blitz_NullObjectError
_3107:
	push	0
	mov	eax,dword [ebp-8]
	push	eax
	push	2231
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_264:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_Cut:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_3113
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_3110
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_3112
	call	brl_blitz_NullObjectError
_3112:
	push	0
	push	0
	push	2177
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_267:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_Copy:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_3118
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_3115
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_3117
	call	brl_blitz_NullObjectError
_3117:
	push	0
	push	0
	push	2178
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_270:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_Paste:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_3123
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_3120
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_3122
	call	brl_blitz_NullObjectError
_3122:
	push	0
	push	0
	push	2179
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_273:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_Undo:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_3128
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_3125
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_3127
	call	brl_blitz_NullObjectError
_3127:
	push	0
	push	0
	push	2176
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_276:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_CanUndo:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_3133
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_3130
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_3132
	call	brl_blitz_NullObjectError
_3132:
	push	0
	push	0
	push	2174
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,eax
	and	ebx,0xff
_279:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_Redo:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_3138
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_3135
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_3137
	call	brl_blitz_NullObjectError
_3137:
	push	0
	push	0
	push	2011
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_282:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_CanRedo:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_3143
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_3140
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_3142
	call	brl_blitz_NullObjectError
_3142:
	push	0
	push	0
	push	2016
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,eax
	and	ebx,0xff
_285:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_gtk_scintilla_GtkScintilla_EmptyUndoBuffer:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_3148
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	push	_3145
	call	dword [bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,bbNullObject
	jne	_3147
	call	brl_blitz_NullObjectError
_3147:
	push	0
	push	0
	push	2175
	push	dword [ebx+12]
	call	scintilla_send_message
	add	esp,16
	mov	ebx,0
_288:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" writeable align 8
	align	4
_2619:
	dd	0
_291:
	db	"scintilla",0
_292:
	db	"INVALID_POSITION",0
_17:
	db	"i",0
	align	4
_293:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	45,49
_294:
	db	"SCI_START",0
	align	4
_295:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,48,48
_296:
	db	"SCI_OPTIONAL_START",0
	align	4
_297:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	51,48,48,48
_298:
	db	"SCI_LEXER_START",0
	align	4
_299:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,48,48
_300:
	db	"SCI_ADDTEXT",0
	align	4
_301:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,48,49
_302:
	db	"SCI_ADDSTYLEDTEXT",0
	align	4
_303:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,48,50
_304:
	db	"SCI_INSERTTEXT",0
	align	4
_305:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,48,51
_306:
	db	"SCI_CLEARALL",0
	align	4
_307:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,48,52
_308:
	db	"SCI_CLEARDOCUMENTSTYLE",0
	align	4
_309:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,48,53
_310:
	db	"SCI_GETLENGTH",0
	align	4
_311:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,48,54
_312:
	db	"SCI_GETCHARAT",0
	align	4
_313:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,48,55
_314:
	db	"SCI_GETCURRENTPOS",0
	align	4
_315:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,48,56
_316:
	db	"SCI_GETANCHOR",0
	align	4
_317:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,48,57
_318:
	db	"SCI_GETSTYLEAT",0
	align	4
_319:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,49,48
_320:
	db	"SCI_REDO",0
	align	4
_321:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,49,49
_322:
	db	"SCI_SETUNDOCOLLECTION",0
	align	4
_323:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,49,50
_324:
	db	"SCI_SELECTALL",0
	align	4
_325:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,49,51
_326:
	db	"SCI_SETSAVEPOINT",0
	align	4
_327:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,49,52
_328:
	db	"SCI_GETSTYLEDTEXT",0
	align	4
_329:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,49,53
_330:
	db	"SCI_CANREDO",0
	align	4
_331:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,49,54
_332:
	db	"SCI_MARKERLINEFROMHANDLE",0
	align	4
_333:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,49,55
_334:
	db	"SCI_MARKERDELETEHANDLE",0
	align	4
_335:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,49,56
_336:
	db	"SCI_GETUNDOCOLLECTION",0
	align	4
_337:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,49,57
_338:
	db	"SCWS_INVISIBLE",0
	align	4
_339:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	48
_340:
	db	"SCWS_VISIBLEALWAYS",0
	align	4
_341:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	49
_342:
	db	"SCWS_VISIBLEAFTERINDENT",0
	align	4
_343:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	50
_344:
	db	"SCI_GETVIEWWS",0
	align	4
_345:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,50,48
_346:
	db	"SCI_SETVIEWWS",0
	align	4
_347:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,50,49
_348:
	db	"SCI_POSITIONFROMPOINT",0
	align	4
_349:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,50,50
_350:
	db	"SCI_POSITIONFROMPOINTCLOSE",0
	align	4
_351:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,50,51
_352:
	db	"SCI_GOTOLINE",0
	align	4
_353:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,50,52
_354:
	db	"SCI_GOTOPOS",0
	align	4
_355:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,50,53
_356:
	db	"SCI_SETANCHOR",0
	align	4
_357:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,50,54
_358:
	db	"SCI_GETCURLINE",0
	align	4
_359:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,50,55
_360:
	db	"SCI_GETENDSTYLED",0
	align	4
_361:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,50,56
_362:
	db	"SC_EOL_CRLF",0
_363:
	db	"SC_EOL_CR",0
_364:
	db	"SC_EOL_LF",0
_365:
	db	"SCI_CONVERTEOLS",0
	align	4
_366:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,50,57
_367:
	db	"SCI_GETEOLMODE",0
	align	4
_368:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,51,48
_369:
	db	"SCI_SETEOLMODE",0
	align	4
_370:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,51,49
_371:
	db	"SCI_STARTSTYLING",0
	align	4
_372:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,51,50
_373:
	db	"SCI_SETSTYLING",0
	align	4
_374:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,51,51
_375:
	db	"SCI_GETBUFFEREDDRAW",0
	align	4
_376:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,51,52
_377:
	db	"SCI_SETBUFFEREDDRAW",0
	align	4
_378:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,51,53
_379:
	db	"SCI_SETTABWIDTH",0
	align	4
_380:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,51,54
_381:
	db	"SCI_GETTABWIDTH",0
	align	4
_382:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,50,49
_383:
	db	"SC_CP_UTF8",0
	align	4
_384:
	dd	bbStringClass
	dd	2147483647
	dd	5
	dw	54,53,48,48,49
_385:
	db	"SC_CP_DBCS",0
_386:
	db	"SCI_SETCODEPAGE",0
	align	4
_387:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,51,55
_388:
	db	"SCI_SETUSEPALETTE",0
	align	4
_389:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,51,57
_390:
	db	"MARKER_MAX",0
	align	4
_391:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	51,49
_392:
	db	"SC_MARK_CIRCLE",0
_393:
	db	"SC_MARK_ROUNDRECT",0
_394:
	db	"SC_MARK_ARROW",0
_395:
	db	"SC_MARK_SMALLRECT",0
	align	4
_396:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	51
_397:
	db	"SC_MARK_SHORTARROW",0
	align	4
_398:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	52
_399:
	db	"SC_MARK_EMPTY",0
	align	4
_400:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	53
_401:
	db	"SC_MARK_ARROWDOWN",0
	align	4
_402:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	54
_403:
	db	"SC_MARK_MINUS",0
	align	4
_404:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	55
_405:
	db	"SC_MARK_PLUS",0
	align	4
_406:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	56
_407:
	db	"SC_MARK_VLINE",0
	align	4
_408:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	57
_409:
	db	"SC_MARK_LCORNER",0
	align	4
_410:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	49,48
_411:
	db	"SC_MARK_TCORNER",0
	align	4
_412:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	49,49
_413:
	db	"SC_MARK_BOXPLUS",0
	align	4
_414:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	49,50
_415:
	db	"SC_MARK_BOXPLUSCONNECTED",0
	align	4
_416:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	49,51
_417:
	db	"SC_MARK_BOXMINUS",0
	align	4
_418:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	49,52
_419:
	db	"SC_MARK_BOXMINUSCONNECTED",0
	align	4
_420:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	49,53
_421:
	db	"SC_MARK_LCORNERCURVE",0
	align	4
_422:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	49,54
_423:
	db	"SC_MARK_TCORNERCURVE",0
	align	4
_424:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	49,55
_425:
	db	"SC_MARK_CIRCLEPLUS",0
	align	4
_426:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	49,56
_427:
	db	"SC_MARK_CIRCLEPLUSCONNECTED",0
	align	4
_428:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	49,57
_429:
	db	"SC_MARK_CIRCLEMINUS",0
	align	4
_430:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	50,48
_431:
	db	"SC_MARK_CIRCLEMINUSCONNECTED",0
	align	4
_432:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	50,49
_433:
	db	"SC_MARK_BACKGROUND",0
	align	4
_434:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	50,50
_435:
	db	"SC_MARK_DOTDOTDOT",0
	align	4
_436:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	50,51
_437:
	db	"SC_MARK_ARROWS",0
	align	4
_438:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	50,52
_439:
	db	"SC_MARK_PIXMAP",0
	align	4
_440:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	50,53
_441:
	db	"SC_MARK_FULLRECT",0
	align	4
_442:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	50,54
_443:
	db	"SC_MARK_CHARACTER",0
	align	4
_444:
	dd	bbStringClass
	dd	2147483647
	dd	5
	dw	49,48,48,48,48
_445:
	db	"SC_MARKNUM_FOLDEREND",0
_446:
	db	"SC_MARKNUM_FOLDEROPENMID",0
_447:
	db	"SC_MARKNUM_FOLDERMIDTAIL",0
	align	4
_448:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	50,55
_449:
	db	"SC_MARKNUM_FOLDERTAIL",0
	align	4
_450:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	50,56
_451:
	db	"SC_MARKNUM_FOLDERSUB",0
	align	4
_452:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	50,57
_453:
	db	"SC_MARKNUM_FOLDER",0
	align	4
_454:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	51,48
_455:
	db	"SC_MARKNUM_FOLDEROPEN",0
_456:
	db	"SC_MASK_FOLDERS",0
	align	4
_457:
	dd	bbStringClass
	dd	2147483647
	dd	9
	dw	45,51,51,53,53,52,52,51,50
_458:
	db	"SCI_MARKERDEFINE",0
	align	4
_459:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,52,48
_460:
	db	"SCI_MARKERSETFORE",0
	align	4
_461:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,52,49
_462:
	db	"SCI_MARKERSETBACK",0
	align	4
_463:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,52,50
_464:
	db	"SCI_MARKERADD",0
	align	4
_465:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,52,51
_466:
	db	"SCI_MARKERDELETE",0
	align	4
_467:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,52,52
_468:
	db	"SCI_MARKERDELETEALL",0
	align	4
_469:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,52,53
_470:
	db	"SCI_MARKERGET",0
	align	4
_471:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,52,54
_472:
	db	"SCI_MARKERNEXT",0
	align	4
_473:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,52,55
_474:
	db	"SCI_MARKERPREVIOUS",0
	align	4
_475:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,52,56
_476:
	db	"SCI_MARKERDEFINEPIXMAP",0
	align	4
_477:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,52,57
_478:
	db	"SCI_MARKERADDSET",0
	align	4
_479:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,54,54
_480:
	db	"SC_MARGIN_SYMBOL",0
_481:
	db	"SC_MARGIN_NUMBER",0
_482:
	db	"SCI_SETMARGINTYPEN",0
	align	4
_483:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,52,48
_484:
	db	"SCI_GETMARGINTYPEN",0
	align	4
_485:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,52,49
_486:
	db	"SCI_SETMARGINWIDTHN",0
	align	4
_487:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,52,50
_488:
	db	"SCI_GETMARGINWIDTHN",0
	align	4
_489:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,52,51
_490:
	db	"SCI_SETMARGINMASKN",0
	align	4
_491:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,52,52
_492:
	db	"SCI_GETMARGINMASKN",0
	align	4
_493:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,52,53
_494:
	db	"SCI_SETMARGINSENSITIVEN",0
	align	4
_495:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,52,54
_496:
	db	"SCI_GETMARGINSENSITIVEN",0
	align	4
_497:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,52,55
_498:
	db	"STYLE_DEFAULT",0
	align	4
_499:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	51,50
_500:
	db	"STYLE_LINENUMBER",0
	align	4
_501:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	51,51
_502:
	db	"STYLE_BRACELIGHT",0
	align	4
_503:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	51,52
_504:
	db	"STYLE_BRACEBAD",0
	align	4
_505:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	51,53
_506:
	db	"STYLE_CONTROLCHAR",0
	align	4
_507:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	51,54
_508:
	db	"STYLE_INDENTGUIDE",0
	align	4
_509:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	51,55
_510:
	db	"STYLE_CALLTIP",0
	align	4
_511:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	51,56
_512:
	db	"STYLE_LASTPREDEFINED",0
	align	4
_513:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	51,57
_514:
	db	"STYLE_MAX",0
	align	4
_515:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,50,55
_516:
	db	"SC_CHARSET_ANSI",0
_517:
	db	"SC_CHARSET_DEFAULT",0
_518:
	db	"SC_CHARSET_BALTIC",0
	align	4
_519:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,56,54
_520:
	db	"SC_CHARSET_CHINESEBIG5",0
	align	4
_521:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,51,54
_522:
	db	"SC_CHARSET_EASTEUROPE",0
	align	4
_523:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	50,51,56
_524:
	db	"SC_CHARSET_GB2312",0
	align	4
_525:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,51,52
_526:
	db	"SC_CHARSET_GREEK",0
	align	4
_527:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,54,49
_528:
	db	"SC_CHARSET_HANGUL",0
	align	4
_529:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,50,57
_530:
	db	"SC_CHARSET_MAC",0
	align	4
_531:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	55,55
_532:
	db	"SC_CHARSET_OEM",0
	align	4
_533:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	50,53,53
_534:
	db	"SC_CHARSET_RUSSIAN",0
	align	4
_535:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	50,48,52
_536:
	db	"SC_CHARSET_CYRILLIC",0
	align	4
_537:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	49,50,53,49
_538:
	db	"SC_CHARSET_SHIFTJIS",0
	align	4
_539:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,50,56
_540:
	db	"SC_CHARSET_SYMBOL",0
_541:
	db	"SC_CHARSET_TURKISH",0
	align	4
_542:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,54,50
_543:
	db	"SC_CHARSET_JOHAB",0
	align	4
_544:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,51,48
_545:
	db	"SC_CHARSET_HEBREW",0
	align	4
_546:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,55,55
_547:
	db	"SC_CHARSET_ARABIC",0
	align	4
_548:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,55,56
_549:
	db	"SC_CHARSET_VIETNAMESE",0
	align	4
_550:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,54,51
_551:
	db	"SC_CHARSET_THAI",0
	align	4
_552:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	50,50,50
_553:
	db	"SC_CHARSET_8859_15",0
	align	4
_554:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	49,48,48,48
_555:
	db	"SCI_STYLECLEARALL",0
	align	4
_556:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,53,48
_557:
	db	"SCI_STYLESETFORE",0
	align	4
_558:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,53,49
_559:
	db	"SCI_STYLESETBACK",0
	align	4
_560:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,53,50
_561:
	db	"SCI_STYLESETBOLD",0
	align	4
_562:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,53,51
_563:
	db	"SCI_STYLESETITALIC",0
	align	4
_564:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,53,52
_565:
	db	"SCI_STYLESETSIZE",0
	align	4
_566:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,53,53
_567:
	db	"SCI_STYLESETFONT",0
	align	4
_568:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,53,54
_569:
	db	"SCI_STYLESETEOLFILLED",0
	align	4
_570:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,53,55
_571:
	db	"SCI_STYLERESETDEFAULT",0
	align	4
_572:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,53,56
_573:
	db	"SCI_STYLESETUNDERLINE",0
	align	4
_574:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,53,57
_575:
	db	"SC_CASE_MIXED",0
_576:
	db	"SC_CASE_UPPER",0
_577:
	db	"SC_CASE_LOWER",0
_578:
	db	"SCI_STYLESETCASE",0
	align	4
_579:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,54,48
_580:
	db	"SCI_STYLESETCHARACTERSET",0
	align	4
_581:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,54,54
_582:
	db	"SCI_STYLESETHOTSPOT",0
	align	4
_583:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,48,57
_584:
	db	"SCI_SETSELFORE",0
	align	4
_585:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,54,55
_586:
	db	"SCI_SETSELBACK",0
	align	4
_587:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,54,56
_588:
	db	"SCI_SETCARETFORE",0
	align	4
_589:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,54,57
_590:
	db	"SCI_ASSIGNCMDKEY",0
	align	4
_591:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,55,48
_592:
	db	"SCI_CLEARCMDKEY",0
	align	4
_593:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,55,49
_594:
	db	"SCI_CLEARALLCMDKEYS",0
	align	4
_595:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,55,50
_596:
	db	"SCI_SETSTYLINGEX",0
	align	4
_597:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,55,51
_598:
	db	"SCI_STYLESETVISIBLE",0
	align	4
_599:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,55,52
_600:
	db	"SCI_GETCARETPERIOD",0
	align	4
_601:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,55,53
_602:
	db	"SCI_SETCARETPERIOD",0
	align	4
_603:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,55,54
_604:
	db	"SCI_SETWORDCHARS",0
	align	4
_605:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,55,55
_606:
	db	"SCI_BEGINUNDOACTION",0
	align	4
_607:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,55,56
_608:
	db	"SCI_ENDUNDOACTION",0
	align	4
_609:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,55,57
_610:
	db	"INDIC_MAX",0
_611:
	db	"INDIC_PLAIN",0
_612:
	db	"INDIC_SQUIGGLE",0
_613:
	db	"INDIC_TT",0
_614:
	db	"INDIC_DIAGONAL",0
_615:
	db	"INDIC_STRIKE",0
_616:
	db	"INDIC_HIDDEN",0
_617:
	db	"INDIC_BOX",0
_618:
	db	"INDIC_ROUNDBOX",0
_619:
	db	"INDIC0_MASK",0
_620:
	db	"INDIC1_MASK",0
	align	4
_621:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	54,52
_622:
	db	"INDIC2_MASK",0
_623:
	db	"INDICS_MASK",0
	align	4
_624:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	50,50,52
_625:
	db	"SCI_INDICSETSTYLE",0
	align	4
_626:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,56,48
_627:
	db	"SCI_INDICGETSTYLE",0
	align	4
_628:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,56,49
_629:
	db	"SCI_INDICSETFORE",0
	align	4
_630:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,56,50
_631:
	db	"SCI_INDICGETFORE",0
	align	4
_632:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,56,51
_633:
	db	"SCI_SETWHITESPACEFORE",0
	align	4
_634:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,56,52
_635:
	db	"SCI_SETWHITESPACEBACK",0
	align	4
_636:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,56,53
_637:
	db	"SCI_SETSTYLEBITS",0
	align	4
_638:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,57,48
_639:
	db	"SCI_GETSTYLEBITS",0
	align	4
_640:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,57,49
_641:
	db	"SCI_SETLINESTATE",0
	align	4
_642:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,57,50
_643:
	db	"SCI_GETLINESTATE",0
	align	4
_644:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,57,51
_645:
	db	"SCI_GETMAXLINESTATE",0
	align	4
_646:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,57,52
_647:
	db	"SCI_GETCARETLINEVISIBLE",0
	align	4
_648:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,57,53
_649:
	db	"SCI_SETCARETLINEVISIBLE",0
	align	4
_650:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,57,54
_651:
	db	"SCI_GETCARETLINEBACK",0
	align	4
_652:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,57,55
_653:
	db	"SCI_SETCARETLINEBACK",0
	align	4
_654:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,57,56
_655:
	db	"SCI_STYLESETCHANGEABLE",0
	align	4
_656:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,57,57
_657:
	db	"SCI_AUTOCSHOW",0
	align	4
_658:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,48,48
_659:
	db	"SCI_AUTOCCANCEL",0
	align	4
_660:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,48,49
_661:
	db	"SCI_AUTOCACTIVE",0
	align	4
_662:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,48,50
_663:
	db	"SCI_AUTOCPOSSTART",0
	align	4
_664:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,48,51
_665:
	db	"SCI_AUTOCCOMPLETE",0
	align	4
_666:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,48,52
_667:
	db	"SCI_AUTOCSTOPS",0
	align	4
_668:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,48,53
_669:
	db	"SCI_AUTOCSETSEPARATOR",0
	align	4
_670:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,48,54
_671:
	db	"SCI_AUTOCGETSEPARATOR",0
	align	4
_672:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,48,55
_673:
	db	"SCI_AUTOCSELECT",0
	align	4
_674:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,48,56
_675:
	db	"SCI_AUTOCSETCANCELATSTART",0
	align	4
_676:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,49,48
_677:
	db	"SCI_AUTOCGETCANCELATSTART",0
	align	4
_678:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,49,49
_679:
	db	"SCI_AUTOCSETFILLUPS",0
	align	4
_680:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,49,50
_681:
	db	"SCI_AUTOCSETCHOOSESINGLE",0
	align	4
_682:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,49,51
_683:
	db	"SCI_AUTOCGETCHOOSESINGLE",0
	align	4
_684:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,49,52
_685:
	db	"SCI_AUTOCSETIGNORECASE",0
	align	4
_686:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,49,53
_687:
	db	"SCI_AUTOCGETIGNORECASE",0
	align	4
_688:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,49,54
_689:
	db	"SCI_USERLISTSHOW",0
	align	4
_690:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,49,55
_691:
	db	"SCI_AUTOCSETAUTOHIDE",0
	align	4
_692:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,49,56
_693:
	db	"SCI_AUTOCGETAUTOHIDE",0
	align	4
_694:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,49,57
_695:
	db	"SCI_AUTOCSETDROPRESTOFWORD",0
	align	4
_696:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,55,48
_697:
	db	"SCI_AUTOCGETDROPRESTOFWORD",0
	align	4
_698:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,55,49
_699:
	db	"SCI_REGISTERIMAGE",0
	align	4
_700:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,48,53
_701:
	db	"SCI_CLEARREGISTEREDIMAGES",0
	align	4
_702:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,48,56
_703:
	db	"SCI_AUTOCGETTYPESEPARATOR",0
	align	4
_704:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,56,53
_705:
	db	"SCI_AUTOCSETTYPESEPARATOR",0
	align	4
_706:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,56,54
_707:
	db	"SCI_AUTOCSETMAXWIDTH",0
	align	4
_708:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,48,56
_709:
	db	"SCI_AUTOCGETMAXWIDTH",0
	align	4
_710:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,48,57
_711:
	db	"SCI_AUTOCSETMAXHEIGHT",0
	align	4
_712:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,49,48
_713:
	db	"SCI_AUTOCGETMAXHEIGHT",0
	align	4
_714:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,49,49
_715:
	db	"SCI_SETINDENT",0
	align	4
_716:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,50,50
_717:
	db	"SCI_GETINDENT",0
	align	4
_718:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,50,51
_719:
	db	"SCI_SETUSETABS",0
	align	4
_720:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,50,52
_721:
	db	"SCI_GETUSETABS",0
	align	4
_722:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,50,53
_723:
	db	"SCI_SETLINEINDENTATION",0
	align	4
_724:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,50,54
_725:
	db	"SCI_GETLINEINDENTATION",0
	align	4
_726:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,50,55
_727:
	db	"SCI_GETLINEINDENTPOSITION",0
	align	4
_728:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,50,56
_729:
	db	"SCI_GETCOLUMN",0
	align	4
_730:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,50,57
_731:
	db	"SCI_SETHSCROLLBAR",0
	align	4
_732:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,51,48
_733:
	db	"SCI_GETHSCROLLBAR",0
	align	4
_734:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,51,49
_735:
	db	"SCI_SETINDENTATIONGUIDES",0
	align	4
_736:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,51,50
_737:
	db	"SCI_GETINDENTATIONGUIDES",0
	align	4
_738:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,51,51
_739:
	db	"SCI_SETHIGHLIGHTGUIDE",0
	align	4
_740:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,51,52
_741:
	db	"SCI_GETHIGHLIGHTGUIDE",0
	align	4
_742:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,51,53
_743:
	db	"SCI_GETLINEENDPOSITION",0
	align	4
_744:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,51,54
_745:
	db	"SCI_GETCODEPAGE",0
	align	4
_746:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,51,55
_747:
	db	"SCI_GETCARETFORE",0
	align	4
_748:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,51,56
_749:
	db	"SCI_GETUSEPALETTE",0
	align	4
_750:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,51,57
_751:
	db	"SCI_GETREADONLY",0
	align	4
_752:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,52,48
_753:
	db	"SCI_SETCURRENTPOS",0
	align	4
_754:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,52,49
_755:
	db	"SCI_SETSELECTIONSTART",0
	align	4
_756:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,52,50
_757:
	db	"SCI_GETSELECTIONSTART",0
	align	4
_758:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,52,51
_759:
	db	"SCI_SETSELECTIONEND",0
	align	4
_760:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,52,52
_761:
	db	"SCI_GETSELECTIONEND",0
	align	4
_762:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,52,53
_763:
	db	"SCI_SETPRINTMAGNIFICATION",0
	align	4
_764:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,52,54
_765:
	db	"SCI_GETPRINTMAGNIFICATION",0
	align	4
_766:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,52,55
_767:
	db	"SC_PRINT_NORMAL",0
_768:
	db	"SC_PRINT_INVERTLIGHT",0
_769:
	db	"SC_PRINT_BLACKONWHITE",0
_770:
	db	"SC_PRINT_COLOURONWHITE",0
_771:
	db	"SC_PRINT_COLOURONWHITEDEFAULTBG",0
_772:
	db	"SCI_SETPRINTCOLOURMODE",0
	align	4
_773:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,52,56
_774:
	db	"SCI_GETPRINTCOLOURMODE",0
	align	4
_775:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,52,57
_776:
	db	"SCFIND_WHOLEWORD",0
_777:
	db	"SCFIND_MATCHCASE",0
_778:
	db	"SCFIND_WORDSTART",0
	align	4
_779:
	dd	bbStringClass
	dd	2147483647
	dd	7
	dw	49,48,52,56,53,55,54
_780:
	db	"SCFIND_REGEXP",0
	align	4
_781:
	dd	bbStringClass
	dd	2147483647
	dd	7
	dw	50,48,57,55,49,53,50
_782:
	db	"SCFIND_POSIX",0
	align	4
_783:
	dd	bbStringClass
	dd	2147483647
	dd	7
	dw	52,49,57,52,51,48,52
_784:
	db	"SCI_FINDTEXT",0
	align	4
_785:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,53,48
_786:
	db	"SCI_FORMATRANGE",0
	align	4
_787:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,53,49
_788:
	db	"SCI_GETFIRSTVISIBLELINE",0
	align	4
_789:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,53,50
_790:
	db	"SCI_GETLINE",0
	align	4
_791:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,53,51
_792:
	db	"SCI_GETLINECOUNT",0
	align	4
_793:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,53,52
_794:
	db	"SCI_SETMARGINLEFT",0
	align	4
_795:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,53,53
_796:
	db	"SCI_GETMARGINLEFT",0
	align	4
_797:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,53,54
_798:
	db	"SCI_SETMARGINRIGHT",0
	align	4
_799:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,53,55
_800:
	db	"SCI_GETMARGINRIGHT",0
	align	4
_801:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,53,56
_802:
	db	"SCI_GETMODIFY",0
	align	4
_803:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,53,57
_804:
	db	"SCI_SETSEL",0
	align	4
_805:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,54,48
_806:
	db	"SCI_GETSELTEXT",0
	align	4
_807:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,54,49
_808:
	db	"SCI_GETTEXTRANGE",0
	align	4
_809:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,54,50
_810:
	db	"SCI_HIDESELECTION",0
	align	4
_811:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,54,51
_812:
	db	"SCI_POINTXFROMPOSITION",0
	align	4
_813:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,54,52
_814:
	db	"SCI_POINTYFROMPOSITION",0
	align	4
_815:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,54,53
_816:
	db	"SCI_LINEFROMPOSITION",0
	align	4
_817:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,54,54
_818:
	db	"SCI_POSITIONFROMLINE",0
	align	4
_819:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,54,55
_820:
	db	"SCI_LINESCROLL",0
	align	4
_821:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,54,56
_822:
	db	"SCI_SCROLLCARET",0
	align	4
_823:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,54,57
_824:
	db	"SCI_REPLACESEL",0
	align	4
_825:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,55,48
_826:
	db	"SCI_SETREADONLY",0
	align	4
_827:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,55,49
_828:
	db	"SCI_NULL",0
	align	4
_829:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,55,50
_830:
	db	"SCI_CANPASTE",0
	align	4
_831:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,55,51
_832:
	db	"SCI_CANUNDO",0
	align	4
_833:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,55,52
_834:
	db	"SCI_EMPTYUNDOBUFFER",0
	align	4
_835:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,55,53
_836:
	db	"SCI_UNDO",0
	align	4
_837:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,55,54
_838:
	db	"SCI_CUT",0
	align	4
_839:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,55,55
_840:
	db	"SCI_COPY",0
	align	4
_841:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,55,56
_842:
	db	"SCI_PASTE",0
	align	4
_843:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,55,57
_844:
	db	"SCI_CLEAR",0
	align	4
_845:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,56,48
_846:
	db	"SCI_SETTEXT",0
	align	4
_847:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,56,49
_848:
	db	"SCI_GETTEXT",0
	align	4
_849:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,56,50
_850:
	db	"SCI_GETTEXTLENGTH",0
	align	4
_851:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,56,51
_852:
	db	"SCI_GETDIRECTFUNCTION",0
	align	4
_853:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,56,52
_854:
	db	"SCI_GETDIRECTPOINTER",0
	align	4
_855:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,56,53
_856:
	db	"SCI_SETOVERTYPE",0
	align	4
_857:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,56,54
_858:
	db	"SCI_GETOVERTYPE",0
	align	4
_859:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,56,55
_860:
	db	"SCI_SETCARETWIDTH",0
	align	4
_861:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,56,56
_862:
	db	"SCI_GETCARETWIDTH",0
	align	4
_863:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,56,57
_864:
	db	"SCI_SETTARGETSTART",0
	align	4
_865:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,57,48
_866:
	db	"SCI_GETTARGETSTART",0
	align	4
_867:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,57,49
_868:
	db	"SCI_SETTARGETEND",0
	align	4
_869:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,57,50
_870:
	db	"SCI_GETTARGETEND",0
	align	4
_871:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,57,51
_872:
	db	"SCI_REPLACETARGET",0
	align	4
_873:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,57,52
_874:
	db	"SCI_REPLACETARGETRE",0
	align	4
_875:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,57,53
_876:
	db	"SCI_SEARCHINTARGET",0
	align	4
_877:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,57,55
_878:
	db	"SCI_SETSEARCHFLAGS",0
	align	4
_879:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,57,56
_880:
	db	"SCI_GETSEARCHFLAGS",0
	align	4
_881:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,57,57
_882:
	db	"SCI_CALLTIPSHOW",0
	align	4
_883:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,48,48
_884:
	db	"SCI_CALLTIPCANCEL",0
	align	4
_885:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,48,49
_886:
	db	"SCI_CALLTIPACTIVE",0
	align	4
_887:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,48,50
_888:
	db	"SCI_CALLTIPPOSSTART",0
	align	4
_889:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,48,51
_890:
	db	"SCI_CALLTIPSETHLT",0
	align	4
_891:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,48,52
_892:
	db	"SCI_CALLTIPSETBACK",0
	align	4
_893:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,48,53
_894:
	db	"SCI_CALLTIPSETFORE",0
	align	4
_895:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,48,54
_896:
	db	"SCI_CALLTIPSETFOREHLT",0
	align	4
_897:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,48,55
_898:
	db	"SCI_CALLTIPUSESTYLE",0
	align	4
_899:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,49,50
_900:
	db	"SCI_VISIBLEFROMDOCLINE",0
	align	4
_901:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,50,48
_902:
	db	"SCI_DOCLINEFROMVISIBLE",0
	align	4
_903:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,50,49
_904:
	db	"SCI_WRAPCOUNT",0
	align	4
_905:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,51,53
_906:
	db	"SC_FOLDLEVELBASE",0
	align	4
_907:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	49,48,50,52
_908:
	db	"SC_FOLDLEVELWHITEFLAG",0
	align	4
_909:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,57,54
_910:
	db	"SC_FOLDLEVELHEADERFLAG",0
	align	4
_911:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	56,49,57,50
_912:
	db	"SC_FOLDLEVELBOXHEADERFLAG",0
	align	4
_913:
	dd	bbStringClass
	dd	2147483647
	dd	5
	dw	49,54,51,56,52
_914:
	db	"SC_FOLDLEVELBOXFOOTERFLAG",0
	align	4
_915:
	dd	bbStringClass
	dd	2147483647
	dd	5
	dw	51,50,55,54,56
_916:
	db	"SC_FOLDLEVELCONTRACTED",0
	align	4
_917:
	dd	bbStringClass
	dd	2147483647
	dd	5
	dw	54,53,53,51,54
_918:
	db	"SC_FOLDLEVELUNINDENT",0
	align	4
_919:
	dd	bbStringClass
	dd	2147483647
	dd	6
	dw	49,51,49,48,55,50
_920:
	db	"SC_FOLDLEVELNUMBERMASK",0
	align	4
_921:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,57,53
_922:
	db	"SCI_SETFOLDLEVEL",0
	align	4
_923:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,50,50
_924:
	db	"SCI_GETFOLDLEVEL",0
	align	4
_925:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,50,51
_926:
	db	"SCI_GETLASTCHILD",0
	align	4
_927:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,50,52
_928:
	db	"SCI_GETFOLDPARENT",0
	align	4
_929:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,50,53
_930:
	db	"SCI_SHOWLINES",0
	align	4
_931:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,50,54
_932:
	db	"SCI_HIDELINES",0
	align	4
_933:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,50,55
_934:
	db	"SCI_GETLINEVISIBLE",0
	align	4
_935:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,50,56
_936:
	db	"SCI_SETFOLDEXPANDED",0
	align	4
_937:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,50,57
_938:
	db	"SCI_GETFOLDEXPANDED",0
	align	4
_939:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,51,48
_940:
	db	"SCI_TOGGLEFOLD",0
	align	4
_941:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,51,49
_942:
	db	"SCI_ENSUREVISIBLE",0
	align	4
_943:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,51,50
_944:
	db	"SC_FOLDFLAG_LINEBEFORE_EXPANDED",0
_945:
	db	"SC_FOLDFLAG_LINEBEFORE_CONTRACTED",0
_946:
	db	"SC_FOLDFLAG_LINEAFTER_EXPANDED",0
_947:
	db	"SC_FOLDFLAG_LINEAFTER_CONTRACTED",0
_948:
	db	"SC_FOLDFLAG_LEVELNUMBERS",0
_949:
	db	"SC_FOLDFLAG_BOX",0
_950:
	db	"SCI_SETFOLDFLAGS",0
	align	4
_951:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,51,51
_952:
	db	"SCI_ENSUREVISIBLEENFORCEPOLICY",0
	align	4
_953:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,51,52
_954:
	db	"SCI_SETTABINDENTS",0
	align	4
_955:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,54,48
_956:
	db	"SCI_GETTABINDENTS",0
	align	4
_957:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,54,49
_958:
	db	"SCI_SETBACKSPACEUNINDENTS",0
	align	4
_959:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,54,50
_960:
	db	"SCI_GETBACKSPACEUNINDENTS",0
	align	4
_961:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,54,51
_962:
	db	"SC_TIME_FOREVER",0
	align	4
_963:
	dd	bbStringClass
	dd	2147483647
	dd	8
	dw	49,48,48,48,48,48,48,48
_964:
	db	"SCI_SETMOUSEDWELLTIME",0
	align	4
_965:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,54,52
_966:
	db	"SCI_GETMOUSEDWELLTIME",0
	align	4
_967:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,54,53
_968:
	db	"SCI_WORDSTARTPOSITION",0
	align	4
_969:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,54,54
_970:
	db	"SCI_WORDENDPOSITION",0
	align	4
_971:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,54,55
_972:
	db	"SC_WRAP_NONE",0
_973:
	db	"SC_WRAP_WORD",0
_974:
	db	"SC_WRAP_CHAR",0
_975:
	db	"SCI_SETWRAPMODE",0
	align	4
_976:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,54,56
_977:
	db	"SCI_GETWRAPMODE",0
	align	4
_978:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,54,57
_979:
	db	"SC_WRAPVISUALFLAG_NONE",0
_980:
	db	"SC_WRAPVISUALFLAG_END",0
_981:
	db	"SC_WRAPVISUALFLAG_START",0
_982:
	db	"SCI_SETWRAPVISUALFLAGS",0
	align	4
_983:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,54,48
_984:
	db	"SCI_GETWRAPVISUALFLAGS",0
	align	4
_985:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,54,49
_986:
	db	"SC_WRAPVISUALFLAGLOC_DEFAULT",0
_987:
	db	"SC_WRAPVISUALFLAGLOC_END_BY_TEXT",0
_988:
	db	"SC_WRAPVISUALFLAGLOC_START_BY_TEXT",0
_989:
	db	"SCI_SETWRAPVISUALFLAGSLOCATION",0
	align	4
_990:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,54,50
_991:
	db	"SCI_GETWRAPVISUALFLAGSLOCATION",0
	align	4
_992:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,54,51
_993:
	db	"SCI_SETWRAPSTARTINDENT",0
	align	4
_994:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,54,52
_995:
	db	"SCI_GETWRAPSTARTINDENT",0
	align	4
_996:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,54,53
_997:
	db	"SC_CACHE_NONE",0
_998:
	db	"SC_CACHE_CARET",0
_999:
	db	"SC_CACHE_PAGE",0
_1000:
	db	"SC_CACHE_DOCUMENT",0
_1001:
	db	"SCI_SETLAYOUTCACHE",0
	align	4
_1002:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,55,50
_1003:
	db	"SCI_GETLAYOUTCACHE",0
	align	4
_1004:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,55,51
_1005:
	db	"SCI_SETSCROLLWIDTH",0
	align	4
_1006:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,55,52
_1007:
	db	"SCI_GETSCROLLWIDTH",0
	align	4
_1008:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,55,53
_1009:
	db	"SCI_TEXTWIDTH",0
	align	4
_1010:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,55,54
_1011:
	db	"SCI_SETENDATLASTLINE",0
	align	4
_1012:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,55,55
_1013:
	db	"SCI_GETENDATLASTLINE",0
	align	4
_1014:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,55,56
_1015:
	db	"SCI_TEXTHEIGHT",0
	align	4
_1016:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,55,57
_1017:
	db	"SCI_SETVSCROLLBAR",0
	align	4
_1018:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,56,48
_1019:
	db	"SCI_GETVSCROLLBAR",0
	align	4
_1020:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,56,49
_1021:
	db	"SCI_APPENDTEXT",0
	align	4
_1022:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,56,50
_1023:
	db	"SCI_GETTWOPHASEDRAW",0
	align	4
_1024:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,56,51
_1025:
	db	"SCI_SETTWOPHASEDRAW",0
	align	4
_1026:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,56,52
_1027:
	db	"SCI_TARGETFROMSELECTION",0
	align	4
_1028:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,56,55
_1029:
	db	"SCI_LINESJOIN",0
	align	4
_1030:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,56,56
_1031:
	db	"SCI_LINESSPLIT",0
	align	4
_1032:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,56,57
_1033:
	db	"SCI_SETFOLDMARGINCOLOUR",0
	align	4
_1034:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,57,48
_1035:
	db	"SCI_SETFOLDMARGINHICOLOUR",0
	align	4
_1036:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,57,49
_1037:
	db	"SCI_LINEDOWN",0
	align	4
_1038:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,48,48
_1039:
	db	"SCI_LINEDOWNEXTEND",0
	align	4
_1040:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,48,49
_1041:
	db	"SCI_LINEUP",0
	align	4
_1042:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,48,50
_1043:
	db	"SCI_LINEUPEXTEND",0
	align	4
_1044:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,48,51
_1045:
	db	"SCI_CHARLEFT",0
	align	4
_1046:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,48,52
_1047:
	db	"SCI_CHARLEFTEXTEND",0
	align	4
_1048:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,48,53
_1049:
	db	"SCI_CHARRIGHT",0
	align	4
_1050:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,48,54
_1051:
	db	"SCI_CHARRIGHTEXTEND",0
	align	4
_1052:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,48,55
_1053:
	db	"SCI_WORDLEFT",0
	align	4
_1054:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,48,56
_1055:
	db	"SCI_WORDLEFTEXTEND",0
	align	4
_1056:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,48,57
_1057:
	db	"SCI_WORDRIGHT",0
	align	4
_1058:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,49,48
_1059:
	db	"SCI_WORDRIGHTEXTEND",0
	align	4
_1060:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,49,49
_1061:
	db	"SCI_HOME",0
	align	4
_1062:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,49,50
_1063:
	db	"SCI_HOMEEXTEND",0
	align	4
_1064:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,49,51
_1065:
	db	"SCI_LINEEND",0
	align	4
_1066:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,49,52
_1067:
	db	"SCI_LINEENDEXTEND",0
	align	4
_1068:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,49,53
_1069:
	db	"SCI_DOCUMENTSTART",0
	align	4
_1070:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,49,54
_1071:
	db	"SCI_DOCUMENTSTARTEXTEND",0
	align	4
_1072:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,49,55
_1073:
	db	"SCI_DOCUMENTEND",0
	align	4
_1074:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,49,56
_1075:
	db	"SCI_DOCUMENTENDEXTEND",0
	align	4
_1076:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,49,57
_1077:
	db	"SCI_PAGEUP",0
	align	4
_1078:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,50,48
_1079:
	db	"SCI_PAGEUPEXTEND",0
	align	4
_1080:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,50,49
_1081:
	db	"SCI_PAGEDOWN",0
	align	4
_1082:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,50,50
_1083:
	db	"SCI_PAGEDOWNEXTEND",0
	align	4
_1084:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,50,51
_1085:
	db	"SCI_EDITTOGGLEOVERTYPE",0
	align	4
_1086:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,50,52
_1087:
	db	"SCI_CANCEL",0
	align	4
_1088:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,50,53
_1089:
	db	"SCI_DELETEBACK",0
	align	4
_1090:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,50,54
_1091:
	db	"SCI_TAB",0
	align	4
_1092:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,50,55
_1093:
	db	"SCI_BACKTAB",0
	align	4
_1094:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,50,56
_1095:
	db	"SCI_NEWLINE",0
	align	4
_1096:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,50,57
_1097:
	db	"SCI_FORMFEED",0
	align	4
_1098:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,51,48
_1099:
	db	"SCI_VCHOME",0
	align	4
_1100:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,51,49
_1101:
	db	"SCI_VCHOMEEXTEND",0
	align	4
_1102:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,51,50
_1103:
	db	"SCI_ZOOMIN",0
	align	4
_1104:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,51,51
_1105:
	db	"SCI_ZOOMOUT",0
	align	4
_1106:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,51,52
_1107:
	db	"SCI_DELWORDLEFT",0
	align	4
_1108:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,51,53
_1109:
	db	"SCI_DELWORDRIGHT",0
	align	4
_1110:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,51,54
_1111:
	db	"SCI_LINECUT",0
	align	4
_1112:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,51,55
_1113:
	db	"SCI_LINEDELETE",0
	align	4
_1114:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,51,56
_1115:
	db	"SCI_LINETRANSPOSE",0
	align	4
_1116:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,51,57
_1117:
	db	"SCI_LINEDUPLICATE",0
	align	4
_1118:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,48,52
_1119:
	db	"SCI_LOWERCASE",0
	align	4
_1120:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,52,48
_1121:
	db	"SCI_UPPERCASE",0
	align	4
_1122:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,52,49
_1123:
	db	"SCI_LINESCROLLDOWN",0
	align	4
_1124:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,52,50
_1125:
	db	"SCI_LINESCROLLUP",0
	align	4
_1126:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,52,51
_1127:
	db	"SCI_DELETEBACKNOTLINE",0
	align	4
_1128:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,52,52
_1129:
	db	"SCI_HOMEDISPLAY",0
	align	4
_1130:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,52,53
_1131:
	db	"SCI_HOMEDISPLAYEXTEND",0
	align	4
_1132:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,52,54
_1133:
	db	"SCI_LINEENDDISPLAY",0
	align	4
_1134:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,52,55
_1135:
	db	"SCI_LINEENDDISPLAYEXTEND",0
	align	4
_1136:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,52,56
_1137:
	db	"SCI_HOMEWRAP",0
	align	4
_1138:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,52,57
_1139:
	db	"SCI_HOMEWRAPEXTEND",0
	align	4
_1140:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,53,48
_1141:
	db	"SCI_LINEENDWRAP",0
	align	4
_1142:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,53,49
_1143:
	db	"SCI_LINEENDWRAPEXTEND",0
	align	4
_1144:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,53,50
_1145:
	db	"SCI_VCHOMEWRAP",0
	align	4
_1146:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,53,51
_1147:
	db	"SCI_VCHOMEWRAPEXTEND",0
	align	4
_1148:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,53,52
_1149:
	db	"SCI_LINECOPY",0
	align	4
_1150:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,53,53
_1151:
	db	"SCI_MOVECARETINSIDEVIEW",0
	align	4
_1152:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,48,49
_1153:
	db	"SCI_LINELENGTH",0
	align	4
_1154:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,53,48
_1155:
	db	"SCI_BRACEHIGHLIGHT",0
	align	4
_1156:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,53,49
_1157:
	db	"SCI_BRACEBADLIGHT",0
	align	4
_1158:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,53,50
_1159:
	db	"SCI_BRACEMATCH",0
	align	4
_1160:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,53,51
_1161:
	db	"SCI_GETVIEWEOL",0
	align	4
_1162:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,53,53
_1163:
	db	"SCI_SETVIEWEOL",0
	align	4
_1164:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,53,54
_1165:
	db	"SCI_GETDOCPOINTER",0
	align	4
_1166:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,53,55
_1167:
	db	"SCI_SETDOCPOINTER",0
	align	4
_1168:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,53,56
_1169:
	db	"SCI_SETMODEVENTMASK",0
	align	4
_1170:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,53,57
_1171:
	db	"EDGE_NONE",0
_1172:
	db	"EDGE_LINE",0
_1173:
	db	"EDGE_BACKGROUND",0
_1174:
	db	"SCI_GETEDGECOLUMN",0
	align	4
_1175:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,54,48
_1176:
	db	"SCI_SETEDGECOLUMN",0
	align	4
_1177:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,54,49
_1178:
	db	"SCI_GETEDGEMODE",0
	align	4
_1179:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,54,50
_1180:
	db	"SCI_SETEDGEMODE",0
	align	4
_1181:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,54,51
_1182:
	db	"SCI_GETEDGECOLOUR",0
	align	4
_1183:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,54,52
_1184:
	db	"SCI_SETEDGECOLOUR",0
	align	4
_1185:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,54,53
_1186:
	db	"SCI_SEARCHANCHOR",0
	align	4
_1187:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,54,54
_1188:
	db	"SCI_SEARCHNEXT",0
	align	4
_1189:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,54,55
_1190:
	db	"SCI_SEARCHPREV",0
	align	4
_1191:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,54,56
_1192:
	db	"SCI_LINESONSCREEN",0
	align	4
_1193:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,55,48
_1194:
	db	"SCI_USEPOPUP",0
	align	4
_1195:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,55,49
_1196:
	db	"SCI_SELECTIONISRECTANGLE",0
	align	4
_1197:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,55,50
_1198:
	db	"SCI_SETZOOM",0
	align	4
_1199:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,55,51
_1200:
	db	"SCI_GETZOOM",0
	align	4
_1201:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,55,52
_1202:
	db	"SCI_CREATEDOCUMENT",0
	align	4
_1203:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,55,53
_1204:
	db	"SCI_ADDREFDOCUMENT",0
	align	4
_1205:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,55,54
_1206:
	db	"SCI_RELEASEDOCUMENT",0
	align	4
_1207:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,55,55
_1208:
	db	"SCI_GETMODEVENTMASK",0
	align	4
_1209:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,55,56
_1210:
	db	"SCI_SETFOCUS",0
	align	4
_1211:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,56,48
_1212:
	db	"SCI_GETFOCUS",0
	align	4
_1213:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,56,49
_1214:
	db	"SCI_SETSTATUS",0
	align	4
_1215:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,56,50
_1216:
	db	"SCI_GETSTATUS",0
	align	4
_1217:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,56,51
_1218:
	db	"SCI_SETMOUSEDOWNCAPTURES",0
	align	4
_1219:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,56,52
_1220:
	db	"SCI_GETMOUSEDOWNCAPTURES",0
	align	4
_1221:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,56,53
_1222:
	db	"SC_CURSORNORMAL",0
_1223:
	db	"SC_CURSORWAIT",0
_1224:
	db	"SCI_SETCURSOR",0
	align	4
_1225:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,56,54
_1226:
	db	"SCI_GETCURSOR",0
	align	4
_1227:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,56,55
_1228:
	db	"SCI_SETCONTROLCHARSYMBOL",0
	align	4
_1229:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,56,56
_1230:
	db	"SCI_GETCONTROLCHARSYMBOL",0
	align	4
_1231:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,56,57
_1232:
	db	"SCI_WORDPARTLEFT",0
	align	4
_1233:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,57,48
_1234:
	db	"SCI_WORDPARTLEFTEXTEND",0
	align	4
_1235:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,57,49
_1236:
	db	"SCI_WORDPARTRIGHT",0
	align	4
_1237:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,57,50
_1238:
	db	"SCI_WORDPARTRIGHTEXTEND",0
	align	4
_1239:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,57,51
_1240:
	db	"VISIBLE_SLOP",0
_1241:
	db	"VISIBLE_STRICT",0
_1242:
	db	"SCI_SETVISIBLEPOLICY",0
	align	4
_1243:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,57,52
_1244:
	db	"SCI_DELLINELEFT",0
	align	4
_1245:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,57,53
_1246:
	db	"SCI_DELLINERIGHT",0
	align	4
_1247:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,57,54
_1248:
	db	"SCI_SETXOFFSET",0
	align	4
_1249:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,57,55
_1250:
	db	"SCI_GETXOFFSET",0
	align	4
_1251:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,57,56
_1252:
	db	"SCI_CHOOSECARETX",0
	align	4
_1253:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,57,57
_1254:
	db	"SCI_GRABFOCUS",0
	align	4
_1255:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,48,48
_1256:
	db	"CARET_SLOP",0
_1257:
	db	"CARET_STRICT",0
_1258:
	db	"CARET_JUMPS",0
_1259:
	db	"CARET_EVEN",0
_1260:
	db	"SCI_SETXCARETPOLICY",0
	align	4
_1261:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,48,50
_1262:
	db	"SCI_SETYCARETPOLICY",0
	align	4
_1263:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,48,51
_1264:
	db	"SCI_SETPRINTWRAPMODE",0
	align	4
_1265:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,48,54
_1266:
	db	"SCI_GETPRINTWRAPMODE",0
	align	4
_1267:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,48,55
_1268:
	db	"SCI_SETHOTSPOTACTIVEFORE",0
	align	4
_1269:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,49,48
_1270:
	db	"SCI_SETHOTSPOTACTIVEBACK",0
	align	4
_1271:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,49,49
_1272:
	db	"SCI_SETHOTSPOTACTIVEUNDERLINE",0
	align	4
_1273:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,49,50
_1274:
	db	"SCI_SETHOTSPOTSINGLELINE",0
	align	4
_1275:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,50,49
_1276:
	db	"SCI_PARADOWN",0
	align	4
_1277:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,49,51
_1278:
	db	"SCI_PARADOWNEXTEND",0
	align	4
_1279:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,49,52
_1280:
	db	"SCI_PARAUP",0
	align	4
_1281:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,49,53
_1282:
	db	"SCI_PARAUPEXTEND",0
	align	4
_1283:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,49,54
_1284:
	db	"SCI_POSITIONBEFORE",0
	align	4
_1285:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,49,55
_1286:
	db	"SCI_POSITIONAFTER",0
	align	4
_1287:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,49,56
_1288:
	db	"SCI_COPYRANGE",0
	align	4
_1289:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,49,57
_1290:
	db	"SCI_COPYTEXT",0
	align	4
_1291:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,50,48
_1292:
	db	"SC_SEL_STREAM",0
_1293:
	db	"SC_SEL_RECTANGLE",0
_1294:
	db	"SC_SEL_LINES",0
_1295:
	db	"SCI_SETSELECTIONMODE",0
	align	4
_1296:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,50,50
_1297:
	db	"SCI_GETSELECTIONMODE",0
	align	4
_1298:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,50,51
_1299:
	db	"SCI_GETLINESELSTARTPOSITION",0
	align	4
_1300:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,50,52
_1301:
	db	"SCI_GETLINESELENDPOSITION",0
	align	4
_1302:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,50,53
_1303:
	db	"SCI_LINEDOWNRECTEXTEND",0
	align	4
_1304:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,50,54
_1305:
	db	"SCI_LINEUPRECTEXTEND",0
	align	4
_1306:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,50,55
_1307:
	db	"SCI_CHARLEFTRECTEXTEND",0
	align	4
_1308:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,50,56
_1309:
	db	"SCI_CHARRIGHTRECTEXTEND",0
	align	4
_1310:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,50,57
_1311:
	db	"SCI_HOMERECTEXTEND",0
	align	4
_1312:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,51,48
_1313:
	db	"SCI_VCHOMERECTEXTEND",0
	align	4
_1314:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,51,49
_1315:
	db	"SCI_LINEENDRECTEXTEND",0
	align	4
_1316:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,51,50
_1317:
	db	"SCI_PAGEUPRECTEXTEND",0
	align	4
_1318:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,51,51
_1319:
	db	"SCI_PAGEDOWNRECTEXTEND",0
	align	4
_1320:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,51,52
_1321:
	db	"SCI_STUTTEREDPAGEUP",0
	align	4
_1322:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,51,53
_1323:
	db	"SCI_STUTTEREDPAGEUPEXTEND",0
	align	4
_1324:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,51,54
_1325:
	db	"SCI_STUTTEREDPAGEDOWN",0
	align	4
_1326:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,51,55
_1327:
	db	"SCI_STUTTEREDPAGEDOWNEXTEND",0
	align	4
_1328:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,51,56
_1329:
	db	"SCI_WORDLEFTEND",0
	align	4
_1330:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,51,57
_1331:
	db	"SCI_WORDLEFTENDEXTEND",0
	align	4
_1332:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,52,48
_1333:
	db	"SCI_WORDRIGHTEND",0
	align	4
_1334:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,52,49
_1335:
	db	"SCI_WORDRIGHTENDEXTEND",0
	align	4
_1336:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,52,50
_1337:
	db	"SCI_SETWHITESPACECHARS",0
	align	4
_1338:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,52,51
_1339:
	db	"SCI_SETCHARSDEFAULT",0
	align	4
_1340:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,52,52
_1341:
	db	"SCI_AUTOCGETCURRENT",0
	align	4
_1342:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,52,53
_1343:
	db	"SCI_ALLOCATE",0
	align	4
_1344:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,52,54
_1345:
	db	"SCI_TARGETASUTF8",0
	align	4
_1346:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,52,55
_1347:
	db	"SCI_SETLENGTHFORENCODE",0
	align	4
_1348:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,52,56
_1349:
	db	"SCI_ENCODEDFROMUTF8",0
	align	4
_1350:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,52,57
_1351:
	db	"SCI_FINDCOLUMN",0
	align	4
_1352:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,53,54
_1353:
	db	"SCI_GETCARETSTICKY",0
	align	4
_1354:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,53,55
_1355:
	db	"SCI_SETCARETSTICKY",0
	align	4
_1356:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,53,56
_1357:
	db	"SCI_TOGGLECARETSTICKY",0
	align	4
_1358:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,53,57
_1359:
	db	"SCI_SETPASTECONVERTENDINGS",0
	align	4
_1360:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,54,55
_1361:
	db	"SCI_GETPASTECONVERTENDINGS",0
	align	4
_1362:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,54,56
_1363:
	db	"SCI_SELECTIONDUPLICATE",0
	align	4
_1364:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,54,57
_1365:
	db	"SC_ALPHA_TRANSPARENT",0
_1366:
	db	"SC_ALPHA_OPAQUE",0
_1367:
	db	"SC_ALPHA_NOALPHA",0
	align	4
_1368:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	50,53,54
_1369:
	db	"SCI_SETCARETLINEBACKALPHA",0
	align	4
_1370:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,55,48
_1371:
	db	"SCI_GETCARETLINEBACKALPHA",0
	align	4
_1372:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,55,49
_1373:
	db	"SCI_STARTRECORD",0
	align	4
_1374:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	51,48,48,49
_1375:
	db	"SCI_STOPRECORD",0
	align	4
_1376:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	51,48,48,50
_1377:
	db	"SCI_SETLEXER",0
	align	4
_1378:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,48,49
_1379:
	db	"SCI_GETLEXER",0
	align	4
_1380:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,48,50
_1381:
	db	"SCI_COLOURISE",0
	align	4
_1382:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,48,51
_1383:
	db	"SCI_SETPROPERTY",0
	align	4
_1384:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,48,52
_1385:
	db	"KEYWORDSET_MAX",0
_1386:
	db	"SCI_SETKEYWORDS",0
	align	4
_1387:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,48,53
_1388:
	db	"SCI_SETLEXERLANGUAGE",0
	align	4
_1389:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,48,54
_1390:
	db	"SCI_LOADLEXERLIBRARY",0
	align	4
_1391:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,48,55
_1392:
	db	"SCI_GETPROPERTY",0
	align	4
_1393:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,48,56
_1394:
	db	"SCI_GETPROPERTYEXPANDED",0
	align	4
_1395:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,48,57
_1396:
	db	"SCI_GETPROPERTYINT",0
	align	4
_1397:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,49,48
_1398:
	db	"SCI_GETSTYLEBITSNEEDED",0
	align	4
_1399:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,49,49
_1400:
	db	"SC_MOD_INSERTTEXT",0
_1401:
	db	"SC_MOD_DELETETEXT",0
_1402:
	db	"SC_MOD_CHANGESTYLE",0
_1403:
	db	"SC_MOD_CHANGEFOLD",0
_1404:
	db	"SC_PERFORMED_USER",0
_1405:
	db	"SC_PERFORMED_UNDO",0
_1406:
	db	"SC_PERFORMED_REDO",0
_1407:
	db	"SC_MULTISTEPUNDOREDO",0
_1408:
	db	"SC_LASTSTEPINUNDOREDO",0
_1409:
	db	"SC_MOD_CHANGEMARKER",0
	align	4
_1410:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	53,49,50
_1411:
	db	"SC_MOD_BEFOREINSERT",0
_1412:
	db	"SC_MOD_BEFOREDELETE",0
_1413:
	db	"SC_MULTILINEUNDOREDO",0
_1414:
	db	"SC_MODEVENTMASKALL",0
	align	4
_1415:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	56,49,57,49
_1416:
	db	"SCEN_CHANGE",0
	align	4
_1417:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	55,54,56
_1418:
	db	"SCEN_SETFOCUS",0
_1419:
	db	"SCEN_KILLFOCUS",0
_1420:
	db	"SCK_DOWN",0
	align	4
_1421:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	51,48,48
_1422:
	db	"SCK_UP",0
	align	4
_1423:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	51,48,49
_1424:
	db	"SCK_LEFT",0
	align	4
_1425:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	51,48,50
_1426:
	db	"SCK_RIGHT",0
	align	4
_1427:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	51,48,51
_1428:
	db	"SCK_HOME",0
	align	4
_1429:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	51,48,52
_1430:
	db	"SCK_END",0
	align	4
_1431:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	51,48,53
_1432:
	db	"SCK_PRIOR",0
	align	4
_1433:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	51,48,54
_1434:
	db	"SCK_NEXT",0
	align	4
_1435:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	51,48,55
_1436:
	db	"SCK_DELETE",0
	align	4
_1437:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	51,48,56
_1438:
	db	"SCK_INSERT",0
	align	4
_1439:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	51,48,57
_1440:
	db	"SCK_ESCAPE",0
_1441:
	db	"SCK_BACK",0
_1442:
	db	"SCK_TAB",0
_1443:
	db	"SCK_RETURN",0
_1444:
	db	"SCK_ADD",0
	align	4
_1445:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	51,49,48
_1446:
	db	"SCK_SUBTRACT",0
	align	4
_1447:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	51,49,49
_1448:
	db	"SCK_DIVIDE",0
	align	4
_1449:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	51,49,50
_1450:
	db	"SCMOD_NORM",0
_1451:
	db	"SCMOD_SHIFT",0
_1452:
	db	"SCMOD_CTRL",0
_1453:
	db	"SCMOD_ALT",0
_1454:
	db	"SCN_STYLENEEDED",0
_1455:
	db	"SCN_CHARADDED",0
_1456:
	db	"SCN_SAVEPOINTREACHED",0
_1457:
	db	"SCN_SAVEPOINTLEFT",0
_1458:
	db	"SCN_MODIFYATTEMPTRO",0
_1459:
	db	"SCN_KEY",0
_1460:
	db	"SCN_DOUBLECLICK",0
_1461:
	db	"SCN_UPDATEUI",0
_1462:
	db	"SCN_MODIFIED",0
_1463:
	db	"SCN_MACRORECORD",0
_1464:
	db	"SCN_MARGINCLICK",0
_1465:
	db	"SCN_NEEDSHOWN",0
_1466:
	db	"SCN_PAINTED",0
_1467:
	db	"SCN_USERLISTSELECTION",0
_1468:
	db	"SCN_URIDROPPED",0
_1469:
	db	"SCN_DWELLSTART",0
_1470:
	db	"SCN_DWELLEND",0
_1471:
	db	"SCN_ZOOM",0
_1472:
	db	"SCN_HOTSPOTCLICK",0
_1473:
	db	"SCN_HOTSPOTDOUBLECLICK",0
_1474:
	db	"SCN_CALLTIPCLICK",0
_1475:
	db	"SCN_AUTOCSELECTION",0
_1476:
	db	"SCI_SETCARETPOLICY",0
	align	4
_1477:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,54,57
_1478:
	db	"CARET_CENTER",0
_1479:
	db	"CARET_XEVEN",0
_1480:
	db	"CARET_XJUMPS",0
_1481:
	db	"SCN_POSCHANGED",0
_1482:
	db	"SCN_CHECKBRACE",0
_1483:
	db	"SCLEX_CONTAINER",0
_1484:
	db	"SCLEX_NULL",0
_1485:
	db	"SCLEX_PYTHON",0
_1486:
	db	"SCLEX_CPP",0
_1487:
	db	"SCLEX_HTML",0
_1488:
	db	"SCLEX_XML",0
_1489:
	db	"SCLEX_PERL",0
_1490:
	db	"SCLEX_SQL",0
_1491:
	db	"SCLEX_VB",0
_1492:
	db	"SCLEX_PROPERTIES",0
_1493:
	db	"SCLEX_ERRORLIST",0
_1494:
	db	"SCLEX_MAKEFILE",0
_1495:
	db	"SCLEX_BATCH",0
_1496:
	db	"SCLEX_XCODE",0
_1497:
	db	"SCLEX_LATEX",0
_1498:
	db	"SCLEX_LUA",0
_1499:
	db	"SCLEX_DIFF",0
_1500:
	db	"SCLEX_CONF",0
_1501:
	db	"SCLEX_PASCAL",0
_1502:
	db	"SCLEX_AVE",0
_1503:
	db	"SCLEX_ADA",0
_1504:
	db	"SCLEX_LISP",0
_1505:
	db	"SCLEX_RUBY",0
_1506:
	db	"SCLEX_EIFFEL",0
_1507:
	db	"SCLEX_EIFFELKW",0
_1508:
	db	"SCLEX_TCL",0
_1509:
	db	"SCLEX_NNCRONTAB",0
_1510:
	db	"SCLEX_BULLANT",0
_1511:
	db	"SCLEX_VBSCRIPT",0
_1512:
	db	"SCLEX_BAAN",0
_1513:
	db	"SCLEX_MATLAB",0
_1514:
	db	"SCLEX_SCRIPTOL",0
_1515:
	db	"SCLEX_ASM",0
_1516:
	db	"SCLEX_CPPNOCASE",0
_1517:
	db	"SCLEX_FORTRAN",0
_1518:
	db	"SCLEX_F77",0
_1519:
	db	"SCLEX_CSS",0
_1520:
	db	"SCLEX_POV",0
_1521:
	db	"SCLEX_LOUT",0
	align	4
_1522:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	52,48
_1523:
	db	"SCLEX_ESCRIPT",0
	align	4
_1524:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	52,49
_1525:
	db	"SCLEX_PS",0
	align	4
_1526:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	52,50
_1527:
	db	"SCLEX_NSIS",0
	align	4
_1528:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	52,51
_1529:
	db	"SCLEX_MMIXAL",0
	align	4
_1530:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	52,52
_1531:
	db	"SCLEX_CLW",0
	align	4
_1532:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	52,53
_1533:
	db	"SCLEX_CLWNOCASE",0
	align	4
_1534:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	52,54
_1535:
	db	"SCLEX_LOT",0
	align	4
_1536:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	52,55
_1537:
	db	"SCLEX_YAML",0
	align	4
_1538:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	52,56
_1539:
	db	"SCLEX_TEX",0
	align	4
_1540:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	52,57
_1541:
	db	"SCLEX_METAPOST",0
	align	4
_1542:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	53,48
_1543:
	db	"SCLEX_POWERBASIC",0
	align	4
_1544:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	53,49
_1545:
	db	"SCLEX_FORTH",0
	align	4
_1546:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	53,50
_1547:
	db	"SCLEX_ERLANG",0
	align	4
_1548:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	53,51
_1549:
	db	"SCLEX_OCTAVE",0
	align	4
_1550:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	53,52
_1551:
	db	"SCLEX_MSSQL",0
	align	4
_1552:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	53,53
_1553:
	db	"SCLEX_VERILOG",0
	align	4
_1554:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	53,54
_1555:
	db	"SCLEX_KIX",0
	align	4
_1556:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	53,55
_1557:
	db	"SCLEX_GUI4CLI",0
	align	4
_1558:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	53,56
_1559:
	db	"SCLEX_SPECMAN",0
	align	4
_1560:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	53,57
_1561:
	db	"SCLEX_AU3",0
	align	4
_1562:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	54,48
_1563:
	db	"SCLEX_APDL",0
	align	4
_1564:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	54,49
_1565:
	db	"SCLEX_BASH",0
	align	4
_1566:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	54,50
_1567:
	db	"SCLEX_ASN1",0
	align	4
_1568:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	54,51
_1569:
	db	"SCLEX_VHDL",0
_1570:
	db	"SCLEX_CAML",0
	align	4
_1571:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	54,53
_1572:
	db	"SCLEX_BLITZBASIC",0
	align	4
_1573:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	54,54
_1574:
	db	"SCLEX_PUREBASIC",0
	align	4
_1575:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	54,55
_1576:
	db	"SCLEX_HASKELL",0
	align	4
_1577:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	54,56
_1578:
	db	"SCLEX_PHPSCRIPT",0
	align	4
_1579:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	54,57
_1580:
	db	"SCLEX_TADS3",0
	align	4
_1581:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	55,48
_1582:
	db	"SCLEX_REBOL",0
	align	4
_1583:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	55,49
_1584:
	db	"SCLEX_SMALLTALK",0
	align	4
_1585:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	55,50
_1586:
	db	"SCLEX_FLAGSHIP",0
	align	4
_1587:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	55,51
_1588:
	db	"SCLEX_CSOUND",0
	align	4
_1589:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	55,52
_1590:
	db	"SCLEX_FREEBASIC",0
	align	4
_1591:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	55,53
_1592:
	db	"SCLEX_INNOSETUP",0
	align	4
_1593:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	55,54
_1594:
	db	"SCLEX_OPAL",0
_1595:
	db	"SCLEX_BLITZMAX",0
	align	4
_1596:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	55,56
_1597:
	db	"SCLEX_AUTOMATIC",0
_1598:
	db	"SCE_P_DEFAULT",0
_1599:
	db	"SCE_P_COMMENTLINE",0
_1600:
	db	"SCE_P_NUMBER",0
_1601:
	db	"SCE_P_STRING",0
_1602:
	db	"SCE_P_CHARACTER",0
_1603:
	db	"SCE_P_WORD",0
_1604:
	db	"SCE_P_TRIPLE",0
_1605:
	db	"SCE_P_TRIPLEDOUBLE",0
_1606:
	db	"SCE_P_CLASSNAME",0
_1607:
	db	"SCE_P_DEFNAME",0
_1608:
	db	"SCE_P_OPERATOR",0
_1609:
	db	"SCE_P_IDENTIFIER",0
_1610:
	db	"SCE_P_COMMENTBLOCK",0
_1611:
	db	"SCE_P_STRINGEOL",0
_1612:
	db	"SCE_P_WORD2",0
_1613:
	db	"SCE_P_DECORATOR",0
_1614:
	db	"SCE_C_DEFAULT",0
_1615:
	db	"SCE_C_COMMENT",0
_1616:
	db	"SCE_C_COMMENTLINE",0
_1617:
	db	"SCE_C_COMMENTDOC",0
_1618:
	db	"SCE_C_NUMBER",0
_1619:
	db	"SCE_C_WORD",0
_1620:
	db	"SCE_C_STRING",0
_1621:
	db	"SCE_C_CHARACTER",0
_1622:
	db	"SCE_C_UUID",0
_1623:
	db	"SCE_C_PREPROCESSOR",0
_1624:
	db	"SCE_C_OPERATOR",0
_1625:
	db	"SCE_C_IDENTIFIER",0
_1626:
	db	"SCE_C_STRINGEOL",0
_1627:
	db	"SCE_C_VERBATIM",0
_1628:
	db	"SCE_C_REGEX",0
_1629:
	db	"SCE_C_COMMENTLINEDOC",0
_1630:
	db	"SCE_C_WORD2",0
_1631:
	db	"SCE_C_COMMENTDOCKEYWORD",0
_1632:
	db	"SCE_C_COMMENTDOCKEYWORDERROR",0
_1633:
	db	"SCE_C_GLOBALCLASS",0
_1634:
	db	"SCE_TCL_DEFAULT",0
_1635:
	db	"SCE_TCL_COMMENT",0
_1636:
	db	"SCE_TCL_COMMENTLINE",0
_1637:
	db	"SCE_TCL_NUMBER",0
_1638:
	db	"SCE_TCL_WORD_IN_QUOTE",0
_1639:
	db	"SCE_TCL_IN_QUOTE",0
_1640:
	db	"SCE_TCL_OPERATOR",0
_1641:
	db	"SCE_TCL_IDENTIFIER",0
_1642:
	db	"SCE_TCL_SUBSTITUTION",0
_1643:
	db	"SCE_TCL_SUB_BRACE",0
_1644:
	db	"SCE_TCL_MODIFIER",0
_1645:
	db	"SCE_TCL_EXPAND",0
_1646:
	db	"SCE_TCL_WORD",0
_1647:
	db	"SCE_TCL_WORD2",0
_1648:
	db	"SCE_TCL_WORD3",0
_1649:
	db	"SCE_TCL_WORD4",0
_1650:
	db	"SCE_TCL_WORD5",0
_1651:
	db	"SCE_TCL_WORD6",0
_1652:
	db	"SCE_TCL_WORD7",0
_1653:
	db	"SCE_TCL_WORD8",0
_1654:
	db	"SCE_H_DEFAULT",0
_1655:
	db	"SCE_H_TAG",0
_1656:
	db	"SCE_H_TAGUNKNOWN",0
_1657:
	db	"SCE_H_ATTRIBUTE",0
_1658:
	db	"SCE_H_ATTRIBUTEUNKNOWN",0
_1659:
	db	"SCE_H_NUMBER",0
_1660:
	db	"SCE_H_DOUBLESTRING",0
_1661:
	db	"SCE_H_SINGLESTRING",0
_1662:
	db	"SCE_H_OTHER",0
_1663:
	db	"SCE_H_COMMENT",0
_1664:
	db	"SCE_H_ENTITY",0
_1665:
	db	"SCE_H_TAGEND",0
_1666:
	db	"SCE_H_XMLSTART",0
_1667:
	db	"SCE_H_XMLEND",0
_1668:
	db	"SCE_H_SCRIPT",0
_1669:
	db	"SCE_H_ASP",0
_1670:
	db	"SCE_H_ASPAT",0
_1671:
	db	"SCE_H_CDATA",0
_1672:
	db	"SCE_H_QUESTION",0
_1673:
	db	"SCE_H_VALUE",0
_1674:
	db	"SCE_H_XCCOMMENT",0
_1675:
	db	"SCE_H_SGML_DEFAULT",0
_1676:
	db	"SCE_H_SGML_COMMAND",0
_1677:
	db	"SCE_H_SGML_1ST_PARAM",0
_1678:
	db	"SCE_H_SGML_DOUBLESTRING",0
_1679:
	db	"SCE_H_SGML_SIMPLESTRING",0
_1680:
	db	"SCE_H_SGML_ERROR",0
_1681:
	db	"SCE_H_SGML_SPECIAL",0
_1682:
	db	"SCE_H_SGML_ENTITY",0
_1683:
	db	"SCE_H_SGML_COMMENT",0
_1684:
	db	"SCE_H_SGML_1ST_PARAM_COMMENT",0
_1685:
	db	"SCE_H_SGML_BLOCK_DEFAULT",0
_1686:
	db	"SCE_HJ_START",0
_1687:
	db	"SCE_HJ_DEFAULT",0
_1688:
	db	"SCE_HJ_COMMENT",0
_1689:
	db	"SCE_HJ_COMMENTLINE",0
_1690:
	db	"SCE_HJ_COMMENTDOC",0
_1691:
	db	"SCE_HJ_NUMBER",0
_1692:
	db	"SCE_HJ_WORD",0
_1693:
	db	"SCE_HJ_KEYWORD",0
_1694:
	db	"SCE_HJ_DOUBLESTRING",0
_1695:
	db	"SCE_HJ_SINGLESTRING",0
_1696:
	db	"SCE_HJ_SYMBOLS",0
_1697:
	db	"SCE_HJ_STRINGEOL",0
_1698:
	db	"SCE_HJ_REGEX",0
_1699:
	db	"SCE_HJA_START",0
_1700:
	db	"SCE_HJA_DEFAULT",0
_1701:
	db	"SCE_HJA_COMMENT",0
_1702:
	db	"SCE_HJA_COMMENTLINE",0
_1703:
	db	"SCE_HJA_COMMENTDOC",0
_1704:
	db	"SCE_HJA_NUMBER",0
_1705:
	db	"SCE_HJA_WORD",0
_1706:
	db	"SCE_HJA_KEYWORD",0
_1707:
	db	"SCE_HJA_DOUBLESTRING",0
_1708:
	db	"SCE_HJA_SINGLESTRING",0
_1709:
	db	"SCE_HJA_SYMBOLS",0
_1710:
	db	"SCE_HJA_STRINGEOL",0
_1711:
	db	"SCE_HJA_REGEX",0
_1712:
	db	"SCE_HB_START",0
_1713:
	db	"SCE_HB_DEFAULT",0
_1714:
	db	"SCE_HB_COMMENTLINE",0
_1715:
	db	"SCE_HB_NUMBER",0
_1716:
	db	"SCE_HB_WORD",0
_1717:
	db	"SCE_HB_STRING",0
_1718:
	db	"SCE_HB_IDENTIFIER",0
_1719:
	db	"SCE_HB_STRINGEOL",0
_1720:
	db	"SCE_HBA_START",0
	align	4
_1721:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	56,48
_1722:
	db	"SCE_HBA_DEFAULT",0
	align	4
_1723:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	56,49
_1724:
	db	"SCE_HBA_COMMENTLINE",0
	align	4
_1725:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	56,50
_1726:
	db	"SCE_HBA_NUMBER",0
	align	4
_1727:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	56,51
_1728:
	db	"SCE_HBA_WORD",0
	align	4
_1729:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	56,52
_1730:
	db	"SCE_HBA_STRING",0
	align	4
_1731:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	56,53
_1732:
	db	"SCE_HBA_IDENTIFIER",0
	align	4
_1733:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	56,54
_1734:
	db	"SCE_HBA_STRINGEOL",0
	align	4
_1735:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	56,55
_1736:
	db	"SCE_HP_START",0
	align	4
_1737:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	57,48
_1738:
	db	"SCE_HP_DEFAULT",0
	align	4
_1739:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	57,49
_1740:
	db	"SCE_HP_COMMENTLINE",0
	align	4
_1741:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	57,50
_1742:
	db	"SCE_HP_NUMBER",0
	align	4
_1743:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	57,51
_1744:
	db	"SCE_HP_STRING",0
	align	4
_1745:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	57,52
_1746:
	db	"SCE_HP_CHARACTER",0
	align	4
_1747:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	57,53
_1748:
	db	"SCE_HP_WORD",0
	align	4
_1749:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	57,54
_1750:
	db	"SCE_HP_TRIPLE",0
	align	4
_1751:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	57,55
_1752:
	db	"SCE_HP_TRIPLEDOUBLE",0
	align	4
_1753:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	57,56
_1754:
	db	"SCE_HP_CLASSNAME",0
	align	4
_1755:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	57,57
_1756:
	db	"SCE_HP_DEFNAME",0
	align	4
_1757:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,48,48
_1758:
	db	"SCE_HP_OPERATOR",0
	align	4
_1759:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,48,49
_1760:
	db	"SCE_HP_IDENTIFIER",0
	align	4
_1761:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,48,50
_1762:
	db	"SCE_HPHP_COMPLEX_VARIABLE",0
	align	4
_1763:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,48,52
_1764:
	db	"SCE_HPA_START",0
	align	4
_1765:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,48,53
_1766:
	db	"SCE_HPA_DEFAULT",0
	align	4
_1767:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,48,54
_1768:
	db	"SCE_HPA_COMMENTLINE",0
	align	4
_1769:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,48,55
_1770:
	db	"SCE_HPA_NUMBER",0
	align	4
_1771:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,48,56
_1772:
	db	"SCE_HPA_STRING",0
	align	4
_1773:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,48,57
_1774:
	db	"SCE_HPA_CHARACTER",0
	align	4
_1775:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,49,48
_1776:
	db	"SCE_HPA_WORD",0
	align	4
_1777:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,49,49
_1778:
	db	"SCE_HPA_TRIPLE",0
	align	4
_1779:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,49,50
_1780:
	db	"SCE_HPA_TRIPLEDOUBLE",0
	align	4
_1781:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,49,51
_1782:
	db	"SCE_HPA_CLASSNAME",0
	align	4
_1783:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,49,52
_1784:
	db	"SCE_HPA_DEFNAME",0
	align	4
_1785:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,49,53
_1786:
	db	"SCE_HPA_OPERATOR",0
	align	4
_1787:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,49,54
_1788:
	db	"SCE_HPA_IDENTIFIER",0
	align	4
_1789:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,49,55
_1790:
	db	"SCE_HPHP_DEFAULT",0
	align	4
_1791:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,49,56
_1792:
	db	"SCE_HPHP_HSTRING",0
	align	4
_1793:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,49,57
_1794:
	db	"SCE_HPHP_SIMPLESTRING",0
	align	4
_1795:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,50,48
_1796:
	db	"SCE_HPHP_WORD",0
	align	4
_1797:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,50,49
_1798:
	db	"SCE_HPHP_NUMBER",0
	align	4
_1799:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,50,50
_1800:
	db	"SCE_HPHP_VARIABLE",0
	align	4
_1801:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,50,51
_1802:
	db	"SCE_HPHP_COMMENT",0
	align	4
_1803:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,50,52
_1804:
	db	"SCE_HPHP_COMMENTLINE",0
	align	4
_1805:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,50,53
_1806:
	db	"SCE_HPHP_HSTRING_VARIABLE",0
	align	4
_1807:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,50,54
_1808:
	db	"SCE_HPHP_OPERATOR",0
_1809:
	db	"SCE_PL_DEFAULT",0
_1810:
	db	"SCE_PL_ERROR",0
_1811:
	db	"SCE_PL_COMMENTLINE",0
_1812:
	db	"SCE_PL_POD",0
_1813:
	db	"SCE_PL_NUMBER",0
_1814:
	db	"SCE_PL_WORD",0
_1815:
	db	"SCE_PL_STRING",0
_1816:
	db	"SCE_PL_CHARACTER",0
_1817:
	db	"SCE_PL_PUNCTUATION",0
_1818:
	db	"SCE_PL_PREPROCESSOR",0
_1819:
	db	"SCE_PL_OPERATOR",0
_1820:
	db	"SCE_PL_IDENTIFIER",0
_1821:
	db	"SCE_PL_SCALAR",0
_1822:
	db	"SCE_PL_ARRAY",0
_1823:
	db	"SCE_PL_HASH",0
_1824:
	db	"SCE_PL_SYMBOLTABLE",0
_1825:
	db	"SCE_PL_VARIABLE_INDEXER",0
_1826:
	db	"SCE_PL_REGEX",0
_1827:
	db	"SCE_PL_REGSUBST",0
_1828:
	db	"SCE_PL_LONGQUOTE",0
_1829:
	db	"SCE_PL_BACKTICKS",0
_1830:
	db	"SCE_PL_DATASECTION",0
_1831:
	db	"SCE_PL_HERE_DELIM",0
_1832:
	db	"SCE_PL_HERE_Q",0
_1833:
	db	"SCE_PL_HERE_QQ",0
_1834:
	db	"SCE_PL_HERE_QX",0
_1835:
	db	"SCE_PL_STRING_Q",0
_1836:
	db	"SCE_PL_STRING_QQ",0
_1837:
	db	"SCE_PL_STRING_QX",0
_1838:
	db	"SCE_PL_STRING_QR",0
_1839:
	db	"SCE_PL_STRING_QW",0
_1840:
	db	"SCE_PL_POD_VERB",0
_1841:
	db	"SCE_RB_DEFAULT",0
_1842:
	db	"SCE_RB_ERROR",0
_1843:
	db	"SCE_RB_COMMENTLINE",0
_1844:
	db	"SCE_RB_POD",0
_1845:
	db	"SCE_RB_NUMBER",0
_1846:
	db	"SCE_RB_WORD",0
_1847:
	db	"SCE_RB_STRING",0
_1848:
	db	"SCE_RB_CHARACTER",0
_1849:
	db	"SCE_RB_CLASSNAME",0
_1850:
	db	"SCE_RB_DEFNAME",0
_1851:
	db	"SCE_RB_OPERATOR",0
_1852:
	db	"SCE_RB_IDENTIFIER",0
_1853:
	db	"SCE_RB_REGEX",0
_1854:
	db	"SCE_RB_GLOBAL",0
_1855:
	db	"SCE_RB_SYMBOL",0
_1856:
	db	"SCE_RB_MODULE_NAME",0
_1857:
	db	"SCE_RB_INSTANCE_VAR",0
_1858:
	db	"SCE_RB_CLASS_VAR",0
_1859:
	db	"SCE_RB_BACKTICKS",0
_1860:
	db	"SCE_RB_DATASECTION",0
_1861:
	db	"SCE_RB_HERE_DELIM",0
_1862:
	db	"SCE_RB_HERE_Q",0
_1863:
	db	"SCE_RB_HERE_QQ",0
_1864:
	db	"SCE_RB_HERE_QX",0
_1865:
	db	"SCE_RB_STRING_Q",0
_1866:
	db	"SCE_RB_STRING_QQ",0
_1867:
	db	"SCE_RB_STRING_QX",0
_1868:
	db	"SCE_RB_STRING_QR",0
_1869:
	db	"SCE_RB_STRING_QW",0
_1870:
	db	"SCE_RB_WORD_DEMOTED",0
_1871:
	db	"SCE_RB_STDIN",0
_1872:
	db	"SCE_RB_STDOUT",0
_1873:
	db	"SCE_RB_STDERR",0
_1874:
	db	"SCE_RB_UPPER_BOUND",0
_1875:
	db	"SCE_BM_DEFAULT",0
_1876:
	db	"SCE_BM_COMMENT",0
_1877:
	db	"SCE_BM_NUMBER",0
_1878:
	db	"SCE_BM_KEYWORD",0
_1879:
	db	"SCE_BM_STRING",0
_1880:
	db	"SCE_BM_MULTILINECOMMENT",0
_1881:
	db	"SCE_BM_IDENTIFIER",0
_1882:
	db	"SCE_BM_HEXNUMBER",0
_1883:
	db	"SCE_BM_OPERATOR",0
_1884:
	db	"SCE_BM_BINNUMBER",0
_1885:
	db	"SCE_BM_STRINGLITERAL",0
_1886:
	db	"SCE_B_DEFAULT",0
_1887:
	db	"SCE_B_COMMENT",0
_1888:
	db	"SCE_B_NUMBER",0
_1889:
	db	"SCE_B_KEYWORD",0
_1890:
	db	"SCE_B_STRING",0
_1891:
	db	"SCE_B_PREPROCESSOR",0
_1892:
	db	"SCE_B_OPERATOR",0
_1893:
	db	"SCE_B_IDENTIFIER",0
_1894:
	db	"SCE_B_DATE",0
_1895:
	db	"SCE_B_STRINGEOL",0
_1896:
	db	"SCE_B_KEYWORD2",0
_1897:
	db	"SCE_B_KEYWORD3",0
_1898:
	db	"SCE_B_KEYWORD4",0
_1899:
	db	"SCE_B_CONSTANT",0
_1900:
	db	"SCE_B_ASM",0
_1901:
	db	"SCE_B_LABEL",0
_1902:
	db	"SCE_B_ERROR",0
_1903:
	db	"SCE_B_HEXNUMBER",0
_1904:
	db	"SCE_B_BINNUMBER",0
_1905:
	db	"SCE_B_MULTILINECOMMENT",0
_1906:
	db	"SCE_PROPS_DEFAULT",0
_1907:
	db	"SCE_PROPS_COMMENT",0
_1908:
	db	"SCE_PROPS_SECTION",0
_1909:
	db	"SCE_PROPS_ASSIGNMENT",0
_1910:
	db	"SCE_PROPS_DEFVAL",0
_1911:
	db	"SCE_PROPS_KEY",0
_1912:
	db	"SCE_L_DEFAULT",0
_1913:
	db	"SCE_L_COMMAND",0
_1914:
	db	"SCE_L_TAG",0
_1915:
	db	"SCE_L_MATH",0
_1916:
	db	"SCE_L_COMMENT",0
_1917:
	db	"SCE_LUA_DEFAULT",0
_1918:
	db	"SCE_LUA_COMMENT",0
_1919:
	db	"SCE_LUA_COMMENTLINE",0
_1920:
	db	"SCE_LUA_COMMENTDOC",0
_1921:
	db	"SCE_LUA_NUMBER",0
_1922:
	db	"SCE_LUA_WORD",0
_1923:
	db	"SCE_LUA_STRING",0
_1924:
	db	"SCE_LUA_CHARACTER",0
_1925:
	db	"SCE_LUA_LITERALSTRING",0
_1926:
	db	"SCE_LUA_PREPROCESSOR",0
_1927:
	db	"SCE_LUA_OPERATOR",0
_1928:
	db	"SCE_LUA_IDENTIFIER",0
_1929:
	db	"SCE_LUA_STRINGEOL",0
_1930:
	db	"SCE_LUA_WORD2",0
_1931:
	db	"SCE_LUA_WORD3",0
_1932:
	db	"SCE_LUA_WORD4",0
_1933:
	db	"SCE_LUA_WORD5",0
_1934:
	db	"SCE_LUA_WORD6",0
_1935:
	db	"SCE_LUA_WORD7",0
_1936:
	db	"SCE_LUA_WORD8",0
_1937:
	db	"SCE_ERR_DEFAULT",0
_1938:
	db	"SCE_ERR_PYTHON",0
_1939:
	db	"SCE_ERR_GCC",0
_1940:
	db	"SCE_ERR_MS",0
_1941:
	db	"SCE_ERR_CMD",0
_1942:
	db	"SCE_ERR_BORLAND",0
_1943:
	db	"SCE_ERR_PERL",0
_1944:
	db	"SCE_ERR_NET",0
_1945:
	db	"SCE_ERR_LUA",0
_1946:
	db	"SCE_ERR_CTAG",0
_1947:
	db	"SCE_ERR_DIFF_CHANGED",0
_1948:
	db	"SCE_ERR_DIFF_ADDITION",0
_1949:
	db	"SCE_ERR_DIFF_DELETION",0
_1950:
	db	"SCE_ERR_DIFF_MESSAGE",0
_1951:
	db	"SCE_ERR_PHP",0
_1952:
	db	"SCE_ERR_ELF",0
_1953:
	db	"SCE_ERR_IFC",0
_1954:
	db	"SCE_ERR_IFORT",0
_1955:
	db	"SCE_ERR_ABSF",0
_1956:
	db	"SCE_ERR_TIDY",0
_1957:
	db	"SCE_ERR_JAVA_STACK",0
_1958:
	db	"SCE_BAT_DEFAULT",0
_1959:
	db	"SCE_BAT_COMMENT",0
_1960:
	db	"SCE_BAT_WORD",0
_1961:
	db	"SCE_BAT_LABEL",0
_1962:
	db	"SCE_BAT_HIDE",0
_1963:
	db	"SCE_BAT_COMMAND",0
_1964:
	db	"SCE_BAT_IDENTIFIER",0
_1965:
	db	"SCE_BAT_OPERATOR",0
_1966:
	db	"SCE_MAKE_DEFAULT",0
_1967:
	db	"SCE_MAKE_COMMENT",0
_1968:
	db	"SCE_MAKE_PREPROCESSOR",0
_1969:
	db	"SCE_MAKE_IDENTIFIER",0
_1970:
	db	"SCE_MAKE_OPERATOR",0
_1971:
	db	"SCE_MAKE_TARGET",0
_1972:
	db	"SCE_MAKE_IDEOL",0
_1973:
	db	"SCE_DIFF_DEFAULT",0
_1974:
	db	"SCE_DIFF_COMMENT",0
_1975:
	db	"SCE_DIFF_COMMAND",0
_1976:
	db	"SCE_DIFF_HEADER",0
_1977:
	db	"SCE_DIFF_POSITION",0
_1978:
	db	"SCE_DIFF_DELETED",0
_1979:
	db	"SCE_DIFF_ADDED",0
_1980:
	db	"SCE_CONF_DEFAULT",0
_1981:
	db	"SCE_CONF_COMMENT",0
_1982:
	db	"SCE_CONF_NUMBER",0
_1983:
	db	"SCE_CONF_IDENTIFIER",0
_1984:
	db	"SCE_CONF_EXTENSION",0
_1985:
	db	"SCE_CONF_PARAMETER",0
_1986:
	db	"SCE_CONF_STRING",0
_1987:
	db	"SCE_CONF_OPERATOR",0
_1988:
	db	"SCE_CONF_IP",0
_1989:
	db	"SCE_CONF_DIRECTIVE",0
_1990:
	db	"SCE_AVE_DEFAULT",0
_1991:
	db	"SCE_AVE_COMMENT",0
_1992:
	db	"SCE_AVE_NUMBER",0
_1993:
	db	"SCE_AVE_WORD",0
_1994:
	db	"SCE_AVE_STRING",0
_1995:
	db	"SCE_AVE_ENUM",0
_1996:
	db	"SCE_AVE_STRINGEOL",0
_1997:
	db	"SCE_AVE_IDENTIFIER",0
_1998:
	db	"SCE_AVE_OPERATOR",0
_1999:
	db	"SCE_AVE_WORD1",0
_2000:
	db	"SCE_AVE_WORD2",0
_2001:
	db	"SCE_AVE_WORD3",0
_2002:
	db	"SCE_AVE_WORD4",0
_2003:
	db	"SCE_AVE_WORD5",0
_2004:
	db	"SCE_AVE_WORD6",0
_2005:
	db	"SCE_ADA_DEFAULT",0
_2006:
	db	"SCE_ADA_WORD",0
_2007:
	db	"SCE_ADA_IDENTIFIER",0
_2008:
	db	"SCE_ADA_NUMBER",0
_2009:
	db	"SCE_ADA_DELIMITER",0
_2010:
	db	"SCE_ADA_CHARACTER",0
_2011:
	db	"SCE_ADA_CHARACTEREOL",0
_2012:
	db	"SCE_ADA_STRING",0
_2013:
	db	"SCE_ADA_STRINGEOL",0
_2014:
	db	"SCE_ADA_LABEL",0
_2015:
	db	"SCE_ADA_COMMENTLINE",0
_2016:
	db	"SCE_ADA_ILLEGAL",0
_2017:
	db	"SCE_BAAN_DEFAULT",0
_2018:
	db	"SCE_BAAN_COMMENT",0
_2019:
	db	"SCE_BAAN_COMMENTDOC",0
_2020:
	db	"SCE_BAAN_NUMBER",0
_2021:
	db	"SCE_BAAN_WORD",0
_2022:
	db	"SCE_BAAN_STRING",0
_2023:
	db	"SCE_BAAN_PREPROCESSOR",0
_2024:
	db	"SCE_BAAN_OPERATOR",0
_2025:
	db	"SCE_BAAN_IDENTIFIER",0
_2026:
	db	"SCE_BAAN_STRINGEOL",0
_2027:
	db	"SCE_BAAN_WORD2",0
_2028:
	db	"SCE_LISP_DEFAULT",0
_2029:
	db	"SCE_LISP_COMMENT",0
_2030:
	db	"SCE_LISP_NUMBER",0
_2031:
	db	"SCE_LISP_KEYWORD",0
_2032:
	db	"SCE_LISP_KEYWORD_KW",0
_2033:
	db	"SCE_LISP_SYMBOL",0
_2034:
	db	"SCE_LISP_STRING",0
_2035:
	db	"SCE_LISP_STRINGEOL",0
_2036:
	db	"SCE_LISP_IDENTIFIER",0
_2037:
	db	"SCE_LISP_OPERATOR",0
_2038:
	db	"SCE_LISP_SPECIAL",0
_2039:
	db	"SCE_LISP_MULTI_COMMENT",0
_2040:
	db	"SCE_EIFFEL_DEFAULT",0
_2041:
	db	"SCE_EIFFEL_COMMENTLINE",0
_2042:
	db	"SCE_EIFFEL_NUMBER",0
_2043:
	db	"SCE_EIFFEL_WORD",0
_2044:
	db	"SCE_EIFFEL_STRING",0
_2045:
	db	"SCE_EIFFEL_CHARACTER",0
_2046:
	db	"SCE_EIFFEL_OPERATOR",0
_2047:
	db	"SCE_EIFFEL_IDENTIFIER",0
_2048:
	db	"SCE_EIFFEL_STRINGEOL",0
_2049:
	db	"SCE_NNCRONTAB_DEFAULT",0
_2050:
	db	"SCE_NNCRONTAB_COMMENT",0
_2051:
	db	"SCE_NNCRONTAB_TASK",0
_2052:
	db	"SCE_NNCRONTAB_SECTION",0
_2053:
	db	"SCE_NNCRONTAB_KEYWORD",0
_2054:
	db	"SCE_NNCRONTAB_MODIFIER",0
_2055:
	db	"SCE_NNCRONTAB_ASTERISK",0
_2056:
	db	"SCE_NNCRONTAB_NUMBER",0
_2057:
	db	"SCE_NNCRONTAB_STRING",0
_2058:
	db	"SCE_NNCRONTAB_ENVIRONMENT",0
_2059:
	db	"SCE_NNCRONTAB_IDENTIFIER",0
_2060:
	db	"SCE_FORTH_DEFAULT",0
_2061:
	db	"SCE_FORTH_COMMENT",0
_2062:
	db	"SCE_FORTH_COMMENT_ML",0
_2063:
	db	"SCE_FORTH_IDENTIFIER",0
_2064:
	db	"SCE_FORTH_CONTROL",0
_2065:
	db	"SCE_FORTH_KEYWORD",0
_2066:
	db	"SCE_FORTH_DEFWORD",0
_2067:
	db	"SCE_FORTH_PREWORD1",0
_2068:
	db	"SCE_FORTH_PREWORD2",0
_2069:
	db	"SCE_FORTH_NUMBER",0
_2070:
	db	"SCE_FORTH_STRING",0
_2071:
	db	"SCE_FORTH_LOCALE",0
_2072:
	db	"SCE_MATLAB_DEFAULT",0
_2073:
	db	"SCE_MATLAB_COMMENT",0
_2074:
	db	"SCE_MATLAB_COMMAND",0
_2075:
	db	"SCE_MATLAB_NUMBER",0
_2076:
	db	"SCE_MATLAB_KEYWORD",0
_2077:
	db	"SCE_MATLAB_STRING",0
_2078:
	db	"SCE_MATLAB_OPERATOR",0
_2079:
	db	"SCE_MATLAB_IDENTIFIER",0
_2080:
	db	"SCE_MATLAB_DOUBLEQUOTESTRING",0
_2081:
	db	"SCE_SCRIPTOL_DEFAULT",0
_2082:
	db	"SCE_SCRIPTOL_WHITE",0
_2083:
	db	"SCE_SCRIPTOL_COMMENTLINE",0
_2084:
	db	"SCE_SCRIPTOL_PERSISTENT",0
_2085:
	db	"SCE_SCRIPTOL_CSTYLE",0
_2086:
	db	"SCE_SCRIPTOL_COMMENTBLOCK",0
_2087:
	db	"SCE_SCRIPTOL_NUMBER",0
_2088:
	db	"SCE_SCRIPTOL_STRING",0
_2089:
	db	"SCE_SCRIPTOL_CHARACTER",0
_2090:
	db	"SCE_SCRIPTOL_STRINGEOL",0
_2091:
	db	"SCE_SCRIPTOL_KEYWORD",0
_2092:
	db	"SCE_SCRIPTOL_OPERATOR",0
_2093:
	db	"SCE_SCRIPTOL_IDENTIFIER",0
_2094:
	db	"SCE_SCRIPTOL_TRIPLE",0
_2095:
	db	"SCE_SCRIPTOL_CLASSNAME",0
_2096:
	db	"SCE_SCRIPTOL_PREPROCESSOR",0
_2097:
	db	"SCE_ASM_DEFAULT",0
_2098:
	db	"SCE_ASM_COMMENT",0
_2099:
	db	"SCE_ASM_NUMBER",0
_2100:
	db	"SCE_ASM_STRING",0
_2101:
	db	"SCE_ASM_OPERATOR",0
_2102:
	db	"SCE_ASM_IDENTIFIER",0
_2103:
	db	"SCE_ASM_CPUINSTRUCTION",0
_2104:
	db	"SCE_ASM_MATHINSTRUCTION",0
_2105:
	db	"SCE_ASM_REGISTER",0
_2106:
	db	"SCE_ASM_DIRECTIVE",0
_2107:
	db	"SCE_ASM_DIRECTIVEOPERAND",0
_2108:
	db	"SCE_ASM_COMMENTBLOCK",0
_2109:
	db	"SCE_ASM_CHARACTER",0
_2110:
	db	"SCE_ASM_STRINGEOL",0
_2111:
	db	"SCE_ASM_EXTINSTRUCTION",0
_2112:
	db	"SCE_F_DEFAULT",0
_2113:
	db	"SCE_F_COMMENT",0
_2114:
	db	"SCE_F_NUMBER",0
_2115:
	db	"SCE_F_STRING1",0
_2116:
	db	"SCE_F_STRING2",0
_2117:
	db	"SCE_F_STRINGEOL",0
_2118:
	db	"SCE_F_OPERATOR",0
_2119:
	db	"SCE_F_IDENTIFIER",0
_2120:
	db	"SCE_F_WORD",0
_2121:
	db	"SCE_F_WORD2",0
_2122:
	db	"SCE_F_WORD3",0
_2123:
	db	"SCE_F_PREPROCESSOR",0
_2124:
	db	"SCE_F_OPERATOR2",0
_2125:
	db	"SCE_F_LABEL",0
_2126:
	db	"SCE_F_CONTINUATION",0
_2127:
	db	"SCE_CSS_DEFAULT",0
_2128:
	db	"SCE_CSS_TAG",0
_2129:
	db	"SCE_CSS_CLASS",0
_2130:
	db	"SCE_CSS_PSEUDOCLASS",0
_2131:
	db	"SCE_CSS_UNKNOWN_PSEUDOCLASS",0
_2132:
	db	"SCE_CSS_OPERATOR",0
_2133:
	db	"SCE_CSS_IDENTIFIER",0
_2134:
	db	"SCE_CSS_UNKNOWN_IDENTIFIER",0
_2135:
	db	"SCE_CSS_VALUE",0
_2136:
	db	"SCE_CSS_COMMENT",0
_2137:
	db	"SCE_CSS_ID",0
_2138:
	db	"SCE_CSS_IMPORTANT",0
_2139:
	db	"SCE_CSS_DIRECTIVE",0
_2140:
	db	"SCE_CSS_DOUBLESTRING",0
_2141:
	db	"SCE_CSS_SINGLESTRING",0
_2142:
	db	"SCE_CSS_IDENTIFIER2",0
_2143:
	db	"SCE_CSS_ATTRIBUTE",0
_2144:
	db	"SCE_POV_DEFAULT",0
_2145:
	db	"SCE_POV_COMMENT",0
_2146:
	db	"SCE_POV_COMMENTLINE",0
_2147:
	db	"SCE_POV_NUMBER",0
_2148:
	db	"SCE_POV_OPERATOR",0
_2149:
	db	"SCE_POV_IDENTIFIER",0
_2150:
	db	"SCE_POV_STRING",0
_2151:
	db	"SCE_POV_STRINGEOL",0
_2152:
	db	"SCE_POV_DIRECTIVE",0
_2153:
	db	"SCE_POV_BADDIRECTIVE",0
_2154:
	db	"SCE_POV_WORD2",0
_2155:
	db	"SCE_POV_WORD3",0
_2156:
	db	"SCE_POV_WORD4",0
_2157:
	db	"SCE_POV_WORD5",0
_2158:
	db	"SCE_POV_WORD6",0
_2159:
	db	"SCE_POV_WORD7",0
_2160:
	db	"SCE_POV_WORD8",0
_2161:
	db	"SCE_LOUT_DEFAULT",0
_2162:
	db	"SCE_LOUT_COMMENT",0
_2163:
	db	"SCE_LOUT_NUMBER",0
_2164:
	db	"SCE_LOUT_WORD",0
_2165:
	db	"SCE_LOUT_WORD2",0
_2166:
	db	"SCE_LOUT_WORD3",0
_2167:
	db	"SCE_LOUT_WORD4",0
_2168:
	db	"SCE_LOUT_STRING",0
_2169:
	db	"SCE_LOUT_OPERATOR",0
_2170:
	db	"SCE_LOUT_IDENTIFIER",0
_2171:
	db	"SCE_LOUT_STRINGEOL",0
_2172:
	db	"SCE_ESCRIPT_DEFAULT",0
_2173:
	db	"SCE_ESCRIPT_COMMENT",0
_2174:
	db	"SCE_ESCRIPT_COMMENTLINE",0
_2175:
	db	"SCE_ESCRIPT_COMMENTDOC",0
_2176:
	db	"SCE_ESCRIPT_NUMBER",0
_2177:
	db	"SCE_ESCRIPT_WORD",0
_2178:
	db	"SCE_ESCRIPT_STRING",0
_2179:
	db	"SCE_ESCRIPT_OPERATOR",0
_2180:
	db	"SCE_ESCRIPT_IDENTIFIER",0
_2181:
	db	"SCE_ESCRIPT_BRACE",0
_2182:
	db	"SCE_ESCRIPT_WORD2",0
_2183:
	db	"SCE_ESCRIPT_WORD3",0
_2184:
	db	"SCE_PS_DEFAULT",0
_2185:
	db	"SCE_PS_COMMENT",0
_2186:
	db	"SCE_PS_DSC_COMMENT",0
_2187:
	db	"SCE_PS_DSC_VALUE",0
_2188:
	db	"SCE_PS_NUMBER",0
_2189:
	db	"SCE_PS_NAME",0
_2190:
	db	"SCE_PS_KEYWORD",0
_2191:
	db	"SCE_PS_LITERAL",0
_2192:
	db	"SCE_PS_IMMEVAL",0
_2193:
	db	"SCE_PS_PAREN_ARRAY",0
_2194:
	db	"SCE_PS_PAREN_DICT",0
_2195:
	db	"SCE_PS_PAREN_PROC",0
_2196:
	db	"SCE_PS_TEXT",0
_2197:
	db	"SCE_PS_HEXSTRING",0
_2198:
	db	"SCE_PS_BASE85STRING",0
_2199:
	db	"SCE_PS_BADSTRINGCHAR",0
_2200:
	db	"SCE_NSIS_DEFAULT",0
_2201:
	db	"SCE_NSIS_COMMENT",0
_2202:
	db	"SCE_NSIS_STRINGDQ",0
_2203:
	db	"SCE_NSIS_STRINGLQ",0
_2204:
	db	"SCE_NSIS_STRINGRQ",0
_2205:
	db	"SCE_NSIS_FUNCTION",0
_2206:
	db	"SCE_NSIS_VARIABLE",0
_2207:
	db	"SCE_NSIS_LABEL",0
_2208:
	db	"SCE_NSIS_USERDEFINED",0
_2209:
	db	"SCE_NSIS_SECTIONDEF",0
_2210:
	db	"SCE_NSIS_SUBSECTIONDEF",0
_2211:
	db	"SCE_NSIS_IFDEFINEDEF",0
_2212:
	db	"SCE_NSIS_MACRODEF",0
_2213:
	db	"SCE_NSIS_STRINGVAR",0
_2214:
	db	"SCE_NSIS_NUMBER",0
_2215:
	db	"SCE_NSIS_SECTIONGROUP",0
_2216:
	db	"SCE_NSIS_PAGEEX",0
_2217:
	db	"SCE_NSIS_FUNCTIONDEF",0
_2218:
	db	"SCE_NSIS_COMMENTBOX",0
_2219:
	db	"SCE_MMIXAL_LEADWS",0
_2220:
	db	"SCE_MMIXAL_COMMENT",0
_2221:
	db	"SCE_MMIXAL_LABEL",0
_2222:
	db	"SCE_MMIXAL_OPCODE",0
_2223:
	db	"SCE_MMIXAL_OPCODE_PRE",0
_2224:
	db	"SCE_MMIXAL_OPCODE_VALID",0
_2225:
	db	"SCE_MMIXAL_OPCODE_UNKNOWN",0
_2226:
	db	"SCE_MMIXAL_OPCODE_POST",0
_2227:
	db	"SCE_MMIXAL_OPERANDS",0
_2228:
	db	"SCE_MMIXAL_NUMBER",0
_2229:
	db	"SCE_MMIXAL_REF",0
_2230:
	db	"SCE_MMIXAL_CHAR",0
_2231:
	db	"SCE_MMIXAL_STRING",0
_2232:
	db	"SCE_MMIXAL_REGISTER",0
_2233:
	db	"SCE_MMIXAL_HEX",0
_2234:
	db	"SCE_MMIXAL_OPERATOR",0
_2235:
	db	"SCE_MMIXAL_SYMBOL",0
_2236:
	db	"SCE_MMIXAL_INCLUDE",0
_2237:
	db	"SCE_CLW_DEFAULT",0
_2238:
	db	"SCE_CLW_LABEL",0
_2239:
	db	"SCE_CLW_COMMENT",0
_2240:
	db	"SCE_CLW_STRING",0
_2241:
	db	"SCE_CLW_USER_IDENTIFIER",0
_2242:
	db	"SCE_CLW_INTEGER_CONSTANT",0
_2243:
	db	"SCE_CLW_REAL_CONSTANT",0
_2244:
	db	"SCE_CLW_PICTURE_STRING",0
_2245:
	db	"SCE_CLW_KEYWORD",0
_2246:
	db	"SCE_CLW_COMPILER_DIRECTIVE",0
_2247:
	db	"SCE_CLW_RUNTIME_EXPRESSIONS",0
_2248:
	db	"SCE_CLW_BUILTIN_PROCEDURES_FUNCTION",0
_2249:
	db	"SCE_CLW_STRUCTURE_DATA_TYPE",0
_2250:
	db	"SCE_CLW_ATTRIBUTE",0
_2251:
	db	"SCE_CLW_STANDARD_EQUATE",0
_2252:
	db	"SCE_CLW_ERROR",0
_2253:
	db	"SCE_CLW_DEPRECATED",0
_2254:
	db	"SCE_LOT_DEFAULT",0
_2255:
	db	"SCE_LOT_HEADER",0
_2256:
	db	"SCE_LOT_BREAK",0
_2257:
	db	"SCE_LOT_SET",0
_2258:
	db	"SCE_LOT_PASS",0
_2259:
	db	"SCE_LOT_FAIL",0
_2260:
	db	"SCE_LOT_ABORT",0
_2261:
	db	"SCE_YAML_DEFAULT",0
_2262:
	db	"SCE_YAML_COMMENT",0
_2263:
	db	"SCE_YAML_IDENTIFIER",0
_2264:
	db	"SCE_YAML_KEYWORD",0
_2265:
	db	"SCE_YAML_NUMBER",0
_2266:
	db	"SCE_YAML_REFERENCE",0
_2267:
	db	"SCE_YAML_DOCUMENT",0
_2268:
	db	"SCE_YAML_TEXT",0
_2269:
	db	"SCE_YAML_ERROR",0
_2270:
	db	"SCE_TEX_DEFAULT",0
_2271:
	db	"SCE_TEX_SPECIAL",0
_2272:
	db	"SCE_TEX_GROUP",0
_2273:
	db	"SCE_TEX_SYMBOL",0
_2274:
	db	"SCE_TEX_COMMAND",0
_2275:
	db	"SCE_TEX_TEXT",0
_2276:
	db	"SCE_METAPOST_DEFAULT",0
_2277:
	db	"SCE_METAPOST_SPECIAL",0
_2278:
	db	"SCE_METAPOST_GROUP",0
_2279:
	db	"SCE_METAPOST_SYMBOL",0
_2280:
	db	"SCE_METAPOST_COMMAND",0
_2281:
	db	"SCE_METAPOST_TEXT",0
_2282:
	db	"SCE_METAPOST_EXTRA",0
_2283:
	db	"SCE_ERLANG_DEFAULT",0
_2284:
	db	"SCE_ERLANG_COMMENT",0
_2285:
	db	"SCE_ERLANG_VARIABLE",0
_2286:
	db	"SCE_ERLANG_NUMBER",0
_2287:
	db	"SCE_ERLANG_KEYWORD",0
_2288:
	db	"SCE_ERLANG_STRING",0
_2289:
	db	"SCE_ERLANG_OPERATOR",0
_2290:
	db	"SCE_ERLANG_ATOM",0
_2291:
	db	"SCE_ERLANG_FUNCTION_NAME",0
_2292:
	db	"SCE_ERLANG_CHARACTER",0
_2293:
	db	"SCE_ERLANG_MACRO",0
_2294:
	db	"SCE_ERLANG_RECORD",0
_2295:
	db	"SCE_ERLANG_SEPARATOR",0
_2296:
	db	"SCE_ERLANG_NODE_NAME",0
_2297:
	db	"SCE_ERLANG_UNKNOWN",0
_2298:
	db	"SCE_MSSQL_DEFAULT",0
_2299:
	db	"SCE_MSSQL_COMMENT",0
_2300:
	db	"SCE_MSSQL_LINE_COMMENT",0
_2301:
	db	"SCE_MSSQL_NUMBER",0
_2302:
	db	"SCE_MSSQL_STRING",0
_2303:
	db	"SCE_MSSQL_OPERATOR",0
_2304:
	db	"SCE_MSSQL_IDENTIFIER",0
_2305:
	db	"SCE_MSSQL_VARIABLE",0
_2306:
	db	"SCE_MSSQL_COLUMN_NAME",0
_2307:
	db	"SCE_MSSQL_STATEMENT",0
_2308:
	db	"SCE_MSSQL_DATATYPE",0
_2309:
	db	"SCE_MSSQL_SYSTABLE",0
_2310:
	db	"SCE_MSSQL_GLOBAL_VARIABLE",0
_2311:
	db	"SCE_MSSQL_FUNCTION",0
_2312:
	db	"SCE_MSSQL_STORED_PROCEDURE",0
_2313:
	db	"SCE_MSSQL_DEFAULT_PREF_DATATYPE",0
_2314:
	db	"SCE_MSSQL_COLUMN_NAME_2",0
_2315:
	db	"SCE_V_DEFAULT",0
_2316:
	db	"SCE_V_COMMENT",0
_2317:
	db	"SCE_V_COMMENTLINE",0
_2318:
	db	"SCE_V_COMMENTLINEBANG",0
_2319:
	db	"SCE_V_NUMBER",0
_2320:
	db	"SCE_V_WORD",0
_2321:
	db	"SCE_V_STRING",0
_2322:
	db	"SCE_V_WORD2",0
_2323:
	db	"SCE_V_WORD3",0
_2324:
	db	"SCE_V_PREPROCESSOR",0
_2325:
	db	"SCE_V_OPERATOR",0
_2326:
	db	"SCE_V_IDENTIFIER",0
_2327:
	db	"SCE_V_STRINGEOL",0
_2328:
	db	"SCE_V_USER",0
_2329:
	db	"SCE_KIX_DEFAULT",0
_2330:
	db	"SCE_KIX_COMMENT",0
_2331:
	db	"SCE_KIX_STRING1",0
_2332:
	db	"SCE_KIX_STRING2",0
_2333:
	db	"SCE_KIX_NUMBER",0
_2334:
	db	"SCE_KIX_VAR",0
_2335:
	db	"SCE_KIX_MACRO",0
_2336:
	db	"SCE_KIX_KEYWORD",0
_2337:
	db	"SCE_KIX_FUNCTIONS",0
_2338:
	db	"SCE_KIX_OPERATOR",0
_2339:
	db	"SCE_KIX_IDENTIFIER",0
_2340:
	db	"SCE_GC_DEFAULT",0
_2341:
	db	"SCE_GC_COMMENTLINE",0
_2342:
	db	"SCE_GC_COMMENTBLOCK",0
_2343:
	db	"SCE_GC_GLOBAL",0
_2344:
	db	"SCE_GC_EVENT",0
_2345:
	db	"SCE_GC_ATTRIBUTE",0
_2346:
	db	"SCE_GC_CONTROL",0
_2347:
	db	"SCE_GC_COMMAND",0
_2348:
	db	"SCE_GC_STRING",0
_2349:
	db	"SCE_GC_OPERATOR",0
_2350:
	db	"SCE_SN_DEFAULT",0
_2351:
	db	"SCE_SN_CODE",0
_2352:
	db	"SCE_SN_COMMENTLINE",0
_2353:
	db	"SCE_SN_COMMENTLINEBANG",0
_2354:
	db	"SCE_SN_NUMBER",0
_2355:
	db	"SCE_SN_WORD",0
_2356:
	db	"SCE_SN_STRING",0
_2357:
	db	"SCE_SN_WORD2",0
_2358:
	db	"SCE_SN_WORD3",0
_2359:
	db	"SCE_SN_PREPROCESSOR",0
_2360:
	db	"SCE_SN_OPERATOR",0
_2361:
	db	"SCE_SN_IDENTIFIER",0
_2362:
	db	"SCE_SN_STRINGEOL",0
_2363:
	db	"SCE_SN_REGEXTAG",0
_2364:
	db	"SCE_SN_SIGNAL",0
_2365:
	db	"SCE_SN_USER",0
_2366:
	db	"SCE_AU3_DEFAULT",0
_2367:
	db	"SCE_AU3_COMMENT",0
_2368:
	db	"SCE_AU3_COMMENTBLOCK",0
_2369:
	db	"SCE_AU3_NUMBER",0
_2370:
	db	"SCE_AU3_FUNCTION",0
_2371:
	db	"SCE_AU3_KEYWORD",0
_2372:
	db	"SCE_AU3_MACRO",0
_2373:
	db	"SCE_AU3_STRING",0
_2374:
	db	"SCE_AU3_OPERATOR",0
_2375:
	db	"SCE_AU3_VARIABLE",0
_2376:
	db	"SCE_AU3_SENT",0
_2377:
	db	"SCE_AU3_PREPROCESSOR",0
_2378:
	db	"SCE_AU3_SPECIAL",0
_2379:
	db	"SCE_AU3_EXPAND",0
_2380:
	db	"SCE_AU3_COMOBJ",0
_2381:
	db	"SCE_APDL_DEFAULT",0
_2382:
	db	"SCE_APDL_COMMENT",0
_2383:
	db	"SCE_APDL_COMMENTBLOCK",0
_2384:
	db	"SCE_APDL_NUMBER",0
_2385:
	db	"SCE_APDL_STRING",0
_2386:
	db	"SCE_APDL_OPERATOR",0
_2387:
	db	"SCE_APDL_WORD",0
_2388:
	db	"SCE_APDL_PROCESSOR",0
_2389:
	db	"SCE_APDL_COMMAND",0
_2390:
	db	"SCE_APDL_SLASHCOMMAND",0
_2391:
	db	"SCE_APDL_STARCOMMAND",0
_2392:
	db	"SCE_APDL_ARGUMENT",0
_2393:
	db	"SCE_APDL_FUNCTION",0
_2394:
	db	"SCE_SH_DEFAULT",0
_2395:
	db	"SCE_SH_ERROR",0
_2396:
	db	"SCE_SH_COMMENTLINE",0
_2397:
	db	"SCE_SH_NUMBER",0
_2398:
	db	"SCE_SH_WORD",0
_2399:
	db	"SCE_SH_STRING",0
_2400:
	db	"SCE_SH_CHARACTER",0
_2401:
	db	"SCE_SH_OPERATOR",0
_2402:
	db	"SCE_SH_IDENTIFIER",0
_2403:
	db	"SCE_SH_SCALAR",0
_2404:
	db	"SCE_SH_PARAM",0
_2405:
	db	"SCE_SH_BACKTICKS",0
_2406:
	db	"SCE_SH_HERE_DELIM",0
_2407:
	db	"SCE_SH_HERE_Q",0
_2408:
	db	"SCE_ASN1_DEFAULT",0
_2409:
	db	"SCE_ASN1_COMMENT",0
_2410:
	db	"SCE_ASN1_IDENTIFIER",0
_2411:
	db	"SCE_ASN1_STRING",0
_2412:
	db	"SCE_ASN1_OID",0
_2413:
	db	"SCE_ASN1_SCALAR",0
_2414:
	db	"SCE_ASN1_KEYWORD",0
_2415:
	db	"SCE_ASN1_ATTRIBUTE",0
_2416:
	db	"SCE_ASN1_DESCRIPTOR",0
_2417:
	db	"SCE_ASN1_TYPE",0
_2418:
	db	"SCE_ASN1_OPERATOR",0
_2419:
	db	"SCE_VHDL_DEFAULT",0
_2420:
	db	"SCE_VHDL_COMMENT",0
_2421:
	db	"SCE_VHDL_COMMENTLINEBANG",0
_2422:
	db	"SCE_VHDL_NUMBER",0
_2423:
	db	"SCE_VHDL_STRING",0
_2424:
	db	"SCE_VHDL_OPERATOR",0
_2425:
	db	"SCE_VHDL_IDENTIFIER",0
_2426:
	db	"SCE_VHDL_STRINGEOL",0
_2427:
	db	"SCE_VHDL_KEYWORD",0
_2428:
	db	"SCE_VHDL_STDOPERATOR",0
_2429:
	db	"SCE_VHDL_ATTRIBUTE",0
_2430:
	db	"SCE_VHDL_STDFUNCTION",0
_2431:
	db	"SCE_VHDL_STDPACKAGE",0
_2432:
	db	"SCE_VHDL_STDTYPE",0
_2433:
	db	"SCE_VHDL_USERWORD",0
_2434:
	db	"SCE_CAML_DEFAULT",0
_2435:
	db	"SCE_CAML_IDENTIFIER",0
_2436:
	db	"SCE_CAML_TAGNAME",0
_2437:
	db	"SCE_CAML_KEYWORD",0
_2438:
	db	"SCE_CAML_KEYWORD2",0
_2439:
	db	"SCE_CAML_KEYWORD3",0
_2440:
	db	"SCE_CAML_LINENUM",0
_2441:
	db	"SCE_CAML_OPERATOR",0
_2442:
	db	"SCE_CAML_NUMBER",0
_2443:
	db	"SCE_CAML_CHAR",0
_2444:
	db	"SCE_CAML_STRING",0
_2445:
	db	"SCE_CAML_COMMENT",0
_2446:
	db	"SCE_CAML_COMMENT1",0
_2447:
	db	"SCE_CAML_COMMENT2",0
_2448:
	db	"SCE_CAML_COMMENT3",0
_2449:
	db	"SCE_HA_DEFAULT",0
_2450:
	db	"SCE_HA_IDENTIFIER",0
_2451:
	db	"SCE_HA_KEYWORD",0
_2452:
	db	"SCE_HA_NUMBER",0
_2453:
	db	"SCE_HA_STRING",0
_2454:
	db	"SCE_HA_CHARACTER",0
_2455:
	db	"SCE_HA_CLASS",0
_2456:
	db	"SCE_HA_MODULE",0
_2457:
	db	"SCE_HA_CAPITAL",0
_2458:
	db	"SCE_HA_DATA",0
_2459:
	db	"SCE_HA_IMPORT",0
_2460:
	db	"SCE_HA_OPERATOR",0
_2461:
	db	"SCE_HA_INSTANCE",0
_2462:
	db	"SCE_HA_COMMENTLINE",0
_2463:
	db	"SCE_HA_COMMENTBLOCK",0
_2464:
	db	"SCE_HA_COMMENTBLOCK2",0
_2465:
	db	"SCE_HA_COMMENTBLOCK3",0
_2466:
	db	"SCE_T3_DEFAULT",0
_2467:
	db	"SCE_T3_X_DEFAULT",0
_2468:
	db	"SCE_T3_PREPROCESSOR",0
_2469:
	db	"SCE_T3_BLOCK_COMMENT",0
_2470:
	db	"SCE_T3_LINE_COMMENT",0
_2471:
	db	"SCE_T3_OPERATOR",0
_2472:
	db	"SCE_T3_KEYWORD",0
_2473:
	db	"SCE_T3_NUMBER",0
_2474:
	db	"SCE_T3_IDENTIFIER",0
_2475:
	db	"SCE_T3_S_STRING",0
_2476:
	db	"SCE_T3_D_STRING",0
_2477:
	db	"SCE_T3_X_STRING",0
_2478:
	db	"SCE_T3_LIB_DIRECTIVE",0
_2479:
	db	"SCE_T3_MSG_PARAM",0
_2480:
	db	"SCE_T3_HTML_TAG",0
_2481:
	db	"SCE_T3_HTML_DEFAULT",0
_2482:
	db	"SCE_T3_HTML_STRING",0
_2483:
	db	"SCE_T3_USER1",0
_2484:
	db	"SCE_T3_USER2",0
_2485:
	db	"SCE_T3_USER3",0
_2486:
	db	"SCE_REBOL_DEFAULT",0
_2487:
	db	"SCE_REBOL_COMMENTLINE",0
_2488:
	db	"SCE_REBOL_COMMENTBLOCK",0
_2489:
	db	"SCE_REBOL_PREFACE",0
_2490:
	db	"SCE_REBOL_OPERATOR",0
_2491:
	db	"SCE_REBOL_CHARACTER",0
_2492:
	db	"SCE_REBOL_QUOTEDSTRING",0
_2493:
	db	"SCE_REBOL_BRACEDSTRING",0
_2494:
	db	"SCE_REBOL_NUMBER",0
_2495:
	db	"SCE_REBOL_PAIR",0
_2496:
	db	"SCE_REBOL_TUPLE",0
_2497:
	db	"SCE_REBOL_BINARY",0
_2498:
	db	"SCE_REBOL_MONEY",0
_2499:
	db	"SCE_REBOL_ISSUE",0
_2500:
	db	"SCE_REBOL_TAG",0
_2501:
	db	"SCE_REBOL_FILE",0
_2502:
	db	"SCE_REBOL_EMAIL",0
_2503:
	db	"SCE_REBOL_URL",0
_2504:
	db	"SCE_REBOL_DATE",0
_2505:
	db	"SCE_REBOL_TIME",0
_2506:
	db	"SCE_REBOL_IDENTIFIER",0
_2507:
	db	"SCE_REBOL_WORD",0
_2508:
	db	"SCE_REBOL_WORD2",0
_2509:
	db	"SCE_REBOL_WORD3",0
_2510:
	db	"SCE_REBOL_WORD4",0
_2511:
	db	"SCE_REBOL_WORD5",0
_2512:
	db	"SCE_REBOL_WORD6",0
_2513:
	db	"SCE_REBOL_WORD7",0
_2514:
	db	"SCE_REBOL_WORD8",0
_2515:
	db	"SCE_SQL_DEFAULT",0
_2516:
	db	"SCE_SQL_COMMENT",0
_2517:
	db	"SCE_SQL_COMMENTLINE",0
_2518:
	db	"SCE_SQL_COMMENTDOC",0
_2519:
	db	"SCE_SQL_NUMBER",0
_2520:
	db	"SCE_SQL_WORD",0
_2521:
	db	"SCE_SQL_STRING",0
_2522:
	db	"SCE_SQL_CHARACTER",0
_2523:
	db	"SCE_SQL_SQLPLUS",0
_2524:
	db	"SCE_SQL_SQLPLUS_PROMPT",0
_2525:
	db	"SCE_SQL_OPERATOR",0
_2526:
	db	"SCE_SQL_IDENTIFIER",0
_2527:
	db	"SCE_SQL_SQLPLUS_COMMENT",0
_2528:
	db	"SCE_SQL_COMMENTLINEDOC",0
_2529:
	db	"SCE_SQL_WORD2",0
_2530:
	db	"SCE_SQL_COMMENTDOCKEYWORD",0
_2531:
	db	"SCE_SQL_COMMENTDOCKEYWORDERROR",0
_2532:
	db	"SCE_SQL_USER1",0
_2533:
	db	"SCE_SQL_USER2",0
_2534:
	db	"SCE_SQL_USER3",0
_2535:
	db	"SCE_SQL_USER4",0
_2536:
	db	"SCE_SQL_QUOTEDIDENTIFIER",0
_2537:
	db	"SCE_ST_DEFAULT",0
_2538:
	db	"SCE_ST_STRING",0
_2539:
	db	"SCE_ST_NUMBER",0
_2540:
	db	"SCE_ST_COMMENT",0
_2541:
	db	"SCE_ST_SYMBOL",0
_2542:
	db	"SCE_ST_BINARY",0
_2543:
	db	"SCE_ST_BOOL",0
_2544:
	db	"SCE_ST_SELF",0
_2545:
	db	"SCE_ST_SUPER",0
_2546:
	db	"SCE_ST_NIL",0
_2547:
	db	"SCE_ST_GLOBAL",0
_2548:
	db	"SCE_ST_RETURN",0
_2549:
	db	"SCE_ST_SPECIAL",0
_2550:
	db	"SCE_ST_KWSEND",0
_2551:
	db	"SCE_ST_ASSIGN",0
_2552:
	db	"SCE_ST_CHARACTER",0
_2553:
	db	"SCE_ST_SPEC_SEL",0
_2554:
	db	"SCE_FS_DEFAULT",0
_2555:
	db	"SCE_FS_COMMENT",0
_2556:
	db	"SCE_FS_COMMENTLINE",0
_2557:
	db	"SCE_FS_COMMENTDOC",0
_2558:
	db	"SCE_FS_COMMENTLINEDOC",0
_2559:
	db	"SCE_FS_COMMENTDOCKEYWORD",0
_2560:
	db	"SCE_FS_COMMENTDOCKEYWORDERROR",0
_2561:
	db	"SCE_FS_KEYWORD",0
_2562:
	db	"SCE_FS_KEYWORD2",0
_2563:
	db	"SCE_FS_KEYWORD3",0
_2564:
	db	"SCE_FS_KEYWORD4",0
_2565:
	db	"SCE_FS_NUMBER",0
_2566:
	db	"SCE_FS_STRING",0
_2567:
	db	"SCE_FS_PREPROCESSOR",0
_2568:
	db	"SCE_FS_OPERATOR",0
_2569:
	db	"SCE_FS_IDENTIFIER",0
_2570:
	db	"SCE_FS_DATE",0
_2571:
	db	"SCE_FS_STRINGEOL",0
_2572:
	db	"SCE_FS_CONSTANT",0
_2573:
	db	"SCE_FS_ASM",0
_2574:
	db	"SCE_FS_LABEL",0
_2575:
	db	"SCE_FS_ERROR",0
_2576:
	db	"SCE_FS_HEXNUMBER",0
_2577:
	db	"SCE_FS_BINNUMBER",0
_2578:
	db	"SCE_CSOUND_DEFAULT",0
_2579:
	db	"SCE_CSOUND_COMMENT",0
_2580:
	db	"SCE_CSOUND_NUMBER",0
_2581:
	db	"SCE_CSOUND_OPERATOR",0
_2582:
	db	"SCE_CSOUND_INSTR",0
_2583:
	db	"SCE_CSOUND_IDENTIFIER",0
_2584:
	db	"SCE_CSOUND_OPCODE",0
_2585:
	db	"SCE_CSOUND_HEADERSTMT",0
_2586:
	db	"SCE_CSOUND_USERKEYWORD",0
_2587:
	db	"SCE_CSOUND_COMMENTBLOCK",0
_2588:
	db	"SCE_CSOUND_PARAM",0
_2589:
	db	"SCE_CSOUND_ARATE_VAR",0
_2590:
	db	"SCE_CSOUND_KRATE_VAR",0
_2591:
	db	"SCE_CSOUND_IRATE_VAR",0
_2592:
	db	"SCE_CSOUND_GLOBAL_VAR",0
_2593:
	db	"SCE_CSOUND_STRINGEOL",0
_2594:
	db	"SCE_INNO_DEFAULT",0
_2595:
	db	"SCE_INNO_COMMENT",0
_2596:
	db	"SCE_INNO_KEYWORD",0
_2597:
	db	"SCE_INNO_PARAMETER",0
_2598:
	db	"SCE_INNO_SECTION",0
_2599:
	db	"SCE_INNO_PREPROC",0
_2600:
	db	"SCE_INNO_PREPROC_INLINE",0
_2601:
	db	"SCE_INNO_COMMENT_PASCAL",0
_2602:
	db	"SCE_INNO_KEYWORD_PASCAL",0
_2603:
	db	"SCE_INNO_KEYWORD_USER",0
_2604:
	db	"SCE_INNO_STRING_DOUBLE",0
_2605:
	db	"SCE_INNO_STRING_SINGLE",0
_2606:
	db	"SCE_INNO_IDENTIFIER",0
_2607:
	db	"SCE_OPAL_SPACE",0
_2608:
	db	"SCE_OPAL_COMMENT_BLOCK",0
_2609:
	db	"SCE_OPAL_COMMENT_LINE",0
_2610:
	db	"SCE_OPAL_INTEGER",0
_2611:
	db	"SCE_OPAL_KEYWORD",0
_2612:
	db	"SCE_OPAL_SORT",0
_2613:
	db	"SCE_OPAL_STRING",0
_2614:
	db	"SCE_OPAL_PAR",0
_2615:
	db	"SCE_OPAL_BOOL_CONST",0
_2616:
	db	"SCE_OPAL_DEFAULT",0
_2617:
	db	"SCLEX_ASP",0
_2618:
	db	"SCLEX_PHP",0
	align	4
_290:
	dd	1
	dd	_291
	dd	1
	dd	_292
	dd	_17
	dd	_293
	dd	1
	dd	_294
	dd	_17
	dd	_295
	dd	1
	dd	_296
	dd	_17
	dd	_297
	dd	1
	dd	_298
	dd	_17
	dd	_299
	dd	1
	dd	_300
	dd	_17
	dd	_301
	dd	1
	dd	_302
	dd	_17
	dd	_303
	dd	1
	dd	_304
	dd	_17
	dd	_305
	dd	1
	dd	_306
	dd	_17
	dd	_307
	dd	1
	dd	_308
	dd	_17
	dd	_309
	dd	1
	dd	_310
	dd	_17
	dd	_311
	dd	1
	dd	_312
	dd	_17
	dd	_313
	dd	1
	dd	_314
	dd	_17
	dd	_315
	dd	1
	dd	_316
	dd	_17
	dd	_317
	dd	1
	dd	_318
	dd	_17
	dd	_319
	dd	1
	dd	_320
	dd	_17
	dd	_321
	dd	1
	dd	_322
	dd	_17
	dd	_323
	dd	1
	dd	_324
	dd	_17
	dd	_325
	dd	1
	dd	_326
	dd	_17
	dd	_327
	dd	1
	dd	_328
	dd	_17
	dd	_329
	dd	1
	dd	_330
	dd	_17
	dd	_331
	dd	1
	dd	_332
	dd	_17
	dd	_333
	dd	1
	dd	_334
	dd	_17
	dd	_335
	dd	1
	dd	_336
	dd	_17
	dd	_337
	dd	1
	dd	_338
	dd	_17
	dd	_339
	dd	1
	dd	_340
	dd	_17
	dd	_341
	dd	1
	dd	_342
	dd	_17
	dd	_343
	dd	1
	dd	_344
	dd	_17
	dd	_345
	dd	1
	dd	_346
	dd	_17
	dd	_347
	dd	1
	dd	_348
	dd	_17
	dd	_349
	dd	1
	dd	_350
	dd	_17
	dd	_351
	dd	1
	dd	_352
	dd	_17
	dd	_353
	dd	1
	dd	_354
	dd	_17
	dd	_355
	dd	1
	dd	_356
	dd	_17
	dd	_357
	dd	1
	dd	_358
	dd	_17
	dd	_359
	dd	1
	dd	_360
	dd	_17
	dd	_361
	dd	1
	dd	_362
	dd	_17
	dd	_339
	dd	1
	dd	_363
	dd	_17
	dd	_341
	dd	1
	dd	_364
	dd	_17
	dd	_343
	dd	1
	dd	_365
	dd	_17
	dd	_366
	dd	1
	dd	_367
	dd	_17
	dd	_368
	dd	1
	dd	_369
	dd	_17
	dd	_370
	dd	1
	dd	_371
	dd	_17
	dd	_372
	dd	1
	dd	_373
	dd	_17
	dd	_374
	dd	1
	dd	_375
	dd	_17
	dd	_376
	dd	1
	dd	_377
	dd	_17
	dd	_378
	dd	1
	dd	_379
	dd	_17
	dd	_380
	dd	1
	dd	_381
	dd	_17
	dd	_382
	dd	1
	dd	_383
	dd	_17
	dd	_384
	dd	1
	dd	_385
	dd	_17
	dd	_341
	dd	1
	dd	_386
	dd	_17
	dd	_387
	dd	1
	dd	_388
	dd	_17
	dd	_389
	dd	1
	dd	_390
	dd	_17
	dd	_391
	dd	1
	dd	_392
	dd	_17
	dd	_339
	dd	1
	dd	_393
	dd	_17
	dd	_341
	dd	1
	dd	_394
	dd	_17
	dd	_343
	dd	1
	dd	_395
	dd	_17
	dd	_396
	dd	1
	dd	_397
	dd	_17
	dd	_398
	dd	1
	dd	_399
	dd	_17
	dd	_400
	dd	1
	dd	_401
	dd	_17
	dd	_402
	dd	1
	dd	_403
	dd	_17
	dd	_404
	dd	1
	dd	_405
	dd	_17
	dd	_406
	dd	1
	dd	_407
	dd	_17
	dd	_408
	dd	1
	dd	_409
	dd	_17
	dd	_410
	dd	1
	dd	_411
	dd	_17
	dd	_412
	dd	1
	dd	_413
	dd	_17
	dd	_414
	dd	1
	dd	_415
	dd	_17
	dd	_416
	dd	1
	dd	_417
	dd	_17
	dd	_418
	dd	1
	dd	_419
	dd	_17
	dd	_420
	dd	1
	dd	_421
	dd	_17
	dd	_422
	dd	1
	dd	_423
	dd	_17
	dd	_424
	dd	1
	dd	_425
	dd	_17
	dd	_426
	dd	1
	dd	_427
	dd	_17
	dd	_428
	dd	1
	dd	_429
	dd	_17
	dd	_430
	dd	1
	dd	_431
	dd	_17
	dd	_432
	dd	1
	dd	_433
	dd	_17
	dd	_434
	dd	1
	dd	_435
	dd	_17
	dd	_436
	dd	1
	dd	_437
	dd	_17
	dd	_438
	dd	1
	dd	_439
	dd	_17
	dd	_440
	dd	1
	dd	_441
	dd	_17
	dd	_442
	dd	1
	dd	_443
	dd	_17
	dd	_444
	dd	1
	dd	_445
	dd	_17
	dd	_440
	dd	1
	dd	_446
	dd	_17
	dd	_442
	dd	1
	dd	_447
	dd	_17
	dd	_448
	dd	1
	dd	_449
	dd	_17
	dd	_450
	dd	1
	dd	_451
	dd	_17
	dd	_452
	dd	1
	dd	_453
	dd	_17
	dd	_454
	dd	1
	dd	_455
	dd	_17
	dd	_391
	dd	1
	dd	_456
	dd	_17
	dd	_457
	dd	1
	dd	_458
	dd	_17
	dd	_459
	dd	1
	dd	_460
	dd	_17
	dd	_461
	dd	1
	dd	_462
	dd	_17
	dd	_463
	dd	1
	dd	_464
	dd	_17
	dd	_465
	dd	1
	dd	_466
	dd	_17
	dd	_467
	dd	1
	dd	_468
	dd	_17
	dd	_469
	dd	1
	dd	_470
	dd	_17
	dd	_471
	dd	1
	dd	_472
	dd	_17
	dd	_473
	dd	1
	dd	_474
	dd	_17
	dd	_475
	dd	1
	dd	_476
	dd	_17
	dd	_477
	dd	1
	dd	_478
	dd	_17
	dd	_479
	dd	1
	dd	_480
	dd	_17
	dd	_339
	dd	1
	dd	_481
	dd	_17
	dd	_341
	dd	1
	dd	_482
	dd	_17
	dd	_483
	dd	1
	dd	_484
	dd	_17
	dd	_485
	dd	1
	dd	_486
	dd	_17
	dd	_487
	dd	1
	dd	_488
	dd	_17
	dd	_489
	dd	1
	dd	_490
	dd	_17
	dd	_491
	dd	1
	dd	_492
	dd	_17
	dd	_493
	dd	1
	dd	_494
	dd	_17
	dd	_495
	dd	1
	dd	_496
	dd	_17
	dd	_497
	dd	1
	dd	_498
	dd	_17
	dd	_499
	dd	1
	dd	_500
	dd	_17
	dd	_501
	dd	1
	dd	_502
	dd	_17
	dd	_503
	dd	1
	dd	_504
	dd	_17
	dd	_505
	dd	1
	dd	_506
	dd	_17
	dd	_507
	dd	1
	dd	_508
	dd	_17
	dd	_509
	dd	1
	dd	_510
	dd	_17
	dd	_511
	dd	1
	dd	_512
	dd	_17
	dd	_513
	dd	1
	dd	_514
	dd	_17
	dd	_515
	dd	1
	dd	_516
	dd	_17
	dd	_339
	dd	1
	dd	_517
	dd	_17
	dd	_341
	dd	1
	dd	_518
	dd	_17
	dd	_519
	dd	1
	dd	_520
	dd	_17
	dd	_521
	dd	1
	dd	_522
	dd	_17
	dd	_523
	dd	1
	dd	_524
	dd	_17
	dd	_525
	dd	1
	dd	_526
	dd	_17
	dd	_527
	dd	1
	dd	_528
	dd	_17
	dd	_529
	dd	1
	dd	_530
	dd	_17
	dd	_531
	dd	1
	dd	_532
	dd	_17
	dd	_533
	dd	1
	dd	_534
	dd	_17
	dd	_535
	dd	1
	dd	_536
	dd	_17
	dd	_537
	dd	1
	dd	_538
	dd	_17
	dd	_539
	dd	1
	dd	_540
	dd	_17
	dd	_343
	dd	1
	dd	_541
	dd	_17
	dd	_542
	dd	1
	dd	_543
	dd	_17
	dd	_544
	dd	1
	dd	_545
	dd	_17
	dd	_546
	dd	1
	dd	_547
	dd	_17
	dd	_548
	dd	1
	dd	_549
	dd	_17
	dd	_550
	dd	1
	dd	_551
	dd	_17
	dd	_552
	dd	1
	dd	_553
	dd	_17
	dd	_554
	dd	1
	dd	_555
	dd	_17
	dd	_556
	dd	1
	dd	_557
	dd	_17
	dd	_558
	dd	1
	dd	_559
	dd	_17
	dd	_560
	dd	1
	dd	_561
	dd	_17
	dd	_562
	dd	1
	dd	_563
	dd	_17
	dd	_564
	dd	1
	dd	_565
	dd	_17
	dd	_566
	dd	1
	dd	_567
	dd	_17
	dd	_568
	dd	1
	dd	_569
	dd	_17
	dd	_570
	dd	1
	dd	_571
	dd	_17
	dd	_572
	dd	1
	dd	_573
	dd	_17
	dd	_574
	dd	1
	dd	_575
	dd	_17
	dd	_339
	dd	1
	dd	_576
	dd	_17
	dd	_341
	dd	1
	dd	_577
	dd	_17
	dd	_343
	dd	1
	dd	_578
	dd	_17
	dd	_579
	dd	1
	dd	_580
	dd	_17
	dd	_581
	dd	1
	dd	_582
	dd	_17
	dd	_583
	dd	1
	dd	_584
	dd	_17
	dd	_585
	dd	1
	dd	_586
	dd	_17
	dd	_587
	dd	1
	dd	_588
	dd	_17
	dd	_589
	dd	1
	dd	_590
	dd	_17
	dd	_591
	dd	1
	dd	_592
	dd	_17
	dd	_593
	dd	1
	dd	_594
	dd	_17
	dd	_595
	dd	1
	dd	_596
	dd	_17
	dd	_597
	dd	1
	dd	_598
	dd	_17
	dd	_599
	dd	1
	dd	_600
	dd	_17
	dd	_601
	dd	1
	dd	_602
	dd	_17
	dd	_603
	dd	1
	dd	_604
	dd	_17
	dd	_605
	dd	1
	dd	_606
	dd	_17
	dd	_607
	dd	1
	dd	_608
	dd	_17
	dd	_609
	dd	1
	dd	_610
	dd	_17
	dd	_404
	dd	1
	dd	_611
	dd	_17
	dd	_339
	dd	1
	dd	_612
	dd	_17
	dd	_341
	dd	1
	dd	_613
	dd	_17
	dd	_343
	dd	1
	dd	_614
	dd	_17
	dd	_396
	dd	1
	dd	_615
	dd	_17
	dd	_398
	dd	1
	dd	_616
	dd	_17
	dd	_400
	dd	1
	dd	_617
	dd	_17
	dd	_402
	dd	1
	dd	_618
	dd	_17
	dd	_404
	dd	1
	dd	_619
	dd	_17
	dd	_499
	dd	1
	dd	_620
	dd	_17
	dd	_621
	dd	1
	dd	_622
	dd	_17
	dd	_539
	dd	1
	dd	_623
	dd	_17
	dd	_624
	dd	1
	dd	_625
	dd	_17
	dd	_626
	dd	1
	dd	_627
	dd	_17
	dd	_628
	dd	1
	dd	_629
	dd	_17
	dd	_630
	dd	1
	dd	_631
	dd	_17
	dd	_632
	dd	1
	dd	_633
	dd	_17
	dd	_634
	dd	1
	dd	_635
	dd	_17
	dd	_636
	dd	1
	dd	_637
	dd	_17
	dd	_638
	dd	1
	dd	_639
	dd	_17
	dd	_640
	dd	1
	dd	_641
	dd	_17
	dd	_642
	dd	1
	dd	_643
	dd	_17
	dd	_644
	dd	1
	dd	_645
	dd	_17
	dd	_646
	dd	1
	dd	_647
	dd	_17
	dd	_648
	dd	1
	dd	_649
	dd	_17
	dd	_650
	dd	1
	dd	_651
	dd	_17
	dd	_652
	dd	1
	dd	_653
	dd	_17
	dd	_654
	dd	1
	dd	_655
	dd	_17
	dd	_656
	dd	1
	dd	_657
	dd	_17
	dd	_658
	dd	1
	dd	_659
	dd	_17
	dd	_660
	dd	1
	dd	_661
	dd	_17
	dd	_662
	dd	1
	dd	_663
	dd	_17
	dd	_664
	dd	1
	dd	_665
	dd	_17
	dd	_666
	dd	1
	dd	_667
	dd	_17
	dd	_668
	dd	1
	dd	_669
	dd	_17
	dd	_670
	dd	1
	dd	_671
	dd	_17
	dd	_672
	dd	1
	dd	_673
	dd	_17
	dd	_674
	dd	1
	dd	_675
	dd	_17
	dd	_676
	dd	1
	dd	_677
	dd	_17
	dd	_678
	dd	1
	dd	_679
	dd	_17
	dd	_680
	dd	1
	dd	_681
	dd	_17
	dd	_682
	dd	1
	dd	_683
	dd	_17
	dd	_684
	dd	1
	dd	_685
	dd	_17
	dd	_686
	dd	1
	dd	_687
	dd	_17
	dd	_688
	dd	1
	dd	_689
	dd	_17
	dd	_690
	dd	1
	dd	_691
	dd	_17
	dd	_692
	dd	1
	dd	_693
	dd	_17
	dd	_694
	dd	1
	dd	_695
	dd	_17
	dd	_696
	dd	1
	dd	_697
	dd	_17
	dd	_698
	dd	1
	dd	_699
	dd	_17
	dd	_700
	dd	1
	dd	_701
	dd	_17
	dd	_702
	dd	1
	dd	_703
	dd	_17
	dd	_704
	dd	1
	dd	_705
	dd	_17
	dd	_706
	dd	1
	dd	_707
	dd	_17
	dd	_708
	dd	1
	dd	_709
	dd	_17
	dd	_710
	dd	1
	dd	_711
	dd	_17
	dd	_712
	dd	1
	dd	_713
	dd	_17
	dd	_714
	dd	1
	dd	_715
	dd	_17
	dd	_716
	dd	1
	dd	_717
	dd	_17
	dd	_718
	dd	1
	dd	_719
	dd	_17
	dd	_720
	dd	1
	dd	_721
	dd	_17
	dd	_722
	dd	1
	dd	_723
	dd	_17
	dd	_724
	dd	1
	dd	_725
	dd	_17
	dd	_726
	dd	1
	dd	_727
	dd	_17
	dd	_728
	dd	1
	dd	_729
	dd	_17
	dd	_730
	dd	1
	dd	_731
	dd	_17
	dd	_732
	dd	1
	dd	_733
	dd	_17
	dd	_734
	dd	1
	dd	_735
	dd	_17
	dd	_736
	dd	1
	dd	_737
	dd	_17
	dd	_738
	dd	1
	dd	_739
	dd	_17
	dd	_740
	dd	1
	dd	_741
	dd	_17
	dd	_742
	dd	1
	dd	_743
	dd	_17
	dd	_744
	dd	1
	dd	_745
	dd	_17
	dd	_746
	dd	1
	dd	_747
	dd	_17
	dd	_748
	dd	1
	dd	_749
	dd	_17
	dd	_750
	dd	1
	dd	_751
	dd	_17
	dd	_752
	dd	1
	dd	_753
	dd	_17
	dd	_754
	dd	1
	dd	_755
	dd	_17
	dd	_756
	dd	1
	dd	_757
	dd	_17
	dd	_758
	dd	1
	dd	_759
	dd	_17
	dd	_760
	dd	1
	dd	_761
	dd	_17
	dd	_762
	dd	1
	dd	_763
	dd	_17
	dd	_764
	dd	1
	dd	_765
	dd	_17
	dd	_766
	dd	1
	dd	_767
	dd	_17
	dd	_339
	dd	1
	dd	_768
	dd	_17
	dd	_341
	dd	1
	dd	_769
	dd	_17
	dd	_343
	dd	1
	dd	_770
	dd	_17
	dd	_396
	dd	1
	dd	_771
	dd	_17
	dd	_398
	dd	1
	dd	_772
	dd	_17
	dd	_773
	dd	1
	dd	_774
	dd	_17
	dd	_775
	dd	1
	dd	_776
	dd	_17
	dd	_343
	dd	1
	dd	_777
	dd	_17
	dd	_398
	dd	1
	dd	_778
	dd	_17
	dd	_779
	dd	1
	dd	_780
	dd	_17
	dd	_781
	dd	1
	dd	_782
	dd	_17
	dd	_783
	dd	1
	dd	_784
	dd	_17
	dd	_785
	dd	1
	dd	_786
	dd	_17
	dd	_787
	dd	1
	dd	_788
	dd	_17
	dd	_789
	dd	1
	dd	_790
	dd	_17
	dd	_791
	dd	1
	dd	_792
	dd	_17
	dd	_793
	dd	1
	dd	_794
	dd	_17
	dd	_795
	dd	1
	dd	_796
	dd	_17
	dd	_797
	dd	1
	dd	_798
	dd	_17
	dd	_799
	dd	1
	dd	_800
	dd	_17
	dd	_801
	dd	1
	dd	_802
	dd	_17
	dd	_803
	dd	1
	dd	_804
	dd	_17
	dd	_805
	dd	1
	dd	_806
	dd	_17
	dd	_807
	dd	1
	dd	_808
	dd	_17
	dd	_809
	dd	1
	dd	_810
	dd	_17
	dd	_811
	dd	1
	dd	_812
	dd	_17
	dd	_813
	dd	1
	dd	_814
	dd	_17
	dd	_815
	dd	1
	dd	_816
	dd	_17
	dd	_817
	dd	1
	dd	_818
	dd	_17
	dd	_819
	dd	1
	dd	_820
	dd	_17
	dd	_821
	dd	1
	dd	_822
	dd	_17
	dd	_823
	dd	1
	dd	_824
	dd	_17
	dd	_825
	dd	1
	dd	_826
	dd	_17
	dd	_827
	dd	1
	dd	_828
	dd	_17
	dd	_829
	dd	1
	dd	_830
	dd	_17
	dd	_831
	dd	1
	dd	_832
	dd	_17
	dd	_833
	dd	1
	dd	_834
	dd	_17
	dd	_835
	dd	1
	dd	_836
	dd	_17
	dd	_837
	dd	1
	dd	_838
	dd	_17
	dd	_839
	dd	1
	dd	_840
	dd	_17
	dd	_841
	dd	1
	dd	_842
	dd	_17
	dd	_843
	dd	1
	dd	_844
	dd	_17
	dd	_845
	dd	1
	dd	_846
	dd	_17
	dd	_847
	dd	1
	dd	_848
	dd	_17
	dd	_849
	dd	1
	dd	_850
	dd	_17
	dd	_851
	dd	1
	dd	_852
	dd	_17
	dd	_853
	dd	1
	dd	_854
	dd	_17
	dd	_855
	dd	1
	dd	_856
	dd	_17
	dd	_857
	dd	1
	dd	_858
	dd	_17
	dd	_859
	dd	1
	dd	_860
	dd	_17
	dd	_861
	dd	1
	dd	_862
	dd	_17
	dd	_863
	dd	1
	dd	_864
	dd	_17
	dd	_865
	dd	1
	dd	_866
	dd	_17
	dd	_867
	dd	1
	dd	_868
	dd	_17
	dd	_869
	dd	1
	dd	_870
	dd	_17
	dd	_871
	dd	1
	dd	_872
	dd	_17
	dd	_873
	dd	1
	dd	_874
	dd	_17
	dd	_875
	dd	1
	dd	_876
	dd	_17
	dd	_877
	dd	1
	dd	_878
	dd	_17
	dd	_879
	dd	1
	dd	_880
	dd	_17
	dd	_881
	dd	1
	dd	_882
	dd	_17
	dd	_883
	dd	1
	dd	_884
	dd	_17
	dd	_885
	dd	1
	dd	_886
	dd	_17
	dd	_887
	dd	1
	dd	_888
	dd	_17
	dd	_889
	dd	1
	dd	_890
	dd	_17
	dd	_891
	dd	1
	dd	_892
	dd	_17
	dd	_893
	dd	1
	dd	_894
	dd	_17
	dd	_895
	dd	1
	dd	_896
	dd	_17
	dd	_897
	dd	1
	dd	_898
	dd	_17
	dd	_899
	dd	1
	dd	_900
	dd	_17
	dd	_901
	dd	1
	dd	_902
	dd	_17
	dd	_903
	dd	1
	dd	_904
	dd	_17
	dd	_905
	dd	1
	dd	_906
	dd	_17
	dd	_907
	dd	1
	dd	_908
	dd	_17
	dd	_909
	dd	1
	dd	_910
	dd	_17
	dd	_911
	dd	1
	dd	_912
	dd	_17
	dd	_913
	dd	1
	dd	_914
	dd	_17
	dd	_915
	dd	1
	dd	_916
	dd	_17
	dd	_917
	dd	1
	dd	_918
	dd	_17
	dd	_919
	dd	1
	dd	_920
	dd	_17
	dd	_921
	dd	1
	dd	_922
	dd	_17
	dd	_923
	dd	1
	dd	_924
	dd	_17
	dd	_925
	dd	1
	dd	_926
	dd	_17
	dd	_927
	dd	1
	dd	_928
	dd	_17
	dd	_929
	dd	1
	dd	_930
	dd	_17
	dd	_931
	dd	1
	dd	_932
	dd	_17
	dd	_933
	dd	1
	dd	_934
	dd	_17
	dd	_935
	dd	1
	dd	_936
	dd	_17
	dd	_937
	dd	1
	dd	_938
	dd	_17
	dd	_939
	dd	1
	dd	_940
	dd	_17
	dd	_941
	dd	1
	dd	_942
	dd	_17
	dd	_943
	dd	1
	dd	_944
	dd	_17
	dd	_343
	dd	1
	dd	_945
	dd	_17
	dd	_398
	dd	1
	dd	_946
	dd	_17
	dd	_406
	dd	1
	dd	_947
	dd	_17
	dd	_422
	dd	1
	dd	_948
	dd	_17
	dd	_621
	dd	1
	dd	_949
	dd	_17
	dd	_341
	dd	1
	dd	_950
	dd	_17
	dd	_951
	dd	1
	dd	_952
	dd	_17
	dd	_953
	dd	1
	dd	_954
	dd	_17
	dd	_955
	dd	1
	dd	_956
	dd	_17
	dd	_957
	dd	1
	dd	_958
	dd	_17
	dd	_959
	dd	1
	dd	_960
	dd	_17
	dd	_961
	dd	1
	dd	_962
	dd	_17
	dd	_963
	dd	1
	dd	_964
	dd	_17
	dd	_965
	dd	1
	dd	_966
	dd	_17
	dd	_967
	dd	1
	dd	_968
	dd	_17
	dd	_969
	dd	1
	dd	_970
	dd	_17
	dd	_971
	dd	1
	dd	_972
	dd	_17
	dd	_339
	dd	1
	dd	_973
	dd	_17
	dd	_341
	dd	1
	dd	_974
	dd	_17
	dd	_343
	dd	1
	dd	_975
	dd	_17
	dd	_976
	dd	1
	dd	_977
	dd	_17
	dd	_978
	dd	1
	dd	_979
	dd	_17
	dd	_339
	dd	1
	dd	_980
	dd	_17
	dd	_341
	dd	1
	dd	_981
	dd	_17
	dd	_343
	dd	1
	dd	_982
	dd	_17
	dd	_983
	dd	1
	dd	_984
	dd	_17
	dd	_985
	dd	1
	dd	_986
	dd	_17
	dd	_339
	dd	1
	dd	_987
	dd	_17
	dd	_341
	dd	1
	dd	_988
	dd	_17
	dd	_343
	dd	1
	dd	_989
	dd	_17
	dd	_990
	dd	1
	dd	_991
	dd	_17
	dd	_992
	dd	1
	dd	_993
	dd	_17
	dd	_994
	dd	1
	dd	_995
	dd	_17
	dd	_996
	dd	1
	dd	_997
	dd	_17
	dd	_339
	dd	1
	dd	_998
	dd	_17
	dd	_341
	dd	1
	dd	_999
	dd	_17
	dd	_343
	dd	1
	dd	_1000
	dd	_17
	dd	_396
	dd	1
	dd	_1001
	dd	_17
	dd	_1002
	dd	1
	dd	_1003
	dd	_17
	dd	_1004
	dd	1
	dd	_1005
	dd	_17
	dd	_1006
	dd	1
	dd	_1007
	dd	_17
	dd	_1008
	dd	1
	dd	_1009
	dd	_17
	dd	_1010
	dd	1
	dd	_1011
	dd	_17
	dd	_1012
	dd	1
	dd	_1013
	dd	_17
	dd	_1014
	dd	1
	dd	_1015
	dd	_17
	dd	_1016
	dd	1
	dd	_1017
	dd	_17
	dd	_1018
	dd	1
	dd	_1019
	dd	_17
	dd	_1020
	dd	1
	dd	_1021
	dd	_17
	dd	_1022
	dd	1
	dd	_1023
	dd	_17
	dd	_1024
	dd	1
	dd	_1025
	dd	_17
	dd	_1026
	dd	1
	dd	_1027
	dd	_17
	dd	_1028
	dd	1
	dd	_1029
	dd	_17
	dd	_1030
	dd	1
	dd	_1031
	dd	_17
	dd	_1032
	dd	1
	dd	_1033
	dd	_17
	dd	_1034
	dd	1
	dd	_1035
	dd	_17
	dd	_1036
	dd	1
	dd	_1037
	dd	_17
	dd	_1038
	dd	1
	dd	_1039
	dd	_17
	dd	_1040
	dd	1
	dd	_1041
	dd	_17
	dd	_1042
	dd	1
	dd	_1043
	dd	_17
	dd	_1044
	dd	1
	dd	_1045
	dd	_17
	dd	_1046
	dd	1
	dd	_1047
	dd	_17
	dd	_1048
	dd	1
	dd	_1049
	dd	_17
	dd	_1050
	dd	1
	dd	_1051
	dd	_17
	dd	_1052
	dd	1
	dd	_1053
	dd	_17
	dd	_1054
	dd	1
	dd	_1055
	dd	_17
	dd	_1056
	dd	1
	dd	_1057
	dd	_17
	dd	_1058
	dd	1
	dd	_1059
	dd	_17
	dd	_1060
	dd	1
	dd	_1061
	dd	_17
	dd	_1062
	dd	1
	dd	_1063
	dd	_17
	dd	_1064
	dd	1
	dd	_1065
	dd	_17
	dd	_1066
	dd	1
	dd	_1067
	dd	_17
	dd	_1068
	dd	1
	dd	_1069
	dd	_17
	dd	_1070
	dd	1
	dd	_1071
	dd	_17
	dd	_1072
	dd	1
	dd	_1073
	dd	_17
	dd	_1074
	dd	1
	dd	_1075
	dd	_17
	dd	_1076
	dd	1
	dd	_1077
	dd	_17
	dd	_1078
	dd	1
	dd	_1079
	dd	_17
	dd	_1080
	dd	1
	dd	_1081
	dd	_17
	dd	_1082
	dd	1
	dd	_1083
	dd	_17
	dd	_1084
	dd	1
	dd	_1085
	dd	_17
	dd	_1086
	dd	1
	dd	_1087
	dd	_17
	dd	_1088
	dd	1
	dd	_1089
	dd	_17
	dd	_1090
	dd	1
	dd	_1091
	dd	_17
	dd	_1092
	dd	1
	dd	_1093
	dd	_17
	dd	_1094
	dd	1
	dd	_1095
	dd	_17
	dd	_1096
	dd	1
	dd	_1097
	dd	_17
	dd	_1098
	dd	1
	dd	_1099
	dd	_17
	dd	_1100
	dd	1
	dd	_1101
	dd	_17
	dd	_1102
	dd	1
	dd	_1103
	dd	_17
	dd	_1104
	dd	1
	dd	_1105
	dd	_17
	dd	_1106
	dd	1
	dd	_1107
	dd	_17
	dd	_1108
	dd	1
	dd	_1109
	dd	_17
	dd	_1110
	dd	1
	dd	_1111
	dd	_17
	dd	_1112
	dd	1
	dd	_1113
	dd	_17
	dd	_1114
	dd	1
	dd	_1115
	dd	_17
	dd	_1116
	dd	1
	dd	_1117
	dd	_17
	dd	_1118
	dd	1
	dd	_1119
	dd	_17
	dd	_1120
	dd	1
	dd	_1121
	dd	_17
	dd	_1122
	dd	1
	dd	_1123
	dd	_17
	dd	_1124
	dd	1
	dd	_1125
	dd	_17
	dd	_1126
	dd	1
	dd	_1127
	dd	_17
	dd	_1128
	dd	1
	dd	_1129
	dd	_17
	dd	_1130
	dd	1
	dd	_1131
	dd	_17
	dd	_1132
	dd	1
	dd	_1133
	dd	_17
	dd	_1134
	dd	1
	dd	_1135
	dd	_17
	dd	_1136
	dd	1
	dd	_1137
	dd	_17
	dd	_1138
	dd	1
	dd	_1139
	dd	_17
	dd	_1140
	dd	1
	dd	_1141
	dd	_17
	dd	_1142
	dd	1
	dd	_1143
	dd	_17
	dd	_1144
	dd	1
	dd	_1145
	dd	_17
	dd	_1146
	dd	1
	dd	_1147
	dd	_17
	dd	_1148
	dd	1
	dd	_1149
	dd	_17
	dd	_1150
	dd	1
	dd	_1151
	dd	_17
	dd	_1152
	dd	1
	dd	_1153
	dd	_17
	dd	_1154
	dd	1
	dd	_1155
	dd	_17
	dd	_1156
	dd	1
	dd	_1157
	dd	_17
	dd	_1158
	dd	1
	dd	_1159
	dd	_17
	dd	_1160
	dd	1
	dd	_1161
	dd	_17
	dd	_1162
	dd	1
	dd	_1163
	dd	_17
	dd	_1164
	dd	1
	dd	_1165
	dd	_17
	dd	_1166
	dd	1
	dd	_1167
	dd	_17
	dd	_1168
	dd	1
	dd	_1169
	dd	_17
	dd	_1170
	dd	1
	dd	_1171
	dd	_17
	dd	_339
	dd	1
	dd	_1172
	dd	_17
	dd	_341
	dd	1
	dd	_1173
	dd	_17
	dd	_343
	dd	1
	dd	_1174
	dd	_17
	dd	_1175
	dd	1
	dd	_1176
	dd	_17
	dd	_1177
	dd	1
	dd	_1178
	dd	_17
	dd	_1179
	dd	1
	dd	_1180
	dd	_17
	dd	_1181
	dd	1
	dd	_1182
	dd	_17
	dd	_1183
	dd	1
	dd	_1184
	dd	_17
	dd	_1185
	dd	1
	dd	_1186
	dd	_17
	dd	_1187
	dd	1
	dd	_1188
	dd	_17
	dd	_1189
	dd	1
	dd	_1190
	dd	_17
	dd	_1191
	dd	1
	dd	_1192
	dd	_17
	dd	_1193
	dd	1
	dd	_1194
	dd	_17
	dd	_1195
	dd	1
	dd	_1196
	dd	_17
	dd	_1197
	dd	1
	dd	_1198
	dd	_17
	dd	_1199
	dd	1
	dd	_1200
	dd	_17
	dd	_1201
	dd	1
	dd	_1202
	dd	_17
	dd	_1203
	dd	1
	dd	_1204
	dd	_17
	dd	_1205
	dd	1
	dd	_1206
	dd	_17
	dd	_1207
	dd	1
	dd	_1208
	dd	_17
	dd	_1209
	dd	1
	dd	_1210
	dd	_17
	dd	_1211
	dd	1
	dd	_1212
	dd	_17
	dd	_1213
	dd	1
	dd	_1214
	dd	_17
	dd	_1215
	dd	1
	dd	_1216
	dd	_17
	dd	_1217
	dd	1
	dd	_1218
	dd	_17
	dd	_1219
	dd	1
	dd	_1220
	dd	_17
	dd	_1221
	dd	1
	dd	_1222
	dd	_17
	dd	_293
	dd	1
	dd	_1223
	dd	_17
	dd	_398
	dd	1
	dd	_1224
	dd	_17
	dd	_1225
	dd	1
	dd	_1226
	dd	_17
	dd	_1227
	dd	1
	dd	_1228
	dd	_17
	dd	_1229
	dd	1
	dd	_1230
	dd	_17
	dd	_1231
	dd	1
	dd	_1232
	dd	_17
	dd	_1233
	dd	1
	dd	_1234
	dd	_17
	dd	_1235
	dd	1
	dd	_1236
	dd	_17
	dd	_1237
	dd	1
	dd	_1238
	dd	_17
	dd	_1239
	dd	1
	dd	_1240
	dd	_17
	dd	_341
	dd	1
	dd	_1241
	dd	_17
	dd	_398
	dd	1
	dd	_1242
	dd	_17
	dd	_1243
	dd	1
	dd	_1244
	dd	_17
	dd	_1245
	dd	1
	dd	_1246
	dd	_17
	dd	_1247
	dd	1
	dd	_1248
	dd	_17
	dd	_1249
	dd	1
	dd	_1250
	dd	_17
	dd	_1251
	dd	1
	dd	_1252
	dd	_17
	dd	_1253
	dd	1
	dd	_1254
	dd	_17
	dd	_1255
	dd	1
	dd	_1256
	dd	_17
	dd	_341
	dd	1
	dd	_1257
	dd	_17
	dd	_398
	dd	1
	dd	_1258
	dd	_17
	dd	_422
	dd	1
	dd	_1259
	dd	_17
	dd	_406
	dd	1
	dd	_1260
	dd	_17
	dd	_1261
	dd	1
	dd	_1262
	dd	_17
	dd	_1263
	dd	1
	dd	_1264
	dd	_17
	dd	_1265
	dd	1
	dd	_1266
	dd	_17
	dd	_1267
	dd	1
	dd	_1268
	dd	_17
	dd	_1269
	dd	1
	dd	_1270
	dd	_17
	dd	_1271
	dd	1
	dd	_1272
	dd	_17
	dd	_1273
	dd	1
	dd	_1274
	dd	_17
	dd	_1275
	dd	1
	dd	_1276
	dd	_17
	dd	_1277
	dd	1
	dd	_1278
	dd	_17
	dd	_1279
	dd	1
	dd	_1280
	dd	_17
	dd	_1281
	dd	1
	dd	_1282
	dd	_17
	dd	_1283
	dd	1
	dd	_1284
	dd	_17
	dd	_1285
	dd	1
	dd	_1286
	dd	_17
	dd	_1287
	dd	1
	dd	_1288
	dd	_17
	dd	_1289
	dd	1
	dd	_1290
	dd	_17
	dd	_1291
	dd	1
	dd	_1292
	dd	_17
	dd	_339
	dd	1
	dd	_1293
	dd	_17
	dd	_341
	dd	1
	dd	_1294
	dd	_17
	dd	_343
	dd	1
	dd	_1295
	dd	_17
	dd	_1296
	dd	1
	dd	_1297
	dd	_17
	dd	_1298
	dd	1
	dd	_1299
	dd	_17
	dd	_1300
	dd	1
	dd	_1301
	dd	_17
	dd	_1302
	dd	1
	dd	_1303
	dd	_17
	dd	_1304
	dd	1
	dd	_1305
	dd	_17
	dd	_1306
	dd	1
	dd	_1307
	dd	_17
	dd	_1308
	dd	1
	dd	_1309
	dd	_17
	dd	_1310
	dd	1
	dd	_1311
	dd	_17
	dd	_1312
	dd	1
	dd	_1313
	dd	_17
	dd	_1314
	dd	1
	dd	_1315
	dd	_17
	dd	_1316
	dd	1
	dd	_1317
	dd	_17
	dd	_1318
	dd	1
	dd	_1319
	dd	_17
	dd	_1320
	dd	1
	dd	_1321
	dd	_17
	dd	_1322
	dd	1
	dd	_1323
	dd	_17
	dd	_1324
	dd	1
	dd	_1325
	dd	_17
	dd	_1326
	dd	1
	dd	_1327
	dd	_17
	dd	_1328
	dd	1
	dd	_1329
	dd	_17
	dd	_1330
	dd	1
	dd	_1331
	dd	_17
	dd	_1332
	dd	1
	dd	_1333
	dd	_17
	dd	_1334
	dd	1
	dd	_1335
	dd	_17
	dd	_1336
	dd	1
	dd	_1337
	dd	_17
	dd	_1338
	dd	1
	dd	_1339
	dd	_17
	dd	_1340
	dd	1
	dd	_1341
	dd	_17
	dd	_1342
	dd	1
	dd	_1343
	dd	_17
	dd	_1344
	dd	1
	dd	_1345
	dd	_17
	dd	_1346
	dd	1
	dd	_1347
	dd	_17
	dd	_1348
	dd	1
	dd	_1349
	dd	_17
	dd	_1350
	dd	1
	dd	_1351
	dd	_17
	dd	_1352
	dd	1
	dd	_1353
	dd	_17
	dd	_1354
	dd	1
	dd	_1355
	dd	_17
	dd	_1356
	dd	1
	dd	_1357
	dd	_17
	dd	_1358
	dd	1
	dd	_1359
	dd	_17
	dd	_1360
	dd	1
	dd	_1361
	dd	_17
	dd	_1362
	dd	1
	dd	_1363
	dd	_17
	dd	_1364
	dd	1
	dd	_1365
	dd	_17
	dd	_339
	dd	1
	dd	_1366
	dd	_17
	dd	_533
	dd	1
	dd	_1367
	dd	_17
	dd	_1368
	dd	1
	dd	_1369
	dd	_17
	dd	_1370
	dd	1
	dd	_1371
	dd	_17
	dd	_1372
	dd	1
	dd	_1373
	dd	_17
	dd	_1374
	dd	1
	dd	_1375
	dd	_17
	dd	_1376
	dd	1
	dd	_1377
	dd	_17
	dd	_1378
	dd	1
	dd	_1379
	dd	_17
	dd	_1380
	dd	1
	dd	_1381
	dd	_17
	dd	_1382
	dd	1
	dd	_1383
	dd	_17
	dd	_1384
	dd	1
	dd	_1385
	dd	_17
	dd	_406
	dd	1
	dd	_1386
	dd	_17
	dd	_1387
	dd	1
	dd	_1388
	dd	_17
	dd	_1389
	dd	1
	dd	_1390
	dd	_17
	dd	_1391
	dd	1
	dd	_1392
	dd	_17
	dd	_1393
	dd	1
	dd	_1394
	dd	_17
	dd	_1395
	dd	1
	dd	_1396
	dd	_17
	dd	_1397
	dd	1
	dd	_1398
	dd	_17
	dd	_1399
	dd	1
	dd	_1400
	dd	_17
	dd	_341
	dd	1
	dd	_1401
	dd	_17
	dd	_343
	dd	1
	dd	_1402
	dd	_17
	dd	_398
	dd	1
	dd	_1403
	dd	_17
	dd	_406
	dd	1
	dd	_1404
	dd	_17
	dd	_422
	dd	1
	dd	_1405
	dd	_17
	dd	_499
	dd	1
	dd	_1406
	dd	_17
	dd	_621
	dd	1
	dd	_1407
	dd	_17
	dd	_539
	dd	1
	dd	_1408
	dd	_17
	dd	_1368
	dd	1
	dd	_1409
	dd	_17
	dd	_1410
	dd	1
	dd	_1411
	dd	_17
	dd	_907
	dd	1
	dd	_1412
	dd	_17
	dd	_475
	dd	1
	dd	_1413
	dd	_17
	dd	_909
	dd	1
	dd	_1414
	dd	_17
	dd	_1415
	dd	1
	dd	_1416
	dd	_17
	dd	_1417
	dd	1
	dd	_1418
	dd	_17
	dd	_1410
	dd	1
	dd	_1419
	dd	_17
	dd	_1368
	dd	1
	dd	_1420
	dd	_17
	dd	_1421
	dd	1
	dd	_1422
	dd	_17
	dd	_1423
	dd	1
	dd	_1424
	dd	_17
	dd	_1425
	dd	1
	dd	_1426
	dd	_17
	dd	_1427
	dd	1
	dd	_1428
	dd	_17
	dd	_1429
	dd	1
	dd	_1430
	dd	_17
	dd	_1431
	dd	1
	dd	_1432
	dd	_17
	dd	_1433
	dd	1
	dd	_1434
	dd	_17
	dd	_1435
	dd	1
	dd	_1436
	dd	_17
	dd	_1437
	dd	1
	dd	_1438
	dd	_17
	dd	_1439
	dd	1
	dd	_1440
	dd	_17
	dd	_404
	dd	1
	dd	_1441
	dd	_17
	dd	_406
	dd	1
	dd	_1442
	dd	_17
	dd	_408
	dd	1
	dd	_1443
	dd	_17
	dd	_416
	dd	1
	dd	_1444
	dd	_17
	dd	_1445
	dd	1
	dd	_1446
	dd	_17
	dd	_1447
	dd	1
	dd	_1448
	dd	_17
	dd	_1449
	dd	1
	dd	_1450
	dd	_17
	dd	_339
	dd	1
	dd	_1451
	dd	_17
	dd	_341
	dd	1
	dd	_1452
	dd	_17
	dd	_343
	dd	1
	dd	_1453
	dd	_17
	dd	_398
	dd	1
	dd	_1454
	dd	_17
	dd	_295
	dd	1
	dd	_1455
	dd	_17
	dd	_301
	dd	1
	dd	_1456
	dd	_17
	dd	_303
	dd	1
	dd	_1457
	dd	_17
	dd	_305
	dd	1
	dd	_1458
	dd	_17
	dd	_307
	dd	1
	dd	_1459
	dd	_17
	dd	_309
	dd	1
	dd	_1460
	dd	_17
	dd	_311
	dd	1
	dd	_1461
	dd	_17
	dd	_313
	dd	1
	dd	_1462
	dd	_17
	dd	_315
	dd	1
	dd	_1463
	dd	_17
	dd	_317
	dd	1
	dd	_1464
	dd	_17
	dd	_319
	dd	1
	dd	_1465
	dd	_17
	dd	_321
	dd	1
	dd	_1466
	dd	_17
	dd	_325
	dd	1
	dd	_1467
	dd	_17
	dd	_327
	dd	1
	dd	_1468
	dd	_17
	dd	_329
	dd	1
	dd	_1469
	dd	_17
	dd	_331
	dd	1
	dd	_1470
	dd	_17
	dd	_333
	dd	1
	dd	_1471
	dd	_17
	dd	_335
	dd	1
	dd	_1472
	dd	_17
	dd	_337
	dd	1
	dd	_1473
	dd	_17
	dd	_345
	dd	1
	dd	_1474
	dd	_17
	dd	_347
	dd	1
	dd	_1475
	dd	_17
	dd	_349
	dd	1
	dd	_1476
	dd	_17
	dd	_1477
	dd	1
	dd	_1478
	dd	_17
	dd	_343
	dd	1
	dd	_1479
	dd	_17
	dd	_406
	dd	1
	dd	_1480
	dd	_17
	dd	_422
	dd	1
	dd	_1481
	dd	_17
	dd	_323
	dd	1
	dd	_1482
	dd	_17
	dd	_313
	dd	1
	dd	_1483
	dd	_17
	dd	_339
	dd	1
	dd	_1484
	dd	_17
	dd	_341
	dd	1
	dd	_1485
	dd	_17
	dd	_343
	dd	1
	dd	_1486
	dd	_17
	dd	_396
	dd	1
	dd	_1487
	dd	_17
	dd	_398
	dd	1
	dd	_1488
	dd	_17
	dd	_400
	dd	1
	dd	_1489
	dd	_17
	dd	_402
	dd	1
	dd	_1490
	dd	_17
	dd	_404
	dd	1
	dd	_1491
	dd	_17
	dd	_406
	dd	1
	dd	_1492
	dd	_17
	dd	_408
	dd	1
	dd	_1493
	dd	_17
	dd	_410
	dd	1
	dd	_1494
	dd	_17
	dd	_412
	dd	1
	dd	_1495
	dd	_17
	dd	_414
	dd	1
	dd	_1496
	dd	_17
	dd	_416
	dd	1
	dd	_1497
	dd	_17
	dd	_418
	dd	1
	dd	_1498
	dd	_17
	dd	_420
	dd	1
	dd	_1499
	dd	_17
	dd	_422
	dd	1
	dd	_1500
	dd	_17
	dd	_424
	dd	1
	dd	_1501
	dd	_17
	dd	_426
	dd	1
	dd	_1502
	dd	_17
	dd	_428
	dd	1
	dd	_1503
	dd	_17
	dd	_430
	dd	1
	dd	_1504
	dd	_17
	dd	_432
	dd	1
	dd	_1505
	dd	_17
	dd	_434
	dd	1
	dd	_1506
	dd	_17
	dd	_436
	dd	1
	dd	_1507
	dd	_17
	dd	_438
	dd	1
	dd	_1508
	dd	_17
	dd	_440
	dd	1
	dd	_1509
	dd	_17
	dd	_442
	dd	1
	dd	_1510
	dd	_17
	dd	_448
	dd	1
	dd	_1511
	dd	_17
	dd	_450
	dd	1
	dd	_1512
	dd	_17
	dd	_391
	dd	1
	dd	_1513
	dd	_17
	dd	_499
	dd	1
	dd	_1514
	dd	_17
	dd	_501
	dd	1
	dd	_1515
	dd	_17
	dd	_503
	dd	1
	dd	_1516
	dd	_17
	dd	_505
	dd	1
	dd	_1517
	dd	_17
	dd	_507
	dd	1
	dd	_1518
	dd	_17
	dd	_509
	dd	1
	dd	_1519
	dd	_17
	dd	_511
	dd	1
	dd	_1520
	dd	_17
	dd	_513
	dd	1
	dd	_1521
	dd	_17
	dd	_1522
	dd	1
	dd	_1523
	dd	_17
	dd	_1524
	dd	1
	dd	_1525
	dd	_17
	dd	_1526
	dd	1
	dd	_1527
	dd	_17
	dd	_1528
	dd	1
	dd	_1529
	dd	_17
	dd	_1530
	dd	1
	dd	_1531
	dd	_17
	dd	_1532
	dd	1
	dd	_1533
	dd	_17
	dd	_1534
	dd	1
	dd	_1535
	dd	_17
	dd	_1536
	dd	1
	dd	_1537
	dd	_17
	dd	_1538
	dd	1
	dd	_1539
	dd	_17
	dd	_1540
	dd	1
	dd	_1541
	dd	_17
	dd	_1542
	dd	1
	dd	_1543
	dd	_17
	dd	_1544
	dd	1
	dd	_1545
	dd	_17
	dd	_1546
	dd	1
	dd	_1547
	dd	_17
	dd	_1548
	dd	1
	dd	_1549
	dd	_17
	dd	_1550
	dd	1
	dd	_1551
	dd	_17
	dd	_1552
	dd	1
	dd	_1553
	dd	_17
	dd	_1554
	dd	1
	dd	_1555
	dd	_17
	dd	_1556
	dd	1
	dd	_1557
	dd	_17
	dd	_1558
	dd	1
	dd	_1559
	dd	_17
	dd	_1560
	dd	1
	dd	_1561
	dd	_17
	dd	_1562
	dd	1
	dd	_1563
	dd	_17
	dd	_1564
	dd	1
	dd	_1565
	dd	_17
	dd	_1566
	dd	1
	dd	_1567
	dd	_17
	dd	_1568
	dd	1
	dd	_1569
	dd	_17
	dd	_621
	dd	1
	dd	_1570
	dd	_17
	dd	_1571
	dd	1
	dd	_1572
	dd	_17
	dd	_1573
	dd	1
	dd	_1574
	dd	_17
	dd	_1575
	dd	1
	dd	_1576
	dd	_17
	dd	_1577
	dd	1
	dd	_1578
	dd	_17
	dd	_1579
	dd	1
	dd	_1580
	dd	_17
	dd	_1581
	dd	1
	dd	_1582
	dd	_17
	dd	_1583
	dd	1
	dd	_1584
	dd	_17
	dd	_1585
	dd	1
	dd	_1586
	dd	_17
	dd	_1587
	dd	1
	dd	_1588
	dd	_17
	dd	_1589
	dd	1
	dd	_1590
	dd	_17
	dd	_1591
	dd	1
	dd	_1592
	dd	_17
	dd	_1593
	dd	1
	dd	_1594
	dd	_17
	dd	_531
	dd	1
	dd	_1595
	dd	_17
	dd	_1596
	dd	1
	dd	_1597
	dd	_17
	dd	_554
	dd	1
	dd	_1598
	dd	_17
	dd	_339
	dd	1
	dd	_1599
	dd	_17
	dd	_341
	dd	1
	dd	_1600
	dd	_17
	dd	_343
	dd	1
	dd	_1601
	dd	_17
	dd	_396
	dd	1
	dd	_1602
	dd	_17
	dd	_398
	dd	1
	dd	_1603
	dd	_17
	dd	_400
	dd	1
	dd	_1604
	dd	_17
	dd	_402
	dd	1
	dd	_1605
	dd	_17
	dd	_404
	dd	1
	dd	_1606
	dd	_17
	dd	_406
	dd	1
	dd	_1607
	dd	_17
	dd	_408
	dd	1
	dd	_1608
	dd	_17
	dd	_410
	dd	1
	dd	_1609
	dd	_17
	dd	_412
	dd	1
	dd	_1610
	dd	_17
	dd	_414
	dd	1
	dd	_1611
	dd	_17
	dd	_416
	dd	1
	dd	_1612
	dd	_17
	dd	_418
	dd	1
	dd	_1613
	dd	_17
	dd	_420
	dd	1
	dd	_1614
	dd	_17
	dd	_339
	dd	1
	dd	_1615
	dd	_17
	dd	_341
	dd	1
	dd	_1616
	dd	_17
	dd	_343
	dd	1
	dd	_1617
	dd	_17
	dd	_396
	dd	1
	dd	_1618
	dd	_17
	dd	_398
	dd	1
	dd	_1619
	dd	_17
	dd	_400
	dd	1
	dd	_1620
	dd	_17
	dd	_402
	dd	1
	dd	_1621
	dd	_17
	dd	_404
	dd	1
	dd	_1622
	dd	_17
	dd	_406
	dd	1
	dd	_1623
	dd	_17
	dd	_408
	dd	1
	dd	_1624
	dd	_17
	dd	_410
	dd	1
	dd	_1625
	dd	_17
	dd	_412
	dd	1
	dd	_1626
	dd	_17
	dd	_414
	dd	1
	dd	_1627
	dd	_17
	dd	_416
	dd	1
	dd	_1628
	dd	_17
	dd	_418
	dd	1
	dd	_1629
	dd	_17
	dd	_420
	dd	1
	dd	_1630
	dd	_17
	dd	_422
	dd	1
	dd	_1631
	dd	_17
	dd	_424
	dd	1
	dd	_1632
	dd	_17
	dd	_426
	dd	1
	dd	_1633
	dd	_17
	dd	_428
	dd	1
	dd	_1634
	dd	_17
	dd	_339
	dd	1
	dd	_1635
	dd	_17
	dd	_341
	dd	1
	dd	_1636
	dd	_17
	dd	_343
	dd	1
	dd	_1637
	dd	_17
	dd	_396
	dd	1
	dd	_1638
	dd	_17
	dd	_398
	dd	1
	dd	_1639
	dd	_17
	dd	_400
	dd	1
	dd	_1640
	dd	_17
	dd	_402
	dd	1
	dd	_1641
	dd	_17
	dd	_404
	dd	1
	dd	_1642
	dd	_17
	dd	_406
	dd	1
	dd	_1643
	dd	_17
	dd	_408
	dd	1
	dd	_1644
	dd	_17
	dd	_410
	dd	1
	dd	_1645
	dd	_17
	dd	_412
	dd	1
	dd	_1646
	dd	_17
	dd	_414
	dd	1
	dd	_1647
	dd	_17
	dd	_416
	dd	1
	dd	_1648
	dd	_17
	dd	_418
	dd	1
	dd	_1649
	dd	_17
	dd	_420
	dd	1
	dd	_1650
	dd	_17
	dd	_422
	dd	1
	dd	_1651
	dd	_17
	dd	_424
	dd	1
	dd	_1652
	dd	_17
	dd	_426
	dd	1
	dd	_1653
	dd	_17
	dd	_428
	dd	1
	dd	_1654
	dd	_17
	dd	_339
	dd	1
	dd	_1655
	dd	_17
	dd	_341
	dd	1
	dd	_1656
	dd	_17
	dd	_343
	dd	1
	dd	_1657
	dd	_17
	dd	_396
	dd	1
	dd	_1658
	dd	_17
	dd	_398
	dd	1
	dd	_1659
	dd	_17
	dd	_400
	dd	1
	dd	_1660
	dd	_17
	dd	_402
	dd	1
	dd	_1661
	dd	_17
	dd	_404
	dd	1
	dd	_1662
	dd	_17
	dd	_406
	dd	1
	dd	_1663
	dd	_17
	dd	_408
	dd	1
	dd	_1664
	dd	_17
	dd	_410
	dd	1
	dd	_1665
	dd	_17
	dd	_412
	dd	1
	dd	_1666
	dd	_17
	dd	_414
	dd	1
	dd	_1667
	dd	_17
	dd	_416
	dd	1
	dd	_1668
	dd	_17
	dd	_418
	dd	1
	dd	_1669
	dd	_17
	dd	_420
	dd	1
	dd	_1670
	dd	_17
	dd	_422
	dd	1
	dd	_1671
	dd	_17
	dd	_424
	dd	1
	dd	_1672
	dd	_17
	dd	_426
	dd	1
	dd	_1673
	dd	_17
	dd	_428
	dd	1
	dd	_1674
	dd	_17
	dd	_430
	dd	1
	dd	_1675
	dd	_17
	dd	_432
	dd	1
	dd	_1676
	dd	_17
	dd	_434
	dd	1
	dd	_1677
	dd	_17
	dd	_436
	dd	1
	dd	_1678
	dd	_17
	dd	_438
	dd	1
	dd	_1679
	dd	_17
	dd	_440
	dd	1
	dd	_1680
	dd	_17
	dd	_442
	dd	1
	dd	_1681
	dd	_17
	dd	_448
	dd	1
	dd	_1682
	dd	_17
	dd	_450
	dd	1
	dd	_1683
	dd	_17
	dd	_452
	dd	1
	dd	_1684
	dd	_17
	dd	_454
	dd	1
	dd	_1685
	dd	_17
	dd	_391
	dd	1
	dd	_1686
	dd	_17
	dd	_1522
	dd	1
	dd	_1687
	dd	_17
	dd	_1524
	dd	1
	dd	_1688
	dd	_17
	dd	_1526
	dd	1
	dd	_1689
	dd	_17
	dd	_1528
	dd	1
	dd	_1690
	dd	_17
	dd	_1530
	dd	1
	dd	_1691
	dd	_17
	dd	_1532
	dd	1
	dd	_1692
	dd	_17
	dd	_1534
	dd	1
	dd	_1693
	dd	_17
	dd	_1536
	dd	1
	dd	_1694
	dd	_17
	dd	_1538
	dd	1
	dd	_1695
	dd	_17
	dd	_1540
	dd	1
	dd	_1696
	dd	_17
	dd	_1542
	dd	1
	dd	_1697
	dd	_17
	dd	_1544
	dd	1
	dd	_1698
	dd	_17
	dd	_1546
	dd	1
	dd	_1699
	dd	_17
	dd	_1552
	dd	1
	dd	_1700
	dd	_17
	dd	_1554
	dd	1
	dd	_1701
	dd	_17
	dd	_1556
	dd	1
	dd	_1702
	dd	_17
	dd	_1558
	dd	1
	dd	_1703
	dd	_17
	dd	_1560
	dd	1
	dd	_1704
	dd	_17
	dd	_1562
	dd	1
	dd	_1705
	dd	_17
	dd	_1564
	dd	1
	dd	_1706
	dd	_17
	dd	_1566
	dd	1
	dd	_1707
	dd	_17
	dd	_1568
	dd	1
	dd	_1708
	dd	_17
	dd	_621
	dd	1
	dd	_1709
	dd	_17
	dd	_1571
	dd	1
	dd	_1710
	dd	_17
	dd	_1573
	dd	1
	dd	_1711
	dd	_17
	dd	_1575
	dd	1
	dd	_1712
	dd	_17
	dd	_1581
	dd	1
	dd	_1713
	dd	_17
	dd	_1583
	dd	1
	dd	_1714
	dd	_17
	dd	_1585
	dd	1
	dd	_1715
	dd	_17
	dd	_1587
	dd	1
	dd	_1716
	dd	_17
	dd	_1589
	dd	1
	dd	_1717
	dd	_17
	dd	_1591
	dd	1
	dd	_1718
	dd	_17
	dd	_1593
	dd	1
	dd	_1719
	dd	_17
	dd	_531
	dd	1
	dd	_1720
	dd	_17
	dd	_1721
	dd	1
	dd	_1722
	dd	_17
	dd	_1723
	dd	1
	dd	_1724
	dd	_17
	dd	_1725
	dd	1
	dd	_1726
	dd	_17
	dd	_1727
	dd	1
	dd	_1728
	dd	_17
	dd	_1729
	dd	1
	dd	_1730
	dd	_17
	dd	_1731
	dd	1
	dd	_1732
	dd	_17
	dd	_1733
	dd	1
	dd	_1734
	dd	_17
	dd	_1735
	dd	1
	dd	_1736
	dd	_17
	dd	_1737
	dd	1
	dd	_1738
	dd	_17
	dd	_1739
	dd	1
	dd	_1740
	dd	_17
	dd	_1741
	dd	1
	dd	_1742
	dd	_17
	dd	_1743
	dd	1
	dd	_1744
	dd	_17
	dd	_1745
	dd	1
	dd	_1746
	dd	_17
	dd	_1747
	dd	1
	dd	_1748
	dd	_17
	dd	_1749
	dd	1
	dd	_1750
	dd	_17
	dd	_1751
	dd	1
	dd	_1752
	dd	_17
	dd	_1753
	dd	1
	dd	_1754
	dd	_17
	dd	_1755
	dd	1
	dd	_1756
	dd	_17
	dd	_1757
	dd	1
	dd	_1758
	dd	_17
	dd	_1759
	dd	1
	dd	_1760
	dd	_17
	dd	_1761
	dd	1
	dd	_1762
	dd	_17
	dd	_1763
	dd	1
	dd	_1764
	dd	_17
	dd	_1765
	dd	1
	dd	_1766
	dd	_17
	dd	_1767
	dd	1
	dd	_1768
	dd	_17
	dd	_1769
	dd	1
	dd	_1770
	dd	_17
	dd	_1771
	dd	1
	dd	_1772
	dd	_17
	dd	_1773
	dd	1
	dd	_1774
	dd	_17
	dd	_1775
	dd	1
	dd	_1776
	dd	_17
	dd	_1777
	dd	1
	dd	_1778
	dd	_17
	dd	_1779
	dd	1
	dd	_1780
	dd	_17
	dd	_1781
	dd	1
	dd	_1782
	dd	_17
	dd	_1783
	dd	1
	dd	_1784
	dd	_17
	dd	_1785
	dd	1
	dd	_1786
	dd	_17
	dd	_1787
	dd	1
	dd	_1788
	dd	_17
	dd	_1789
	dd	1
	dd	_1790
	dd	_17
	dd	_1791
	dd	1
	dd	_1792
	dd	_17
	dd	_1793
	dd	1
	dd	_1794
	dd	_17
	dd	_1795
	dd	1
	dd	_1796
	dd	_17
	dd	_1797
	dd	1
	dd	_1798
	dd	_17
	dd	_1799
	dd	1
	dd	_1800
	dd	_17
	dd	_1801
	dd	1
	dd	_1802
	dd	_17
	dd	_1803
	dd	1
	dd	_1804
	dd	_17
	dd	_1805
	dd	1
	dd	_1806
	dd	_17
	dd	_1807
	dd	1
	dd	_1808
	dd	_17
	dd	_515
	dd	1
	dd	_1809
	dd	_17
	dd	_339
	dd	1
	dd	_1810
	dd	_17
	dd	_341
	dd	1
	dd	_1811
	dd	_17
	dd	_343
	dd	1
	dd	_1812
	dd	_17
	dd	_396
	dd	1
	dd	_1813
	dd	_17
	dd	_398
	dd	1
	dd	_1814
	dd	_17
	dd	_400
	dd	1
	dd	_1815
	dd	_17
	dd	_402
	dd	1
	dd	_1816
	dd	_17
	dd	_404
	dd	1
	dd	_1817
	dd	_17
	dd	_406
	dd	1
	dd	_1818
	dd	_17
	dd	_408
	dd	1
	dd	_1819
	dd	_17
	dd	_410
	dd	1
	dd	_1820
	dd	_17
	dd	_412
	dd	1
	dd	_1821
	dd	_17
	dd	_414
	dd	1
	dd	_1822
	dd	_17
	dd	_416
	dd	1
	dd	_1823
	dd	_17
	dd	_418
	dd	1
	dd	_1824
	dd	_17
	dd	_420
	dd	1
	dd	_1825
	dd	_17
	dd	_422
	dd	1
	dd	_1826
	dd	_17
	dd	_424
	dd	1
	dd	_1827
	dd	_17
	dd	_426
	dd	1
	dd	_1828
	dd	_17
	dd	_428
	dd	1
	dd	_1829
	dd	_17
	dd	_430
	dd	1
	dd	_1830
	dd	_17
	dd	_432
	dd	1
	dd	_1831
	dd	_17
	dd	_434
	dd	1
	dd	_1832
	dd	_17
	dd	_436
	dd	1
	dd	_1833
	dd	_17
	dd	_438
	dd	1
	dd	_1834
	dd	_17
	dd	_440
	dd	1
	dd	_1835
	dd	_17
	dd	_442
	dd	1
	dd	_1836
	dd	_17
	dd	_448
	dd	1
	dd	_1837
	dd	_17
	dd	_450
	dd	1
	dd	_1838
	dd	_17
	dd	_452
	dd	1
	dd	_1839
	dd	_17
	dd	_454
	dd	1
	dd	_1840
	dd	_17
	dd	_391
	dd	1
	dd	_1841
	dd	_17
	dd	_339
	dd	1
	dd	_1842
	dd	_17
	dd	_341
	dd	1
	dd	_1843
	dd	_17
	dd	_343
	dd	1
	dd	_1844
	dd	_17
	dd	_396
	dd	1
	dd	_1845
	dd	_17
	dd	_398
	dd	1
	dd	_1846
	dd	_17
	dd	_400
	dd	1
	dd	_1847
	dd	_17
	dd	_402
	dd	1
	dd	_1848
	dd	_17
	dd	_404
	dd	1
	dd	_1849
	dd	_17
	dd	_406
	dd	1
	dd	_1850
	dd	_17
	dd	_408
	dd	1
	dd	_1851
	dd	_17
	dd	_410
	dd	1
	dd	_1852
	dd	_17
	dd	_412
	dd	1
	dd	_1853
	dd	_17
	dd	_414
	dd	1
	dd	_1854
	dd	_17
	dd	_416
	dd	1
	dd	_1855
	dd	_17
	dd	_418
	dd	1
	dd	_1856
	dd	_17
	dd	_420
	dd	1
	dd	_1857
	dd	_17
	dd	_422
	dd	1
	dd	_1858
	dd	_17
	dd	_424
	dd	1
	dd	_1859
	dd	_17
	dd	_426
	dd	1
	dd	_1860
	dd	_17
	dd	_428
	dd	1
	dd	_1861
	dd	_17
	dd	_430
	dd	1
	dd	_1862
	dd	_17
	dd	_432
	dd	1
	dd	_1863
	dd	_17
	dd	_434
	dd	1
	dd	_1864
	dd	_17
	dd	_436
	dd	1
	dd	_1865
	dd	_17
	dd	_438
	dd	1
	dd	_1866
	dd	_17
	dd	_440
	dd	1
	dd	_1867
	dd	_17
	dd	_442
	dd	1
	dd	_1868
	dd	_17
	dd	_448
	dd	1
	dd	_1869
	dd	_17
	dd	_450
	dd	1
	dd	_1870
	dd	_17
	dd	_452
	dd	1
	dd	_1871
	dd	_17
	dd	_454
	dd	1
	dd	_1872
	dd	_17
	dd	_391
	dd	1
	dd	_1873
	dd	_17
	dd	_1522
	dd	1
	dd	_1874
	dd	_17
	dd	_1524
	dd	1
	dd	_1875
	dd	_17
	dd	_339
	dd	1
	dd	_1876
	dd	_17
	dd	_341
	dd	1
	dd	_1877
	dd	_17
	dd	_343
	dd	1
	dd	_1878
	dd	_17
	dd	_396
	dd	1
	dd	_1879
	dd	_17
	dd	_398
	dd	1
	dd	_1880
	dd	_17
	dd	_400
	dd	1
	dd	_1881
	dd	_17
	dd	_402
	dd	1
	dd	_1882
	dd	_17
	dd	_404
	dd	1
	dd	_1883
	dd	_17
	dd	_406
	dd	1
	dd	_1884
	dd	_17
	dd	_408
	dd	1
	dd	_1885
	dd	_17
	dd	_410
	dd	1
	dd	_1886
	dd	_17
	dd	_339
	dd	1
	dd	_1887
	dd	_17
	dd	_341
	dd	1
	dd	_1888
	dd	_17
	dd	_343
	dd	1
	dd	_1889
	dd	_17
	dd	_396
	dd	1
	dd	_1890
	dd	_17
	dd	_398
	dd	1
	dd	_1891
	dd	_17
	dd	_400
	dd	1
	dd	_1892
	dd	_17
	dd	_402
	dd	1
	dd	_1893
	dd	_17
	dd	_404
	dd	1
	dd	_1894
	dd	_17
	dd	_406
	dd	1
	dd	_1895
	dd	_17
	dd	_408
	dd	1
	dd	_1896
	dd	_17
	dd	_410
	dd	1
	dd	_1897
	dd	_17
	dd	_412
	dd	1
	dd	_1898
	dd	_17
	dd	_414
	dd	1
	dd	_1899
	dd	_17
	dd	_416
	dd	1
	dd	_1900
	dd	_17
	dd	_418
	dd	1
	dd	_1901
	dd	_17
	dd	_420
	dd	1
	dd	_1902
	dd	_17
	dd	_422
	dd	1
	dd	_1903
	dd	_17
	dd	_424
	dd	1
	dd	_1904
	dd	_17
	dd	_426
	dd	1
	dd	_1905
	dd	_17
	dd	_428
	dd	1
	dd	_1906
	dd	_17
	dd	_339
	dd	1
	dd	_1907
	dd	_17
	dd	_341
	dd	1
	dd	_1908
	dd	_17
	dd	_343
	dd	1
	dd	_1909
	dd	_17
	dd	_396
	dd	1
	dd	_1910
	dd	_17
	dd	_398
	dd	1
	dd	_1911
	dd	_17
	dd	_400
	dd	1
	dd	_1912
	dd	_17
	dd	_339
	dd	1
	dd	_1913
	dd	_17
	dd	_341
	dd	1
	dd	_1914
	dd	_17
	dd	_343
	dd	1
	dd	_1915
	dd	_17
	dd	_396
	dd	1
	dd	_1916
	dd	_17
	dd	_398
	dd	1
	dd	_1917
	dd	_17
	dd	_339
	dd	1
	dd	_1918
	dd	_17
	dd	_341
	dd	1
	dd	_1919
	dd	_17
	dd	_343
	dd	1
	dd	_1920
	dd	_17
	dd	_396
	dd	1
	dd	_1921
	dd	_17
	dd	_398
	dd	1
	dd	_1922
	dd	_17
	dd	_400
	dd	1
	dd	_1923
	dd	_17
	dd	_402
	dd	1
	dd	_1924
	dd	_17
	dd	_404
	dd	1
	dd	_1925
	dd	_17
	dd	_406
	dd	1
	dd	_1926
	dd	_17
	dd	_408
	dd	1
	dd	_1927
	dd	_17
	dd	_410
	dd	1
	dd	_1928
	dd	_17
	dd	_412
	dd	1
	dd	_1929
	dd	_17
	dd	_414
	dd	1
	dd	_1930
	dd	_17
	dd	_416
	dd	1
	dd	_1931
	dd	_17
	dd	_418
	dd	1
	dd	_1932
	dd	_17
	dd	_420
	dd	1
	dd	_1933
	dd	_17
	dd	_422
	dd	1
	dd	_1934
	dd	_17
	dd	_424
	dd	1
	dd	_1935
	dd	_17
	dd	_426
	dd	1
	dd	_1936
	dd	_17
	dd	_428
	dd	1
	dd	_1937
	dd	_17
	dd	_339
	dd	1
	dd	_1938
	dd	_17
	dd	_341
	dd	1
	dd	_1939
	dd	_17
	dd	_343
	dd	1
	dd	_1940
	dd	_17
	dd	_396
	dd	1
	dd	_1941
	dd	_17
	dd	_398
	dd	1
	dd	_1942
	dd	_17
	dd	_400
	dd	1
	dd	_1943
	dd	_17
	dd	_402
	dd	1
	dd	_1944
	dd	_17
	dd	_404
	dd	1
	dd	_1945
	dd	_17
	dd	_406
	dd	1
	dd	_1946
	dd	_17
	dd	_408
	dd	1
	dd	_1947
	dd	_17
	dd	_410
	dd	1
	dd	_1948
	dd	_17
	dd	_412
	dd	1
	dd	_1949
	dd	_17
	dd	_414
	dd	1
	dd	_1950
	dd	_17
	dd	_416
	dd	1
	dd	_1951
	dd	_17
	dd	_418
	dd	1
	dd	_1952
	dd	_17
	dd	_420
	dd	1
	dd	_1953
	dd	_17
	dd	_422
	dd	1
	dd	_1954
	dd	_17
	dd	_424
	dd	1
	dd	_1955
	dd	_17
	dd	_426
	dd	1
	dd	_1956
	dd	_17
	dd	_428
	dd	1
	dd	_1957
	dd	_17
	dd	_430
	dd	1
	dd	_1958
	dd	_17
	dd	_339
	dd	1
	dd	_1959
	dd	_17
	dd	_341
	dd	1
	dd	_1960
	dd	_17
	dd	_343
	dd	1
	dd	_1961
	dd	_17
	dd	_396
	dd	1
	dd	_1962
	dd	_17
	dd	_398
	dd	1
	dd	_1963
	dd	_17
	dd	_400
	dd	1
	dd	_1964
	dd	_17
	dd	_402
	dd	1
	dd	_1965
	dd	_17
	dd	_404
	dd	1
	dd	_1966
	dd	_17
	dd	_339
	dd	1
	dd	_1967
	dd	_17
	dd	_341
	dd	1
	dd	_1968
	dd	_17
	dd	_343
	dd	1
	dd	_1969
	dd	_17
	dd	_396
	dd	1
	dd	_1970
	dd	_17
	dd	_398
	dd	1
	dd	_1971
	dd	_17
	dd	_400
	dd	1
	dd	_1972
	dd	_17
	dd	_408
	dd	1
	dd	_1973
	dd	_17
	dd	_339
	dd	1
	dd	_1974
	dd	_17
	dd	_341
	dd	1
	dd	_1975
	dd	_17
	dd	_343
	dd	1
	dd	_1976
	dd	_17
	dd	_396
	dd	1
	dd	_1977
	dd	_17
	dd	_398
	dd	1
	dd	_1978
	dd	_17
	dd	_400
	dd	1
	dd	_1979
	dd	_17
	dd	_402
	dd	1
	dd	_1980
	dd	_17
	dd	_339
	dd	1
	dd	_1981
	dd	_17
	dd	_341
	dd	1
	dd	_1982
	dd	_17
	dd	_343
	dd	1
	dd	_1983
	dd	_17
	dd	_396
	dd	1
	dd	_1984
	dd	_17
	dd	_398
	dd	1
	dd	_1985
	dd	_17
	dd	_400
	dd	1
	dd	_1986
	dd	_17
	dd	_402
	dd	1
	dd	_1987
	dd	_17
	dd	_404
	dd	1
	dd	_1988
	dd	_17
	dd	_406
	dd	1
	dd	_1989
	dd	_17
	dd	_408
	dd	1
	dd	_1990
	dd	_17
	dd	_339
	dd	1
	dd	_1991
	dd	_17
	dd	_341
	dd	1
	dd	_1992
	dd	_17
	dd	_343
	dd	1
	dd	_1993
	dd	_17
	dd	_396
	dd	1
	dd	_1994
	dd	_17
	dd	_402
	dd	1
	dd	_1995
	dd	_17
	dd	_404
	dd	1
	dd	_1996
	dd	_17
	dd	_406
	dd	1
	dd	_1997
	dd	_17
	dd	_408
	dd	1
	dd	_1998
	dd	_17
	dd	_410
	dd	1
	dd	_1999
	dd	_17
	dd	_412
	dd	1
	dd	_2000
	dd	_17
	dd	_414
	dd	1
	dd	_2001
	dd	_17
	dd	_416
	dd	1
	dd	_2002
	dd	_17
	dd	_418
	dd	1
	dd	_2003
	dd	_17
	dd	_420
	dd	1
	dd	_2004
	dd	_17
	dd	_422
	dd	1
	dd	_2005
	dd	_17
	dd	_339
	dd	1
	dd	_2006
	dd	_17
	dd	_341
	dd	1
	dd	_2007
	dd	_17
	dd	_343
	dd	1
	dd	_2008
	dd	_17
	dd	_396
	dd	1
	dd	_2009
	dd	_17
	dd	_398
	dd	1
	dd	_2010
	dd	_17
	dd	_400
	dd	1
	dd	_2011
	dd	_17
	dd	_402
	dd	1
	dd	_2012
	dd	_17
	dd	_404
	dd	1
	dd	_2013
	dd	_17
	dd	_406
	dd	1
	dd	_2014
	dd	_17
	dd	_408
	dd	1
	dd	_2015
	dd	_17
	dd	_410
	dd	1
	dd	_2016
	dd	_17
	dd	_412
	dd	1
	dd	_2017
	dd	_17
	dd	_339
	dd	1
	dd	_2018
	dd	_17
	dd	_341
	dd	1
	dd	_2019
	dd	_17
	dd	_343
	dd	1
	dd	_2020
	dd	_17
	dd	_396
	dd	1
	dd	_2021
	dd	_17
	dd	_398
	dd	1
	dd	_2022
	dd	_17
	dd	_400
	dd	1
	dd	_2023
	dd	_17
	dd	_402
	dd	1
	dd	_2024
	dd	_17
	dd	_404
	dd	1
	dd	_2025
	dd	_17
	dd	_406
	dd	1
	dd	_2026
	dd	_17
	dd	_408
	dd	1
	dd	_2027
	dd	_17
	dd	_410
	dd	1
	dd	_2028
	dd	_17
	dd	_339
	dd	1
	dd	_2029
	dd	_17
	dd	_341
	dd	1
	dd	_2030
	dd	_17
	dd	_343
	dd	1
	dd	_2031
	dd	_17
	dd	_396
	dd	1
	dd	_2032
	dd	_17
	dd	_398
	dd	1
	dd	_2033
	dd	_17
	dd	_400
	dd	1
	dd	_2034
	dd	_17
	dd	_402
	dd	1
	dd	_2035
	dd	_17
	dd	_406
	dd	1
	dd	_2036
	dd	_17
	dd	_408
	dd	1
	dd	_2037
	dd	_17
	dd	_410
	dd	1
	dd	_2038
	dd	_17
	dd	_412
	dd	1
	dd	_2039
	dd	_17
	dd	_414
	dd	1
	dd	_2040
	dd	_17
	dd	_339
	dd	1
	dd	_2041
	dd	_17
	dd	_341
	dd	1
	dd	_2042
	dd	_17
	dd	_343
	dd	1
	dd	_2043
	dd	_17
	dd	_396
	dd	1
	dd	_2044
	dd	_17
	dd	_398
	dd	1
	dd	_2045
	dd	_17
	dd	_400
	dd	1
	dd	_2046
	dd	_17
	dd	_402
	dd	1
	dd	_2047
	dd	_17
	dd	_404
	dd	1
	dd	_2048
	dd	_17
	dd	_406
	dd	1
	dd	_2049
	dd	_17
	dd	_339
	dd	1
	dd	_2050
	dd	_17
	dd	_341
	dd	1
	dd	_2051
	dd	_17
	dd	_343
	dd	1
	dd	_2052
	dd	_17
	dd	_396
	dd	1
	dd	_2053
	dd	_17
	dd	_398
	dd	1
	dd	_2054
	dd	_17
	dd	_400
	dd	1
	dd	_2055
	dd	_17
	dd	_402
	dd	1
	dd	_2056
	dd	_17
	dd	_404
	dd	1
	dd	_2057
	dd	_17
	dd	_406
	dd	1
	dd	_2058
	dd	_17
	dd	_408
	dd	1
	dd	_2059
	dd	_17
	dd	_410
	dd	1
	dd	_2060
	dd	_17
	dd	_339
	dd	1
	dd	_2061
	dd	_17
	dd	_341
	dd	1
	dd	_2062
	dd	_17
	dd	_343
	dd	1
	dd	_2063
	dd	_17
	dd	_396
	dd	1
	dd	_2064
	dd	_17
	dd	_398
	dd	1
	dd	_2065
	dd	_17
	dd	_400
	dd	1
	dd	_2066
	dd	_17
	dd	_402
	dd	1
	dd	_2067
	dd	_17
	dd	_404
	dd	1
	dd	_2068
	dd	_17
	dd	_406
	dd	1
	dd	_2069
	dd	_17
	dd	_408
	dd	1
	dd	_2070
	dd	_17
	dd	_410
	dd	1
	dd	_2071
	dd	_17
	dd	_412
	dd	1
	dd	_2072
	dd	_17
	dd	_339
	dd	1
	dd	_2073
	dd	_17
	dd	_341
	dd	1
	dd	_2074
	dd	_17
	dd	_343
	dd	1
	dd	_2075
	dd	_17
	dd	_396
	dd	1
	dd	_2076
	dd	_17
	dd	_398
	dd	1
	dd	_2077
	dd	_17
	dd	_400
	dd	1
	dd	_2078
	dd	_17
	dd	_402
	dd	1
	dd	_2079
	dd	_17
	dd	_404
	dd	1
	dd	_2080
	dd	_17
	dd	_406
	dd	1
	dd	_2081
	dd	_17
	dd	_339
	dd	1
	dd	_2082
	dd	_17
	dd	_341
	dd	1
	dd	_2083
	dd	_17
	dd	_343
	dd	1
	dd	_2084
	dd	_17
	dd	_396
	dd	1
	dd	_2085
	dd	_17
	dd	_398
	dd	1
	dd	_2086
	dd	_17
	dd	_400
	dd	1
	dd	_2087
	dd	_17
	dd	_402
	dd	1
	dd	_2088
	dd	_17
	dd	_404
	dd	1
	dd	_2089
	dd	_17
	dd	_406
	dd	1
	dd	_2090
	dd	_17
	dd	_408
	dd	1
	dd	_2091
	dd	_17
	dd	_410
	dd	1
	dd	_2092
	dd	_17
	dd	_412
	dd	1
	dd	_2093
	dd	_17
	dd	_414
	dd	1
	dd	_2094
	dd	_17
	dd	_416
	dd	1
	dd	_2095
	dd	_17
	dd	_418
	dd	1
	dd	_2096
	dd	_17
	dd	_420
	dd	1
	dd	_2097
	dd	_17
	dd	_339
	dd	1
	dd	_2098
	dd	_17
	dd	_341
	dd	1
	dd	_2099
	dd	_17
	dd	_343
	dd	1
	dd	_2100
	dd	_17
	dd	_396
	dd	1
	dd	_2101
	dd	_17
	dd	_398
	dd	1
	dd	_2102
	dd	_17
	dd	_400
	dd	1
	dd	_2103
	dd	_17
	dd	_402
	dd	1
	dd	_2104
	dd	_17
	dd	_404
	dd	1
	dd	_2105
	dd	_17
	dd	_406
	dd	1
	dd	_2106
	dd	_17
	dd	_408
	dd	1
	dd	_2107
	dd	_17
	dd	_410
	dd	1
	dd	_2108
	dd	_17
	dd	_412
	dd	1
	dd	_2109
	dd	_17
	dd	_414
	dd	1
	dd	_2110
	dd	_17
	dd	_416
	dd	1
	dd	_2111
	dd	_17
	dd	_418
	dd	1
	dd	_2112
	dd	_17
	dd	_339
	dd	1
	dd	_2113
	dd	_17
	dd	_341
	dd	1
	dd	_2114
	dd	_17
	dd	_343
	dd	1
	dd	_2115
	dd	_17
	dd	_396
	dd	1
	dd	_2116
	dd	_17
	dd	_398
	dd	1
	dd	_2117
	dd	_17
	dd	_400
	dd	1
	dd	_2118
	dd	_17
	dd	_402
	dd	1
	dd	_2119
	dd	_17
	dd	_404
	dd	1
	dd	_2120
	dd	_17
	dd	_406
	dd	1
	dd	_2121
	dd	_17
	dd	_408
	dd	1
	dd	_2122
	dd	_17
	dd	_410
	dd	1
	dd	_2123
	dd	_17
	dd	_412
	dd	1
	dd	_2124
	dd	_17
	dd	_414
	dd	1
	dd	_2125
	dd	_17
	dd	_416
	dd	1
	dd	_2126
	dd	_17
	dd	_418
	dd	1
	dd	_2127
	dd	_17
	dd	_339
	dd	1
	dd	_2128
	dd	_17
	dd	_341
	dd	1
	dd	_2129
	dd	_17
	dd	_343
	dd	1
	dd	_2130
	dd	_17
	dd	_396
	dd	1
	dd	_2131
	dd	_17
	dd	_398
	dd	1
	dd	_2132
	dd	_17
	dd	_400
	dd	1
	dd	_2133
	dd	_17
	dd	_402
	dd	1
	dd	_2134
	dd	_17
	dd	_404
	dd	1
	dd	_2135
	dd	_17
	dd	_406
	dd	1
	dd	_2136
	dd	_17
	dd	_408
	dd	1
	dd	_2137
	dd	_17
	dd	_410
	dd	1
	dd	_2138
	dd	_17
	dd	_412
	dd	1
	dd	_2139
	dd	_17
	dd	_414
	dd	1
	dd	_2140
	dd	_17
	dd	_416
	dd	1
	dd	_2141
	dd	_17
	dd	_418
	dd	1
	dd	_2142
	dd	_17
	dd	_420
	dd	1
	dd	_2143
	dd	_17
	dd	_422
	dd	1
	dd	_2144
	dd	_17
	dd	_339
	dd	1
	dd	_2145
	dd	_17
	dd	_341
	dd	1
	dd	_2146
	dd	_17
	dd	_343
	dd	1
	dd	_2147
	dd	_17
	dd	_396
	dd	1
	dd	_2148
	dd	_17
	dd	_398
	dd	1
	dd	_2149
	dd	_17
	dd	_400
	dd	1
	dd	_2150
	dd	_17
	dd	_402
	dd	1
	dd	_2151
	dd	_17
	dd	_404
	dd	1
	dd	_2152
	dd	_17
	dd	_406
	dd	1
	dd	_2153
	dd	_17
	dd	_408
	dd	1
	dd	_2154
	dd	_17
	dd	_410
	dd	1
	dd	_2155
	dd	_17
	dd	_412
	dd	1
	dd	_2156
	dd	_17
	dd	_414
	dd	1
	dd	_2157
	dd	_17
	dd	_416
	dd	1
	dd	_2158
	dd	_17
	dd	_418
	dd	1
	dd	_2159
	dd	_17
	dd	_420
	dd	1
	dd	_2160
	dd	_17
	dd	_422
	dd	1
	dd	_2161
	dd	_17
	dd	_339
	dd	1
	dd	_2162
	dd	_17
	dd	_341
	dd	1
	dd	_2163
	dd	_17
	dd	_343
	dd	1
	dd	_2164
	dd	_17
	dd	_396
	dd	1
	dd	_2165
	dd	_17
	dd	_398
	dd	1
	dd	_2166
	dd	_17
	dd	_400
	dd	1
	dd	_2167
	dd	_17
	dd	_402
	dd	1
	dd	_2168
	dd	_17
	dd	_404
	dd	1
	dd	_2169
	dd	_17
	dd	_406
	dd	1
	dd	_2170
	dd	_17
	dd	_408
	dd	1
	dd	_2171
	dd	_17
	dd	_410
	dd	1
	dd	_2172
	dd	_17
	dd	_339
	dd	1
	dd	_2173
	dd	_17
	dd	_341
	dd	1
	dd	_2174
	dd	_17
	dd	_343
	dd	1
	dd	_2175
	dd	_17
	dd	_396
	dd	1
	dd	_2176
	dd	_17
	dd	_398
	dd	1
	dd	_2177
	dd	_17
	dd	_400
	dd	1
	dd	_2178
	dd	_17
	dd	_402
	dd	1
	dd	_2179
	dd	_17
	dd	_404
	dd	1
	dd	_2180
	dd	_17
	dd	_406
	dd	1
	dd	_2181
	dd	_17
	dd	_408
	dd	1
	dd	_2182
	dd	_17
	dd	_410
	dd	1
	dd	_2183
	dd	_17
	dd	_412
	dd	1
	dd	_2184
	dd	_17
	dd	_339
	dd	1
	dd	_2185
	dd	_17
	dd	_341
	dd	1
	dd	_2186
	dd	_17
	dd	_343
	dd	1
	dd	_2187
	dd	_17
	dd	_396
	dd	1
	dd	_2188
	dd	_17
	dd	_398
	dd	1
	dd	_2189
	dd	_17
	dd	_400
	dd	1
	dd	_2190
	dd	_17
	dd	_402
	dd	1
	dd	_2191
	dd	_17
	dd	_404
	dd	1
	dd	_2192
	dd	_17
	dd	_406
	dd	1
	dd	_2193
	dd	_17
	dd	_408
	dd	1
	dd	_2194
	dd	_17
	dd	_410
	dd	1
	dd	_2195
	dd	_17
	dd	_412
	dd	1
	dd	_2196
	dd	_17
	dd	_414
	dd	1
	dd	_2197
	dd	_17
	dd	_416
	dd	1
	dd	_2198
	dd	_17
	dd	_418
	dd	1
	dd	_2199
	dd	_17
	dd	_420
	dd	1
	dd	_2200
	dd	_17
	dd	_339
	dd	1
	dd	_2201
	dd	_17
	dd	_341
	dd	1
	dd	_2202
	dd	_17
	dd	_343
	dd	1
	dd	_2203
	dd	_17
	dd	_396
	dd	1
	dd	_2204
	dd	_17
	dd	_398
	dd	1
	dd	_2205
	dd	_17
	dd	_400
	dd	1
	dd	_2206
	dd	_17
	dd	_402
	dd	1
	dd	_2207
	dd	_17
	dd	_404
	dd	1
	dd	_2208
	dd	_17
	dd	_406
	dd	1
	dd	_2209
	dd	_17
	dd	_408
	dd	1
	dd	_2210
	dd	_17
	dd	_410
	dd	1
	dd	_2211
	dd	_17
	dd	_412
	dd	1
	dd	_2212
	dd	_17
	dd	_414
	dd	1
	dd	_2213
	dd	_17
	dd	_416
	dd	1
	dd	_2214
	dd	_17
	dd	_418
	dd	1
	dd	_2215
	dd	_17
	dd	_420
	dd	1
	dd	_2216
	dd	_17
	dd	_422
	dd	1
	dd	_2217
	dd	_17
	dd	_424
	dd	1
	dd	_2218
	dd	_17
	dd	_426
	dd	1
	dd	_2219
	dd	_17
	dd	_339
	dd	1
	dd	_2220
	dd	_17
	dd	_341
	dd	1
	dd	_2221
	dd	_17
	dd	_343
	dd	1
	dd	_2222
	dd	_17
	dd	_396
	dd	1
	dd	_2223
	dd	_17
	dd	_398
	dd	1
	dd	_2224
	dd	_17
	dd	_400
	dd	1
	dd	_2225
	dd	_17
	dd	_402
	dd	1
	dd	_2226
	dd	_17
	dd	_404
	dd	1
	dd	_2227
	dd	_17
	dd	_406
	dd	1
	dd	_2228
	dd	_17
	dd	_408
	dd	1
	dd	_2229
	dd	_17
	dd	_410
	dd	1
	dd	_2230
	dd	_17
	dd	_412
	dd	1
	dd	_2231
	dd	_17
	dd	_414
	dd	1
	dd	_2232
	dd	_17
	dd	_416
	dd	1
	dd	_2233
	dd	_17
	dd	_418
	dd	1
	dd	_2234
	dd	_17
	dd	_420
	dd	1
	dd	_2235
	dd	_17
	dd	_422
	dd	1
	dd	_2236
	dd	_17
	dd	_424
	dd	1
	dd	_2237
	dd	_17
	dd	_339
	dd	1
	dd	_2238
	dd	_17
	dd	_341
	dd	1
	dd	_2239
	dd	_17
	dd	_343
	dd	1
	dd	_2240
	dd	_17
	dd	_396
	dd	1
	dd	_2241
	dd	_17
	dd	_398
	dd	1
	dd	_2242
	dd	_17
	dd	_400
	dd	1
	dd	_2243
	dd	_17
	dd	_402
	dd	1
	dd	_2244
	dd	_17
	dd	_404
	dd	1
	dd	_2245
	dd	_17
	dd	_406
	dd	1
	dd	_2246
	dd	_17
	dd	_408
	dd	1
	dd	_2247
	dd	_17
	dd	_410
	dd	1
	dd	_2248
	dd	_17
	dd	_412
	dd	1
	dd	_2249
	dd	_17
	dd	_414
	dd	1
	dd	_2250
	dd	_17
	dd	_416
	dd	1
	dd	_2251
	dd	_17
	dd	_418
	dd	1
	dd	_2252
	dd	_17
	dd	_420
	dd	1
	dd	_2253
	dd	_17
	dd	_422
	dd	1
	dd	_2254
	dd	_17
	dd	_339
	dd	1
	dd	_2255
	dd	_17
	dd	_341
	dd	1
	dd	_2256
	dd	_17
	dd	_343
	dd	1
	dd	_2257
	dd	_17
	dd	_396
	dd	1
	dd	_2258
	dd	_17
	dd	_398
	dd	1
	dd	_2259
	dd	_17
	dd	_400
	dd	1
	dd	_2260
	dd	_17
	dd	_402
	dd	1
	dd	_2261
	dd	_17
	dd	_339
	dd	1
	dd	_2262
	dd	_17
	dd	_341
	dd	1
	dd	_2263
	dd	_17
	dd	_343
	dd	1
	dd	_2264
	dd	_17
	dd	_396
	dd	1
	dd	_2265
	dd	_17
	dd	_398
	dd	1
	dd	_2266
	dd	_17
	dd	_400
	dd	1
	dd	_2267
	dd	_17
	dd	_402
	dd	1
	dd	_2268
	dd	_17
	dd	_404
	dd	1
	dd	_2269
	dd	_17
	dd	_406
	dd	1
	dd	_2270
	dd	_17
	dd	_339
	dd	1
	dd	_2271
	dd	_17
	dd	_341
	dd	1
	dd	_2272
	dd	_17
	dd	_343
	dd	1
	dd	_2273
	dd	_17
	dd	_396
	dd	1
	dd	_2274
	dd	_17
	dd	_398
	dd	1
	dd	_2275
	dd	_17
	dd	_400
	dd	1
	dd	_2276
	dd	_17
	dd	_339
	dd	1
	dd	_2277
	dd	_17
	dd	_341
	dd	1
	dd	_2278
	dd	_17
	dd	_343
	dd	1
	dd	_2279
	dd	_17
	dd	_396
	dd	1
	dd	_2280
	dd	_17
	dd	_398
	dd	1
	dd	_2281
	dd	_17
	dd	_400
	dd	1
	dd	_2282
	dd	_17
	dd	_402
	dd	1
	dd	_2283
	dd	_17
	dd	_339
	dd	1
	dd	_2284
	dd	_17
	dd	_341
	dd	1
	dd	_2285
	dd	_17
	dd	_343
	dd	1
	dd	_2286
	dd	_17
	dd	_396
	dd	1
	dd	_2287
	dd	_17
	dd	_398
	dd	1
	dd	_2288
	dd	_17
	dd	_400
	dd	1
	dd	_2289
	dd	_17
	dd	_402
	dd	1
	dd	_2290
	dd	_17
	dd	_404
	dd	1
	dd	_2291
	dd	_17
	dd	_406
	dd	1
	dd	_2292
	dd	_17
	dd	_408
	dd	1
	dd	_2293
	dd	_17
	dd	_410
	dd	1
	dd	_2294
	dd	_17
	dd	_412
	dd	1
	dd	_2295
	dd	_17
	dd	_414
	dd	1
	dd	_2296
	dd	_17
	dd	_416
	dd	1
	dd	_2297
	dd	_17
	dd	_391
	dd	1
	dd	_2298
	dd	_17
	dd	_339
	dd	1
	dd	_2299
	dd	_17
	dd	_341
	dd	1
	dd	_2300
	dd	_17
	dd	_343
	dd	1
	dd	_2301
	dd	_17
	dd	_396
	dd	1
	dd	_2302
	dd	_17
	dd	_398
	dd	1
	dd	_2303
	dd	_17
	dd	_400
	dd	1
	dd	_2304
	dd	_17
	dd	_402
	dd	1
	dd	_2305
	dd	_17
	dd	_404
	dd	1
	dd	_2306
	dd	_17
	dd	_406
	dd	1
	dd	_2307
	dd	_17
	dd	_408
	dd	1
	dd	_2308
	dd	_17
	dd	_410
	dd	1
	dd	_2309
	dd	_17
	dd	_412
	dd	1
	dd	_2310
	dd	_17
	dd	_414
	dd	1
	dd	_2311
	dd	_17
	dd	_416
	dd	1
	dd	_2312
	dd	_17
	dd	_418
	dd	1
	dd	_2313
	dd	_17
	dd	_420
	dd	1
	dd	_2314
	dd	_17
	dd	_422
	dd	1
	dd	_2315
	dd	_17
	dd	_339
	dd	1
	dd	_2316
	dd	_17
	dd	_341
	dd	1
	dd	_2317
	dd	_17
	dd	_343
	dd	1
	dd	_2318
	dd	_17
	dd	_396
	dd	1
	dd	_2319
	dd	_17
	dd	_398
	dd	1
	dd	_2320
	dd	_17
	dd	_400
	dd	1
	dd	_2321
	dd	_17
	dd	_402
	dd	1
	dd	_2322
	dd	_17
	dd	_404
	dd	1
	dd	_2323
	dd	_17
	dd	_406
	dd	1
	dd	_2324
	dd	_17
	dd	_408
	dd	1
	dd	_2325
	dd	_17
	dd	_410
	dd	1
	dd	_2326
	dd	_17
	dd	_412
	dd	1
	dd	_2327
	dd	_17
	dd	_414
	dd	1
	dd	_2328
	dd	_17
	dd	_428
	dd	1
	dd	_2329
	dd	_17
	dd	_339
	dd	1
	dd	_2330
	dd	_17
	dd	_341
	dd	1
	dd	_2331
	dd	_17
	dd	_343
	dd	1
	dd	_2332
	dd	_17
	dd	_396
	dd	1
	dd	_2333
	dd	_17
	dd	_398
	dd	1
	dd	_2334
	dd	_17
	dd	_400
	dd	1
	dd	_2335
	dd	_17
	dd	_402
	dd	1
	dd	_2336
	dd	_17
	dd	_404
	dd	1
	dd	_2337
	dd	_17
	dd	_406
	dd	1
	dd	_2338
	dd	_17
	dd	_408
	dd	1
	dd	_2339
	dd	_17
	dd	_391
	dd	1
	dd	_2340
	dd	_17
	dd	_339
	dd	1
	dd	_2341
	dd	_17
	dd	_341
	dd	1
	dd	_2342
	dd	_17
	dd	_343
	dd	1
	dd	_2343
	dd	_17
	dd	_396
	dd	1
	dd	_2344
	dd	_17
	dd	_398
	dd	1
	dd	_2345
	dd	_17
	dd	_400
	dd	1
	dd	_2346
	dd	_17
	dd	_402
	dd	1
	dd	_2347
	dd	_17
	dd	_404
	dd	1
	dd	_2348
	dd	_17
	dd	_406
	dd	1
	dd	_2349
	dd	_17
	dd	_408
	dd	1
	dd	_2350
	dd	_17
	dd	_339
	dd	1
	dd	_2351
	dd	_17
	dd	_341
	dd	1
	dd	_2352
	dd	_17
	dd	_343
	dd	1
	dd	_2353
	dd	_17
	dd	_396
	dd	1
	dd	_2354
	dd	_17
	dd	_398
	dd	1
	dd	_2355
	dd	_17
	dd	_400
	dd	1
	dd	_2356
	dd	_17
	dd	_402
	dd	1
	dd	_2357
	dd	_17
	dd	_404
	dd	1
	dd	_2358
	dd	_17
	dd	_406
	dd	1
	dd	_2359
	dd	_17
	dd	_408
	dd	1
	dd	_2360
	dd	_17
	dd	_410
	dd	1
	dd	_2361
	dd	_17
	dd	_412
	dd	1
	dd	_2362
	dd	_17
	dd	_414
	dd	1
	dd	_2363
	dd	_17
	dd	_416
	dd	1
	dd	_2364
	dd	_17
	dd	_418
	dd	1
	dd	_2365
	dd	_17
	dd	_428
	dd	1
	dd	_2366
	dd	_17
	dd	_339
	dd	1
	dd	_2367
	dd	_17
	dd	_341
	dd	1
	dd	_2368
	dd	_17
	dd	_343
	dd	1
	dd	_2369
	dd	_17
	dd	_396
	dd	1
	dd	_2370
	dd	_17
	dd	_398
	dd	1
	dd	_2371
	dd	_17
	dd	_400
	dd	1
	dd	_2372
	dd	_17
	dd	_402
	dd	1
	dd	_2373
	dd	_17
	dd	_404
	dd	1
	dd	_2374
	dd	_17
	dd	_406
	dd	1
	dd	_2375
	dd	_17
	dd	_408
	dd	1
	dd	_2376
	dd	_17
	dd	_410
	dd	1
	dd	_2377
	dd	_17
	dd	_412
	dd	1
	dd	_2378
	dd	_17
	dd	_414
	dd	1
	dd	_2379
	dd	_17
	dd	_416
	dd	1
	dd	_2380
	dd	_17
	dd	_418
	dd	1
	dd	_2381
	dd	_17
	dd	_339
	dd	1
	dd	_2382
	dd	_17
	dd	_341
	dd	1
	dd	_2383
	dd	_17
	dd	_343
	dd	1
	dd	_2384
	dd	_17
	dd	_396
	dd	1
	dd	_2385
	dd	_17
	dd	_398
	dd	1
	dd	_2386
	dd	_17
	dd	_400
	dd	1
	dd	_2387
	dd	_17
	dd	_402
	dd	1
	dd	_2388
	dd	_17
	dd	_404
	dd	1
	dd	_2389
	dd	_17
	dd	_406
	dd	1
	dd	_2390
	dd	_17
	dd	_408
	dd	1
	dd	_2391
	dd	_17
	dd	_410
	dd	1
	dd	_2392
	dd	_17
	dd	_412
	dd	1
	dd	_2393
	dd	_17
	dd	_414
	dd	1
	dd	_2394
	dd	_17
	dd	_339
	dd	1
	dd	_2395
	dd	_17
	dd	_341
	dd	1
	dd	_2396
	dd	_17
	dd	_343
	dd	1
	dd	_2397
	dd	_17
	dd	_396
	dd	1
	dd	_2398
	dd	_17
	dd	_398
	dd	1
	dd	_2399
	dd	_17
	dd	_400
	dd	1
	dd	_2400
	dd	_17
	dd	_402
	dd	1
	dd	_2401
	dd	_17
	dd	_404
	dd	1
	dd	_2402
	dd	_17
	dd	_406
	dd	1
	dd	_2403
	dd	_17
	dd	_408
	dd	1
	dd	_2404
	dd	_17
	dd	_410
	dd	1
	dd	_2405
	dd	_17
	dd	_412
	dd	1
	dd	_2406
	dd	_17
	dd	_414
	dd	1
	dd	_2407
	dd	_17
	dd	_416
	dd	1
	dd	_2408
	dd	_17
	dd	_339
	dd	1
	dd	_2409
	dd	_17
	dd	_341
	dd	1
	dd	_2410
	dd	_17
	dd	_343
	dd	1
	dd	_2411
	dd	_17
	dd	_396
	dd	1
	dd	_2412
	dd	_17
	dd	_398
	dd	1
	dd	_2413
	dd	_17
	dd	_400
	dd	1
	dd	_2414
	dd	_17
	dd	_402
	dd	1
	dd	_2415
	dd	_17
	dd	_404
	dd	1
	dd	_2416
	dd	_17
	dd	_406
	dd	1
	dd	_2417
	dd	_17
	dd	_408
	dd	1
	dd	_2418
	dd	_17
	dd	_410
	dd	1
	dd	_2419
	dd	_17
	dd	_339
	dd	1
	dd	_2420
	dd	_17
	dd	_341
	dd	1
	dd	_2421
	dd	_17
	dd	_343
	dd	1
	dd	_2422
	dd	_17
	dd	_396
	dd	1
	dd	_2423
	dd	_17
	dd	_398
	dd	1
	dd	_2424
	dd	_17
	dd	_400
	dd	1
	dd	_2425
	dd	_17
	dd	_402
	dd	1
	dd	_2426
	dd	_17
	dd	_404
	dd	1
	dd	_2427
	dd	_17
	dd	_406
	dd	1
	dd	_2428
	dd	_17
	dd	_408
	dd	1
	dd	_2429
	dd	_17
	dd	_410
	dd	1
	dd	_2430
	dd	_17
	dd	_412
	dd	1
	dd	_2431
	dd	_17
	dd	_414
	dd	1
	dd	_2432
	dd	_17
	dd	_416
	dd	1
	dd	_2433
	dd	_17
	dd	_418
	dd	1
	dd	_2434
	dd	_17
	dd	_339
	dd	1
	dd	_2435
	dd	_17
	dd	_341
	dd	1
	dd	_2436
	dd	_17
	dd	_343
	dd	1
	dd	_2437
	dd	_17
	dd	_396
	dd	1
	dd	_2438
	dd	_17
	dd	_398
	dd	1
	dd	_2439
	dd	_17
	dd	_400
	dd	1
	dd	_2440
	dd	_17
	dd	_402
	dd	1
	dd	_2441
	dd	_17
	dd	_404
	dd	1
	dd	_2442
	dd	_17
	dd	_406
	dd	1
	dd	_2443
	dd	_17
	dd	_408
	dd	1
	dd	_2444
	dd	_17
	dd	_412
	dd	1
	dd	_2445
	dd	_17
	dd	_414
	dd	1
	dd	_2446
	dd	_17
	dd	_416
	dd	1
	dd	_2447
	dd	_17
	dd	_418
	dd	1
	dd	_2448
	dd	_17
	dd	_420
	dd	1
	dd	_2449
	dd	_17
	dd	_339
	dd	1
	dd	_2450
	dd	_17
	dd	_341
	dd	1
	dd	_2451
	dd	_17
	dd	_343
	dd	1
	dd	_2452
	dd	_17
	dd	_396
	dd	1
	dd	_2453
	dd	_17
	dd	_398
	dd	1
	dd	_2454
	dd	_17
	dd	_400
	dd	1
	dd	_2455
	dd	_17
	dd	_402
	dd	1
	dd	_2456
	dd	_17
	dd	_404
	dd	1
	dd	_2457
	dd	_17
	dd	_406
	dd	1
	dd	_2458
	dd	_17
	dd	_408
	dd	1
	dd	_2459
	dd	_17
	dd	_410
	dd	1
	dd	_2460
	dd	_17
	dd	_412
	dd	1
	dd	_2461
	dd	_17
	dd	_414
	dd	1
	dd	_2462
	dd	_17
	dd	_416
	dd	1
	dd	_2463
	dd	_17
	dd	_418
	dd	1
	dd	_2464
	dd	_17
	dd	_420
	dd	1
	dd	_2465
	dd	_17
	dd	_422
	dd	1
	dd	_2466
	dd	_17
	dd	_339
	dd	1
	dd	_2467
	dd	_17
	dd	_341
	dd	1
	dd	_2468
	dd	_17
	dd	_343
	dd	1
	dd	_2469
	dd	_17
	dd	_396
	dd	1
	dd	_2470
	dd	_17
	dd	_398
	dd	1
	dd	_2471
	dd	_17
	dd	_400
	dd	1
	dd	_2472
	dd	_17
	dd	_402
	dd	1
	dd	_2473
	dd	_17
	dd	_404
	dd	1
	dd	_2474
	dd	_17
	dd	_406
	dd	1
	dd	_2475
	dd	_17
	dd	_408
	dd	1
	dd	_2476
	dd	_17
	dd	_410
	dd	1
	dd	_2477
	dd	_17
	dd	_412
	dd	1
	dd	_2478
	dd	_17
	dd	_414
	dd	1
	dd	_2479
	dd	_17
	dd	_416
	dd	1
	dd	_2480
	dd	_17
	dd	_418
	dd	1
	dd	_2481
	dd	_17
	dd	_420
	dd	1
	dd	_2482
	dd	_17
	dd	_422
	dd	1
	dd	_2483
	dd	_17
	dd	_424
	dd	1
	dd	_2484
	dd	_17
	dd	_426
	dd	1
	dd	_2485
	dd	_17
	dd	_428
	dd	1
	dd	_2486
	dd	_17
	dd	_339
	dd	1
	dd	_2487
	dd	_17
	dd	_341
	dd	1
	dd	_2488
	dd	_17
	dd	_343
	dd	1
	dd	_2489
	dd	_17
	dd	_396
	dd	1
	dd	_2490
	dd	_17
	dd	_398
	dd	1
	dd	_2491
	dd	_17
	dd	_400
	dd	1
	dd	_2492
	dd	_17
	dd	_402
	dd	1
	dd	_2493
	dd	_17
	dd	_404
	dd	1
	dd	_2494
	dd	_17
	dd	_406
	dd	1
	dd	_2495
	dd	_17
	dd	_408
	dd	1
	dd	_2496
	dd	_17
	dd	_410
	dd	1
	dd	_2497
	dd	_17
	dd	_412
	dd	1
	dd	_2498
	dd	_17
	dd	_414
	dd	1
	dd	_2499
	dd	_17
	dd	_416
	dd	1
	dd	_2500
	dd	_17
	dd	_418
	dd	1
	dd	_2501
	dd	_17
	dd	_420
	dd	1
	dd	_2502
	dd	_17
	dd	_422
	dd	1
	dd	_2503
	dd	_17
	dd	_424
	dd	1
	dd	_2504
	dd	_17
	dd	_426
	dd	1
	dd	_2505
	dd	_17
	dd	_428
	dd	1
	dd	_2506
	dd	_17
	dd	_430
	dd	1
	dd	_2507
	dd	_17
	dd	_432
	dd	1
	dd	_2508
	dd	_17
	dd	_434
	dd	1
	dd	_2509
	dd	_17
	dd	_436
	dd	1
	dd	_2510
	dd	_17
	dd	_438
	dd	1
	dd	_2511
	dd	_17
	dd	_440
	dd	1
	dd	_2512
	dd	_17
	dd	_442
	dd	1
	dd	_2513
	dd	_17
	dd	_448
	dd	1
	dd	_2514
	dd	_17
	dd	_450
	dd	1
	dd	_2515
	dd	_17
	dd	_339
	dd	1
	dd	_2516
	dd	_17
	dd	_341
	dd	1
	dd	_2517
	dd	_17
	dd	_343
	dd	1
	dd	_2518
	dd	_17
	dd	_396
	dd	1
	dd	_2519
	dd	_17
	dd	_398
	dd	1
	dd	_2520
	dd	_17
	dd	_400
	dd	1
	dd	_2521
	dd	_17
	dd	_402
	dd	1
	dd	_2522
	dd	_17
	dd	_404
	dd	1
	dd	_2523
	dd	_17
	dd	_406
	dd	1
	dd	_2524
	dd	_17
	dd	_408
	dd	1
	dd	_2525
	dd	_17
	dd	_410
	dd	1
	dd	_2526
	dd	_17
	dd	_412
	dd	1
	dd	_2527
	dd	_17
	dd	_416
	dd	1
	dd	_2528
	dd	_17
	dd	_420
	dd	1
	dd	_2529
	dd	_17
	dd	_422
	dd	1
	dd	_2530
	dd	_17
	dd	_424
	dd	1
	dd	_2531
	dd	_17
	dd	_426
	dd	1
	dd	_2532
	dd	_17
	dd	_428
	dd	1
	dd	_2533
	dd	_17
	dd	_430
	dd	1
	dd	_2534
	dd	_17
	dd	_432
	dd	1
	dd	_2535
	dd	_17
	dd	_434
	dd	1
	dd	_2536
	dd	_17
	dd	_436
	dd	1
	dd	_2537
	dd	_17
	dd	_339
	dd	1
	dd	_2538
	dd	_17
	dd	_341
	dd	1
	dd	_2539
	dd	_17
	dd	_343
	dd	1
	dd	_2540
	dd	_17
	dd	_396
	dd	1
	dd	_2541
	dd	_17
	dd	_398
	dd	1
	dd	_2542
	dd	_17
	dd	_400
	dd	1
	dd	_2543
	dd	_17
	dd	_402
	dd	1
	dd	_2544
	dd	_17
	dd	_404
	dd	1
	dd	_2545
	dd	_17
	dd	_406
	dd	1
	dd	_2546
	dd	_17
	dd	_408
	dd	1
	dd	_2547
	dd	_17
	dd	_410
	dd	1
	dd	_2548
	dd	_17
	dd	_412
	dd	1
	dd	_2549
	dd	_17
	dd	_414
	dd	1
	dd	_2550
	dd	_17
	dd	_416
	dd	1
	dd	_2551
	dd	_17
	dd	_418
	dd	1
	dd	_2552
	dd	_17
	dd	_420
	dd	1
	dd	_2553
	dd	_17
	dd	_422
	dd	1
	dd	_2554
	dd	_17
	dd	_339
	dd	1
	dd	_2555
	dd	_17
	dd	_341
	dd	1
	dd	_2556
	dd	_17
	dd	_343
	dd	1
	dd	_2557
	dd	_17
	dd	_396
	dd	1
	dd	_2558
	dd	_17
	dd	_398
	dd	1
	dd	_2559
	dd	_17
	dd	_400
	dd	1
	dd	_2560
	dd	_17
	dd	_402
	dd	1
	dd	_2561
	dd	_17
	dd	_404
	dd	1
	dd	_2562
	dd	_17
	dd	_406
	dd	1
	dd	_2563
	dd	_17
	dd	_408
	dd	1
	dd	_2564
	dd	_17
	dd	_410
	dd	1
	dd	_2565
	dd	_17
	dd	_412
	dd	1
	dd	_2566
	dd	_17
	dd	_414
	dd	1
	dd	_2567
	dd	_17
	dd	_416
	dd	1
	dd	_2568
	dd	_17
	dd	_418
	dd	1
	dd	_2569
	dd	_17
	dd	_420
	dd	1
	dd	_2570
	dd	_17
	dd	_422
	dd	1
	dd	_2571
	dd	_17
	dd	_424
	dd	1
	dd	_2572
	dd	_17
	dd	_426
	dd	1
	dd	_2573
	dd	_17
	dd	_428
	dd	1
	dd	_2574
	dd	_17
	dd	_430
	dd	1
	dd	_2575
	dd	_17
	dd	_432
	dd	1
	dd	_2576
	dd	_17
	dd	_434
	dd	1
	dd	_2577
	dd	_17
	dd	_436
	dd	1
	dd	_2578
	dd	_17
	dd	_339
	dd	1
	dd	_2579
	dd	_17
	dd	_341
	dd	1
	dd	_2580
	dd	_17
	dd	_343
	dd	1
	dd	_2581
	dd	_17
	dd	_396
	dd	1
	dd	_2582
	dd	_17
	dd	_398
	dd	1
	dd	_2583
	dd	_17
	dd	_400
	dd	1
	dd	_2584
	dd	_17
	dd	_402
	dd	1
	dd	_2585
	dd	_17
	dd	_404
	dd	1
	dd	_2586
	dd	_17
	dd	_406
	dd	1
	dd	_2587
	dd	_17
	dd	_408
	dd	1
	dd	_2588
	dd	_17
	dd	_410
	dd	1
	dd	_2589
	dd	_17
	dd	_412
	dd	1
	dd	_2590
	dd	_17
	dd	_414
	dd	1
	dd	_2591
	dd	_17
	dd	_416
	dd	1
	dd	_2592
	dd	_17
	dd	_418
	dd	1
	dd	_2593
	dd	_17
	dd	_420
	dd	1
	dd	_2594
	dd	_17
	dd	_339
	dd	1
	dd	_2595
	dd	_17
	dd	_341
	dd	1
	dd	_2596
	dd	_17
	dd	_343
	dd	1
	dd	_2597
	dd	_17
	dd	_396
	dd	1
	dd	_2598
	dd	_17
	dd	_398
	dd	1
	dd	_2599
	dd	_17
	dd	_400
	dd	1
	dd	_2600
	dd	_17
	dd	_402
	dd	1
	dd	_2601
	dd	_17
	dd	_404
	dd	1
	dd	_2602
	dd	_17
	dd	_406
	dd	1
	dd	_2603
	dd	_17
	dd	_408
	dd	1
	dd	_2604
	dd	_17
	dd	_410
	dd	1
	dd	_2605
	dd	_17
	dd	_412
	dd	1
	dd	_2606
	dd	_17
	dd	_414
	dd	1
	dd	_2607
	dd	_17
	dd	_339
	dd	1
	dd	_2608
	dd	_17
	dd	_341
	dd	1
	dd	_2609
	dd	_17
	dd	_343
	dd	1
	dd	_2610
	dd	_17
	dd	_396
	dd	1
	dd	_2611
	dd	_17
	dd	_398
	dd	1
	dd	_2612
	dd	_17
	dd	_400
	dd	1
	dd	_2613
	dd	_17
	dd	_402
	dd	1
	dd	_2614
	dd	_17
	dd	_404
	dd	1
	dd	_2615
	dd	_17
	dd	_406
	dd	1
	dd	_2616
	dd	_17
	dd	_499
	dd	1
	dd	_2617
	dd	_17
	dd	_452
	dd	1
	dd	_2618
	dd	_17
	dd	_454
	dd	0
_2697:
	db	"New",0
_2698:
	db	"Self",0
_2699:
	db	":SCNotification",0
	align	4
_2696:
	dd	1
	dd	_2697
	dd	2
	dd	_2698
	dd	_2699
	dd	-4
	dd	0
_15:
	db	"SCNotification",0
_16:
	db	"code",0
_18:
	db	"position",0
_19:
	db	"ch",0
_20:
	db	"modifiers",0
_21:
	db	"modificationType",0
_22:
	db	"text",0
_23:
	db	"*b",0
_24:
	db	"length",0
_25:
	db	"linesAdded",0
_26:
	db	"message",0
_27:
	db	"wParam",0
_28:
	db	"lParam",0
_29:
	db	"line",0
_30:
	db	"foldLevelNow",0
_31:
	db	"foldLevelPrev",0
_32:
	db	"margin",0
_33:
	db	"listType",0
_34:
	db	"x",0
_35:
	db	"y",0
	align	4
_14:
	dd	2
	dd	_15
	dd	3
	dd	_16
	dd	_17
	dd	8
	dd	3
	dd	_18
	dd	_17
	dd	12
	dd	3
	dd	_19
	dd	_17
	dd	16
	dd	3
	dd	_20
	dd	_17
	dd	20
	dd	3
	dd	_21
	dd	_17
	dd	24
	dd	3
	dd	_22
	dd	_23
	dd	28
	dd	3
	dd	_24
	dd	_17
	dd	32
	dd	3
	dd	_25
	dd	_17
	dd	36
	dd	3
	dd	_26
	dd	_17
	dd	40
	dd	3
	dd	_27
	dd	_23
	dd	44
	dd	3
	dd	_28
	dd	_23
	dd	48
	dd	3
	dd	_29
	dd	_17
	dd	52
	dd	3
	dd	_30
	dd	_17
	dd	56
	dd	3
	dd	_31
	dd	_17
	dd	60
	dd	3
	dd	_32
	dd	_17
	dd	64
	dd	3
	dd	_33
	dd	_17
	dd	68
	dd	3
	dd	_34
	dd	_17
	dd	72
	dd	3
	dd	_35
	dd	_17
	dd	76
	dd	0
	align	4
gtk_scintilla_SCNotification:
	dd	bbObjectClass
	dd	bbObjectFree
	dd	_14
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
_2694:
	dd	3
	dd	0
	dd	0
_2622:
	db	"$BMXPATH/mod/gtk.mod/scintilla.mod/binding.bmx",0
	align	4
_2621:
	dd	_2622
	dd	54
	dd	3
	align	4
_2626:
	dd	_2622
	dd	55
	dd	3
	align	4
_2630:
	dd	_2622
	dd	56
	dd	3
	align	4
_2634:
	dd	_2622
	dd	57
	dd	3
	align	4
_2638:
	dd	_2622
	dd	58
	dd	3
	align	4
_2642:
	dd	_2622
	dd	59
	dd	3
	align	4
_2646:
	dd	_2622
	dd	60
	dd	3
	align	4
_2650:
	dd	_2622
	dd	61
	dd	3
	align	4
_2654:
	dd	_2622
	dd	62
	dd	3
	align	4
_2658:
	dd	_2622
	dd	63
	dd	3
	align	4
_2662:
	dd	_2622
	dd	64
	dd	3
	align	4
_2666:
	dd	_2622
	dd	65
	dd	3
	align	4
_2670:
	dd	_2622
	dd	66
	dd	3
	align	4
_2674:
	dd	_2622
	dd	67
	dd	3
	align	4
_2678:
	dd	_2622
	dd	68
	dd	3
	align	4
_2682:
	dd	_2622
	dd	69
	dd	3
	align	4
_2686:
	dd	_2622
	dd	70
	dd	3
	align	4
_2690:
	dd	_2622
	dd	71
	dd	3
	align	4
_2695:
	dd	3
	dd	0
	dd	0
_2703:
	db	"Delete",0
	align	4
_2702:
	dd	1
	dd	_2703
	dd	2
	dd	_2698
	dd	_2699
	dd	-4
	dd	0
	align	4
_2700:
	dd	3
	dd	0
	dd	0
_2712:
	db	":GtkScintilla",0
	align	4
_2711:
	dd	1
	dd	_2697
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	0
_37:
	db	"GtkScintilla",0
_38:
	db	"ScintillaHandle",0
	align	4
_36:
	dd	2
	dd	_37
	dd	3
	dd	_38
	dd	_23
	dd	12
	dd	0
	align	4
gtk_scintilla_GtkScintilla:
	dd	gtk_oop_GtkWidget
	dd	bbObjectFree
	dd	_36
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
	align	4
_2709:
	dd	3
	dd	0
	dd	0
_2705:
	db	"$BMXPATH/mod/gtk.mod/scintilla.mod/oop.bmx",0
	align	4
_2704:
	dd	_2705
	dd	20
	dd	2
	align	4
_2710:
	dd	3
	dd	0
	dd	0
	align	4
_2715:
	dd	1
	dd	_2703
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	0
	align	4
_2713:
	dd	3
	dd	0
	dd	0
_2730:
	db	"Create",0
_2731:
	db	"TempScintilla",0
	align	4
_2729:
	dd	1
	dd	_2730
	dd	2
	dd	_2731
	dd	_2712
	dd	-4
	dd	0
	align	4
_2716:
	dd	_2705
	dd	23
	dd	3
	align	4
_2718:
	dd	_2705
	dd	24
	dd	3
	align	4
_2722:
	dd	_2705
	dd	25
	dd	3
	align	4
_2728:
	dd	_2705
	dd	26
	dd	3
_2746:
	db	"CreateFromHandle",0
_2747:
	db	"Handle",0
	align	4
_2745:
	dd	1
	dd	_2746
	dd	2
	dd	_2747
	dd	_23
	dd	-4
	dd	2
	dd	_2731
	dd	_2712
	dd	-8
	dd	0
	align	4
_2732:
	dd	_2705
	dd	30
	dd	3
	align	4
_2734:
	dd	_2705
	dd	31
	dd	3
	align	4
_2738:
	dd	_2705
	dd	32
	dd	3
	align	4
_2744:
	dd	_2705
	dd	33
	dd	3
_2752:
	db	"InsertText",0
_2753:
	db	"Text",0
_2754:
	db	"$",0
_2755:
	db	"Pos",0
	align	4
_2751:
	dd	1
	dd	_2752
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2753
	dd	_2754
	dd	-8
	dd	2
	dd	_2755
	dd	_17
	dd	-12
	dd	0
	align	4
_2748:
	dd	_2705
	dd	37
	dd	3
_2760:
	db	"AppendText",0
	align	4
_2759:
	dd	1
	dd	_2760
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2753
	dd	_2754
	dd	-8
	dd	0
	align	4
_2756:
	dd	_2705
	dd	41
	dd	3
_2765:
	db	"AddText",0
	align	4
_2764:
	dd	1
	dd	_2765
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2753
	dd	_2754
	dd	-8
	dd	0
	align	4
_2761:
	dd	_2705
	dd	45
	dd	3
_2788:
	db	"GetLine",0
_2789:
	db	"Line",0
_2790:
	db	"Puffer",0
_2791:
	db	"[]b",0
_2792:
	db	"rstring",0
	align	4
_2787:
	dd	1
	dd	_2788
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2789
	dd	_17
	dd	-8
	dd	2
	dd	_2790
	dd	_2791
	dd	-12
	dd	2
	dd	_2792
	dd	_2754
	dd	-16
	dd	0
	align	4
_2766:
	dd	_2705
	dd	49
	dd	3
_2767:
	db	"b",0
	align	4
_2769:
	dd	_2705
	dd	50
	dd	3
	align	4
_2772:
	dd	_2705
	dd	51
	dd	3
	align	4
_2774:
	dd	_2705
	dd	52
	dd	3
	align	4
_2786:
	dd	3
	dd	0
	dd	2
	dd	_17
	dd	_17
	dd	-20
	dd	0
	align	4
_2777:
	dd	_2705
	dd	53
	dd	4
	align	4
_2782:
	dd	3
	dd	0
	dd	0
	align	4
_2781:
	dd	_2705
	dd	53
	dd	26
	align	4
_2783:
	dd	_2705
	dd	54
	dd	4
_2797:
	db	"GetLineCount",0
	align	4
_2796:
	dd	1
	dd	_2797
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	0
	align	4
_2793:
	dd	_2705
	dd	59
	dd	3
_2802:
	db	"ClearAll",0
	align	4
_2801:
	dd	1
	dd	_2802
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	0
	align	4
_2798:
	dd	_2705
	dd	63
	dd	3
_2807:
	db	"ClearStyle",0
	align	4
_2806:
	dd	1
	dd	_2807
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	0
	align	4
_2803:
	dd	_2705
	dd	67
	dd	3
_2812:
	db	"SetLexer",0
_2813:
	db	"What",0
	align	4
_2811:
	dd	1
	dd	_2812
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2813
	dd	_17
	dd	-8
	dd	0
	align	4
_2808:
	dd	_2705
	dd	71
	dd	3
_2818:
	db	"GetLexer",0
	align	4
_2817:
	dd	1
	dd	_2818
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	0
	align	4
_2814:
	dd	_2705
	dd	75
	dd	3
_2823:
	db	"SetStyleBits",0
_2824:
	db	"StyleBits",0
	align	4
_2822:
	dd	1
	dd	_2823
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2824
	dd	_17
	dd	-8
	dd	0
	align	4
_2819:
	dd	_2705
	dd	79
	dd	3
_2829:
	db	"GetStyleBits",0
	align	4
_2828:
	dd	1
	dd	_2829
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	0
	align	4
_2825:
	dd	_2705
	dd	83
	dd	3
_2834:
	db	"SetKeywords",0
_2835:
	db	"KeywordSet",0
_2836:
	db	"KeywordList",0
	align	4
_2833:
	dd	1
	dd	_2834
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2835
	dd	_17
	dd	-8
	dd	2
	dd	_2836
	dd	_2754
	dd	-12
	dd	0
	align	4
_2830:
	dd	_2705
	dd	87
	dd	3
_2856:
	db	"SetKeywordList",0
_2857:
	db	":TList",0
_2858:
	db	"KString",0
	align	4
_2855:
	dd	1
	dd	_2856
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2835
	dd	_17
	dd	-8
	dd	2
	dd	_2836
	dd	_2857
	dd	-12
	dd	2
	dd	_2858
	dd	_2754
	dd	-16
	dd	0
	align	4
_2837:
	dd	_2705
	dd	91
	dd	3
	align	4
_2839:
	dd	_2705
	dd	92
	dd	3
_2851:
	db	"TempString",0
	align	4
_2850:
	dd	3
	dd	0
	dd	2
	dd	_2851
	dd	_2754
	dd	-20
	dd	0
	align	4
_2849:
	dd	_2705
	dd	93
	dd	4
	align	4
_10:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	32
	align	4
_2852:
	dd	_2705
	dd	95
	dd	3
_2906:
	db	"SetFont",0
_2907:
	db	"ForWhat",0
_2908:
	db	"Name",0
_2909:
	db	"Size",0
_2910:
	db	"ColorR",0
_2911:
	db	"ColorG",0
_2912:
	db	"ColorB",0
_2913:
	db	"Bold",0
_2914:
	db	"b",0
_2915:
	db	"Underlined",0
_2916:
	db	"Italic",0
	align	4
_2905:
	dd	1
	dd	_2906
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2907
	dd	_17
	dd	-8
	dd	2
	dd	_2908
	dd	_2754
	dd	-12
	dd	2
	dd	_2909
	dd	_17
	dd	-16
	dd	2
	dd	_2910
	dd	_17
	dd	-20
	dd	2
	dd	_2911
	dd	_17
	dd	-24
	dd	2
	dd	_2912
	dd	_17
	dd	-28
	dd	2
	dd	_2913
	dd	_2914
	dd	-32
	dd	2
	dd	_2915
	dd	_2914
	dd	-36
	dd	2
	dd	_2916
	dd	_2914
	dd	-40
	dd	0
	align	4
_2859:
	dd	_2705
	dd	99
	dd	3
	align	4
_1:
	dd	bbStringClass
	dd	2147483647
	dd	0
	align	4
_2864:
	dd	3
	dd	0
	dd	0
	align	4
_2861:
	dd	_2705
	dd	100
	dd	4
	align	4
_2865:
	dd	_2705
	dd	102
	dd	3
	align	4
_2870:
	dd	3
	dd	0
	dd	0
	align	4
_2867:
	dd	_2705
	dd	103
	dd	4
	align	4
_2871:
	dd	_2705
	dd	105
	dd	3
	align	4
_2876:
	dd	3
	dd	0
	dd	0
	align	4
_2873:
	dd	_2705
	dd	106
	dd	4
	align	4
_2877:
	dd	_2705
	dd	108
	dd	3
	align	4
_2882:
	dd	3
	dd	0
	dd	0
	align	4
_2879:
	dd	_2705
	dd	109
	dd	4
	align	4
_2883:
	dd	_2705
	dd	111
	dd	3
	align	4
_2888:
	dd	3
	dd	0
	dd	0
	align	4
_2885:
	dd	_2705
	dd	112
	dd	4
	align	4
_2889:
	dd	_2705
	dd	114
	dd	3
_2904:
	db	"Color",0
	align	4
_2903:
	dd	3
	dd	0
	dd	2
	dd	_2904
	dd	_17
	dd	-44
	dd	0
	align	4
_2895:
	dd	_2705
	dd	115
	dd	4
	align	4
_2897:
	dd	_2705
	dd	116
	dd	4
	align	4
_2900:
	dd	_2705
	dd	117
	dd	4
_2923:
	db	"SetFontBGColor",0
	align	4
_2922:
	dd	1
	dd	_2923
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2907
	dd	_17
	dd	-8
	dd	2
	dd	_2910
	dd	_2914
	dd	-12
	dd	2
	dd	_2911
	dd	_2914
	dd	-16
	dd	2
	dd	_2912
	dd	_2914
	dd	-20
	dd	0
	align	4
_2917:
	dd	_2705
	dd	122
	dd	3
_2926:
	db	"EncodeColor",0
	align	4
_2925:
	dd	1
	dd	_2926
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2910
	dd	_2914
	dd	-8
	dd	2
	dd	_2911
	dd	_2914
	dd	-12
	dd	2
	dd	_2912
	dd	_2914
	dd	-16
	dd	0
	align	4
_2924:
	dd	_2705
	dd	126
	dd	3
_2931:
	db	"DecodeColor",0
_2932:
	db	"tmpval",0
	align	4
_2930:
	dd	1
	dd	_2931
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2932
	dd	_17
	dd	-8
	dd	2
	dd	_2910
	dd	_23
	dd	-12
	dd	2
	dd	_2911
	dd	_23
	dd	-16
	dd	2
	dd	_2912
	dd	_23
	dd	-20
	dd	0
	align	4
_2927:
	dd	_2705
	dd	130
	dd	3
	align	4
_2928:
	dd	_2705
	dd	131
	dd	3
	align	4
_2929:
	dd	_2705
	dd	132
	dd	3
_2945:
	db	"SetBGColor",0
	align	4
_2944:
	dd	1
	dd	_2945
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2910
	dd	_2914
	dd	-8
	dd	2
	dd	_2911
	dd	_2914
	dd	-12
	dd	2
	dd	_2912
	dd	_2914
	dd	-16
	dd	0
	align	4
_2933:
	dd	_2705
	dd	136
	dd	3
_2940:
	db	"T",0
	align	4
_2939:
	dd	3
	dd	0
	dd	2
	dd	_2940
	dd	_17
	dd	-20
	dd	0
	align	4
_2936:
	dd	_2705
	dd	137
	dd	4
	align	4
_2941:
	dd	_2705
	dd	139
	dd	3
_2950:
	db	"SetMarginType",0
_2951:
	db	"Num",0
_2952:
	db	"MType",0
	align	4
_2949:
	dd	1
	dd	_2950
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2951
	dd	_17
	dd	-8
	dd	2
	dd	_2952
	dd	_17
	dd	-12
	dd	0
	align	4
_2946:
	dd	_2705
	dd	143
	dd	3
_2957:
	db	"GetMarginType",0
	align	4
_2956:
	dd	1
	dd	_2957
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2951
	dd	_17
	dd	-8
	dd	0
	align	4
_2953:
	dd	_2705
	dd	147
	dd	3
_2962:
	db	"SetMarginMask",0
_2963:
	db	"Mask",0
	align	4
_2961:
	dd	1
	dd	_2962
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2951
	dd	_17
	dd	-8
	dd	2
	dd	_2963
	dd	_17
	dd	-12
	dd	0
	align	4
_2958:
	dd	_2705
	dd	151
	dd	3
_2968:
	db	"GetMarginMask",0
	align	4
_2967:
	dd	1
	dd	_2968
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2951
	dd	_17
	dd	-8
	dd	0
	align	4
_2964:
	dd	_2705
	dd	155
	dd	3
_2973:
	db	"SetMarginWidth",0
_2974:
	db	"Width",0
	align	4
_2972:
	dd	1
	dd	_2973
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2951
	dd	_17
	dd	-8
	dd	2
	dd	_2974
	dd	_17
	dd	-12
	dd	0
	align	4
_2969:
	dd	_2705
	dd	159
	dd	3
_2979:
	db	"GetMarginWidth",0
	align	4
_2978:
	dd	1
	dd	_2979
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2951
	dd	_17
	dd	-8
	dd	0
	align	4
_2975:
	dd	_2705
	dd	163
	dd	3
_2984:
	db	"SetMarginSensitive",0
_2985:
	db	"Sensitive",0
	align	4
_2983:
	dd	1
	dd	_2984
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2951
	dd	_17
	dd	-8
	dd	2
	dd	_2985
	dd	_2914
	dd	-12
	dd	0
	align	4
_2980:
	dd	_2705
	dd	167
	dd	3
_2990:
	db	"GetMarginSensitive",0
	align	4
_2989:
	dd	1
	dd	_2990
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2951
	dd	_17
	dd	-8
	dd	0
	align	4
_2986:
	dd	_2705
	dd	171
	dd	3
_2997:
	db	"SetCaretColor",0
	align	4
_2996:
	dd	1
	dd	_2997
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2910
	dd	_2914
	dd	-8
	dd	2
	dd	_2911
	dd	_2914
	dd	-12
	dd	2
	dd	_2912
	dd	_2914
	dd	-16
	dd	0
	align	4
_2991:
	dd	_2705
	dd	175
	dd	3
_3004:
	db	"GetCaretColor",0
	align	4
_3003:
	dd	1
	dd	_3004
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2910
	dd	_23
	dd	-8
	dd	2
	dd	_2911
	dd	_23
	dd	-12
	dd	2
	dd	_2912
	dd	_23
	dd	-16
	dd	0
	align	4
_2998:
	dd	_2705
	dd	179
	dd	3
_3009:
	db	"SetCaretLineVisible",0
_3010:
	db	"Visible",0
	align	4
_3008:
	dd	1
	dd	_3009
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_3010
	dd	_2914
	dd	-8
	dd	0
	align	4
_3005:
	dd	_2705
	dd	183
	dd	3
_3015:
	db	"GetCaretLineVisible",0
	align	4
_3014:
	dd	1
	dd	_3015
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	0
	align	4
_3011:
	dd	_2705
	dd	187
	dd	3
_3022:
	db	"SetCaretLineBack",0
	align	4
_3021:
	dd	1
	dd	_3022
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2910
	dd	_2914
	dd	-8
	dd	2
	dd	_2911
	dd	_2914
	dd	-12
	dd	2
	dd	_2912
	dd	_2914
	dd	-16
	dd	0
	align	4
_3016:
	dd	_2705
	dd	191
	dd	3
_3029:
	db	"GetCaretLineBack",0
	align	4
_3028:
	dd	1
	dd	_3029
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2910
	dd	_23
	dd	-8
	dd	2
	dd	_2911
	dd	_23
	dd	-12
	dd	2
	dd	_2912
	dd	_23
	dd	-16
	dd	0
	align	4
_3023:
	dd	_2705
	dd	195
	dd	3
_3036:
	db	"SetSelectionFore",0
	align	4
_3035:
	dd	1
	dd	_3036
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2910
	dd	_2914
	dd	-8
	dd	2
	dd	_2911
	dd	_2914
	dd	-12
	dd	2
	dd	_2912
	dd	_2914
	dd	-16
	dd	0
	align	4
_3030:
	dd	_2705
	dd	199
	dd	3
_3043:
	db	"SetSelectionBack",0
	align	4
_3042:
	dd	1
	dd	_3043
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2910
	dd	_2914
	dd	-8
	dd	2
	dd	_2911
	dd	_2914
	dd	-12
	dd	2
	dd	_2912
	dd	_2914
	dd	-16
	dd	0
	align	4
_3037:
	dd	_2705
	dd	203
	dd	3
_3048:
	db	"DisableSelectionFore",0
	align	4
_3047:
	dd	1
	dd	_3048
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	0
	align	4
_3044:
	dd	_2705
	dd	207
	dd	3
_3053:
	db	"DisableSelectionBack",0
	align	4
_3052:
	dd	1
	dd	_3053
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	0
	align	4
_3049:
	dd	_2705
	dd	211
	dd	3
_3058:
	db	"SetTabWidth",0
	align	4
_3057:
	dd	1
	dd	_3058
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2974
	dd	_17
	dd	-8
	dd	0
	align	4
_3054:
	dd	_2705
	dd	215
	dd	3
_3063:
	db	"GetTabWidth",0
	align	4
_3062:
	dd	1
	dd	_3063
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2974
	dd	_17
	dd	-8
	dd	0
	align	4
_3059:
	dd	_2705
	dd	219
	dd	3
_3068:
	db	"SetProperty",0
_3069:
	db	"Key",0
_3070:
	db	"Value",0
	align	4
_3067:
	dd	1
	dd	_3068
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_3069
	dd	_2754
	dd	-8
	dd	2
	dd	_3070
	dd	_2754
	dd	-12
	dd	0
	align	4
_3064:
	dd	_2705
	dd	223
	dd	3
_3085:
	db	"DefineMarker",0
_3086:
	db	"Marker",0
_3087:
	db	"Symbols",0
_3088:
	db	"ForeR",0
_3089:
	db	"ForeG",0
_3090:
	db	"ForeB",0
_3091:
	db	"BackR",0
_3092:
	db	"BackG",0
_3093:
	db	"BackB",0
	align	4
_3084:
	dd	1
	dd	_3085
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_3086
	dd	_17
	dd	-8
	dd	2
	dd	_3087
	dd	_17
	dd	-12
	dd	2
	dd	_3088
	dd	_2914
	dd	-16
	dd	2
	dd	_3089
	dd	_2914
	dd	-20
	dd	2
	dd	_3090
	dd	_2914
	dd	-24
	dd	2
	dd	_3091
	dd	_2914
	dd	-28
	dd	2
	dd	_3092
	dd	_2914
	dd	-32
	dd	2
	dd	_3093
	dd	_2914
	dd	-36
	dd	0
	align	4
_3071:
	dd	_2705
	dd	227
	dd	3
	align	4
_3074:
	dd	_2705
	dd	228
	dd	3
	align	4
_3079:
	dd	_2705
	dd	229
	dd	3
_3098:
	db	"GetLineFromPosition",0
_3099:
	db	"Position",0
	align	4
_3097:
	dd	1
	dd	_3098
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_3099
	dd	_17
	dd	-8
	dd	0
	align	4
_3094:
	dd	_2705
	dd	233
	dd	3
_3104:
	db	"GetCurrentPosition",0
	align	4
_3103:
	dd	1
	dd	_3104
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	0
	align	4
_3100:
	dd	_2705
	dd	237
	dd	3
_3109:
	db	"ToggleFoldPoint",0
	align	4
_3108:
	dd	1
	dd	_3109
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	2
	dd	_2789
	dd	_17
	dd	-8
	dd	0
	align	4
_3105:
	dd	_2705
	dd	241
	dd	3
_3114:
	db	"Cut",0
	align	4
_3113:
	dd	1
	dd	_3114
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	0
	align	4
_3110:
	dd	_2705
	dd	245
	dd	3
_3119:
	db	"Copy",0
	align	4
_3118:
	dd	1
	dd	_3119
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	0
	align	4
_3115:
	dd	_2705
	dd	249
	dd	3
_3124:
	db	"Paste",0
	align	4
_3123:
	dd	1
	dd	_3124
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	0
	align	4
_3120:
	dd	_2705
	dd	253
	dd	3
_3129:
	db	"Undo",0
	align	4
_3128:
	dd	1
	dd	_3129
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	0
	align	4
_3125:
	dd	_2705
	dd	257
	dd	3
_3134:
	db	"CanUndo",0
	align	4
_3133:
	dd	1
	dd	_3134
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	0
	align	4
_3130:
	dd	_2705
	dd	261
	dd	3
_3139:
	db	"Redo",0
	align	4
_3138:
	dd	1
	dd	_3139
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	0
	align	4
_3135:
	dd	_2705
	dd	265
	dd	3
_3144:
	db	"CanRedo",0
	align	4
_3143:
	dd	1
	dd	_3144
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	0
	align	4
_3140:
	dd	_2705
	dd	269
	dd	3
_3149:
	db	"EmptyUndoBuffer",0
	align	4
_3148:
	dd	1
	dd	_3149
	dd	2
	dd	_2698
	dd	_2712
	dd	-4
	dd	0
	align	4
_3145:
	dd	_2705
	dd	273
	dd	3
