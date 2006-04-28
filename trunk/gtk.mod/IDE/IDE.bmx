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
Strict
' IDE
Framework GTK.OOP
Import GTK.Scintilla
Import BRL.MaxUtil
Import BRL.StandardIO
Import "settings.bmx"

?win32
Import "procwin32.bmx"
?linux
Import "proclinux.bmx"
?mac
Import "procmac.bmx"
?

' 0 = development, 1 = release, 2 = pre-release
Const ReleaseVersion:Byte = 2

WriteStdOut "BMax-IDE "
Select ReleaseVersion
	Case 0 
		writestdout "development"
	Case 1
		writestdout "release"
	Case 2
		writestdout "pre-release"
End Select
Print " version, Copyright (C) 2005-2006 by bigmichi and phiker"
Print "BMax-IDE comes with ABSOLUTELY NO WARRANTY; For details"
Print "look at 'Hilfe->Info'.  This is free software, and you are welcome"
Print "to redistribute it under certain conditions; see COPYING"
Print "for details."

Type TDocument
	Field Name:String
	Field File:String
	Field Label:GtkLabel
	Field Scintilla:GtkScintilla
End Type

'Create document list
Global DocumentList:TList = New TList

'Load Settings
Global Settings:TSettings = New TSettings
Settings.LoadAllSettings()

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

' Initialization stuff
'foldstart
GTKUtil.Init()
Glade.Init()

' Loading interface
Global Application:GladeXML = GladeXML.Create("ide.glade")
Application.ConnectSignals()


' Getting the main notebook
Global Notebook:GtkNotebook = GtkNotebook.CreateFromHandle(Application.GetWidget("notebook3"))
Global exp_compiler:Byte Ptr = Application.GetWidget("exp_compiler")
Global T_emp:GtkContainer = New GtkContainer
T_emp.Handle = exp_compiler
TProcLib.Init(T_emp)

Global BmxPath:String = BlitzMaxPath()

Global frmMain:GtkWindow = GtkWindow.CreateFromHandle(Application.GetWidget("frmMain"))
frmMain.SetIconFromFile("idelogo.png")

Global frmOptions:GtkWindow = GtkWindow.CreateFromHandle(Application.GetWidget("frmOptions"))

Global frmCmdOpts:GtkWindow = GtkWindow.CreateFromHandle(Application.GetWidget("frmCmdOpts"))

' Load the keywords #
Global KeywordList:TList = New TList
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
		Scream("Konnte Keywords-Datei nicht �ffnen")
	Else
		While Not KeyWordsFile.EOF()
			Local ALine:String = KeyWordsFile.ReadLine()
			For Local i:Int = 1 To Len(ALine)
				Local TempChar:String = Mid(ALine,i,1)
				If TempChar ="(" Or TempChar=":" Or TempChar="|" Or TempChar="$" Or TempChar="[" Or TempChar="%" Or TempChar="#" Or TempChar="!" Or TempChar=" " Then
					KeywordList.addLast(Lower(Left(ALine,i-1)))
					i = Len(ALine)+1
				EndIf
			Next
		Wend
		KeywordList.addLast("foldstart")
		KeywordList.addLast("foldend")
	EndIf
EndIf

' Set status of debug-/quick-build-mode

Local quickbuild:GtkCheckMenuItem = GtkCheckMenuItem.CreateFromHandle(Application.GetWidget("mnu_quickbuild"))
Local debugbuild:GtkCheckMenuItem = GtkCheckMenuItem.CreateFromHandle(Application.GetWidget("mnu_debugmode"))
quickbuild.SetActive(Byte(Settings.GetValue("QuickBuild")))
debugbuild.SetActive(Byte(Settings.GetValue("DebugBuild")))

Rem 
Local TestString:String = MakeColorString(123,234,11)
DoDbgLog TestString
DoDbgLog ExtractR(TestString)
DoDbgLog ExtractG(TestString)
DoDbgLog ExtractB(TestString)
End Rem
' Adding the first page
AddNBPage()

'foldend

' Sample for custom fold point
'foldstart
' Some shit here
'foldend

' Main loop
GTKUtil.Main()

' Function to close the editor, called in several places
Function IDEClose()
	Settings.SaveAllSettings()
	GTKUtil.Quit()
End Function

Function Scream(What:String)
	Local TMR:Byte Ptr= gtk_message_dialog_new(Null,0,GTK_MESSAGE_WARNING,GTK_BUTTONS_OK,"Warnung".ToCString())
	gtk_message_dialog_format_secondary_text(TMR,ISO_8859_1_To_UTF_8(What).ToCString())
	gtk_dialog_run(TMR)
	gtk_widget_destroy(TMR)
End Function

Function ISO_8859_1_To_UTF_8:String(InputString:String)
	Return String.FromCString(g_convert(InputString.ToCString(),-1,"UTF-8".ToCString(),"ISO-8859-1".ToCString(),Null,Null,Null))
End Function

Function AddNBPage()
	Local TempScintilla:GtkScintilla = GtkScintilla.Create()
	TempScintilla.SetSizeRequest(700,500)
	Local TempLabel:GtkLabel = GtkLabel.Create("Unbenannt")

	Local LabelHBox:GtkHBox = GtkHBox.Create()
		TempLabel.show()
		LabelHBox.PackStart(TempLabel)
	
		Local CButton:GtkButton = GtkButton.Create()
			CButton.show()
			gtk_button_set_relief(CButton.Handle, 2)
				
				Local TImage:GtkImage = GtkImage.CreateFromIconName("gtk-close",0)
				TImage.SetPixelSize(12)
				Timage.Show()
				CButton.add(TImage)

			LabelHBox.PackEnd(CButton)
		
			CButton.SignalConnect("clicked",CloseTab,TempScintilla.Handle)


	Notebook.AppendPage(TempScintilla,LabelHBox)
	Local Document:TDocument = New TDocument
	Document.Name = "Unbenannt"
	Document.File = ""
	Document.Label = TempLabel
	Document.Scintilla = TempScintilla
	DocumentList.addLast(Document)
	'Making active
	Notebook.ShowAll()
	Notebook.SetCurrentPage(Notebook.GetPagesCount()-1)
	SetupScintilla(TempScintilla)
	TempScintilla.SignalConnect("sci-notify",DoScintillaEvents)
End Function

Function UpdateAllScintillas()
	'DoDbgLog "upall"
	'DoDbgLog "c: " + Notebook.GetPagesCount()
	For Local i:Int = 0 To Notebook.GetPagesCount()-1
		SetupScintilla(GtkScintilla.CreateFromHandle(Notebook.GetPage(i)))
	Next
End Function

Function SetupScintilla(Scintilla:GtkScintilla)
	If Scintilla=Null Then
		DoDbgLog "something strange happened"
		Return
	EndIf
	'DoDbgLog "setupscin"

	Scintilla.SetLexer(Int(Settings.GetValue("Scintilla_Lexer")))
	'Settings.SetValue("Scintilla_Lexer",SCLEX_BLITZMAX)
	Scintilla.SetStyleBits(Int(Settings.GetValue("Scintilla_StyleBits")))
	'Settings.SetValue("Scintilla_StyleBits",STYLE_LINENUMBER)	

	Scintilla.SetBGColor(ExtractR(Settings.GetValue("Scintilla_BGColor")),ExtractG(Settings.GetValue("Scintilla_BGColor")),ExtractB(Settings.GetValue("Scintilla_BGColor")))
	'Settings.SetValue("Scintilla_BGColor",MakeColorString($00,$50,$6E))
	
	Scintilla.SetFont(SCE_B_DEFAULT,Settings.GetValue("Scintilla_Font_Default_FontName"),Int(Settings.GetValue("Scintilla_Font_Default_FontSize")),ExtractR(Settings.GetValue("Scintilla_Font_Default_FontColor")),ExtractG(Settings.GetValue("Scintilla_Font_Default_FontColor")),ExtractB(Settings.GetValue("Scintilla_Font_Default_FontColor")))
	'Settings.SetValue("Scintilla_Font_Default_FontName","!bitstream charter")
	'Settings.SetValue("Scintilla_Font_Default_FontSize","12")
	'Settings.SetValue("Scintilla_Font_Default_FontColor",MakeColorString($EE,$EE,$EE))
	Scintilla.SetFont(SCE_B_COMMENT,Settings.GetValue("Scintilla_Font_COMMENT_FontName"),Int(Settings.GetValue("Scintilla_Font_COMMENT_FontSize")),ExtractR(Settings.GetValue("Scintilla_Font_COMMENT_FontColor")),ExtractG(Settings.GetValue("Scintilla_Font_COMMENT_FontColor")),ExtractB(Settings.GetValue("Scintilla_Font_COMMENT_FontColor")))
	Scintilla.SetFont(SCE_B_MULTILINECOMMENT,Settings.GetValue("Scintilla_Font_COMMENT_FontName"),Int(Settings.GetValue("Scintilla_Font_COMMENT_FontSize")),ExtractR(Settings.GetValue("Scintilla_Font_COMMENT_FontColor")),ExtractG(Settings.GetValue("Scintilla_Font_COMMENT_FontColor")),ExtractB(Settings.GetValue("Scintilla_Font_COMMENT_FontColor")))
	'Settings.SetValue("Scintilla_Font_COMMENT_FontName","!bitstream charter")
	'Settings.SetValue("Scintilla_Font_COMMENT_FontSize","12")
	'Settings.SetValue("Scintilla_Font_COMMENT_FontColor",MakeColorString($B1,$E7,$EB))
	Scintilla.SetFont(SCE_B_NUMBER,Settings.GetValue("Scintilla_Font_NUMBER_FontName"),Int(Settings.GetValue("Scintilla_Font_NUMBER_FontSize")),ExtractR(Settings.GetValue("Scintilla_Font_NUMBER_FontColor")),ExtractG(Settings.GetValue("Scintilla_Font_NUMBER_FontColor")),ExtractB(Settings.GetValue("Scintilla_Font_NUMBER_FontColor")))
	'Settings.SetValue("Scintilla_Font_NUMBER_FontName","!bitstream charter")
	'Settings.SetValue("Scintilla_Font_NUMBER_FontSize","12")
	'Settings.SetValue("Scintilla_Font_NUMBER_FontColor",MakeColorString($33,$FF,$DD))
	Scintilla.SetFont(SCE_B_KEYWORD,Settings.GetValue("Scintilla_Font_KEYWORD_FontName"),Int(Settings.GetValue("Scintilla_Font_KEYWORD_FontSize")),ExtractR(Settings.GetValue("Scintilla_Font_KEYWORD_FontColor")),ExtractG(Settings.GetValue("Scintilla_Font_KEYWORD_FontColor")),ExtractB(Settings.GetValue("Scintilla_Font_KEYWORD_FontColor")))
	'Settings.SetValue("Scintilla_Font_KEYWORD_FontName","!bitstream charter")
	'Settings.SetValue("Scintilla_Font_KEYWORD_FontSize","12")
	'Settings.SetValue("Scintilla_Font_KEYWORD_FontColor",MakeColorString($FF,$FF,$00))
	Scintilla.SetFont(SCE_B_STRING,Settings.GetValue("Scintilla_Font_STRING_FontName"),Int(Settings.GetValue("Scintilla_Font_STRING_FontSize")),ExtractR(Settings.GetValue("Scintilla_Font_STRING_FontColor")),ExtractG(Settings.GetValue("Scintilla_Font_STRING_FontColor")),ExtractB(Settings.GetValue("Scintilla_Font_STRING_FontColor")))
	'Settings.SetValue("Scintilla_Font_STRING_FontName","!bitstream charter")
	'Settings.SetValue("Scintilla_Font_STRING_FontSize","12")
	'Settings.SetValue("Scintilla_Font_STRING_FontColor",MakeColorString($00,$FF,$66))
	Scintilla.SetFont(SCE_B_IDENTIFIER,Settings.GetValue("Scintilla_Font_IDENTIFIER_FontName"),Int(Settings.GetValue("Scintilla_Font_IDENTIFIER_FontSize")),ExtractR(Settings.GetValue("Scintilla_Font_IDENTIFIER_FontColor")),ExtractG(Settings.GetValue("Scintilla_Font_IDENTIFIER_FontColor")),ExtractB(Settings.GetValue("Scintilla_Font_IDENTIFIER_FontColor")))
	'Settings.SetValue("Scintilla_Font_IDENTIFIER_FontName","!bitstream charter")
	'Settings.SetValue("Scintilla_Font_IDENTIFIER_FontSize","12")
	'Settings.SetValue("Scintilla_Font_IDENTIFIER_FontColor",MakeColorString($FF,$FF,$FF))
	Scintilla.SetFont(SCE_B_OPERATOR,Settings.GetValue("Scintilla_Font_OPERATOR_FontName"),Int(Settings.GetValue("Scintilla_Font_OPERATOR_FontSize")),ExtractR(Settings.GetValue("Scintilla_Font_OPERATOR_FontColor")),ExtractG(Settings.GetValue("Scintilla_Font_OPERATOR_FontColor")),ExtractB(Settings.GetValue("Scintilla_Font_OPERATOR_FontColor")))
	'Settings.SetValue("Scintilla_Font_OPERATOR_FontName","!bitstream charter")
	'Settings.SetValue("Scintilla_Font_OPERATOR_FontSize","12")
	'Settings.SetValue("Scintilla_Font_OPERATOR_FontColor",MakeColorString($FF,$FF,$FF))
	Scintilla.SetFont(SCE_B_ERROR,Settings.GetValue("Scintilla_Font_ERROR_FontName"),Int(Settings.GetValue("Scintilla_Font_ERROR_FontSize")),ExtractR(Settings.GetValue("Scintilla_Font_ERROR_FontColor")),ExtractG(Settings.GetValue("Scintilla_Font_ERROR_FontColor")),ExtractB(Settings.GetValue("Scintilla_Font_ERROR_FontColor")))
	'Settings.SetValue("Scintilla_Font_ERROR_FontName","!bitstream charter")
	'Settings.SetValue("Scintilla_Font_ERROR_FontSize","12")
	'Settings.SetValue("Scintilla_Font_ERROR_FontColor",MakeColorString($FF,$00,$00))

	Scintilla.SetMarginType(0,SC_MARGIN_NUMBER)
	Scintilla.SetMarginType(1,SC_MARGIN_SYMBOL)
	Scintilla.SetMarginMask(1,SC_MASK_FOLDERS)


	Scintilla.SetMarginWidth(0,Int(Settings.GetValue("Scintilla_MarginWidth0")))
	'Settings.SetValue("Scintilla_MarginWidth0",35)
	Scintilla.SetMarginWidth(1,Int(Settings.GetValue("Scintilla_MarginWidth1")))
	'Settings.SetValue("Scintilla_MarginWidth1",20)
	Scintilla.SetMarginWidth(2,Int(Settings.GetValue("Scintilla_MarginWidth2")))
	'Settings.SetValue("Scintilla_MarginWidth2",0)

	Scintilla.SetMarginSensitive(0,False)
	Scintilla.SetMarginSensitive(1,True)
	Scintilla.SetMarginSensitive(2,False)

	scintilla_send_message(Scintilla.Handle,SCI_SETFOLDMARGINCOLOUR,Byte Ptr(True),Byte Ptr(scintilla.encodecolor(ExtractR(Settings.GetValue("Scintilla_FoldingMargin_BGColor")),extractg(Settings.GetValue("Scintilla_FoldingMargin_BGColor")),extractB(Settings.GetValue("Scintilla_FoldingMargin_BGColor")))))
	scintilla_send_message(Scintilla.Handle,SCI_SETFOLDMARGINHICOLOUR,Byte Ptr(True),Byte Ptr(scintilla.encodecolor(ExtractR(Settings.GetValue("Scintilla_FoldingMargin_BGColor")),extractg(Settings.GetValue("Scintilla_FoldingMargin_BGColor")),extractB(Settings.GetValue("Scintilla_FoldingMargin_BGColor")))))

	Scintilla.SetFont(STYLE_LINENUMBER,Settings.GetValue("Scintilla_Font_LINENUMBER_FontName"),Int(Settings.GetValue("Scintilla_Font_LINENUMBER_FontSize")),ExtractR(Settings.GetValue("Scintilla_Font_LINENUMBER_FontColor")),ExtractG(Settings.GetValue("Scintilla_Font_LINENUMBER_FontColor")),ExtractB(Settings.GetValue("Scintilla_Font_LINENUMBER_FontColor")))
	'Settings.SetValue("Scintilla_Font_LINENUMBER_FontName","!helvetica")
	'Settings.SetValue("Scintilla_Font_LINENUMBER_FontSize","8")
	'Settings.SetValue("Scintilla_Font_LINENUMBER_FontColor",MakeColorString($FF,$FF,$FF))
	Scintilla.SetFontBGColor(STYLE_LINENUMBER,ExtractR(Settings.GetValue("Scintilla_LineNumbers_BGColor")),ExtractG(Settings.GetValue("Scintilla_LineNumbers_BGColor")),ExtractB(Settings.GetValue("Scintilla_LineNumbers_BGColor")))
	'Settings.SetValue("Scintilla_BGColor_LINENUMBER",MakeColorString($00,$50,$6E))
	Scintilla.SetCaretColor(ExtractR(Settings.GetValue("Scintilla_CaretColor")),ExtractG(Settings.GetValue("Scintilla_CaretColor")),ExtractB(Settings.GetValue("Scintilla_CaretColor")))
	'Settings.SetValue("Scintilla_CaretColor",MakeColorString($AA,$AA,$AA))
	Scintilla.SetCaretLineBack(ExtractR(Settings.GetValue("Scintilla_CaretBGColor")),ExtractG(Settings.GetValue("Scintilla_CaretBGColor")),ExtractB(Settings.GetValue("Scintilla_CaretBGColor")))
	'Settings.SetValue("Scintilla_CaretBGColor",MakeColorString($30,$33,$66))
	Scintilla.SetCaretLineVisible(Int(Settings.GetValue("Scintilla_CaretVisible")))
	'Settings.SetValue("Scintilla_CaretVisible","1")
	Scintilla.SetSelectionBack(ExtractR(Settings.GetValue("Scintilla_SelectionBGColor")),ExtractG(Settings.GetValue("Scintilla_SelectionBGColor")),ExtractB(Settings.GetValue("Scintilla_SelectionBGColor")))
	'Settings.SetValue("Scintilla_SelectionBGColor",MakeColorString($AA,$AA,$AA))
	Scintilla.SetTabWidth(Int(Settings.GetValue("Scintilla_TabWidth")))
	'Settings.SetValue("Scintilla_TabWidth","4")

	Scintilla.SetProperty("fold","1")
	Scintilla.SetProperty("fold.compact","0")
	Scintilla.DefineMarker(SC_MARKNUM_FOLDEROPEN,SC_MARK_CIRCLEMINUS,ExtractR(Settings.GetValue("Scintilla_LineNumbers_BGColor")),extractg(Settings.GetValue("Scintilla_LineNumbers_BGColor")),extractB(Settings.GetValue("Scintilla_LineNumbers_BGColor")),255,255,255)
	Scintilla.DefineMarker(SC_MARKNUM_FOLDER,SC_MARK_CIRCLEPLUS,ExtractR(Settings.GetValue("Scintilla_LineNumbers_BGColor")),extractg(Settings.GetValue("Scintilla_LineNumbers_BGColor")),extractB(Settings.GetValue("Scintilla_LineNumbers_BGColor")),255,255,255)
	Scintilla.DefineMarker(SC_MARKNUM_FOLDERSUB,SC_MARK_VLINE,ExtractR(Settings.GetValue("Scintilla_LineNumbers_BGColor")),extractg(Settings.GetValue("Scintilla_LineNumbers_BGColor")),extractB(Settings.GetValue("Scintilla_LineNumbers_BGColor")),255,255,255)
	Scintilla.DefineMarker(SC_MARKNUM_FOLDERTAIL,SC_MARK_LCORNERCURVE,ExtractR(Settings.GetValue("Scintilla_LineNumbers_BGColor")),extractg(Settings.GetValue("Scintilla_LineNumbers_BGColor")),extractB(Settings.GetValue("Scintilla_LineNumbers_BGColor")),255,255,255)
	Scintilla.DefineMarker(SC_MARKNUM_FOLDEREND,SC_MARK_CIRCLEPLUSCONNECTED,ExtractR(Settings.GetValue("Scintilla_LineNumbers_BGColor")),extractg(Settings.GetValue("Scintilla_LineNumbers_BGColor")),extractB(Settings.GetValue("Scintilla_LineNumbers_BGColor")),255,255,255)
	Scintilla.DefineMarker(SC_MARKNUM_FOLDEROPENMID,SC_MARK_CIRCLEMINUSCONNECTED,ExtractR(Settings.GetValue("Scintilla_LineNumbers_BGColor")),extractg(Settings.GetValue("Scintilla_LineNumbers_BGColor")),extractB(Settings.GetValue("Scintilla_LineNumbers_BGColor")),255,255,255)
	Scintilla.DefineMarker(SC_MARKNUM_FOLDERMIDTAIL,SC_MARK_TCORNERCURVE,ExtractR(Settings.GetValue("Scintilla_LineNumbers_BGColor")),extractg(Settings.GetValue("Scintilla_LineNumbers_BGColor")),extractB(Settings.GetValue("Scintilla_LineNumbers_BGColor")),255,255,255)

	Scintilla.SetKeywordList(0,KeywordList)
End Function

'Color functions
'foldstart
Function MakeColorString:String(ColorR:Byte,ColorG:Byte,ColorB:Byte)
	Return ColorR + "," + ColorG + "," + ColorB
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
'foldend
	Local CPos:Int = Instr(Text,",")
	If CPos = -1 Scream "Fehler beim Lesen der Farbe"
	Local CSPos:Int = Instr(Text,",",CPos+1)
	If CSPos = -1 Scream "Fehler beim Lesen der Farbe"
	Local CTPos:Int = Instr(Text,",",CSPos+1)
	If CTPos = -1 Scream "Fehler beim Lesen der Farbe"
	Return Byte(Mid(Text,CSPos+1,CTPos-CSPos-1))
End Function

Function CloseTab(Widget:Byte Ptr,AdditionalData:Byte Ptr,GdkEvent:Byte Ptr)
	Local TWidget:GtkWidget = GtkWidget.CreateWidgetFromHandle(AdditionalData)
	DoDbgLog "CloseTab called, page: " + Notebook.GetPageOfWidget(TWidget)
	DocumentList.Remove(DocumentList.ValueAtIndex(Notebook.GetPageOfWidget(TWidget)))
	Notebook.RemovePage(Notebook.GetPageOfWidget(TWidget))
End Function

'Buttons
'foldstart
Function OpenClick(Widget:Byte Ptr,AdditionalData:Byte Ptr,GdkEvent:Byte Ptr)
	Local dialog:GtkFileChooserDialog = GtkFileChooserDialog.CreateFCD(ISO_8859_1_To_UTF_8("Datei �ffnen"),Null,GTK_FILE_CHOOSER_ACTION_OPEN,"gtk-open",GTK_RESPONSE_OK,"gtk-cancel",GTK_RESPONSE_CANCEL)
	dialog.SetLocalOnly(True)

	If dialog.Run() = GTK_RESPONSE_OK Then
		Local Stream:TStream = ReadStream(dialog.GetFilename())
		If Stream=Null Then
			Scream "Datei konnte nicht geladen werden"
		EndIf
		AddNBPage()
		Local Document:TDocument = TDocument(DocumentList.ValueAtIndex(Notebook.GetCurrentPage()))
		Document.Label.SetText(StripDir(Dialog.GetFilename()))
		Document.Name = StripDir(Dialog.GetFilename())
		Document.File = Dialog.GetFilename()
		Local FirstLine:Byte = True
		While Not Eof(Stream)
			Local ALine:String = Stream.ReadLine()
			If Lower(Left(ALine,Len("'foldstart"))) = "'foldstart" Then ALine=Mid(ALine,2)
			If Lower(Left(ALine,Len("'foldend"))) = "'foldend" Then ALine=Mid(ALine,2)
			If FirstLine Document.Scintilla.AppendText(ALine) Else Document.Scintilla.AppendText("~n" + ALine)
			firstline = False
		Wend
		If Settings.GetValue(Document.File + "_have_foldinfo") = "yes" Then
			Local foldInfo:String = Settings.GetValue(Document.File + "_foldinfo")
			Local lines:Int[] = split(foldInfo,",")
			GTKUtil.SingleIteration()
			For Local i:Int = 0 To lines.length-1
				DoDbgLog "fold: " + lines[i]
				GTKUtil.SingleIteration()
				Document.Scintilla.ToggleFoldPoint(Lines[i])
				GTKUtil.SingleIteration()
			Next
			GTKUtil.SingleIteration()
		EndIf
		Document.Scintilla.EmptyUndoBuffer()
	EndIf
	
	dialog.Destroy()
End Function

Function tb_save_click()

	Local Document:TDocument = TDocument(DocumentList.ValueAtIndex(Notebook.GetCurrentPage()))
	If Document.File <> "" Then

'		CreateFile(Document.File)
		Local Stream:TStream = WriteStream(Document.File)

		If Stream=Null Then
			Scream "Datei konnte nicht gespeichert werden"
		EndIf
		Local foldinfo:String = ""
		For Local ZI:Int = 0 To Document.Scintilla.GetLineCount()-1
			Local TL:String =Document.Scintilla.GetLine(ZI)
			If scintilla_send_message(Document.Scintilla.Handle,SCI_GETFOLDEXPANDED,Byte Ptr(ZI),Null) = False Then
				foldinfo = foldinfo + ZI + ","
			EndIf
			If Lower(Left(TL,Len("foldstart"))) = "foldstart" Then TL="'" + TL
			If Lower(Left(TL,Len("foldend"))) = "foldend" Then TL="'" + TL
			If ZI = Document.Scintilla.GetLineCount()-1 Then 
				Stream.WriteLine(TL)
			Else 
				Stream.WriteLine(TL[..(Len(TL)-1)])
			End If 
		Next 
		If Len(foldinfo)>0 Then
			foldinfo = Left(foldinfo,Len(foldinfo)-1)
			DoDbgLog "DEBUG: FOLDINFO: (" + foldinfo +")"
			Settings.SetValue(Document.File + "_have_foldinfo","yes")
			Settings.SetValue(Document.File + "_foldinfo",foldinfo)
		EndIf

		Stream.Close()
	Else
		mi_save_under_click()
	EndIf
	
End Function 

Function mi_save_under_click()
	Local dialog:GtkFileChooserDialog = GtkFileChooserDialog.CreateFCD("Datei speichern",Null,GTK_FILE_CHOOSER_ACTION_SAVE,"gtk-save",GTK_RESPONSE_OK,"gtk-cancel",GTK_RESPONSE_CANCEL)
	dialog.SetLocalOnly(True)

	Local Document:TDocument = TDocument(DocumentList.ValueAtIndex(Notebook.GetCurrentPage()))
	If Document.File Then Dialog.SetFileName(Document.File)

	If dialog.Run() = GTK_RESPONSE_OK Then

'		CreateFile(dialog.GetFilename())
		Local Stream:TStream = WriteStream(dialog.GetFilename())

		If Stream=Null Then
			Scream "Datei konnte nicht gespeichert werden"
		EndIf
		Document.File = Dialog.GetFileName()
		Document.Name = StripDir(Document.File)
		Document.Label.SetText(Document.Name)
		For Local ZI:Int = 0 To Document.Scintilla.GetLineCount()-1
			Local TL:String =Document.Scintilla.GetLine(ZI)
			If Lower(Left(TL,Len("foldstart"))) = "foldstart" Then TL="'" + TL
			If Lower(Left(TL,Len("foldend"))) = "foldend" Then TL="'" + TL

			If ZI = Document.Scintilla.GetLineCount()-1 Then 
				Stream.WriteLine(TL)
			Else 
				Stream.WriteLine(TL[..(Len(TL)-1)])
			End If 
		Next 

		Stream.Close()
	EndIf
	
	dialog.Destroy()
End Function 

Function MIEinstellungenClick()
	frmOptions.show()
End Function

Function frmOptions_show()
	LoadScintillaOptions()

End Function

Function LoadScintillaOptions()

Rem 'Hintergrund f�r Scintilla
	Local ColorButton_Scintilla_BG:GtkColorButton = GtkColorButton.CreateFromHandle(Application.GetWidget("colorbutton_Scintilla_BG"))
		ColorButton_Scintilla_BG.setColorInt(ExtractR(Settings.GetValue("Scintilla_BGColor")),ExtractG(Settings.GetValue("Scintilla_BGColor")),ExtractB(Settings.GetValue("Scintilla_BGColor")))
end rem
Rem 'Marginwerte von Scintilla
	Local Spinbutton_Scintilla_Margin0:GtkSpinButton = GtkSpinButton.CreateFromHandle(Application.GetWidget("spinbutton_Scintilla_Margin0"))
		Spinbutton_Scintilla_Margin0.SetValue(Int(Settings.GetValue("Scintilla_MarginWidth0")))
	Local Spinbutton_Scintilla_Margin1:GtkSpinButton = GtkSpinButton.CreateFromHandle(Application.GetWidget("spinbutton_Scintilla_Margin1"))
		Spinbutton_Scintilla_Margin1.SetValue(Int(Settings.GetValue("Scintilla_MarginWidth1")))
	Local Spinbutton_Scintilla_Margin2:GtkSpinButton = GtkSpinButton.CreateFromHandle(Application.GetWidget("spinbutton_Scintilla_Margin2"))
		Spinbutton_Scintilla_Margin2.SetValue(Int(Settings.GetValue("Scintilla_MarginWidth2")))
end rem

	Local Filechooserbutton_Scintilla_KeyWordsList:GtkFileChooserButton = GtkFileChooserButton.CreateFCBFromHandle(Application.GetWidget("Filechooserbutton_Scintilla_KeyWordsList"))
		Filechooserbutton_Scintilla_KeyWordsList.SetFileName(Settings.GetValue("Scintilla_KeywordsFile"))
	

End Function

Function button_opttions_click()

Rem 'Hintergrund und Margin von Scintilla
	Local ColorButton_Scintilla_BG:GtkColorButton = GtkColorButton.CreateFromHandle(Application.GetWidget("colorbutton_Scintilla_BG"))
		Local FR:Int,FG:Int,FB:Int
		ColorButton_Scintilla_BG.GetColorInt(Varptr(FR),Varptr(FG),Varptr(FB))
		Settings.SetValue("Scintilla_BGColor",MakeColorString(FR,FG,FB))

	Local Spinbutton_Scintilla_Margin0:GtkSpinButton = GtkSpinButton.CreateFromHandle(Application.GetWidget("spinbutton_Scintilla_Margin0"))
		Local MW0:Int =	Spinbutton_Scintilla_Margin0.GetValue()
		Settings.SetValue("Scintilla_MarginWidth0",MW0)
	Local Spinbutton_Scintilla_Margin1:GtkSpinButton = GtkSpinButton.CreateFromHandle(Application.GetWidget("spinbutton_Scintilla_Margin1"))
		Local MW1:Int =	Spinbutton_Scintilla_Margin1.GetValue()
		Settings.SetValue("Scintilla_MarginWidth1",MW1)
	Local Spinbutton_Scintilla_Margin2:GtkSpinButton = GtkSpinButton.CreateFromHandle(Application.GetWidget("spinbutton_Scintilla_Margin2"))
		Local MW2:Int =	Spinbutton_Scintilla_Margin2.GetValue()
		Settings.SetValue("Scintilla_MarginWidth2",MW2)
end rem

	Local Filechooserbutton_Scintilla_KeyWordsList:GtkFileChooserButton = GtkFileChooserButton.CreateFCBFromHandle(Application.GetWidget("Filechooserbutton_Scintilla_KeyWordsList"))
		Settings.SetValue("Scintilla_KeywordsFile",Filechooserbutton_Scintilla_KeyWordsList.GetFileName())

	Settings.SaveAllSettings()
	UpdateAllScintillas()

	frmOptions.hide()

End Function

Function button_options_abort()
	frmOptions.hide()
End Function

Function mnu_quickbuild_toggled()
	Local quickbuild:GtkCheckMenuItem = GtkCheckMenuItem.CreateFromHandle(Application.GetWidget("mnu_quickbuild"))
	Settings.SetValue("QuickBuild",quickbuild.GetActive())
End Function

Function mnu_debugmode_toggled()
	Local debugbuild:GtkCheckMenuItem = GtkCheckMenuItem.CreateFromHandle(Application.GetWidget("mnu_debugmode"))
	Settings.SetValue("DebugBuild",debugbuild.GetActive())
End Function

Function mi_compile_click()
	Local Document:TDocument = TDocument(DocumentList.ValueAtIndex(Notebook.GetCurrentPage()))
	If Document.File <> "" Then
		Local argnum:Byte = 2
		Local quickbuild:GtkCheckMenuItem = GtkCheckMenuItem.CreateFromHandle(Application.GetWidget("mnu_quickbuild"))
		If Not quickbuild.GetActive() = True Then
			argnum = argnum + 1
		EndIf
		Local debugbuild:GtkCheckMenuItem = GtkCheckMenuItem.CreateFromHandle(Application.GetWidget("mnu_debugmode"))
		If Not debugbuild.GetActive() = True Then
			argnum = argnum + 1
		EndIf
		Local Targs:String[argnum]
		Targs[0] = "makeapp"
		argnum = 1
		If Not quickbuild.GetActive() = True Then
			Targs[argnum] = "-a"
			argnum = argnum + 1
		EndIf
		If Not debugbuild.GetActive() = True Then
			Targs[argnum] = "-r"
			argnum = argnum + 1
		EndIf
		Targs[argnum] = StripExt(Document.File)
		TProcLib.CreateProcess(bmxpath + "/bin/bmk",targs)
	End If
End Function

Function tb_run_click()
	Local Document:TDocument = TDocument(DocumentList.ValueAtIndex(Notebook.GetCurrentPage()))
	If Document.File <> "" Then
		Local argnum:Byte = 3
		'local argnum:byte = 2
		Local quickbuild:GtkCheckMenuItem = GtkCheckMenuItem.CreateFromHandle(Application.GetWidget("mnu_quickbuild"))
		If Not quickbuild.GetActive() = True Then
			argnum = argnum + 1
		EndIf
		Local debugbuild:GtkCheckMenuItem = GtkCheckMenuItem.CreateFromHandle(Application.GetWidget("mnu_debugmode"))
		If Not debugbuild.GetActive() = True Then
			argnum = argnum + 1
		EndIf
		Local Pargs:String[] = parseCmdProps(Settings.GetValue("CommandLine"))
		argnum = argnum + Pargs.length
		Local Targs:String[argnum]
		Targs[0] = "makeapp"
		argnum = 1
		If Not quickbuild.GetActive() = True Then
			Targs[argnum] = "-a"
			argnum = argnum + 1
		EndIf
		If Not debugbuild.GetActive() = True Then
			Targs[argnum] = "-r"
			argnum = argnum + 1
		EndIf
		Targs[argnum] = "-x"
		argnum = argnum + 1
		Targs[argnum] = StripExt(Document.File)
		argnum = argnum + 1
		For Local i:Int = 0 To Pargs.length-1
			Targs[argnum] = Pargs[i]
			argnum = argnum + 1
		Next
		'Targs[argnum] = StripExt(Document.File)
		TProcLib.CreateProcess(bmxpath + "/bin/bmk",targs)
	End If
End Function

Function Undo()
	Local Document:TDocument = TDocument(DocumentList.ValueAtIndex(Notebook.GetCurrentPage()))
	If Document.Scintilla.CanUndo() Then
		Document.Scintilla.Undo()
	End If
End Function

Function Redo()
	Local Document:TDocument = TDocument(DocumentList.ValueAtIndex(Notebook.GetCurrentPage()))
	If Document.Scintilla.CanRedo() Then 
		Document.Scintilla.Redo()
	End If
End Function

'foldend
Function DoScintillaEvents(Widget:Byte Ptr,lParam:Byte Ptr,Notification:SCNotification,GdkEvent:Byte Ptr)
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
						For Local i:Int = 0 To tabcount-1
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
				For Local statement:String = EachIn AddTabList
					If Lower(Left(prevtext,Len(statement))) = Lower(statement) Then
						tabcount = tabcount + 1
						DoDbgLog "_DEBUG_: Special add statement " + statement + " found"
						Exit
					EndIf
				Next
			End If
			DoDbgLog "_DEBUG_: Adding " + tabcount + " tabs"
			Local tabstring:String
			For Local i:Int = 0 To tabcount-1
				tabstring = tabstring + "~t"
			Next
			TempScintilla.AddText(tabstring)
		EndIf
	EndIf
	Local UndoItem:GtkWidget = GtkWidget.CreateWidgetFromHandle(Application.GetWidget("MenuItem_Undo"))
	Local RedoItem:GtkWidget = gtkwidget.CreateWidgetFromHandle(Application.GetWidget("MenuItem_Redo"))
	If TempScintilla.CanUndo() Then UndoItem.SetSensitive(True) Else UndoItem.SetSensitive(False)
	If TempScintilla.CanRedo() Then RedoItem.SetSensitive(True) Else RedoItem.SetSensitive(False)
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

Function ShowInfo()
	Local AboutWindow:GtkWindow = GtkWindow.CreateFromHandle(Application.GetWidget("frmAbout"))
	AboutWindow.Show()
End Function


Function Cut()
	Local Document:TDocument = TDocument(DocumentList.ValueAtIndex(Notebook.GetCurrentPage()))
	Document.Scintilla.Cut()
End Function

Function Copy()
	Local Document:TDocument = TDocument(DocumentList.ValueAtIndex(Notebook.GetCurrentPage()))
	Document.Scintilla.Copy()
End Function

Function Paste()
	Local Document:TDocument = TDocument(DocumentList.ValueAtIndex(Notebook.GetCurrentPage()))
	Document.Scintilla.Paste()
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

'command-line options
'foldstart
	Function parseCmdProps:String[](cmdprops:String)
		'DebugStop
		Local quotemode:Byte = False
		Local startch:Byte = 1
		Local parsedCmds:String[]
		Local remch:Byte = False
		For Local chn:Int = 1 To Len(cmdprops)
			Local ch:String = Mid(cmdprops,chn,1)
			If ch="~q" And quotemode = False Then
				startch = startch + 1
				quotemode = True
			Else If ch="~q" And quotemode = True Then
				quotemode = False
				remch = True
			End If
			If ch=" " And Not quotemode Then
				parsedCmds = parsedCmds[..parsedCmds.Length+1]
				Local tlen:Int = chn-startch
				If remch tlen=tlen - 1
				parsedCmds[parsedCmds.Length-1] = Mid(cmdprops,startch,tlen)
				startch=chn+1
				remch = False
			End If
		Next
		parsedCmds = parsedCmds[..parsedCmds.Length+1]
		Local tlen:Int = Len(cmdprops)-startch+1
		If remch tlen=tlen-1
		parsedCmds[parsedCmds.Length-1] = Mid(cmdprops,startch,tlen)
		Return parsedCmds
	End Function
	
	Function commandlineproperties()
		Local CmdLineEntry:GtkEntry = GtkEntry.CreateFromHandle(Application.GetWidget("cmdpropsentry"))
		CmdLineEntry.SetText(Settings.GetValue("CommandLine"))
		frmCmdOpts.Show()
	End Function

	Function closePropsWindow:Byte()
		Local CmdLineEntry:GtkEntry = GtkEntry.CreateFromHandle(Application.GetWidget("cmdpropsentry"))
		Settings.SetValue("CommandLine",CmdLineEntry.GetText())
		frmCmdOpts.Hide()
		Return True
	End Function
'foldend

Function DoDbgLog(Text:String)
	If ReleaseVersion = 0 Print Text
End Function
