Framework GTK.OOP
Import GTK.Scintilla
GTKUtil.Init()
GladeUtil.Init()

Local Application:GladeXML = GladeXML.Create("sample.glade")
Application.ConnectSignals()

Local Scintilla:GtkScintilla = GtkScintilla.Create()
Scintilla.Show()
Local Widget:GtkWidget = Application.GetWidget("main_vbox")
Local VBox:GtkVBox = New GtkVBox
VBox.Handle = Widget.Handle
VBox.PackEnd(Scintilla)

GTKUtil.Main()

Function on_stupid_button_clicked()
	GTKUtil.Quit()
End Function

Function on_main_window_destroy_event()
	GTKUtil.Quit()
End Function