Framework GTK.OOP
Import GTK.Scintilla
GTKUtil.Init()
GladeUtil.Init()

Local Application:GladeXML = GladeXML.Create("sample.glade")
Application.ConnectSignals()
Local SWidget:Byte Ptr = scintilla_new()
Local SObject:Byte Ptr = g_type_check_instance_cast(SWidget,scintilla_get_type())

GTKUtil.Main()

Function on_stupid_button_clicked()
	GTKUtil.Quit()
End Function

Function on_main_window_destroy_event()
	GTKUtil.Quit()
End Function

Extern
	Function scintilla_new:Byte Ptr()
	Function scintilla_get_type:Byte Ptr()
	Function scintilla_send_message(Scintilla:Byte Ptr,uno:Int,due:Byte Ptr,tre:Byte Ptr)
	Function g_type_check_instance_cast:Byte Ptr(instance:Byte Ptr,gtype:Byte Ptr)
End Extern