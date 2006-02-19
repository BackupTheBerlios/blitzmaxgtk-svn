Include "procshape.bmx"

Type TProcLib Extends TProcShape
	Field _widget:VteTerminal

	Function Create(TopWidget:GtkWidget)
		_widget = VteTerminal.Create()
'		_widget.ConnectSignal(
	End Function

	Function CreateProcess(Name:String,ArgV:String[])
'		_widget.ForkCommand(Name,ArgV)
	End Function
End Type
