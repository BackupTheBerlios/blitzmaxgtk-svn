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
Import BRL.StandardIO
Import Pub.StdC
Import "settings.bmx"
Import "style.bmx"
Import "gettext.bmx"

?win32
Import "procwin32.bmx"
?linux
Import "proclinux.bmx"
?mac
Import "procmac.bmx"
?

' 0 = development, 1 = release, 2 = pre-release
Const ReleaseVersion:Byte = 0

WriteStdout "BMax-IDE "
Select ReleaseVersion
	Case 0 
		WriteStdout "development"
	Case 1
		WriteStdout "release"
	Case 2
		WriteStdout "pre-release"
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
	Field Hidden:Byte
End Type

'Create document list
Global DocumentList:TList = New TList


' Initialization stuff
'FoldStart
GetText.Init("gtkmaxide", "/usr/share/locale", "UTF-8")
GTKUtil.Init()
Glade.Init()
Global Settings:TSettings = New TSettings
Settings.LoadAllSettings()
Global Style:TStyle = New TStyle
Local SSTyle:String = Settings.GetValue("Style")
If Len(Trim(SStyle)) > 0 Then
	Style.Load(SStyle)
End If

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


' Keywords laden
Global KeywordList:TList = New TList
Global RealKeywordList:TList = New TList
If Settings.GetValue("Scintilla_KeywordsFile")="" Then
	Scream(_("Keywords-Datei nicht festgelegt"))
Else
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
					RealKeywordList.addLast(Left(ALine,i-1))
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


' Glade-Datei suchen, dabei lokale Version bevorzugen
local gladefile:String
If FileType("ide.glade") <> 0 then
	gladefile="ide.glade"
else
	if filetype("/usr/share/gtkmaxide/ide.glade") <> 0then
		gladefile="/usr/share/gtkmaxide/ide.glade"
	else
		Scream("Interface konnte nicht gefunden werden!")
		end
	endif
endif
Global Application:GladeXML = GladeXML.Create(gladefile)
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
	Document.Label = Null
	Document.Scintilla = Null
	Document.Hidden = True
	DocumentList.addLast(Document)
End Function
AddTermPage()
Function AddTermPage()
	Local Document:TDocument = New TDocument
	Document.Name = ""
	Document.File = ""
	Document.Label = Null 
	Document.Scintilla = Null
	Document.Hidden = True
	DocumentList.addLast(Document)
	Local termVbox:GtkVBox = GtkVBox.CreateFromHandle(Application.GetWidget("termVbox"))
	termVbox.PackEnd(TProcLib.Init(),True,True)
'	Notebook.ShowAll()
End Function
'foldend
'TProcLib.Init(T_emp)

Global BmxPath:String = Settings.GetValue("BlitzMax_Pfad")
If BmxPath = "" Or filetype(BmxPath) <> FILETYPE_DIR Then
	Scream("Bitte setzen Sie den BlitzMax-Pfad")
endif

Global frmMain:GtkWindow = GtkWindow.CreateFromHandle(Application.GetWidget("frmMain"))
local iconpath:String = ""
If FileType("idelogo.png") = FILETYPE_FILE then
    iconpath="idelogo.png"
else
    if filetype("/usr/share/pixmaps/gtkmaxide.png") = FILETYPE_FILE then
        iconpath="/usr/share/pixmaps/gtkmaxide.png"
    else
       	Print "(IDE.bmx) WARNING: Couldn´t find idelogo.png or gtkmaxide.png"
	endif
endif				
if iconpath<>"" then frmMain.SetIconFromFile(iconpath)
Options_Load_by_first_Start()

Global frmOptions:GtkWindow = GtkWindow.CreateFromHandle(Application.GetWidget("frmOptions"))
LoadScintillaOptions()

Global frmSkinScintilla:GtkWindow = GtkWindow.CreateFromHandle(Application.GetWidget("frmSkinScintilla"))
Stylemaker_by_first_Start()
Global VScintilla:GtkScintilla 

Global frmCmdOpts:GtkWindow = GtkWindow.CreateFromHandle(Application.GetWidget("frmCmdOpts"))

Global frmLogin:GtkWindow = GtkWindow.CreateFromHandle(Application.GetWidget("frmLogin"))
Global recentList:TList = New TList
InitHelpBrowser()
Extern
	Function gtk_label_set_justify(label:Byte Ptr, justify:Int)
End Extern

Function InitHelpBrowser()
	Local helpvbox:GtkVBox = GtkVBox.CreateFromHandle(Application.GetWidget("HelpVBox"))
	Rem
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
	Local statusbox:GtkHBox = GtkHBox.Create()
	helpbrowserlabel = GtkLabel.Create()
	'gtk_label_set_justify(helpbrowserlabel.Handle, 2)
	helpbrowserprogress  = GtkProgressBar.Create()
	helpbrowserprogress.setsensitive(False)
	statusbox.packend(helpbrowserprogress,False,False)
	statusbox.PackEnd(helpbrowserlabel,True,False)
		helpvbox.packend(statusbox,False,False)
	helpvbox.PackEnd(HelpBrowser,True,True)
	
	helpbrowserlabel.show()
	
	helpbrowserprogress.show()

	statusbox.show()
	If (Settings.GetValue("HelpBrowser_URL") = "" Or FileType(settings.getvalue("HelpBrowser_URL"))=0) And FileType(bmxpath + "/doc/index.html")=0 Then
		HelpBrowser.RenderData("<html><head><title>Fehler!</title></head><body><h1>Hilfe-URL nicht festgelegt und die Hilfedatei wurde nicht am Standardpfad (" + bmxpath + "/doc/index.html" + ") gefunden.</h1></body></html>", "file:///error", "text/html")
		Return
	End If
	If FileType(settings.getvalue("HelpBrowser_URL")) = 0 Then
		Settings.SetValue("HelpBrowser_URL", bmxpath+"/doc/index.html")
	End If
	HelpBrowser.LoadURL("file://" + Settings.GetValue("HelpBrowser_URL"))
	'HelpBrowser_LoadFile(Settings.GetValue("HelpBrowser_URL"))
End Function


'foldstart 


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
	SetupScintilla(Style,TempScintilla)
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
		SetupScintilla(Style,GtkScintilla.CreateFromHandle(Notebook.GetPage(i)))
	Next
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

Function STrim:String(ToTrim:String)
	Local IsNotOnlyShit:Byte = False
	For Local precheck:Int = 1 To Len(ToTrim)
		Local actch:String = Mid(ToTrim, precheck, 1)
		If ((Asc(actch)>=Asc("0") And Asc(actch)<=Asc("9")) Or (Asc(actch)>=Asc("A") And Asc(actch)<=Asc("Z")) Or (actch = "_") Or (Asc(actch)>=Asc("a") And Asc(actch)<=Asc("z"))) Then
			IsNotOnlyShit = True
		EndIf
	Next
	If Not IsNotOnlyShit Return ""
	For Local i:Int = 1 To Len(ToTrim)
		Local actch:String = Mid(ToTrim,i,1)
		If Not ((Asc(actch)>=Asc("0") And Asc(actch)<=Asc("9")) Or (Asc(actch)>=Asc("A") And Asc(actch)<=Asc("Z")) Or (actch = "_") Or (Asc(actch)>=Asc("a") And Asc(actch)<=Asc("z"))) Then
			ToTrim = Mid(ToTrim,0,i-1) +Mid(ToTrim,i+1)
			If i > 0 i:-1
			If Len(ToTrim) < 1 Return ""
		Else
			Exit
		EndIf
	Next
	For Local i:Int = Len(ToTrim) To 1 Step -1
		Local actch:String = Mid(ToTrim,i,1)
		If Not ((Asc(actch)>=Asc("0") And Asc(actch)<=Asc("9")) Or (Asc(actch)>=Asc("A") And Asc(actch)<=Asc("Z")) Or (actch = "_") Or (Asc(actch)>=Asc("a") And Asc(actch)<=Asc("z"))) Then
'Print "i: " + i + ", Len(ToTrim): " + Len(ToTrim) + ", ToTrim: " + ToTrim
			ToTrim = Mid(ToTrim,0,i-1) +Mid(ToTrim,i+1)
'			If i > 0 i:+1
		Else
			Exit
		EndIf
	Next
	Return ToTrim
End Function

Function GetLeftTrimmed:String(ToTrim:String)
	Local lefttrimmed:String = ""
	For Local i:Int = 1 To Len(ToTrim)
		Local actch:String = Mid(ToTrim,i,1)
		If Not ((Asc(actch)>=Asc("0") And Asc(actch)<=Asc("9")) Or (Asc(actch)>=Asc("A") And Asc(actch)<=Asc("Z")) Or (actch = "_") Or (Asc(actch)>=Asc("a") And Asc(actch)<=Asc("z"))) Then
			lefttrimmed :+ actch
		Else
			Exit
		EndIf
	Next	
	Return lefttrimmed
End Function

Function GetRightTrimmed:String(ToTrim:String)
	Local righttrimmed:String = ""
	For Local i:Int = Len(ToTrim) To 1 Step -1
		Local actch:String = Mid(ToTrim,i,1)
		If Not ((Asc(actch)>=Asc("0") And Asc(actch)<=Asc("9")) Or (Asc(actch)>=Asc("A") And Asc(actch)<=Asc("Z")) Or (actch = "_") Or (Asc(actch)>=Asc("a") And Asc(actch)<=Asc("z"))) Then
			righttrimmed :+ actch
		Else
			Exit
		EndIf
	Next
	Return righttrimmed
End Function

Function Keywordize:String(Text:String)
	Local stringmode:Byte = False
	Local lastpos:Int = 1
	Local retstring:String = text
	For Local i:Int = 1 To Len(Text)
		Local actch:String =Mid(Text,i,1)
		If actch = "~q" Then
			stringmode = Not stringmode
		Else If (Not ((Asc(actch)>=Asc("0") And Asc(actch)<=Asc("9")) Or (Asc(actch)>=Asc("A") And Asc(actch)<=Asc("Z")) Or (actch = "_") Or (Asc(actch)>=Asc("a") And Asc(actch)<=Asc("z")))) And Not stringmode
			Local actselection:String = STrim(Mid(Text,lastpos,i-lastpos))
			Local untrimmed:String = Mid(text,lastpos,i-lastpos)
			Local pos:Int = 0
			For Local tempstr:String = EachIn KeywordList
				If tempstr = Lower(actselection) Then
					Local newval:String = String(RealKeywordList.ValueAtIndex(pos))
					retstring = Mid(retstring,1,lastpos-1) + GetLeftTrimmed(untrimmed) + newval + GetRightTrimmed(untrimmed) + Mid(retstring,i)
					Exit
				EndIf
				pos:+1
			Next
			lastpos = i
		EndIf
	Next
	If Asc(Right(retstring,1)) = 10 Or Asc(Right(retstring,1)) = 13 Then
		retstring = Left(retstring, Len(retstring)-1)
	EndIf
	If Asc(Right(retstring,2)) = 10 And Asc(Right(retstring,1)) = 13 Then
		retstring = Left(retstring, Len(retstring)-1)
	EndIf
	Return retstring
End Function

Function DoScintillaEvents(Widget:Byte Ptr,lParam:Byte Ptr,Notification:SCNotification,GdkEvent:Byte Ptr)
	Local TempScintilla:GtkScintilla = GtkScintilla.CreateFromHandle(Widget)
	If notification.Code = SCN_MARGINCLICK Then
		DoDbgLog TempScintilla.GetLineFromPosition(Notification.Position)
		TempScintilla.ToggleFoldPoint(TempScintilla.GetLineFromPosition(Notification.position))
	Else If notification.Code = SCN_CHARADDED Then
		DoDbgLog "_DEBUG_: CHARADD: " + notification.ch
		If Not ((notification.ch>=Asc("0") And notification.ch<=Asc("9")) Or (notification.ch>=Asc("A") And notification.ch<=Asc("Z")) Or (notification.ch = Asc("_")) Or (notification.ch>=Asc("a") And notification.ch<=Asc("z"))) Then
			Local prevselstart:Int = scintilla_send_message(TempScintilla.Handle,SCI_GETSELECTIONSTART,Null,Null)
			Local prevselend:Int  = scintilla_send_message(TempScintilla.Handle,SCI_GETSELECTIONEND,Null,Null)
			Local linenum:Int = TempScintilla.GetLineFromPosition(TempScintilla.GetCurrentPosition())
			If (notification.ch = 10 Or notification.ch = 13) And linenum>0 Then linenum :- 1
			Local ActLine:String = TempScintilla.GetLine(linenum)
			scintilla_send_message(TempScintilla.Handle,SCI_SETSELECTIONSTART,Byte Ptr(scintilla_send_message(TempScintilla.Handle,SCI_POSITIONFROMLINE,Byte Ptr(linenum),Null)),Null)
			scintilla_send_message(TempScintilla.Handle,SCI_SETSELECTIONEND,Byte Ptr(scintilla_send_message(TempScintilla.Handle,SCI_GETLINEENDPOSITION,Byte Ptr(linenum),Null)),Null)
			ActLine = Keywordize(ActLine)
			scintilla_send_message(TempScintilla.Handle,SCI_REPLACESEL,Null,ActLine.ToCString())
			scintilla_send_message(TempScintilla.Handle,SCI_SETSELECTIONSTART,Byte Ptr(prevselstart),Null)
			scintilla_send_message(TempScintilla.Handle,SCI_SETSELECTIONEND,Byte Ptr(prevselend),Null)
		End If

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
	Rem
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
End Function


Function OpenClick(Widget:Byte Ptr,AdditionalData:Byte Ptr,GdkEvent:Byte Ptr)
	Local Filechooserbutton_LoadPfad:GtkFileChooserButton = GtkFileChooserButton.CreateFCBFromHandle(Application.GetWidget("fb_options_load"))
	Local FP:String = Filechooserbutton_LoadPfad.GetFileName()
	
	Local dialog:GtkFileChooserDialog = GtkFileChooserDialog.CreateFCD(ISO_8859_1_To_UTF_8("Datei öffnen"),Null,GTK_FILE_CHOOSER_ACTION_OPEN,"gtk-open",GTK_RESPONSE_OK,"gtk-cancel",GTK_RESPONSE_CANCEL)
	Local lastpath:String
	
	If FileType(Settings.GetValue("LastOpenDir")) <> 2 Then 
		If FileType(FP) <> 2 Then lastpath = "/home" Else lastpath = FP
	Else 
		lastpath = Settings.GetValue("LastOpenDir")
	End If 

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
	If Document.File <> "" And Not Document.hidden Then

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
	If Document.hidden Return
	Local dialog:GtkFileChooserDialog = GtkFileChooserDialog.CreateFCD("Datei speichern",Null,GTK_FILE_CHOOSER_ACTION_SAVE,"gtk-save",GTK_RESPONSE_OK,"gtk-cancel",GTK_RESPONSE_CANCEL)
	dialog.SetLocalOnly(True)
	Local lastpath:String
	
	If FileType(Settings.GetValue("LastSaveDir")) <> 2 Then 
		If FileType(FP) <> 2 Then lastpath = "/home" Else lastpath = FP
	Else
		lastpath = Settings.GetValue("LastSaveDir")
	End If

	If lastpath <> "" dialog.SetCurrentFolder(lastpath)

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
	If Document.File <> "" And Not Document.hidden Then
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
	If Document.File <> "" And Not document.hidden Then
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
		End If
		Local smModServers:String[] = parseCmdProps(ModuleServers)
		Local smArgs:String[4+smModServers.Length]
		smArgs[0] = "-u"
		smArgs[1] = Username
		smArgs[2] = "-p"
		smArgs[3] = Password
		For Local i:Int = 0 To smModServers.Length - 1
			smArgs[4+i] = smModServers[i]	
		Next
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
		Return True
	End Function
	
	Function closeLoginWindow:Byte()
		Local txtUser:GtkEntry = GtkEntry.CreateFromHandle(Application.GetWidget("txtUser"))
		Local txtPass:GtkEntry = GtkEntry.CreateFromHandle(Application.GetWidget("txtPassword"))
		Settings.SetValue("SyncMods.Username", txtUser.GetText())
		frmLogin.Hide()
		If Settings.GetValue("SyncMods.Servers") = "" Then Settings.SetValue("SyncMods.Servers", "pub brl")
		doSyncMods(Settings.GetValue("SyncMods.Username"), txtPass.GetText(), Settings.GetValue("SyncMods.Servers"))
		Return True
	End Function
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

	Function closePropsWindowNoDestroy:Byte()
		frmCmdOpts.Hide()
		Return True
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
		If(Settings.GetValue("BlitzMax_Pfad"))>"" then Filechooserbutton_Scintilla_BM_Pfad.SetFileName(Settings.GetValue("BlitzMax_Pfad"))
		
		'Keywords in ChooserButton laden
		If(Settings.GetValue("Scintilla_KeywordsFile"))<>"" then Filechooserbutton_Scintilla_KeyWordsList.SetFileName(Settings.GetValue("Scintilla_KeywordsFile"))
			
		'Recentlist aktivieren/deaktivieren
		Local RO:Byte = Byte(Settings.GetValue("RecentList_On"))
		CheckButton_RecentList.SetActive(RO)		
		If RO Then
			SpinButton_RecentList_Size.SetSensitive(True)
			Button_Recentlist_History.SetSensitive(True)
		Else
			SpinButton_RecentList_Size.SetSensitive(False)
			Button_Recentlist_History.SetSensitive(False)
		End If
			
		'RecentList_size laden in Spinbutton
		SpinButton_RecentList_Size.SetValue(Int(Settings.GetValue("RecentList_Size")))
			
		'Standardpfade aktivieren/deaktivieren
		Local FO:Byte = Byte(Settings.GetValue("Favorit_On"))
		CheckButton_favorits.SetActive(FO)
		If FO Then
			Filechooserbutton_LoadPfad.SetSensitive(True)
			Filechooserbutton_SavePfad.SetSensitive(True)
		Else
			Filechooserbutton_LoadPfad.SetSensitive(False)
			Filechooserbutton_SavePfad.SetSensitive(False)
		End If
			
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
			Settings.SetValue("RecentList_Size",Int(SpinButton_RecentList_Size.GetValue()))
		
		'Sollen Standard Pfade benutzt werden?
		Local CheckButton_favorits:GtkCheckButton = GtkCheckButton.CreateCBFromHandle(Application.GetWidget("cb_options_favorits"))
			Settings.SetValue("Favorit_On",CheckButton_favorits.GetActive())
			
		'Standard Pfad(SPEICHERN) aus ChooserButton lesen und speichern
		Local Filechooserbutton_SavePfad:GtkFileChooserButton = GtkFileChooserButton.CreateFCBFromHandle(Application.GetWidget("fb_options_save"))
			Settings.SetValue("FavoritSave",Filechooserbutton_SavePfad.GetFileName())
			
		'Standard Pfad(LADEN) aus ChooserButton lesen und speichern
		Local Filechooserbutton_LoadPfad:GtkFileChooserButton = GtkFileChooserButton.CreateFCBFromHandle(Application.GetWidget("fb_options_load"))
			Settings.SetValue("FavoritLoad",Filechooserbutton_LoadPfad.GetFileName())

		'Sandard Style speichern
		Local entry_options_style:GtkEntry = GtkEntry.CreateFromHandle(Application.GetWidget("entry_options_style"))
		Local SStyle:String = entry_options_style.GetText()
		If Len(Trim(SStyle)) > 0 Then Settings.SetValue("Style",SStyle)

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
	End Function

	Function button_options_abort()
		frmOptions.Hide()
	End Function

	Function closeOptionsWindowNoDestroy:Byte()
		frmOptions.Hide()
		Return True
	End Function

	'Functionen über Widgets
	
	Function button_options_history()
		Local CheckButton_RecentList:GtkCheckButton = GtkCheckButton.CreateCBFromHandle(Application.GetWidget("cb_options_recentlist"))
		Local SpinButton_RecentList_Size:GtkSpinButton= GtkSpinButton.CreateFromHandle(Application.GetWidget("sb_options_recentlist_size"))
		Local Button_Recentlist_History:GtkButton = GtkButton.CreateFromHandle(Application.GetWidget("button_options_recentlist_history"))
		
			Local RO:Byte =CheckButton_RecentList.GetActive()
			If RO Then
				SpinButton_RecentList_Size.SetSensitive(True)
				Button_Recentlist_History.SetSensitive(True)
			Else
				SpinButton_RecentList_Size.SetSensitive(False)
				Button_Recentlist_History.SetSensitive(False)
			End If
	End Function

	Function button_options_favorits()
		Local CheckButton_favorits:GtkCheckButton = GtkCheckButton.CreateCBFromHandle(Application.GetWidget("cb_options_favorits"))
		Local Filechooserbutton_LoadPfad:GtkFileChooserButton = GtkFileChooserButton.CreateFCBFromHandle(Application.GetWidget("fb_options_load"))
		Local Filechooserbutton_SavePfad:GtkFileChooserButton = GtkFileChooserButton.CreateFCBFromHandle(Application.GetWidget("fb_options_save"))

			Local RO:Byte =CheckButton_favorits.GetActive()
			If RO Then
				Filechooserbutton_LoadPfad.SetSensitive(True)
				Filechooserbutton_SavePfad.SetSensitive(True)
			Else
				Filechooserbutton_LoadPfad.SetSensitive(False)
				Filechooserbutton_SavePfad.SetSensitive(False)
			End If
	End Function

	Function Options_Load_by_first_Start()
		Local CheckButton_favorits:GtkCheckButton = GtkCheckButton.CreateCBFromHandle(Application.GetWidget("cb_options_favorits"))
		Local Filechooserbutton_LoadPfad:GtkFileChooserButton = GtkFileChooserButton.CreateFCBFromHandle(Application.GetWidget("fb_options_load"))
		Local Filechooserbutton_SavePfad:GtkFileChooserButton = GtkFileChooserButton.CreateFCBFromHandle(Application.GetWidget("fb_options_save"))

			Local RO:Byte = Byte(Settings.GetValue("Favorit_On"))
			If RO Then
				Settings.DelSetting("LastOpenDir")
				Settings.DelSetting("LastSaveDir")
				Settings.SaveAllSettings()
			End If		
	End Function

'foldend

'foldstart 'Style-Maker

	Function closeSkinWindowNoDestroy:Byte()
		frmSkinScintilla.Hide()
		Return True
	End Function

	'Functionen über Widgets
	
	Function Stylemaker_by_first_Start()
		
		Local VStyle:TStyle = New TStyle
		VStyle.Load("test")
		Local Frame_Vorschau:GtkFrame = GtkFrame.CreateFromHandle(Application.GetWidget("frame_style_vorschau"))
		VScintilla = GtkScintilla.Create()
			VScintilla.SetSizeRequest(700,500)
			Frame_Vorschau.add(VScintilla)
			VScintilla.show()
			SetupScintilla(VStyle,VScintilla)
			VScintilla.SignalConnect("sci-notify",DoScintillaEvents)
			

	End Function

	Function StyleMaker_SetStyle:TStyle()
		Local cb_StyleMaker_BG_Color:GtkColorButton = GtkColorButton.CreateFromHandle(Application.GetWidget("cb_StyleMaker_BG_Color"))
		Local cb_StyleMaker_Default_Color:GtkColorButton = GtkColorButton.CreateFromHandle(Application.GetWidget("cb_StyleMaker_Default_Color"))
		Local cb_StyleMaker_Comment_Color:GtkColorButton = GtkColorButton.CreateFromHandle(Application.GetWidget("cb_StyleMaker_Comment_Color"))
		Local cb_StyleMaker_Number_Color:GtkColorButton = GtkColorButton.CreateFromHandle(Application.GetWidget("cb_StyleMaker_Number_Color"))
		Local cb_StyleMaker_Keyword_Color:GtkColorButton = GtkColorButton.CreateFromHandle(Application.GetWidget("cb_StyleMaker_Keyword_Color"))
		Local cb_StyleMaker_String_Color:GtkColorButton = GtkColorButton.CreateFromHandle(Application.GetWidget("cb_StyleMaker_String_Color"))
		Local cb_StyleMaker_Identifier_Color:GtkColorButton = GtkColorButton.CreateFromHandle(Application.GetWidget("cb_StyleMaker_Identifier_Color"))
		Local cb_StyleMaker_Operator_Color:GtkColorButton = GtkColorButton.CreateFromHandle(Application.GetWidget("cb_StyleMaker_Operator_Color"))
		Local fb_Stylemaker:GtkFontButton = GtkFontButton.CreateFromHandle(Application.GetWidget("fb_Stylemaker"))
		
		Local VStyle:TStyle = New TStyle
		
		
		Local R,G,B
			cb_StyleMaker_BG_Color.GetColorInt(Varptr(R),Varptr(G),Varptr(B))
			VStyle.BGColor = MakeColorString(R,G,B)
			
			cb_StyleMaker_Default_Color.GetColorInt(Varptr(R),Varptr(G),Varptr(B))
			VStyle.Font_Default.Color = MakeColorString(R,G,B)
			VStyle.Font_Default.R = R
			VStyle.Font_Default.G = G
			VStyle.Font_Default.B = B
						
			cb_StyleMaker_Comment_Color.GetColorInt(Varptr(R),Varptr(G),Varptr(B))
			VStyle.Font_Comment.Color = MakeColorString(R,G,B)
			VStyle.Font_Comment.R = R
			VStyle.Font_Comment.G = G
			VStyle.Font_Comment.B = B
			
			cb_StyleMaker_Number_Color.GetColorInt(Varptr(R),Varptr(G),Varptr(B))
			VStyle.Font_Number.Color = MakeColorString(R,G,B)
			VStyle.Font_Number.R = R
			VStyle.Font_Number.G = G
			VStyle.Font_Number.B = B
			
			cb_StyleMaker_Keyword_Color.GetColorInt(Varptr(R),Varptr(G),Varptr(B))
			VStyle.Font_Keyword.Color = MakeColorString(R,G,B)
			VStyle.Font_Keyword.R = R
			VStyle.Font_Keyword.G = G
			VStyle.Font_Keyword.B = B
			
			cb_StyleMaker_String_Color.GetColorInt(Varptr(R),Varptr(G),Varptr(B))
			VStyle.Font_String.Color = MakeColorString(R,G,B)
			VStyle.Font_String.R = R
			VStyle.Font_String.G = G
			VStyle.Font_String.B = B
			
			cb_StyleMaker_Identifier_Color.GetColorInt(Varptr(R),Varptr(G),Varptr(B))
			VStyle.Font_Identifier.Color = MakeColorString(R,G,B)
			VStyle.Font_Identifier.R = R
			VStyle.Font_Identifier.G = G
			VStyle.Font_Identifier.B = B
			
			cb_StyleMaker_Operator_Color.GetColorInt(Varptr(R),Varptr(G),Varptr(B))
			VStyle.Font_Operator.Color = MakeColorString(R,G,B)
			VStyle.Font_Operator.R = R
			VStyle.Font_Operator.G = G
			VStyle.Font_Operator.B = B
					
		
		Local FontArt:String = fb_Stylemaker.GetFontFamily()
			VStyle.Font_Default.Name = "!"+FontArt
			VStyle.Font_Comment.Name = "!"+FontArt
			VStyle.Font_Number.Name = "!"+FontArt
			VStyle.Font_Keyword.Name = "!"+FontArt
			VStyle.Font_String.Name = "!"+FontArt
			VStyle.Font_Identifier.Name = "!"+FontArt
			VStyle.Font_Operator.Name = "!"+FontArt
			VStyle.Font_Error.Name = "!"+FontArt
		

		
		
		SetupScintilla(VStyle,VScintilla)
		Return VStyle
	End Function

	Function StyleMaker_LoadStyle:TStyle(Name:String)
		Local cb_StyleMaker_BG_Color:GtkColorButton = GtkColorButton.CreateFromHandle(Application.GetWidget("cb_StyleMaker_BG_Color"))
		Local cb_StyleMaker_Default_Color:GtkColorButton = GtkColorButton.CreateFromHandle(Application.GetWidget("cb_StyleMaker_Default_Color"))
		Local cb_StyleMaker_Comment_Color:GtkColorButton = GtkColorButton.CreateFromHandle(Application.GetWidget("cb_StyleMaker_Comment_Color"))
		Local cb_StyleMaker_Number_Color:GtkColorButton = GtkColorButton.CreateFromHandle(Application.GetWidget("cb_StyleMaker_Number_Color"))
		Local cb_StyleMaker_Keyword_Color:GtkColorButton = GtkColorButton.CreateFromHandle(Application.GetWidget("cb_StyleMaker_Keyword_Color"))
		Local cb_StyleMaker_String_Color:GtkColorButton = GtkColorButton.CreateFromHandle(Application.GetWidget("cb_StyleMaker_String_Color"))
		Local cb_StyleMaker_Identifier_Color:GtkColorButton = GtkColorButton.CreateFromHandle(Application.GetWidget("cb_StyleMaker_Identifier_Color"))
		Local cb_StyleMaker_Operator_Color:GtkColorButton = GtkColorButton.CreateFromHandle(Application.GetWidget("cb_StyleMaker_Operator_Color"))
		Local fb_Stylemaker:GtkFontButton = GtkFontButton.CreateFromHandle(Application.GetWidget("fb_Stylemaker"))
		
		Local VStyle:TStyle = New TStyle
		VStyle.Load(Name)
		
		cb_StyleMaker_BG_Color.SetColorInt(ExtractR(VStyle.BGColor), ExtractG(VStyle.BGColor), ExtractB(VStyle.BGColor))
		
		cb_StyleMaker_Default_Color.SetColorInt(VStyle.Font_Default.R, VStyle.Font_Default.G, VStyle.Font_Default.B)
		cb_StyleMaker_Comment_Color.SetColorInt(VStyle.Font_Comment.R, VStyle.Font_Comment.G, VStyle.Font_Comment.B)
		cb_StyleMaker_Number_Color.SetColorInt(VStyle.Font_Number.R, VStyle.Font_Number.G, VStyle.Font_Number.B)
		cb_StyleMaker_Keyword_Color.SetColorInt(VStyle.Font_Keyword.R, VStyle.Font_Keyword.G, VStyle.Font_Keyword.B)
		cb_StyleMaker_String_Color.SetColorInt(VStyle.Font_String.R, VStyle.Font_String.G, VStyle.Font_String.B)
		cb_StyleMaker_Identifier_Color.SetColorInt(VStyle.Font_Identifier.R, VStyle.Font_Identifier.G, VStyle.Font_Identifier.B)
		cb_StyleMaker_Operator_Color.SetColorInt(VStyle.Font_Operator.R, VStyle.Font_Operator.G, VStyle.Font_Operator.B)
		
	End Function

	Function frmSkinScintilla_show()
		Local cb_StyleMaker_Styles:GtkComboBox = GtkComboBox.CreateFromHandle(Application.GetWidget("cb_StyleMaker_Styles"))
		VScintilla.ClearAll()
			VScintilla.AppendText("Strict 'Dies ist ein Kommentar~nRem~n")
			VScintilla.AppendText("Framework GTK.OOP~nEnd Rem~n")
			VScintilla.AppendText("Type TTest~n")
			VScintilla.AppendText("	Field A:String = "+Chr(34)+"Dies ist ein String"+Chr(34)+"~n")
			VScintilla.AppendText("	Field B:Int = 205~n")
			VScintilla.AppendText("End Type~n")
			
		
	End Function

	Function button_StyleMaker_Laden()
		Local entry_StyleMaker_Save_Load:GtkEntry = GtkEntry.CreateFromHandle(Application.GetWidget("entry_StyleMaker_Save_Load"))
		Local LoadStr:String = entry_StyleMaker_Save_Load.GetText()
		If Len(Trim(LoadStr)) > 0 then
			StyleMaker_LoadStyle(LoadStr)
			StyleMaker_SetStyle()
		End If
	End Function

	Function button_StyleMaker_Speichern()
		Local entry_StyleMaker_Save_Load:GtkEntry = GtkEntry.CreateFromHandle(Application.GetWidget("entry_StyleMaker_Save_Load"))
		Local SaveStr:String = entry_StyleMaker_Save_Load.GetText()
		If Len(Trim(SaveStr)) > 0 then
			StyleMaker_SetStyle().Save(SaveStr)
		End If
	End Function

	Function options_style_laden()
		Local entry_options_style:GtkEntry = GtkEntry.CreateFromHandle(Application.GetWidget("entry_options_style"))
		Local LoadStr:String = entry_options_style.GetText()
		If Len(Trim(LoadStr)) > 0 then
			Style.Load(LoadStr)
			UpdateAllScintillas()
		End If
	End Function

'foldend


'foldend


'foldstart 'Allgemeine sachen
Function Scream(What:String)
	Local TMR:Byte Ptr= gtk_message_dialog_new(Null,0,GTK_MESSAGE_WARNING,GTK_BUTTONS_OK,"Warnung".ToCString())
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

'foldend


'foldstart 'Kompiliereinstellungen + Processkill
Function RebuildModules()
	Local bmkArgs:String[2]
	bmkArgs[0] = "makemods"
	bmkArgs[1] = "-a"
	If TProcLib.Running() Then
		Scream "Bitte beenden Sie zuerst den momentan in der Konsole laufenden Prozess"
	End If
	Notebook.SetCurrentPage(1)
	TProcLib.Say("Starte das Kompilieren aller Module...")
	TProcLib.CreateProcess(bmxpath+"/bin/bmk",bmkArgs)
End Function
Function BuildModules()
	Local bmkArgs:String[1]
	bmkArgs[0] = "makemods"
	If TProcLib.Running() Then
		Scream "Bitte beenden Sie zuerst den momentan in der Konsole laufenden Prozess"
	End If
	Notebook.SetCurrentPage(1)
	TProcLib.Say("Starte das Kompilieren geänderter Module...")
	TProcLib.CreateProcess(bmxpath+"/bin/bmk",bmkArgs)
End Function
Function killApp()
	TProcLib.SendSignal(SIGKILL)
End Function
Function termApp()
	TProcLib.SendSignal(SIGTERM)
End Function
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
End Function
Function HelpBrowser_Reload()
	HelpBrowser.reload()
End Function
Function HelpBrowser_linkMessage()
	HelpBrowserLabel.SetText(HelpBrowser.GetLinkMessage())
End Function
Function HelpBrowser_JSStatus()
	HelpBrowserLabel.SetText(HelpBrowser.GetJSStatus())
End Function
Function HelpBrowser_progressChanged(embed:Byte Ptr, StatusCur:Int, StatusMax:Int, data:Byte Ptr)
	HelpBrowserProgress.SetSensitive(True)
	HelpBrowserLabel.SetText("Lade... ")
	If StatusMax < 1 Then
		HelpBrowserProgress.Pulse()
	Else
		HelpBrowserProgress.SetFraction(Float(StatusCur)/Float(statusMax))
	EndIf
End Function
Function HelpBrowser_ready()
	HelpBrowserProgress.SetFraction(0)
	HelpBrowserProgress.SetSensitive(False)
	HelpBrowserLabel.SetText("Bereit")
End Function
Rem
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
Function GetRecentFilename:String()
	If FileType(realpath(getenv_("HOME")+"/.gtkmaxide")) <> FILETYPE_DIR Then
		CreateDir(realpath(getenv_("HOME")+"/.gtkmaxide"))
	EndIf
	Return realpath(getenv_("HOME")+"/.gtkmaxide/recent.lst")
End Function
Function AddToRecentList(item:String)
	If recentlist.contains(item) Then
		recentlist.remove(item)
	EndIf
	recentlist.addfirst(item)
	If settings.getvalue("RecentList_Size") = "" Then settings.setvalue("RecentList_Size","10")
	While recentlist.count() >= Int(settings.getvalue("RecentList_Size"))
		recentlist.removelast()
	Wend
	UpdateRecentList()
End Function
Function UpdateRecentList()
	Local recentmenu:GtkMenu = GtkMenu.CreateFromHandle(Application.GetWidget("last_files_menu"))
	recentmenu.foreach(DeleteRecentItem,recentmenu.Handle)
	Local i:Int = 1
	For Local recentitem:String = EachIn recentlist
		Local tmpitem:GtkMenuItem = GtkMenuItem.CreateWithLabel(i + ". " + StripDir(recentitem))
		tmpitem.show()
		tmpitem.SignalConnect("activate", RecentListItemClicked)
		recentmenu.append(tmpitem)
		i:+1
	Next
	If recentlist.count()>0 enablerecentitem()
End Function
Function deleterecentitem(widget:Byte Ptr, data:Byte Ptr)
	Local tmpwidget:GtkWidget = New GtkWidget
	tmpwidget.Handle = widget
	Local tmpmenu:GtkMenu = GtkMenu.CreateFromHandle(Data)
	tmpmenu.Remove(tmpwidget)
End Function
Function SaveRecentList()
	local recentfile:String = GetRecentFilename()
	Local rstream:TStream = WriteStream(recentfile)
	If rstream = Null Then
		Scream("Konnte " + recentfile + " nicht zum Schreiben öffnen")
	EndIf
	For Local rentry:String = EachIn recentlist
		rstream.WriteLine(rentry)
	Next
	CloseStream(rstream)
End Function
Function loadrecentlist()
	local recentfile:String = GetRecentFilename()
	Local rstream:TStream = ReadStream(recentfile)
	If rstream = Null Then
		Print "(IDE.bmx) Warning: Couldn´t load " + recentfile
		DisableRecentItem()
		Return
	EndIf
	While Not rstream.eof()
		Local actline:String = rstream.ReadLine()
		recentlist.addLast(actline)
	Wend
	If recentlist.count() = 0 Then
		disablerecentitem()
	Else
		updaterecentlist()
	EndIf
	If settings.getvalue("RecentList_Size") = "" Then settings.setvalue("RecentList_Size","10")
	While recentlist.count() >= Int(settings.getvalue("RecentList_Size"))
		recentlist.removelast()
	Wend
End Function
Function disablerecentitem()
	Local recentmenu:GtkMenuItem = GtkMenuItem.CreateFromHandle(Application.GetWidget("last_files_item"))
	recentmenu.SetSensitive(False)
End Function
Function enablerecentitem()
	Local recentmenu:GtkMenuItem = GtkMenuItem.CreateFromHandle(Application.GetWidget("last_files_item"))
	recentmenu.SetSensitive(True)
End Function
Function RecentListItemClicked(menuitem:Byte Ptr)
	Local tempitem:GtkMenuItem = GtkMenuItem.CreateFromHandle(menuitem)
	tempitem.foreach(RecentListItemClicked2)
End Function
Function RecentListItemClicked2(label:Byte Ptr)
	Local templabel:GtkLabel = GtkLabel.CreateFromHandle(label)
	Local text:String = templabel.gettext()
	Local tmpindex:Int = Instr(text, ".")
	If tmpindex = 0 Then
		Print "(IDE.bmx) Warning: Couldn´t find . in label text"
		Return
	EndIf
	Local tmpstr:String = Mid(text,0,tmpindex)
	Local theindex:Int = Int(tmpstr)-1
	Local realfile:String = String(recentlist.ValueAtIndex(theindex))
	IDEOpenFile(realfile)
End Function
'foldend

