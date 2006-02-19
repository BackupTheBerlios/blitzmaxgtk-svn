Import GTK.OOP
Include "procshape.bmx"

Type TProcLib Extends TProcShape
	Global _widget:VteTerminal

	Function Init(TopWidget:GtkContainer)
		_widget = VteTerminal.Create()
		_widget.Show()
		TopWidget.add(_widget)
'		_widget.ConnectSignal(
	End Function

	Function CreateProcess:Int(Path:String,ArgV:String[])
		Return _widget.ForkCommand(Name,ArgV)
	End Function
End Type
