Import GTK.OOP
Include "procshape.bmx"

Type TProcLib Extends TProcShape
	Global _widget:VteTerminal

	Function Create:TProcLib(TopWidget:GtkWidget)
		_widget = VteTerminal.Create()
'		_widget.ConnectSignal(
	End Function

	Function CreateProcess:Int(Path:String,ArgV:String[])
		Return _widget.ForkCommand(Name,ArgV)
	End Function
End Type
