Strict
' IDE
Framework GTK.OOP
Import GTK.Scintilla
Import BRL.StandardIO
Import "settings.bmx"

'Load Settings
Global Settings:TSettings = New TSettings
Settings.LoadAllSettings()

' Initialization stuff
GTKUtil.Init()
Glade.Init()

' Loading interface
Local Application:GladeXML = GladeXML.Create("ide.glade")
Application.ConnectSignals()

' Getting the main notebook
Local Widget:GtkWidget = Application.GetWidget("notebook3")
Global Notebook:GtkNotebook = New GtkNotebook
Notebook.Handle = Widget.Handle

' Load the keywords
Global KeywordList:TList = New TList
If Settings.GetValue("Scintilla_KeywordsFile")="" Then
	Scream("Keyword-Datei nicht festgelegt")
Else
	Local KeyWordsFile:TStream = ReadStream(Settings.GetValue("Scintilla_KeywordsFile"))
	If KeyWordsFile = Null Then Scream("Konnte Keywords-Datei nicht öffnen")
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
EndIf

Local TestString:String = MakeColorString(123,234,11)
Print TestString
Print ExtractR(TestString)
Print ExtractG(TestString)
Print ExtractB(TestString)
' Adding the first page
AddNBPage()

' Main loop
GTKUtil.Main()

' Function to close the editor, called in several places
Function IDEClose()
	Settings.SaveAllSettings()
	GTKUtil.Quit()
End Function

Function Scream(What:String)
	Local TMR:Byte Ptr= gtk_message_dialog_new(Null,0,GTK_MESSAGE_WARNING,GTK_BUTTONS_OK,"Warnung".ToCString())
	gtk_message_dialog_format_secondary_text(TMR,What.TocString())
	gtk_dialog_run(TMR)
	gtk_widget_destroy(TMR)
End Function

Function AddNBPage()
	Local TempScintilla:GtkScintilla = GtkScintilla.Create()
	TempScintilla.SetSizeRequest(500,300)
	Local TempLabel:GtkLabel = GtkLabel.Create("fu!!!")
	Notebook.AppendPage(TempScintilla,TempLabel)
	'Making active
	Notebook.ShowAll()
	Notebook.SetCurrentPage(Notebook.GetPagesCount()-1)
	SetupScintilla(TempScintilla)
End Function

Function SetupScintilla(Scintilla:GtkScintilla)
	Scintilla.ClearStyle()

	Scintilla.SetLexer(Int(Settings.GetValue("Scintilla_Lexer")))
	'Settings.SetValue("Scintilla_Lexer",SCLEX_BLITZMAX)
	Scintilla.SetStyleBits(Int(Settings.GetValue("Scintilla_StyleBits")))
	'Settings.SetValue("Scintilla_StyleBits",STYLE_LINENUMBER)	


	Scintilla.SetBGColor($22,$55,$88)
	
	Scintilla.SetFont(SCE_B_DEFAULT,"!courier",10,$EE,$EE,$EE)
	Scintilla.SetFont(SCE_B_COMMENT,"!courier",10,$FF,$EE,$00)
	Scintilla.SetFont(SCE_B_NUMBER,"!courier",10,$33,$FF,$DD)
	Scintilla.SetFont(SCE_B_KEYWORD,"!courier",10,$AA,$FF,$FF)
	Scintilla.SetFont(SCE_B_STRING,"!courier",10,$00,$FF,$66)
	Scintilla.SetFont(SCE_B_IDENTIFIER,"!courier",10,$FF,$FF,$FF)
	Scintilla.SetFont(SCE_B_OPERATOR,"!courier",10,$FF,$FF,$FF)
	Scintilla.SetFont(SCE_B_ERROR,"!courier",10,$FF,$00,$00)


	Scintilla.SetMarginType(0,Int(Settings.GetValue("Scintilla_MarginType0")))
	'Settings.SetValue("Scintilla_MarginType0",SC_MARGIN_NUMBER)
	Scintilla.SetMarginType(1,Int(Settings.GetValue("Scintilla_MarginType1")))
	'Settings.SetValue("Scintilla_MarginType1",SC_MARGIN_SYMBOL)
	Scintilla.SetMarginMask(1,Int(Settings.GetValue("Scintilla_MarginMask1")))
	'Settings.SetValue("Scintilla_MarginMask1",SC_MASK_FOLDERS)


	Scintilla.SetMarginWidth(0,Int(Settings.GetValue("Scintilla_MarginWidth0")))
	'Settings.SetValue("Scintilla_MarginWidth0",35)
	Scintilla.SetMarginWidth(1,Int(Settings.GetValue("Scintilla_MarginWidth1")))
	'Settings.SetValue("Scintilla_MarginWidth1",20)
	Scintilla.SetMarginWidth(2,Int(Settings.GetValue("Scintilla_MarginWidth2")))
	'Settings.SetValue("Scintilla_MarginWidth2",0)

	Scintilla.SetMarginSensitive(0,False)
	Scintilla.SetMarginSensitive(1,True)
	Scintilla.SetMarginSensitive(2,False)
	Scintilla.SetFont(STYLE_LINENUMBER,"!helvetica",8,$FF,$FF,$FF)
	Scintilla.SetFontBGColor(STYLE_LINENUMBER,$11,$44,$77)
	Scintilla.SetCaretColor($AA,$AA,$AA)
	Scintilla.SetCaretLineBack($00,$33,$66)
	Scintilla.SetCaretLineVisible(True)
	Scintilla.SetSelectionBack($AA,$AA,$AA)
	Scintilla.SetTabWidth(4)

	Scintilla.SetKeywordList(0,KeywordList)
End Function

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
	Local CPos:Int = Instr(Text,",")
	If CPos = -1 Scream "Fehler beim Lesen der Farbe"
	Local CSPos:Int = Instr(Text,",",CPos+1)
	If CSPos = -1 Scream "Fehler beim Lesen der Farbe"
	Local CTPos:Int = Instr(Text,",",CSPos+1)
	If CTPos = -1 Scream "Fehler bemi Lesen der Farbe"
	Return Byte(Mid(Text,CSPos+1,CTPos-CSPos-1))
End Function