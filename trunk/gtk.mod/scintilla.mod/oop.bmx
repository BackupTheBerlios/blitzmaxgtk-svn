Rem
	This file is part of the BlitzMax GTK-modules.
	The BlitzMax GTK-modules are free software; you can redistribute and/or modify
	them under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	at your option) any later version.
	
	The BlitzMax GTK-modules are distributed in the hope that they will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS for A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.
	
	You should have received a copy of the GNU General Public License
	along with the BlitzMax GTK-modules; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
End Rem

'@idesc Scintilla-Klasse
Type GtkScintilla Extends GtkWidget
	Field ScintillaHandle:Byte Ptr

	Function Create:GtkScintilla()
		Local TempScintilla:GtkScintilla = New GtkScintilla
		TempScintilla.Handle = scintilla_new()
		TempScintilla.ScintillaHandle = g_type_check_instance_cast(TempScintilla.Handle,scintilla_get_type())
		Return TempScintilla
	End Function

	Function CreateFromHandle:GtkScintilla(Handle:Byte Ptr)
		Local TempScintilla:GtkScintilla = New GtkScintilla
		TempScintilla.Handle = Handle
		TempScintilla.ScintillaHandle = g_type_check_instance_cast(TempScintilla.Handle,scintilla_get_type())
		Return TempScintilla
	End Function

	Method InsertText(Text:String,Pos:Int=0)
		scintilla_send_message(ScintillaHandle,SCI_INSERTTEXT,Byte Ptr(Pos),Text.ToCString())
	End Method

	Method AppendText(Text:String)
		scintilla_send_message(ScintillaHandle,SCI_APPENDTEXT,Byte Ptr(Len(Text)),Text.ToCString())
	End Method

	Method AddText(Text:String)
		scintilla_send_message(ScintillaHandle,SCI_ADDTEXT,byte ptr(Len(Text)),Text.ToCString())
	End Method

	Method GetLine:String(Line:Int)
		Local Puffer:Byte[1024]
		scintilla_send_message(ScintillaHandle,SCI_GETLINE,Byte Ptr(Line),Puffer)
		Local rstring:String
		For Local i:Int = 0 To 1023
			If Puffer[i] = 0 Then Return rstring
			rstring :+ Chr(Puffer[i])
		Next
	End Method

	Method GetLineCount:Int()
		Return scintilla_send_message(ScintillaHandle,SCI_GETLINECOUNT,Null,Null)
	End Method

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

	Method DecodeColor(tmpval:Int,ColorR:Byte Ptr,ColorG:Byte Ptr,ColorB:Byte Ptr)
		ColorR[0] = (tmpval & $0000FF)
		ColorG[0] = (tmpval & $00FF00) Shr 8
		ColorB[0] = (tmpval & $FF0000) Shr 16
	End Method

	Method SetBGColor(ColorR:Byte,ColorG:Byte, ColorB:Byte)
		For Local T:Int = 0 To 19
			SetFontBGColor(T,ColorR,ColorG,ColorB)
		Next
		SetFontBGColor(32,ColorR,ColorG,ColorB)
	End Method

	Method SetMarginType(Num:Int,MType:Int)
		scintilla_send_message(ScintillaHandle,SCI_SETMARGINTYPEN,Byte Ptr(num),Byte Ptr(MType))
	End Method

	Method GetMarginType:Int(Num:Int)
		Return scintilla_send_message(ScintillaHandle,SCI_GETMARGINTYPEN,Byte Ptr(num),Null)
	End Method

	Method SetMarginMask(Num:Int,Mask:Int)
		scintilla_send_message(ScintillaHandle,SCI_SETMARGINMASKN,Byte Ptr(Num), Byte Ptr(mask))
	End Method

	Method GetMarginMask:Int(Num:Int)
		Return scintilla_send_message(ScintillaHandle,SCI_GETMARGINMASKN,Byte Ptr(num),Null)
	End Method

	Method SetMarginWidth(Num:Int,Width:Int)
		scintilla_send_message(ScintillaHandle,SCI_SETMARGINWIDTHN,Byte Ptr(num),Byte Ptr(Width))
	End Method

	Method GetMarginWidth:Int(Num:Int)
		Return scintilla_send_message(ScintillaHandle,SCI_GETMARGINWIDTHN,Byte Ptr(Num),Null)
	End Method

	Method SetMarginSensitive(Num:Int,Sensitive:Byte)
		scintilla_send_message(ScintillaHandle,SCI_SETMARGINSENSITIVEN,Byte Ptr(Num),Byte Ptr(Sensitive))
	End Method

	Method GetMarginSensitive:Byte(Num:Int)
		Return scintilla_send_message(ScintillaHandle,SCI_GETMARGINSENSITIVEN,Byte Ptr(Num),Null)
	End Method

	Method SetCaretColor(ColorR:Byte,ColorG:Byte,ColorB:Byte)
		scintilla_send_message(ScintillaHandle,SCI_SETCARETFORE,Byte Ptr(EncodeColor(ColorR,ColorG,ColorB)),Null)
	End Method

	Method GetCaretColor(ColorR:Byte Ptr,ColorG:Byte Ptr,ColorB:Byte Ptr)
		DecodeColor(scintilla_send_message(ScintillaHandle,SCI_GETCARETFORE,Null,Null),ColorR,ColorG,ColorB)
	End Method

	Method SetCaretLineVisible(Visible:Byte)
		scintilla_send_message(ScintillaHandle,SCI_SETCARETLINEVISIBLE,Byte Ptr(Visible),Null)
	End Method

	Method GetCaretLineVisible:Byte()
		Return scintilla_send_message(ScintillaHandle,SCI_GETCARETLINEVISIBLE,Null,Null)
	End Method

	Method SetCaretLineBack(ColorR:Byte,ColorG:Byte,ColorB:Byte)
		scintilla_send_message(ScintillaHandle,SCI_SETCARETLINEBACK,Byte Ptr(EncodeColor(ColorR,ColorG,ColorB)),Null)
	End Method

	Method GetCaretLineBack(ColorR:Byte Ptr,ColorG:Byte Ptr,ColorB:Byte Ptr)
		DecodeColor(scintilla_send_message(ScintillaHandle,SCI_GETCARETLINEBACK,Null,Null),ColorR,ColorG,ColorB)
	End Method

	Method SetSelectionFore(ColorR:Byte,ColorG:Byte,ColorB:Byte)
		scintilla_send_message(ScintillaHandle,SCI_SETSELFORE,Byte Ptr(True),Byte Ptr(EncodeColor(ColorR,ColorG,ColorB)))
	End Method

	Method SetSelectionBack(ColorR:Byte,ColorG:Byte,ColorB:Byte)
		scintilla_send_message(ScintillaHandle,SCI_SETSELBACK,Byte Ptr(True),Byte Ptr(EncodeColor(ColorR,ColorG,ColorB)))
	End Method

	Method DisableSelectionFore()
		scintilla_send_message(ScintillaHandle,SCI_SETSELFORE,Byte Ptr(False),Null)
	End Method

	Method DisableSelectionBack()
		scintilla_send_message(ScintillaHandle,SCI_SETSELBACK,Byte Ptr(False),Null)
	End Method

	Method SetTabWidth(Width:Int)
		scintilla_send_message(ScintillaHandle,SCI_SETTABWIDTH,Byte Ptr(Width),Null)
	End Method

	Method GetTabWidth(Width:Int)
		Return scintilla_send_message(ScintillaHandle,SCI_GETTABWIDTH,Null,Null)
	End Method

	Method SetProperty(Key:String,Value:String)
		scintilla_send_message(ScintillaHandle,SCI_SETPROPERTY,Key.ToCString(),Value.ToCString())
	End Method

	Method DefineMarker(Marker:Int,Symbols:Int,ForeR:Byte=0,ForeG:Byte=0,ForeB:Byte=0,BackR:Byte=0,BackG:Byte=0,BackB:Byte=0)
		scintilla_send_message(ScintillaHandle,SCI_MARKERDEFINE,Byte Ptr(Marker),Byte Ptr(Symbols))
		scintilla_send_message(ScintillaHandle,SCI_MARKERSETFORE,Byte Ptr(Marker),Byte Ptr(EncodeColor(ForeR,ForeG,ForeB)))
		scintilla_send_message(ScintillaHandle,SCI_MARKERSETBACK,Byte Ptr(Marker),Byte Ptr(EncodeColor(BackR,BackG,BackB)))
	End Method

	Method GetLineFromPosition:Int(Position:Int)
		Return scintilla_send_message(ScintillaHandle,SCI_LINEFROMPOSITION,Byte Ptr(Position),Null)
	End Method

	Method GetCurrentPosition:int()
		return scintilla_send_message(ScintillaHandle,SCI_GETCURRENTPOS,null,null)
	end method

	Method ToggleFoldPoint(Line:Int)
		scintilla_send_message(ScintillaHandle,SCI_TOGGLEFOLD,Byte Ptr(Line),Null)
	End Method

	Method Cut()
		scintilla_send_message(ScintillaHandle,SCI_CUT,Null,Null)
	End Method

	Method Copy()
		scintilla_send_message(ScintillaHandle,SCI_COPY,Null,Null)
	End Method

	Method Paste()
		scintilla_send_message(ScintillaHandle,SCI_PASTE,Null,Null)
	End Method

	Method Undo()
		scintilla_send_message(ScintillaHandle,SCI_UNDO,Null,Null)
	End Method

	Method CanUndo:Byte()
		Return scintilla_send_message(ScintillaHandle,SCI_CANUNDO,Null,Null)
	End Method

	Method Redo()
		scintilla_send_message(ScintillaHandle,SCI_REDO,Null,Null)
	End Method

	Method CanRedo:Byte()
		Return scintilla_send_message(ScintillaHandle,SCI_CANREDO,Null,Null)
	End Method

	Method EmptyUndoBuffer()
		scintilla_send_message(ScintillaHandle,SCI_EMPTYUNDOBUFFER,Null,Null)
	End Method
End Type

