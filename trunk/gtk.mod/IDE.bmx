Strict
' IDE
Framework GTK.OOP
Import GTK.Scintilla
Import BRL.StandardIO
Import "settings.bmx"

Type TDocument
	Field Name:String
	Field File:String
End Type

'Create document list
Global DocumentList:TList = New TList

'Load Settings
Global Settings:TSettings = New TSettings
Settings.LoadAllSettings()

' Initialization stuff
GTKUtil.Init()
Glade.Init()

' Loading interface
Global Application:GladeXML = GladeXML.Create("ide.glade")
Application.ConnectSignals()

' Getting the main notebook
Global Notebook:GtkNotebook = GtkNotebook.CreateFromHandle(Application.GetWidget("notebook3"))

Global frmOptions:GtkWindow = GtkWindow.CreateFromHandle(Application.GetWidget("frmOptions"))

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

Rem 
Local TestString:String = MakeColorString(123,234,11)
Print TestString
Print ExtractR(TestString)
Print ExtractG(TestString)
Print ExtractB(TestString)
End Rem

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
	TempScintilla.SetSizeRequest(700,500)
	Local TempLabel:GtkLabel = GtkLabel.Create("Dokument1")

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
	'Making active
	Notebook.ShowAll()
	Notebook.SetCurrentPage(Notebook.GetPagesCount()-1)
	SetupScintilla(TempScintilla)
End Function

Function UpdateAllScintillas()
	'Print "upall"
	'Print "c: " + Notebook.GetPagesCount()
	For Local i:Int = 0 To Notebook.GetPagesCount()-1
		SetupScintilla(GtkScintilla.CreateFromHandle(Notebook.GetPage(i)))
	Next
End Function

Function SetupScintilla(Scintilla:GtkScintilla)
	If Scintilla=Null Then
		Print "something strange happened"
		Return
	EndIf
	Print "setupscin"

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

	Scintilla.SetFont(STYLE_LINENUMBER,Settings.GetValue("Scintilla_Font_LINENUMBER_FontName"),Int(Settings.GetValue("Scintilla_Font_LINENUMBER_FontSize")),ExtractR(Settings.GetValue("Scintilla_Font_LINENUMBER_FontColor")),ExtractG(Settings.GetValue("Scintilla_Font_LINENUMBER_FontColor")),ExtractB(Settings.GetValue("Scintilla_Font_LINENUMBER_FontColor")))
	'Settings.SetValue("Scintilla_Font_LINENUMBER_FontName","!helvetica")
	'Settings.SetValue("Scintilla_Font_LINENUMBER_FontSize","8")
	'Settings.SetValue("Scintilla_Font_LINENUMBER_FontColor",MakeColorString($FF,$FF,$FF))
	Scintilla.SetFontBGColor(STYLE_LINENUMBER,ExtractR(Settings.GetValue("Scintilla_BGColor")),ExtractG(Settings.GetValue("Scintilla_BGColor")),ExtractB(Settings.GetValue("Scintilla_BGColor")))
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
	If CTPos = -1 Scream "Fehler beim Lesen der Farbe"
	Return Byte(Mid(Text,CSPos+1,CTPos-CSPos-1))
End Function

Function CloseTab(Widget:Byte Ptr,AdditionalData:Byte Ptr,GdkEvent:Byte Ptr)
	Local TWidget:GtkWidget = GtkWidget.CreateWidgetFromHandle(AdditionalData)
	Print "CloseTab called, page: " + Notebook.GetPageOfWidget(TWidget)
	Notebook.RemovePage(Notebook.GetPageOfWidget(TWidget))
End Function

Function OpenClick(Widget:Byte Ptr,AdditionalData:Byte Ptr,GdkEvent:Byte Ptr)
	Local dialog:GtkFileChooserDialog = GtkFileChooserDialog.CreateFCD("Test",Null,GTK_FILE_CHOOSER_ACTION_OPEN,"gtk-open",GTK_RESPONSE_OK,"gtk-cancel",GTK_RESPONSE_CANCEL)
	
	If dialog.Run() = GTK_RESPONSE_OK Then
		Scream "Yeah!"
	Else
		Scream "Oh no!"
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

	Local ColorButton_Scintilla_BG:GtkColorButton = GtkColorButton.CreateFromHandle(Application.GetWidget("colorbutton_Scintilla_BG"))
		ColorButton_Scintilla_BG.setColorInt(ExtractR(Settings.GetValue("Scintilla_BGColor")),ExtractG(Settings.GetValue("Scintilla_BGColor")),ExtractB(Settings.GetValue("Scintilla_BGColor")))

	Local Spinbutton_Scintilla_Margin0:GtkSpinButton = GtkSpinButton.CreateFromHandle(Application.GetWidget("spinbutton_Scintilla_Margin0"))
		Spinbutton_Scintilla_Margin0.SetValue(Int(Settings.GetValue("Scintilla_MarginWidth0")))
	Local Spinbutton_Scintilla_Margin1:GtkSpinButton = GtkSpinButton.CreateFromHandle(Application.GetWidget("spinbutton_Scintilla_Margin1"))
		Spinbutton_Scintilla_Margin1.SetValue(Int(Settings.GetValue("Scintilla_MarginWidth1")))
	Local Spinbutton_Scintilla_Margin2:GtkSpinButton = GtkSpinButton.CreateFromHandle(Application.GetWidget("spinbutton_Scintilla_Margin2"))
		Spinbutton_Scintilla_Margin2.SetValue(Int(Settings.GetValue("Scintilla_MarginWidth2")))

	Local Filechooserbutton_Scintilla_KeyWordsList:GtkFileChooserButton = GtkFileChooserButton.CreateFCBFromHandle(Application.GetWidget("Filechooserbutton_Scintilla_KeyWordsList"))
		Filechooserbutton_Scintilla_KeyWordsList.SetFileName(Settings.GetValue("Scintilla_KeywordsFile"))
	

End Function


Function button_opttions_click()

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

	Local Filechooserbutton_Scintilla_KeyWordsList:GtkFileChooserButton = GtkFileChooserButton.CreateFCBFromHandle(Application.GetWidget("Filechooserbutton_Scintilla_KeyWordsList"))
		Settings.SetValue("Scintilla_KeywordsFile",Filechooserbutton_Scintilla_KeyWordsList.GetFileName())

	Settings.SaveAllSettings()
	UpdateAllScintillas()

	frmOptions.hide()

End Function