Strict

Import GTK.OOP
Include "procshape.bmx"

Type TProcLib Extends TProcShape
	Global _widget:VteTerminal

	Function Init(TopWidget:GtkContainer)
		_widget = VteTerminal.Create()
		_widget.SetSizeRequest(20,100)
		TopWidget.add(_widget)

		vte_terminal_set_color_background(_widget.Handle,GdkColor.MakeOutOfInts(255,255,255))
		vte_terminal_set_color_foreground(_widget.Handle,GdkColor.MakeOutOfInts(0,0,0))
		vte_terminal_set_font_from_string(_widget.Handle,"bitstream charter regular 9".ToCString())
		_widget.show()
'		_widget.ConnectSignal(
	End Function

	Function CreateProcess:Int(Path:String,ArgV:String[])
		Return _widget.ForkCommand(Path,ArgV)
	End Function
End Type
