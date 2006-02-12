Strict
' IDE
Framework GTK.OOP
Import GTK.Scintilla

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

' Adding the first page
AddNBPage()

' Main loop
GTKUtil.Main()

' Function to close the editor, called in several places
Function IDEClose()
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
	Scintilla.SetLexer(SCLEX_BLITZMAX)
	Scintilla.SetStyleBits(STYLE_LINENUMBER)
	Scintilla.SetBGColor($22,$55,$88)
	Scintilla.SetFont(SCE_B_DEFAULT,"!courier",10,$EE,$EE,$EE)
	Scintilla.SetFont(SCE_B_COMMENT,"!courier",10,$FF,$EE,$00)
	Scintilla.SetFont(SCE_B_NUMBER,"!courier",10,$33,$FF,$DD)
	Scintilla.SetFont(SCE_B_KEYWORD,"!courier",10,$AA,$FF,$FF)
	Scintilla.SetFont(SCE_B_STRING,"!courier",10,$00,$FF,$66)
	Scintilla.SetFont(SCE_B_IDENTIFIER,"!courier",10,$FF,$FF,$FF)
	Scintilla.SetFont(SCE_B_OPERATOR,"!courier",10,$FF,$FF,$FF)
	Scintilla.SetFont(SCE_B_ERROR,"!courier",10,$FF,$00,$00)
End Function