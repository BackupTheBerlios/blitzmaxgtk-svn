Strict

Import GTK.OOP
Include "procshape.bmx"

Type TProcLib Extends TProcShape
	Global _widget:VteTerminal

	Function Init(TopWidget:GtkContainer)
		_widget = VteTerminal.Create()
		_widget.Show()
		_widget.SetSizeRequest(20,100)
		TopWidget.add(_widget)
		vte_terminal_set_color_background(_widget.Handle,GdkColor.MakeOutOfInts(255,0,255))
'		_widget.ConnectSignal(
	End Function

	Function CreateProcess:Int(Path:String,ArgV:String[])
		Return _widget.ForkCommand(Path,ArgV)
	End Function
End Type
