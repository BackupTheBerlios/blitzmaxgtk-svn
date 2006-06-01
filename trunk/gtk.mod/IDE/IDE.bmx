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

'foldstart 'Framework + Rechtliches
Strict
' IDE
Framework GTK.OOP
Import GTK.Scintilla
Import BRL.MaxUtil
Import BRL.StandardIO
Import "settings.bmx"
Import "style.bmx"

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
'foldend

'foldstart 'Alles Laden und Hauptschleife starten

Type TDocument
	Field Name:String
	Field File:String
	Field Label:GtkLabel
	Field Scintilla:GtkScintilla
	Field Hidden:byte
End Type

'Create document list
Global DocumentList:TList = New TList

'Load Settings
Global Settings:TSettings = New TSettings
Settings.LoadAllSettings()

Global Style:TStyle = New TStyle
Style.Load("test")

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

Global ActualHelpBrowserPath:String = ""

' Getting the main notebook
Global Notebook:GtkNotebook = GtkNotebook.CreateFromHandle(Application.GetWidget("notebook3"))
'Global exp_compiler:Byte Ptr = Application.GetWidget("exp_compiler")
'Global T_emp:GtkContainer = New GtkContainer
'Global HelpBrowser:GtkHtml
Global HelpBrowser:GtkMozEmbed, HelpBrowserLabel:GtkLabel, HelpBrowserProgress:GtkProgressBar
' T_emp.Handle = exp_compiler
AddHelpPage()
Function AddHelpPage()
	Local Document:TDocument = New TDocument
	Document.Name = ""
	Document.File = ""
	Document.Label = null
	Document.Scintilla = null
	Document.Hidden = true
	DocumentList.addLast(Document)
End Function
AddTermPage()
Function AddTermPage()
	Local Document:TDocument = New TDocument
	Document.Name = ""
	Document.File = ""
	Document.Label = null 
	Document.Scintilla = null
	Document.Hidden = true
	DocumentList.addLast(Document)
	Local termVbox:GtkVBox = GtkVBox.CreateFromHandle(Application.GetWidget("termVbox"))
	termVbox.PackEnd(TProcLib.Init(),true,true)
'	Notebook.ShowAll()
End Function
'foldend
'TProcLib.Init(T_emp)

Global BmxPath:String = BlitzMaxPath()

Global frmMain:GtkWindow = GtkWindow.CreateFromHandle(Application.GetWidget("frmMain"))
frmMain.SetIconFromFile("idelogo.png")
Options_Load_by_first_Start()

Global frmOptions:GtkWindow = GtkWindow.CreateFromHandle(Application.GetWidget("frmOptions"))
LoadScintillaOptions()

Global frmSkinScintilla:GtkWindow = GtkWindow.CreateFromHandle(Application.GetWidget("frmSkinScintilla"))
Stylemaker_by_first_Start()

Global frmCmdOpts:GtkWindow = GtkWindow.CreateFromHandle(Application.GetWidget("frmCmdOpts"))

Global frmLogin:GtkWindow = GtkWindow.CreateFromHandle(Application.GetWidget("frmLogin"))
Global recentList:TList = New TList
InitHelpBrowser()
extern
	function gtk_label_set_justify(label:byte ptr, justify:int)
end extern

Function InitHelpBrowser()
	local helpvbox:GtkVBox = GtkVBox.CreateFromHandle(Application.GetWidget("HelpVBox"))
	rem
	HelpBrowser = GtkHtml.Create()
	HelpBrowser.Show()
	HelpBrowser.SignalConnect("url_requested",HelpBrowser_fileRequest)
	HelpBrowser.SignalConnect("link_clicked",HelpBrowser_linkClicked)
	HelpBrowser.SetAllowFrameset(true)
	end rem
	HelpBrowser = GtkMozEmbed.Create()
	HelpBrowser.Show()
	HelpBrowser.SignalConnect("link_message", HelpBrowser_linkMessage)
	HelpBrowser.SignalConnect("js_status", HelpBrowser_JSStatus)
	HelpBrowser.SignalConnect("progress", HelpBrowser_progressChanged)
	HelpBrowser.SignalConnect("net_stop", HelpBrowser_ready)
	local statusbox:GtkHBox = GtkHBox.Create()
	helpbrowserlabel = GtkLabel.Create()
	'gtk_label_set_justify(helpbrowserlabel.Handle, 2)
	helpbrowserprogress  = GtkProgressBar.Create()
	helpbrowserprogress.setsensitive(false)
	statusbox.packend(helpbrowserprogress,false,false)
	statusbox.PackEnd(helpbrowserlabel,true,false)
		helpvbox.packend(statusbox,false,false)
	helpvbox.PackEnd(HelpBrowser,true,true)
	
	helpbrowserlabel.show()
	
	helpbrowserprogress.show()

	statusbox.show()
	If (Settings.GetValue("HelpBrowser_URL") = "" or filetype(settings.getvalue("HelpBrowser_URL"))=0) and filetype(bmxpath + "/doc/index.html")=0 then
		HelpBrowser.RenderData("<html><head><title>Fehler!</title></head><body><h1>Hilfe-URL nicht festgelegt und die Hilfedatei wurde nicht am Standardpfad (" + bmxpath + "/doc/index.html" + ") gefunden.</h1></body></html>", "file:///error", "text/html")
		Return
	end if
	If FileType(settings.getvalue("HelpBrowser_URL")) = 0 then
		Settings.SetValue("HelpBrowser_URL", bmxpath+"/doc/index.html")
	end if
	HelpBrowser.LoadURL("file://" + Settings.GetValue("HelpBrowser_URL"))
	'HelpBrowser_LoadFile(Settings.GetValue("HelpBrowser_URL"))
end function

' Keywords laden
'foldstart 
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
		Scream("Konnte Keywords-Datei nicht öffnen")
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

loadrecentlist()
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

' Main loop
GTKUtil.Main()

'foldend

Function IDEClose()
	Settings.SaveAllSettings()
	SaveRecentList()
	GTKUtil.Quit()
End Function

'foldstart 'Allgemeine Funktionen

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
	If ReleaseVersion = 0 Print Text
End Function
'foldend

'foldstart 'Tabmanagment
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
	'Notebook.ShowAll()
	Document.Scintilla.Show()
	Document.Label.Show()
	Notebook.SetCurrentPage(Notebook.GetPagesCount()-1)
	SetupScintilla(TempScintilla)
	TempScintilla.SignalConnect("sci-notify",DoScintillaEvents)
End Function
Function CloseTab(Widget:Byte Ptr,AdditionalData:Byte Ptr,GdkEvent:Byte Ptr)
	Local TWidget:GtkWidget = GtkWidget.CreateWidgetFromHandle(AdditionalData)
	DoDbgLog "CloseTab called, page: " + Notebook.GetPageOfWidget(TWidget)
	DocumentList.Remove(DocumentList.ValueAtIndex(Notebook.GetPageOfWidget(TWidget)))
	Notebook.RemovePage(Notebook.GetPageOfWidget(TWidget))
End Function
'foldend

'foldstart 'Scintilla Funktionen
Function UpdateAllScintillas()
	'DoDbgLog "upall"
	'DoDbgLog "c: " + Notebook.GetPagesCount()
	For Local i:Int = 2 To Notebook.GetPagesCount()-1
		SetupScintilla(GtkScintilla.CreateFromHandle(Notebook.GetPage(i)))
	Next
End Function
Function SetupScintilla(Scintilla:GtkScintilla)
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
'foldend

'foldstart 'Buttons
Function IDEOpenFile(File:String)
	Local Stream:TStream = ReadStream(File)
	If Stream=Null Then
		Scream "Datei konnte nicht geladen werden"
	EndIf
	AddToRecentList(File)
	AddNBPage()
	Local Document:TDocument = TDocument(DocumentList.ValueAtIndex(Notebook.GetCurrentPage()))
	Document.Label.SetText(StripDir(File))
	Document.Name = StripDir(File)
	Document.File = File
	Local FirstLine:Byte = True
	While Not Eof(Stream)
		Local ALine:String = Stream.ReadLine()
		If Lower(Left(ALine,Len("'foldstart"))) = "'foldstart" Then ALine=Mid(ALine,2)
		If Lower(Left(ALine,Len("'foldend"))) = "'foldend" Then ALine=Mid(ALine,2)
		If FirstLine Document.Scintilla.AppendText(ALine) Else Document.Scintilla.AppendText("~n" + ALine)
		firstline = False
	Wend
	rem
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

endrem
	Document.Scintilla.EmptyUndoBuffer()
end function


Function OpenClick(Widget:Byte Ptr,AdditionalData:Byte Ptr,GdkEvent:Byte Ptr)
	Local Filechooserbutton_LoadPfad:GtkFileChooserButton = GtkFileChooserButton.CreateFCBFromHandle(Application.GetWidget("fb_options_load"))
	Local FP:String = Filechooserbutton_LoadPfad.GetFileName()
	
	Local dialog:GtkFileChooserDialog = GtkFileChooserDialog.CreateFCD(ISO_8859_1_To_UTF_8("Datei öffnen"),Null,GTK_FILE_CHOOSER_ACTION_OPEN,"gtk-open",GTK_RESPONSE_OK,"gtk-cancel",GTK_RESPONSE_CANCEL)
	Local lastpath:String
	
	If FileType(Settings.GetValue("LastOpenDir")) <> 2 then 
		If FileType(FP) <> 2 then lastpath = "/home" else lastpath = FP
	else 
		lastpath = Settings.GetValue("LastOpenDir")
	end if 

	If lastpath <> "" dialog.SetCurrentFolder(lastpath)
	dialog.SetLocalOnly(True)
	If dialog.Run() = GTK_RESPONSE_OK Then
		Settings.SetValue("LastOpenDir", dialog.GetCurrentFolder())
		IDEOpenFile(dialog.GetFileName())
	EndIf
	dialog.Destroy()
End Function

Function tb_save_click()

	Local Document:TDocument = TDocument(DocumentList.ValueAtIndex(Notebook.GetCurrentPage()))
	If Document.File <> "" And not Document.hidden Then

'		CreateFile(Document.File)
		Local Stream:TStream = WriteStream(Document.File)

		If Stream=Null Then
			Scream "Datei konnte nicht gespeichert werden"
		EndIf
		AddToRecentList(Document.file)
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
	Local Filechooserbutton_SavePfad:GtkFileChooserButton = GtkFileChooserButton.CreateFCBFromHandle(Application.GetWidget("fb_options_save"))
	Local FP:String = Filechooserbutton_SavePfad.GetFileName()
	
	Local Document:TDocument = TDocument(DocumentList.ValueAtIndex(Notebook.GetCurrentPage()))
	If Document.hidden return
	Local dialog:GtkFileChooserDialog = GtkFileChooserDialog.CreateFCD("Datei speichern",Null,GTK_FILE_CHOOSER_ACTION_SAVE,"gtk-save",GTK_RESPONSE_OK,"gtk-cancel",GTK_RESPONSE_CANCEL)
	dialog.SetLocalOnly(True)
	local lastpath:string
	
	If FileType(Settings.GetValue("LastSaveDir")) <> 2 then 
		If FileType(FP) <> 2 then lastpath = "/home" else lastpath = FP
	else
		lastpath = Settings.GetValue("LastSaveDir")
	end if

	if lastpath <> "" dialog.SetCurrentFolder(lastpath)

	If Document.File Then Dialog.SetFileName(Document.File)

	If dialog.Run() = GTK_RESPONSE_OK Then
		Settings.SetValue("LastSaveDir", Dialog.GetCurrentFolder())
'		CreateFile(dialog.GetFilename())
		Local Stream:TStream = WriteStream(dialog.GetFilename())

		If Stream=Null Then
			Scream "Datei konnte nicht gespeichert werden"
		EndIf
		AddToRecentList(dialog.GetFilename())
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
	If Document.File <> "" and not Document.hidden Then
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
		Notebook.SetCurrentPage(1)
		TProcLib.Say("Kompiliere " + Document.File)
		TProcLib.CreateProcess(bmxpath + "/bin/bmk",targs)
	End If
End Function

Function tb_run_click()
	Local Document:TDocument = TDocument(DocumentList.ValueAtIndex(Notebook.GetCurrentPage()))
	If Document.File <> "" and not document.hidden Then
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
		Notebook.SetCurrentPage(1)
		TProcLib.Say("Kompiliere und starte " + Document.File)
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

'foldstart 'Kontextmenü
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
'foldend

'foldstart 'DIALOGE
'foldstart 'Module Syncronisieren DIALOG
	Function doSyncMods(Username:String, Password:String, ModuleServers:String)
		If TProcLib.Running() Then
			Scream("Bitte beenden Sie zuerst den in der Konsole laufenden Prozess")
			Return
		End if
		local smModServers:String[] = parseCmdProps(ModuleServers)
		Local smArgs:String[4+smModServers.Length]
		smArgs[0] = "-u"
		smArgs[1] = Username
		smArgs[2] = "-p"
		smArgs[3] = Password
		for local i:int = 0 to smModServers.Length - 1
			smArgs[4+i] = smModServers[i]	
		next
		Notebook.SetCurrentPage(1)
		TProcLib.Say("Synchronisiere Module")
		TProcLib.CreateProcess(bmxpath + "/bin/syncmods", smArgs)
	End Function
		
	Function ShowSyncModsDialog()
		Local txtUser:GtkEntry = GtkEntry.CreateFromHandle(Application.GetWidget("txtUser"))
		txtUser.SetText(Settings.GetValue("SyncMods.Username"))
		frmLogin.Show()
	End Function
	
	Function closeLoginWindowNoDestroy:Byte()
		frmLogin.Hide()
		Return true
	end Function
	
	Function closeLoginWindow:byte()
		Local txtUser:GtkEntry = GtkEntry.CreateFromHandle(Application.GetWidget("txtUser"))
		Local txtPass:GtkEntry = GtkEntry.CreateFromHandle(Application.GetWidget("txtPassword"))
		Settings.SetValue("SyncMods.Username", txtUser.GetText())
		frmLogin.Hide()
		If Settings.GetValue("SyncMods.Servers") = "" then Settings.SetValue("SyncMods.Servers", "pub brl")
		doSyncMods(Settings.GetValue("SyncMods.Username"), txtPass.GetText(), Settings.GetValue("SyncMods.Servers"))
		Return true
	end function
'foldend
'foldstart 'Command-line DIALOG
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

	Function closePropsWindowNoDestroy:byte()
		frmCmdOpts.Hide()
		Return true
	End Function
	
	Function closePropsWindow:Byte()
		Local CmdLineEntry:GtkEntry = GtkEntry.CreateFromHandle(Application.GetWidget("cmdpropsentry"))
		Settings.SetValue("CommandLine",CmdLineEntry.GetText())
		frmCmdOpts.Hide()
		Return True
	End Function
'foldend
'foldstart 'Optionen DIALOG

	Function MIEinstellungenClick()
		'Ladefenster öffnen
		frmOptions.show()
	End Function

	Function LoadScintillaOptions()

		Local Filechooserbutton_Scintilla_BM_Pfad:GtkFileChooserButton = GtkFileChooserButton.CreateFCBFromHandle(Application.GetWidget("fc_options_bmpfad"))
		Local Filechooserbutton_Scintilla_KeyWordsList:GtkFileChooserButton = GtkFileChooserButton.CreateFCBFromHandle(Application.GetWidget("fc_options_keywords"))

		Local CheckButton_RecentList:GtkCheckButton = GtkCheckButton.CreateCBFromHandle(Application.GetWidget("cb_options_recentlist"))
		Local SpinButton_RecentList_Size:GtkSpinButton= GtkSpinButton.CreateFromHandle(Application.GetWidget("sb_options_recentlist_size"))
		Local Button_Recentlist_History:GtkButton = GtkButton.CreateFromHandle(Application.GetWidget("button_options_recentlist_history"))
				
		Local CheckButton_favorits:GtkCheckButton = GtkCheckButton.CreateCBFromHandle(Application.GetWidget("cb_options_favorits"))
		Local Filechooserbutton_LoadPfad:GtkFileChooserButton = GtkFileChooserButton.CreateFCBFromHandle(Application.GetWidget("fb_options_load"))
		Local Filechooserbutton_SavePfad:GtkFileChooserButton = GtkFileChooserButton.CreateFCBFromHandle(Application.GetWidget("fb_options_save"))


	Rem 'Hintergrund für Scintilla
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

		'BlitzMax Pfad in ChooserButtonladen
		Filechooserbutton_Scintilla_BM_Pfad.SetFileName(Settings.GetValue("BlitzMax_Pfad"))
		
		'Keywords in ChooserButton laden
		Filechooserbutton_Scintilla_KeyWordsList.SetFileName(Settings.GetValue("Scintilla_KeywordsFile"))
			
		'Recentlist aktivieren/deaktivieren
		Local RO:Byte = Byte(Settings.GetValue("RecentList_On"))
		CheckButton_RecentList.SetActive(RO)		
		If RO then
			SpinButton_RecentList_Size.SetSensitive(True)
			Button_Recentlist_History.SetSensitive(True)
		else
			SpinButton_RecentList_Size.SetSensitive(False)
			Button_Recentlist_History.SetSensitive(False)
		end if
			
		'RecentList_size laden in Spinbutton
		SpinButton_RecentList_Size.SetValue(int(Settings.GetValue("RecentList_Size")))
			
		'Standardpfade aktivieren/deaktivieren
		Local FO:Byte = Byte(Settings.GetValue("Favorit_On"))
		CheckButton_favorits.SetActive(FO)
		If FO then
			Filechooserbutton_LoadPfad.SetSensitive(True)
			Filechooserbutton_SavePfad.SetSensitive(True)
		else
			Filechooserbutton_LoadPfad.SetSensitive(False)
			Filechooserbutton_SavePfad.SetSensitive(False)
		end if
			
		'Standard Pfad(SPEICHERN) in ChooserButton laden
		Filechooserbutton_SavePfad.SetFileName(Settings.GetValue("FavoritSave"))
			
		'Standard Pfad(LADEN) in ChooserButton laden
		Filechooserbutton_LoadPfad.SetFileName(Settings.GetValue("FavoritLoad"))
			
	End Function

	Function button_opttions_apply()

		'BlitzMax Pfad aus ChooserButton lesen und speichern
		Local Filechooserbutton_Scintilla_BM_Pfad:GtkFileChooserButton = GtkFileChooserButton.CreateFCBFromHandle(Application.GetWidget("fc_options_bmpfad"))
			Settings.SetValue("BlitzMax_Pfad",Filechooserbutton_Scintilla_BM_Pfad.GetFileName())
			
		'Keywords aus ChooserButton lesen und speichern
		Local Filechooserbutton_Scintilla_KeyWordsList:GtkFileChooserButton = GtkFileChooserButton.CreateFCBFromHandle(Application.GetWidget("fc_options_keywords"))
			Settings.SetValue("Scintilla_KeywordsFile",Filechooserbutton_Scintilla_KeyWordsList.GetFileName())

		'Recentlist aktiv?
		Local CheckButton_RecentList:GtkCheckButton = GtkCheckButton.CreateCBFromHandle(Application.GetWidget("cb_options_recentlist"))
			Settings.SetValue("RecentList_On",CheckButton_RecentList.GetActive())			

		'RecentList_size aus Spinbutton lesen und speichern
		Local SpinButton_RecentList_Size:GtkSpinButton= GtkSpinButton.CreateFromHandle(Application.GetWidget("sb_options_recentlist_size"))
			Settings.SetValue("RecentList_Size",int(SpinButton_RecentList_Size.GetValue()))
		
		'Sollen Standard Pfade benutzt werden?
		Local CheckButton_favorits:GtkCheckButton = GtkCheckButton.CreateCBFromHandle(Application.GetWidget("cb_options_favorits"))
			Settings.SetValue("Favorit_On",CheckButton_favorits.GetActive())
			
		'Standard Pfad(SPEICHERN) aus ChooserButton lesen und speichern
		Local Filechooserbutton_SavePfad:GtkFileChooserButton = GtkFileChooserButton.CreateFCBFromHandle(Application.GetWidget("fb_options_save"))
			Settings.SetValue("FavoritSave",Filechooserbutton_SavePfad.GetFileName())
			
		'Standard Pfad(LADEN) aus ChooserButton lesen und speichern
		Local Filechooserbutton_LoadPfad:GtkFileChooserButton = GtkFileChooserButton.CreateFCBFromHandle(Application.GetWidget("fb_options_load"))
			Settings.SetValue("FavoritLoad",Filechooserbutton_LoadPfad.GetFileName())

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
	
		Settings.SaveAllSettings()
		UpdateAllScintillas()
	
		frmOptions.Hide()
	End Function

	Function button_options_styleeditor()
		frmOptions.Hide()
		frmSkinScintilla.show()
	end Function

	Function button_options_abort()
		frmOptions.Hide()
	End Function

	Function closeOptionsWindowNoDestroy:byte()
		frmOptions.Hide()
		Return true
	End Function

	'Functionen über Widgets
	
	Function button_options_history()
		Local CheckButton_RecentList:GtkCheckButton = GtkCheckButton.CreateCBFromHandle(Application.GetWidget("cb_options_recentlist"))
		Local SpinButton_RecentList_Size:GtkSpinButton= GtkSpinButton.CreateFromHandle(Application.GetWidget("sb_options_recentlist_size"))
		Local Button_Recentlist_History:GtkButton = GtkButton.CreateFromHandle(Application.GetWidget("button_options_recentlist_history"))
		
			Local RO:Byte =CheckButton_RecentList.GetActive()
			If RO then
				SpinButton_RecentList_Size.SetSensitive(True)
				Button_Recentlist_History.SetSensitive(True)
			else
				SpinButton_RecentList_Size.SetSensitive(False)
				Button_Recentlist_History.SetSensitive(False)
			end if
	end Function

	Function button_options_favorits()
		Local CheckButton_favorits:GtkCheckButton = GtkCheckButton.CreateCBFromHandle(Application.GetWidget("cb_options_favorits"))
		Local Filechooserbutton_LoadPfad:GtkFileChooserButton = GtkFileChooserButton.CreateFCBFromHandle(Application.GetWidget("fb_options_load"))
		Local Filechooserbutton_SavePfad:GtkFileChooserButton = GtkFileChooserButton.CreateFCBFromHandle(Application.GetWidget("fb_options_save"))

			Local RO:Byte =CheckButton_favorits.GetActive()
			If RO then
				Filechooserbutton_LoadPfad.SetSensitive(True)
				Filechooserbutton_SavePfad.SetSensitive(True)
			else
				Filechooserbutton_LoadPfad.SetSensitive(False)
				Filechooserbutton_SavePfad.SetSensitive(False)
			end if
	end Function

	Function Options_Load_by_first_Start()
		Local CheckButton_favorits:GtkCheckButton = GtkCheckButton.CreateCBFromHandle(Application.GetWidget("cb_options_favorits"))
		Local Filechooserbutton_LoadPfad:GtkFileChooserButton = GtkFileChooserButton.CreateFCBFromHandle(Application.GetWidget("fb_options_load"))
		Local Filechooserbutton_SavePfad:GtkFileChooserButton = GtkFileChooserButton.CreateFCBFromHandle(Application.GetWidget("fb_options_save"))

			Local RO:Byte = Byte(Settings.GetValue("Favorit_On"))
			If RO then
				Settings.DelSetting("LastOpenDir")
				Settings.DelSetting("LastSaveDir")
				Settings.SaveAllSettings()
			end if		
	end function

'foldend

'foldstart 'Style-Maker

	Function closeSkinWindowNoDestroy:byte()
		frmSkinScintilla.Hide()
		Return true
	End Function

	'Functionen über Widgets
	
	Function Stylemaker_by_first_Start()
		Local Frame_Vorschau:GtkFrame = GtkFrame.CreateFromHandle(Application.GetWidget("frame_style_vorschau"))
		Local VScintilla:GtkScintilla = GtkScintilla.Create()
			VScintilla.SetSizeRequest(700,500)
			Frame_Vorschau.add(VScintilla)
			VScintilla.show()
			


	end function

'foldend


'
'foldend

'foldstart 'Kompiliereinstellungen + Processkill
Function RebuildModules()
	local bmkArgs:String[2]
	bmkArgs[0] = "makemods"
	bmkArgs[1] = "-a"
	if TProcLib.Running() then
		Scream "Bitte beenden Sie zuerst den momentan in der Konsole laufenden Prozess"
	end if
	Notebook.SetCurrentPage(1)
	TProcLib.Say("Starte das Kompilieren aller Module...")
	TProcLib.CreateProcess(bmxpath+"/bin/bmk",bmkArgs)
End Function
Function BuildModules()
	local bmkArgs:String[1]
	bmkArgs[0] = "makemods"
	if TProcLib.Running() then
		Scream "Bitte beenden Sie zuerst den momentan in der Konsole laufenden Prozess"
	end if
	Notebook.SetCurrentPage(1)
	TProcLib.Say("Starte das Kompilieren geänderter Module...")
	TProcLib.CreateProcess(bmxpath+"/bin/bmk",bmkArgs)
end function
function killApp()
	TProcLib.SendSignal(SIGKILL)
end function
function termApp()
	TProcLib.SendSignal(SIGTERM)
end function
'foldend

'foldstart 'HelpBrowser

Function HelpBrowser_goPortal()
	HelpBrowser.LoadURL("http://www.blitzforum.de/")
End Function
Function HelpBrowser_goBack()
	HelpBrowser.GoBack()
End Function
Function HelpBrowser_goForward()
	HelpBrowser.GoForward()
End Function
Function HelpBrowser_goHome()
	HelpBrowser.LoadURL(Settings.GetValue("HelpBrowser_URL"))
End Function
Function HelpBrowser_stopLoad()
	HelpBrowser.stopLoad()
end function
Function HelpBrowser_Reload()
	HelpBrowser.reload()
end function
Function HelpBrowser_linkMessage()
	HelpBrowserLabel.SetText(HelpBrowser.GetLinkMessage())
end function
Function HelpBrowser_JSStatus()
	HelpBrowserLabel.SetText(HelpBrowser.GetJSStatus())
end function
Function HelpBrowser_progressChanged(embed:byte ptr, StatusCur:int, StatusMax:int, data:byte ptr)
	HelpBrowserProgress.SetSensitive(true)
	HelpBrowserLabel.SetText("Lade... ")
	If StatusMax < 1 then
		HelpBrowserProgress.Pulse()
	else
		HelpBrowserProgress.SetFraction(float(StatusCur)/float(statusMax))
	endif
end function
function HelpBrowser_ready()
	HelpBrowserProgress.SetFraction(0)
	HelpBrowserProgress.SetSensitive(false)
	HelpBrowserLabel.SetText("Bereit")
end function
rem
Function HelpBrowser_loadFile(File:String)
	local stream:GtkHtmlStream = HelpBrowser.BeginContent("text/html; charset=iso-8859-1")
	local filestream:TStream = ReadStream(File)
	print "loading file: " + file
	if filestream = null then
		HelpBrowser.write(stream,"<html><head><title>Fehler!</title></head><body><h1>Die Hilfe-Datei konnte nicht gefunden werden</h1></body>")
		HelpBrowser.EndStream(stream,GTK_HTML_STREAM_ERROR)
		return
	endif
	ActualHelpBrowserPath = extractdir(file)
	While not filestream.eof()
		local actline:string = filestream.readline()
		print actline
		HelpBrowser.write(stream, actline +  "~n")
	wend
	CloseStream(filestream)
	HelpBrowser.EndStream(stream,GTK_HTML_STREAM_OK)
end function
Function helpBrowser_fileRequest(html:byte ptr, curl:byte ptr, handle:byte ptr)
	local url:string = string.fromCString(curl)
	local stream:GtkHtmlStream = GtkHtmlStream.CreateFromHandle(handle)
	print "requested: " + actualhelpbrowserpath + "/" + url
	writestdout "opening file... "
	local filestream:TStream = ReadStream(ActualHelpBrowserPath + "/" + url)
	if filestream =null then
		print "failed, returning GTK_HTML_STREAM_ERROR"
		HelpBrowser.EndStream(stream,GTK_HTML_STREAM_ERROR)
		return
	endif
	print "Success!"
	Writestdout "Writing to stream..."
	while not filestream.eof()
		writestdout "."
		HelpBrowser.write(stream, chr$(filestream.readbyte()))
	wend
	print " Ready."
	print "Sending GTK_HTML_STREAM_OK"
	HelpBrowser.EndStream(stream,GTK_HTML_STREAM_OK)
	print "OK"
end function
function helpBrowser_linkClicked(html:byte ptr, curl:byte ptr)
	local url:string = string.fromcstring(curl)
	print "clicked: " + url
	if HasLeft(url,"http://") or HasLeft(url, "https://") or HasLeft(url, "mailto:") or HasLeft(url, "irc://") or HasLeft(url, "file:///") or HasLeft(url,"telnet://") then 
		print "link ignored"
		return
	end if
	local fallbackdir:String = currentdir()
	changedir actualhelpbrowserpath
	local realfilepath:string = realpath(url)
	changedir fallbackdir
	helpBrowser_loadFile(realfilepath)
end function
function HasLeft:byte(text:string, has:String)
	if lower(left(text,len(has))) = lower(has) then
		return true
	else
		return false
	endif
end function
end rem
'foldend

'foldstart 'RecentList
Function AddToRecentList(item:string)
	If recentlist.contains(item) then
		recentlist.remove(item)
	endif
	recentlist.addfirst(item)
	if settings.getvalue("RecentList_Size") = "" then settings.setvalue("RecentList_Size","10")
	while recentlist.count() >= int(settings.getvalue("RecentList_Size"))
		recentlist.removelast()
	wend
	UpdateRecentList()
End Function
Function UpdateRecentList()
	local recentmenu:GtkMenu = GtkMenu.CreateFromHandle(Application.GetWidget("last_files_menu"))
	recentmenu.foreach(DeleteRecentItem,recentmenu.Handle)
	local i:int = 1
	for local recentitem:string = eachin recentlist
		local tmpitem:GtkMenuItem = GtkMenuItem.CreateWithLabel(i + ". " + stripdir(recentitem))
		tmpitem.show()
		tmpitem.SignalConnect("activate", RecentListItemClicked)
		recentmenu.append(tmpitem)
		i:+1
	next
	if recentlist.count()>0 enablerecentitem()
end function
function deleterecentitem(widget:byte ptr, data:byte ptr)
	local tmpwidget:GtkWidget = New GtkWidget
	tmpwidget.Handle = widget
	local tmpmenu:GtkMenu = GtkMenu.CreateFromHandle(Data)
	tmpmenu.Remove(tmpwidget)
end function
function SaveRecentList()
	local rstream:TStream = WriteStream("cfg/recent.lst")
	if rstream = null then
		Scream("Konnte cfg/recent.lst nicht öffnen")
	endif
	for local rentry:string = eachin recentlist
		rstream.WriteLine(rentry)
	next
	CloseStream(rstream)
end function
function loadrecentlist()
	local rstream:TStream = ReadStream("cfg/recent.lst")
	if rstream = null then
		print "(IDE.bmx) Warning: Couldn´t load cfg/recent.lst"
		DisableRecentItem()
		return
	endif
	while not rstream.eof()
		local actline:string = rstream.ReadLine()
		recentlist.addLast(actline)
	wend
	if recentlist.count() = 0 then
		disablerecentitem()
	else
		updaterecentlist()
	endif
	if settings.getvalue("RecentList_Size") = "" then settings.setvalue("RecentList_Size","10")
	while recentlist.count() >= int(settings.getvalue("RecentList_Size"))
		recentlist.removelast()
	wend
end function
function disablerecentitem()
	local recentmenu:GtkMenuItem = GtkMenuItem.CreateFromHandle(Application.GetWidget("last_files_item"))
	recentmenu.SetSensitive(false)
end function
function enablerecentitem()
	local recentmenu:GtkMenuItem = GtkMenuItem.CreateFromHandle(Application.GetWidget("last_files_item"))
	recentmenu.SetSensitive(true)
end function
function RecentListItemClicked(menuitem:byte ptr)
	local tempitem:GtkMenuItem = GtkMenuItem.CreateFromHandle(menuitem)
	tempitem.foreach(RecentListItemClicked2)
end function
function RecentListItemClicked2(label:byte ptr)
	local templabel:GtkLabel = GtkLabel.CreateFromHandle(label)
	local text:string = templabel.gettext()
	local tmpindex:int = instr(text, ".")
	if tmpindex = 0 then
		print "(IDE.bmx) Warning: Couldn´t find . in label text"
		return
	endif
	local tmpstr:String = mid(text,0,tmpindex)
	local theindex:int = int(tmpstr)-1
	local realfile:String = string(recentlist.ValueAtIndex(theindex))
	IDEOpenFile(realfile)
end function
'foldend

