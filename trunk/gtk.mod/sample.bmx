Framework GTK.OOP
Import GTK.Scintilla
GTKUtil.Init()
Glade.Init()

Local Application:GladeXML = GladeXML.Create("sample.glade")
Application.ConnectSignals()

Local Scintilla:GtkScintilla = GtkScintilla.Create()
Scintilla.Show()
Local VBox:GtkVBox = GtkVBox.CreateFromHandle(Application.GetWidget("main_vbox"))
VBox.PackEnd(Scintilla)

GTKUtil.Main()

Function on_stupid_button_clicked()
	GTKUtil.Quit()
End Function

Function on_main_window_destroy_event()
	GTKUtil.Quit()
End Function