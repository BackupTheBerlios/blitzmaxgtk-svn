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

Function Scream()
	Local TMR:Byte Ptr= gtk_message_dialog_new(Null,0,GTK_MESSAGE_WARNING,GTK_BUTTONS_OK,"test".ToCString())
	gtk_message_dialog_format_secondary_text(TMR,"AHHHHHHHHHH".TocString())
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
End Function