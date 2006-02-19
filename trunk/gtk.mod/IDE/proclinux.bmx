Strict

Import GTK.OOP
Import BRL.StandardIO
Include "procshape.bmx"

Type TProcLib Extends TProcShape
	Global _widget:VteTerminal, _is_running:Byte=False

	Function Init(TopWidget:GtkContainer)
		_widget = VteTerminal.Create()
		_widget.SetSizeRequest(20,100)
		TopWidget.add(_widget)

		vte_terminal_set_color_background(_widget.Handle,GdkColor.MakeOutOfInts(255,255,255))
		vte_terminal_set_color_foreground(_widget.Handle,GdkColor.MakeOutOfInts(0,0,0))
		vte_terminal_set_font_from_string(_widget.Handle,"bitstream charter regular 9".ToCString())
		_widget.show()
		_widget.SignalConnect("child-exited",TProcLibChildExit)
	End Function

	Function CreateProcess:Int(Path:String,ArgV:String[])
		_is_running = True
		Return _widget.ForkCommand(Path,ArgV)
	End Function

	Function Running:Byte()
		Return _is_running
	End Function
End Type

Function TProcLibChildExit()
	Print "child exit detected"
	TProcLib._is_running = False
End Function
