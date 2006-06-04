Rem
Strict
Import BRL.Filesystem
Import BRL.Retro
Import GTK.OOP
Import GTK.Scintilla
Import "settings.bmx"
End Rem

Type TSFont
	Field Name:String
	Field Size:Int
	Field Color:String
	Field R:Byte
	Field G:Byte
	Field B:Byte
	
	Function Create:TSFont(Name:String,Size:Int,R:byte,G:Byte,B:byte)
		Local TpFont:TSFont = New TsFont
			TpFont.Name = Name
			TpFont.Size = Size
			TpFont.R = R
			TpFont.G = G
			TpFont.B = B
			TpFont.Color = String(R) + "," + String(G) + "," + String(B)
		Return TpFont
	End Function
	
	Method Save(AN:String,SaveFile:TStream)
		SaveFile.WriteLine(AN+"_Name:"+Name)	
		SaveFile.WriteLine(AN+"_Size:"+Size)	
		SaveFile.WriteLine(AN+"_Color:"+Color)	
	End Method
	
	Method Load(AN:String,LoadFile:TStream)
		Name = Load_by_Name(AN+"_Name",LoadFile)
		Size = Int(Load_by_Name(AN+"_Size",LoadFile))
		Color = Load_by_Name(AN+"_Color",LoadFile)
		R = ExtractR(Color)
		G = ExtractG(Color)
		B = ExtractB(Color)
	End Method
	
End Type

Type TStyle
	Field Lexer:Int = 78
	Field StyleBits:Int = 33
	Field BGColor:String = "22,58,80"
	Field Font_Default:TSFont = TsFont.Create("!bitstream charter",12,238,238,238)
	Field Font_Comment:TSFont = TsFont.Create("!bitstream charter",12,177,231,235)
	Field Font_Number:TSFont = TsFont.Create("!bitstream charter",12,51,255,221)
	Field Font_Keyword:TSFont = TSFont.Create("!bitstream charter",12,255,255,0)
	Field Font_String:TSFont = TSFont.Create("!bitstream charter",12,0,255,102)
	Field Font_Identifier:TSFont = TSFont.Create("!bitstream charter",12,255,255,255)
	Field Font_Operator:TSFont = TSFont.Create("!bitstream charter",14,200,200,200)
	Field Font_Error:TSFont = TSFont.Create("!bitstream charter",12,255,0,0)
	Field Font_Linenumber:TSFont = TSFont.Create("!helvetica",8,255,255,255)
	Field LineNumbers_BGColor:String = "62,98,120"
	Field CaretColor:String = "170,170,170"
	Field CaretBG:String = "48,51,102"
	Field CaretVisible:Byte = True
	Field SelectionBGColor:String = "170,170,170"
	Field MarginWidth0:Int = 35
	Field MarginWidth1:Int = 20
	Field MarginWidth2:Int = 0
	Field Margin_BGColor:String = "42,78,100"
	Field TabWidth:Byte = 2
	
	Method Save(Name:string)
		If FileType("cfg/styles/"+Name) = 1
			DeleteFile("cfg/styles/"+Name)
			CreateFile("cfg/styles/"+Name)
		ElseIF FileType("cfg/styles/"+Name) = 0
			CreateFile("cfg/styles/"+Name)
		End If 
		Local SaveFile:TStream = OpenStream("cfg/styles/"+Name)
		
			SaveFile.WriteLine("Lexer:"+Lexer)	
			SaveFile.WriteLine("StyleBits:"+StyleBits)	
			SaveFile.WriteLine("BGColor:"+BGColor)	
			
			Font_Default.Save("Default",SaveFile)
			Font_Comment.Save("Comment",SaveFile)
			Font_Number.Save("Number",SaveFile)
			Font_Keyword.Save("Keyword",SaveFile)
			Font_String.Save("String",SaveFile)
			Font_Identifier.Save("Identifier",SaveFile)
			Font_Operator.Save("Operator",SaveFile)
			Font_Error.Save("Error",SaveFile)
			Font_Linenumber.Save("Linenumber",SaveFile)
			
			SaveFile.WriteLine("LineNumbers_BGColor:"+LineNumbers_BGColor)	
			
			SaveFile.WriteLine("CaretColor:"+CaretColor)	
			SaveFile.WriteLine("CaretBG:"+CaretBG)	
			SaveFile.WriteLine("CaretVisible:"+CaretVisible)	
			SaveFile.WriteLine("SelectionBGColor:"+SelectionBGColor)	
			
			SaveFile.WriteLine("MarginWidth0:"+MarginWidth0)	
			SaveFile.WriteLine("MarginWidth1:"+MarginWidth1)	
			SaveFile.WriteLine("MarginWidth2:"+MarginWidth2)	
			SaveFile.WriteLine("Margin_BGColor:"+Margin_BGColor)	
			
			SaveFile.WriteLine("TabWidth:"+TabWidth)	

		SaveFile.Close()
	End Method
	
	Method Load(Name:string)
		If FileType("cfg/styles/"+Name) <> 1 then Return
		Local LoadFile:TStream = OpenFile("cfg/styles/"+Name)
		
			Lexer = Int(Load_by_Name("Lexer",LoadFile))
			StyleBits = Int(Load_by_Name("StyleBits",LoadFile))
			BGColor = Load_by_Name("BGColor",LoadFile)
			
			Font_Default.Load("Default",LoadFile)
			Font_Comment.Load("Comment",LoadFile)
			Font_Number.Load("Number",LoadFile)
			Font_Keyword.Load("Keyword",LoadFile)
			Font_String.Load("String",LoadFile)
			Font_Identifier.Load("Identifier",LoadFile)
			Font_Operator.Load("Operator",LoadFile)
			Font_Error.Load("Error",LoadFile)
			Font_Linenumber.Load("Linenumber",LoadFile)
			
			LineNumbers_BGColor = Load_by_Name("LineNumbers_BGColor",LoadFile)
			
			CaretColor = Load_by_Name("CaretColor",LoadFile)
			CaretBG = Load_by_Name("CaretBG",LoadFile)
			CaretVisible = Byte(Load_by_Name("CaretVisible",LoadFile))
			SelectionBGColor = Load_by_Name("SelectionBGColor",LoadFile)
			
			MarginWidth0 = Int(Load_by_Name("MarginWidth0",LoadFile))
			MarginWidth1 = Int(Load_by_Name("MarginWidth1",LoadFile))
			MarginWidth2 = Int(Load_by_Name("MarginWidth2",LoadFile))
			Margin_BGColor = Load_by_Name("Margin_BGColor",LoadFile)
			
			TabWidth = Byte(Load_by_Name("TabWidth",LoadFile))
			
		LoadFile.Close()
	End Method
	
End Type


'Note: If is handled specially
Global AddTabList:TList = New TList
AddTabList.addLast("for")
AddTabList.addLast("type")
AddTabList.addLast("extern")
AddTabList.addLast("function")
AddTabList.addLast("while")
AddTabList.addLast("repeat")

Global RemoveTabList:TList = New TList
RemoveTabList.addLast("next")
RemoveTabList.addLast("endtype")
RemoveTabList.addLast("end type")
RemoveTabList.addLast("endextern")
RemoveTabList.addLast("end extern")
RemoveTabList.addLast("endfunction")
RemoveTabList.addLast("end function")
RemoveTabList.addLast("until")
RemoveTabList.addLast("forever")
RemoveTabList.addLast("endif")
RemoveTabList.addLast("end if")


Function Load_by_Name:String(Name:String,LoadFile:TStream)
	While Not Eof(LoadFile)
		Local RL:String = ReadLine(LoadFile)
		Local LName:String = Left(RL, Instr(RL,":")-1)
		Local LValue:String = Mid(RL, Instr(RL,":")+1,Len(RL)-Instr(RL,":"))
		If LName = Name Then Return LValue
	Wend
	Return Null
End Function

Function ExtractR:Byte(Text:String)
	Local CPos:Int = Instr(Text,",")
	If CPos = -1 Scream "Fehler beim Lesen der Farbe"
	Return Byte(Left(Text,CPos-1))
End Function

Function ExtractG:Byte(Text:String)
	Local CPos:Int = Instr(Text,",")
	If CPos = -1 Scream "Fehler beim Lesen der Farbe"
	Local CSPos:Int = Instr(Text,",",CPos+1)
	If CSPos = -1 Scream "Fehler beim Lesen der Farbe"
	Return Byte(Mid(Text,CPos+1,CSPos-CPos-1))
End Function

Function ExtractB:Byte(Text:String)
	Local CPos:Int = Instr(Text,",")
	If CPos = -1 Scream "Fehler beim Lesen der Farbe"
	Local CSPos:Int = Instr(Text,",",CPos+1)
	If CSPos = -1 Scream "Fehler beim Lesen der Farbe"
	Local CTPos:Int = Instr(Text,",",CSPos+1)
	If CTPos = -1 Scream "Fehler beim Lesen der Farbe"
	Return Byte(Mid(Text,CSPos+1,CTPos-CSPos-1))
End Function

Function MakeColorString:String(ColorR:Byte,ColorG:Byte,ColorB:Byte)
	Return ColorR + "," + ColorG + "," + ColorB
End Function

Global KeywordList:TList = New TList
Global RealKeywordList:TList = New TList
Function LoadKeywords(Settings:TSettings)
'Function LoadKeywords(bla:Object)
	If Settings.GetValue("Scintilla_KeywordsFile")="" And FileType(bmxpath+"/doc/bmxmods/commands.txt")<>0 Then
		Scream("Keywords-Datei nicht festgelegt")
	Else
		If FileType(settings.getvalue("Scintilla_KeywordsFile")) = 0 Then
			If FileType(bmxpath+"/doc/bmxmods/commands.txt") = 0 Then
				Scream("Keywords-Datei nicht festgelegt")
			Else
				Settings.SetValue("Scintilla_KeywordsFile",bmxpath+"/doc/bmxmods/commands.txt")
			EndIf
		EndIf
		Local KeyWordsFile:TStream = ReadStream(Settings.GetValue("Scintilla_KeywordsFile"))
		If KeyWordsFile = Null Then
			Scream("Konnte Keywords-Datei nicht öffnen")
		Else
			While Not KeyWordsFile.EOF()
				Local ALine:String = KeyWordsFile.ReadLine()
				For Local i:Int = 1 To Len(ALine)
					Local TempChar:String = Mid(ALine,i,1)
					If TempChar ="(" Or TempChar=":" Or TempChar="|" Or TempChar="$" Or TempChar="[" Or TempChar="%" Or TempChar="#" Or TempChar="!" Or TempChar=" " Then
						KeywordList.addLast(Lower(Left(ALine,i-1)))
						RealKeywordList.addLast(left(ALine,i-1))
						i = Len(ALine)+1
					EndIf
				Next
			Wend
			KeywordList.addLast("foldstart")
			KeywordList.addLast("foldend")
			RealKeywordList.addLast("FoldStart")
			RealKeywordList.addLast("FoldEnd")
		EndIf
	EndIf
End Function

Function SetupScintilla(Style:TStyle,Scintilla:GtkScintilla)
	If Scintilla=Null Then
		DoDbgLog "something strange happened"
		Return
	EndIf
	'DoDbgLog "setupscin" 
 
	Scintilla.SetLexer(Style.Lexer)
	Scintilla.SetStyleBits(Style.StyleBits)
	Scintilla.SetBGColor(ExtractR(Style.BGColor), ExtractG(Style.BGColor),ExtractB(Style.BGColor))
	
	Scintilla.SetFont(SCE_BM_DEFAULT, Style.Font_Default.Name, Style.Font_Default.Size, Style.Font_Default.R, Style.Font_Default.G, Style.Font_Default.B)
	Scintilla.SetFont(SCE_BM_COMMENT, Style.Font_COMMENT.Name, Style.Font_COMMENT.Size, Style.Font_COMMENT.R, Style.Font_COMMENT.G, Style.Font_COMMENT.B)
	Scintilla.SetFont(SCE_BM_MULTILINECOMMENT, Style.Font_COMMENT.Name, Style.Font_COMMENT.Size, Style.Font_COMMENT.R, Style.Font_COMMENT.G, Style.Font_COMMENT.B)
	Scintilla.SetFont(SCE_BM_NUMBER, Style.Font_NUMBER.Name, Style.Font_NUMBER.Size, Style.Font_NUMBER.R, Style.Font_NUMBER.G, Style.Font_NUMBER.B)
	Scintilla.SetFont(SCE_BM_KEYWORD, Style.Font_KEYWORD.Name, Style.Font_KEYWORD.Size, Style.Font_KEYWORD.R, Style.Font_KEYWORD.G, Style.Font_KEYWORD.B)
	Scintilla.SetFont(SCE_BM_STRING, Style.Font_STRING.Name, Style.Font_STRING.Size, Style.Font_STRING.R, Style.Font_STRING.G, Style.Font_STRING.B)
	Scintilla.SetFont(SCE_BM_IDENTIFIER, Style.Font_IDENTIFIER.Name, Style.Font_IDENTIFIER.Size, Style.Font_IDENTIFIER.R, Style.Font_IDENTIFIER.G, Style.Font_IDENTIFIER.B)
	Scintilla.SetFont(SCE_BM_OPERATOR, Style.Font_OPERATOR.Name, Style.Font_OPERATOR.Size, Style.Font_OPERATOR.R, Style.Font_OPERATOR.G, Style.Font_OPERATOR.B)

	Scintilla.SetFont(SCE_BM_BINNUMBER, Style.Font_NUMBER.Name, Style.Font_NUMBER.Size, Style.Font_NUMBER.R, Style.Font_NUMBER.G, Style.Font_NUMBER.B)
	Scintilla.SetFont(SCE_BM_HEXNUMBER, Style.Font_NUMBER.Name, Style.Font_NUMBER.Size, Style.Font_NUMBER.R, Style.Font_NUMBER.G, Style.Font_NUMBER.B)
	
	Scintilla.SetMarginType(0,SC_MARGIN_NUMBER)
	Scintilla.SetMarginType(1,SC_MARGIN_SYMBOL)
	Scintilla.SetMarginMask(1,SC_MASK_FOLDERS)

	Scintilla.SetMarginWidth(0,Style.MarginWidth0)
	Scintilla.SetMarginWidth(1,Style.MarginWidth1)
	Scintilla.SetMarginWidth(2,Style.MarginWidth2)

	Scintilla.SetMarginSensitive(0,False)
	Scintilla.SetMarginSensitive(1,True)
	Scintilla.SetMarginSensitive(2,False)
	
	scintilla_send_message(Scintilla.Handle,SCI_SETFOLDMARGINCOLOUR,Byte Ptr(True),Byte Ptr(scintilla.encodecolor(ExtractR(Style.Margin_BGColor),extractg(Style.Margin_BGColor),extractB(Style.Margin_BGColor))))
	scintilla_send_message(Scintilla.Handle,SCI_SETFOLDMARGINHICOLOUR,Byte Ptr(True),Byte Ptr(scintilla.encodecolor(ExtractR(Style.Margin_BGColor),extractg(Style.Margin_BGColor),extractB(Style.Margin_BGColor))))

	Scintilla.SetFont(STYLE_LINENUMBER, Style.Font_LINENUMBER.Name, Style.Font_LINENUMBER.Size, Style.Font_LINENUMBER.R, Style.Font_LINENUMBER.G, Style.Font_LINENUMBER.B)
	Scintilla.SetFontBGColor(STYLE_LINENUMBER,ExtractR(Style.LineNumbers_BGColor),ExtractG(Style.LineNumbers_BGColor),ExtractB(Style.LineNumbers_BGColor))
	
	Scintilla.SetCaretColor(ExtractR(Style.CaretColor),ExtractG(Style.CaretColor),ExtractB(Style.CaretColor))
	Scintilla.SetCaretLineBack(ExtractR(Style.CaretBG),ExtractG(Style.CaretBG),ExtractB(Style.CaretBG))
	Scintilla.SetCaretLineVisible(Int(Style.CaretVisible))
	
	Scintilla.SetSelectionBack(ExtractR(Style.SelectionBGColor),ExtractG(Style.SelectionBGColor),ExtractB(Style.SelectionBGColor))

	Scintilla.SetTabWidth(Int(Style.TabWidth))

	Scintilla.SetProperty("fold","1")
	Scintilla.SetProperty("fold.compact","0")
	Scintilla.DefineMarker(SC_MARKNUM_FOLDEROPEN,SC_MARK_CIRCLEMINUS,ExtractR(Style.LineNumbers_BGColor),extractg(Style.LineNumbers_BGColor),extractB(Style.LineNumbers_BGColor),255,255,255)
	Scintilla.DefineMarker(SC_MARKNUM_FOLDER,SC_MARK_CIRCLEPLUS,ExtractR(Style.LineNumbers_BGColor),extractg(Style.LineNumbers_BGColor),extractB(Style.LineNumbers_BGColor),255,255,255)
	Scintilla.DefineMarker(SC_MARKNUM_FOLDERSUB,SC_MARK_VLINE,ExtractR(Style.LineNumbers_BGColor),extractg(Style.LineNumbers_BGColor),extractB(Style.LineNumbers_BGColor),255,255,255)
	Scintilla.DefineMarker(SC_MARKNUM_FOLDERTAIL,SC_MARK_LCORNERCURVE,ExtractR(Style.LineNumbers_BGColor),extractg(Style.LineNumbers_BGColor),extractB(Style.LineNumbers_BGColor),255,255,255)
	Scintilla.DefineMarker(SC_MARKNUM_FOLDEREND,SC_MARK_CIRCLEPLUSCONNECTED,ExtractR(Style.LineNumbers_BGColor),extractg(Style.LineNumbers_BGColor),extractB(Style.LineNumbers_BGColor),255,255,255)
	Scintilla.DefineMarker(SC_MARKNUM_FOLDEROPENMID,SC_MARK_CIRCLEMINUSCONNECTED,ExtractR(Style.LineNumbers_BGColor),extractg(Style.LineNumbers_BGColor),extractB(Style.LineNumbers_BGColor),255,255,255)
	Scintilla.DefineMarker(SC_MARKNUM_FOLDERMIDTAIL,SC_MARK_TCORNERCURVE,ExtractR(Style.LineNumbers_BGColor),extractg(Style.LineNumbers_BGColor),extractB(Style.LineNumbers_BGColor),255,255,255)

	Scintilla.SetKeywordList(0,KeywordList)
End Function

Function DoScintillaEvents2(Widget:Byte Ptr,lParam:Byte Ptr,Notification:SCNotification,GdkEvent:Byte Ptr)
	Local TempScintilla:GtkScintilla = GtkScintilla.CreateFromHandle(Widget)
	If notification.Code = SCN_MARGINCLICK Then
		DoDbgLog TempScintilla.GetLineFromPosition(Notification.Position)
		TempScintilla.ToggleFoldPoint(TempScintilla.GetLineFromPosition(Notification.position))
	Else If notification.Code = SCN_CHARADDED Then
		DoDbgLog "_DEBUG_: CHARADD: " + notification.ch
		If notification.ch = 10 Then
			DoDbgLog "_DEBUG_: NOTIFICATION.CH IS 10, checking tab state of previous line"
			Local prevline:Int = TempScintilla.GetLineFromPosition(TempScintilla.GetCurrentPosition()) -1
			DoDbgLog "_DEBUG_: Previous line is line " + prevline
			Local prevtext:String = TempScintilla.GetLine(prevline)
			prevtext = Left(prevtext,Len(prevtext)-1)
			DoDbgLog "_DEBUG_: Previous line text is " + prevtext
			Local tabcount:Int = 0
			For Local i:Int = 0 To Len(prevtext)-1
				If Mid(prevtext,i+1,1) = "~t" Then
					tabcount = tabcount + 1
				Else
					Exit
				EndIf
			Next
			prevtext = Mid(prevtext,tabcount+1)
			For Local statement:String = EachIn RemoveTabList
				If Lower(Left(prevtext,Len(statement))) = Lower(statement) Or Lower(prevtext) = "else" Or Lower(prevtext) = "else if" Or Lower(prevtext)="elseif" Then
					DoDbgLog "_DEBUG_: Special remove statement " + statement + " found"
					If tabcount > 0 Then
						DoDbgLog "_DEBUG_: Trying to remove tab from previous line"
						tabcount = tabcount - 1
						Local prevselstart:Int = scintilla_send_message(TempScintilla.Handle,SCI_GETSELECTIONSTART,Null,Null)
						Local prevselend:Int  = scintilla_send_message(TempScintilla.Handle,SCI_GETSELECTIONEND,Null,Null)
						scintilla_send_message(TempScintilla.Handle,SCI_SETSELECTIONSTART,Byte Ptr(scintilla_send_message(TempScintilla.Handle,SCI_POSITIONFROMLINE,Byte Ptr(prevline),Null)),Null)
						scintilla_send_message(TempScintilla.Handle,SCI_SETSELECTIONEND,Byte Ptr(scintilla_send_message(TempScintilla.Handle,SCI_GETLINEENDPOSITION,Byte Ptr(prevline),Null)),Null)
						Local tabstring:String
						For Local i2:Int = 0 To tabcount-1
							tabstring = tabstring + "~t"
						Next
						Local tstring:String = tabstring + prevtext
						scintilla_send_message(TempScintilla.Handle,SCI_REPLACESEL,Null,tstring.ToCString())
						scintilla_send_message(TempScintilla.Handle,SCI_SETSELECTIONSTART,Byte Ptr(prevselstart),Null)
						scintilla_send_message(TempScintilla.Handle,SCI_SETSELECTIONEND,Byte Ptr(prevselend),Null)
					EndIf
					Exit
				EndIf
			Next
			DoDbgLog "_DEBUG_: Checking if line has a special statement like for etc."
			If (Lower(Left(prevtext,2)) = "if" And Lower(Right(trimright(prevtext),4)) = "then") Or Lower(prevtext) = "else" Or Lower(prevtext) = "else if" Or Lower(prevtext) = "elseif" Then
				DoDbgLog "_DEBUG_: Special add statement if found"
				tabcount = tabcount + 1
			Else
				For Local statement2:String = EachIn AddTabList
					If Lower(Left(prevtext,Len(statement2))) = Lower(statement2) Then
						tabcount = tabcount + 1
						DoDbgLog "_DEBUG_: Special add statement " + statement2 + " found"
						Exit
					EndIf
				Next
			End If
			DoDbgLog "_DEBUG_: Adding " + tabcount + " tabs"
			Local tabstring2:String
			For Local i3:Int = 0 To tabcount-1
				tabstring2 = tabstring2 + "~t"
			Next
			TempScintilla.AddText(tabstring2)
		EndIf
	EndIf
End Function

Function Scream(What:String)
	Local TMR:Byte Ptr = gtk_message_dialog_new(Null,0,GTK_MESSAGE_WARNING,GTK_BUTTONS_OK,"Warnung".ToCString())
	gtk_message_dialog_format_secondary_text(TMR,ISO_8859_1_To_UTF_8(What).ToCString())
	gtk_dialog_run(TMR)
	gtk_widget_destroy(TMR)
End Function
Function ISO_8859_1_To_UTF_8:String(InputString:String)
	Return String.FromCString(g_convert(InputString.ToCString(),-1,"UTF-8".ToCString(),"ISO-8859-1".ToCString(),Null,Null,Null))
End Function
Function trimright:String(istring:String)
	Local theend:Int = Len(istring)-1
	For Local i:Int = Len(istring)-1 To 0 Step -1
		If Mid(istring,i+1,1) = "~t" Or Mid(istring,i+1,1) = " " Then
			theend = i
		Else
			Exit
		EndIf
	Next
	DoDbgLog Left(istring,theend+1)
	Return Left(istring,theend+1)
End Function
Function split:Int[](InputString:String,Separator:String)
	Local intarray:Int[1]
	If Instr(InputString,Separator) = 0 Then
		intarray[0] = Int(inputstring)
		Return intarray
	EndIf
	Local oldpos:Int
	Local actpos:Int
	While True
		Local nextsep:Int = Instr(InputString,Separator,oldpos+1)
		If nextsep = 0 Then
			intarray = intarray[..actpos+1]
			intarray[actpos] = Int(Mid(InputString,oldpos+1))
			Exit
		EndIf
		intarray = intarray[..actpos+1]
		intarray[actpos] = Int(Mid(InputString,oldpos+1,nextsep-oldpos))
		oldpos = nextsep
		actpos = actpos + 1
	Wend
	Return intarray
End Function

Function DoDbgLog(Text:String)
	'If ReleaseVersion = 0 Print Text
End Function

