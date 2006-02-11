Framework GTK.OOP
GTKUtil.Init()
GladeUtil.Init()

Local Application:GladeXML = GladeXML.Create("sample.glade")
Application.ConnectSignals()

GTKUtil.Main()

Function on_stupid_button_clicked()
	GTKUtil.Quit()
End Function

Function on_main_window_destroy_event()
	GTKUtil.Quit()
End Function