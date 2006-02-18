Framework GTK.OOP
Import GTK.Scintilla
GTKUtil.Init()
Glade.Init()

Local Application:GladeXML = GladeXML.Create("sample.glade")
Application.ConnectSignals()

Global Scintilla:GtkScintilla = GtkScintilla.Create()
Scintilla.Show()
Scintilla.SetSizeRequest(100,100)
Local VBox:GtkVBox = GtkVBox.CreateFromHandle(Application.GetWidget("main_vbox"))
VBox.PackEnd(Scintilla)

Global Vte:Byte Ptr = vte_terminal_new()

Local t:GtkWidget = New GtkWidget
t.handle = vte
VBox.PackEnd(t)
t.SHow()


GTKUtil.Main()

Function on_stupid_button_clicked()
	GTKUtil.Quit()
'Print Scintilla.GetLine(1)
Local foo:Byte Ptr[4]
foo[0] = "/home/bigmichi/Programme/BlitzMax/bin/bmk".ToCString()
foo[1] = "makeapp".ToCString()
foo[2] = "/home/bigmichi/Programme/BlitzMax/mod/gtk.mod/IDE/IDE.bmx".ToCString()
foo[3] = Null
vte_terminal_fork_command(vte,"/home/bigmichi/Programme/BlitzMax/bin/bmk".ToCString(),Foo,Null,Null,False,False,False)


foo[0] = "/home/bigmichi/Programme/BlitzMax/mod/gtk.mod/IDE/IDE".ToCString()
foo[1] = Null
foo[2] = Null
foo[3] = Null
vte_terminal_fork_command(vte,"/home/bigmichi/Programme/BlitzMax/mod/gtk.mod/IDE/IDE".ToCString(),Foo,Null,Null,False,False,False)

End Function

Function on_main_window_destroy_event()
	GTKUtil.Quit()
End Function