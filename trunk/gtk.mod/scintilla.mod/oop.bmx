Type GtkScintilla Extends GtkWidget
	Field ScintillaHandle:Byte Ptr

	Function Create:GtkScintilla()
		Local TempScintilla:GtkScintilla = New GtkScintilla
		TempScintilla.Handle = scintilla_new()
		TempScintilla.ScintillaHandle = g_type_check_instance_cast(TempScintilla.Handle,scintilla_get_type())
		Return TempScintilla
	End Function

	Method ClearAll()
		scintilla_send_message(ScintillaHandle,SCI_CLEARALL,Null,Null)
	End Method

	Method ClearStyle()
		scintilla_send_message(ScintillaHandle,SCI_CLEARDOCUMENTSTYLE,Null,Null)
	End Method

	Method SetLexer(What:Int)
		scintilla_send_message(ScintillaHandle,SCI_SETLEXER,Byte Ptr(What),Null)
	End Method

	Method GetLexer:Int()
		Return scintilla_send_message(ScintillaHandle,SCI_GETLEXER,Null,Null)
	End Method

	Method SetStyleBits(StyleBits:Int)
		scintilla_send_message(ScintillaHandle,SCI_SETSTYLEBITS,Byte Ptr(StyleBits),Null)
	End Method

	Method GetStyleBits:Int()
		Return scintilla_send_message(ScintillaHandle,SCI_GETSTYLEBITS,Null,Null)
	End Method

	Method SetKeywords(KeywordSet:Int,KeywordList:String)
		Return scintilla_send_message(ScintillaHandle,SCI_SETKEYWORDS,Byte Ptr(KeywordSet),KeywordList.ToCString())
	End Method

	Method SetKeywordList(KeywordSet:Int,KeywordList:TList)
		Local KString:String
		For Local TempString:String = EachIn KeywordList
			KString :+ TempString + " "
		Next
		SetKeywords(KeywordSet,KString)
	End Method

	Method SetFont(ForWhat:Int,Name:String="",Size:Int=-1,ColorR:Int=-1,ColorG:Int=-1,ColorB:Int=-1,Bold:Byte=2,Underlined:Byte=2,Italic:Byte=2)
		If Name<>""  Then
			scintilla_send_message(ScintillaHandle,SCI_STYLESETFONT,Byte Ptr(ForWhat),Name.ToCString())
		EndIf
		If Size<>-1 Then
			scintilla_send_message(ScintillaHandle,SCI_STYLESETSIZE,Byte Ptr(ForWhat),Byte Ptr(Size))
		EndIf
		If Bold<>2 Then
			scintilla_send_message(ScintillaHandle,SCI_STYLESETBOLD,Byte Ptr(ForWhat),Byte Ptr(Bold))
		EndIf
		If Italic<>2 Then
			scintilla_send_message(ScintillaHandle,SCI_STYLESETITALIC,Byte Ptr(ForWhat),Byte Ptr(Italic))
		End If
		If Underlined<>2 Then
			scintilla_send_message(ScintillaHandle,SCI_STYLESETUNDERLINE,Byte Ptr(ForWhat),Byte Ptr(Underlined))
		End If
		If ColorR<>-1 And ColorG<>-1 And ColorB<>-1 Then
			Local Color:Int
			Color=EncodeColor(ColorR,ColorG,ColorB)
			scintilla_send_message(ScintillaHandle,SCI_STYLESETFORE,Byte Ptr(ForWhat),Byte Ptr(Color))
		End If
	End Method

	Method SetFontBGColor(ForWhat:Int,ColorR:Byte,ColorG:Byte,ColorB:Byte)
		scintilla_send_message(ScintillaHandle,SCI_STYLESETBACK,Byte Ptr(ForWhat),Byte Ptr(EncodeColor(ColorR,ColorG,ColorB)))
	End Method

	Method EncodeColor:Int(ColorR:Byte,ColorG:Byte,ColorB:Byte)
		Return ColorR + (ColorG Shl 8) + (ColorB Shl 16)
	End Method

	Method SetBGColor(ColorR:Byte,ColorG:Byte, ColorB:Byte)
		For Local T:Int = 0 To 19
			SetFontBGColor(T,ColorR,ColorG,ColorB)
		Next
		SetFontBGColor(32,ColorR,ColorG,ColorB)
	End Method
End Type
			