Include "procshape.bmx"

Type TProcLib Extends TProcShape
	Field widget:VteTerminal

	Function Create:TProcLib(TopWidget:GtkWidget)
		Local TTP:TProcLib = New TProcLib
		TTP.widget = VteTerminal.Create()
		Return widget
'		_widget.ConnectSignal(
	End Function

	Method CreateProcess:Int(Path:String,ArgV:String[])
		widget.ForkCommand(Name,ArgV)
	End Method
End Type
