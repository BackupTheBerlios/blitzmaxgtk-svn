Rem
	This file is part of the BlitzMax GTK-modules.
	The BlitzMax GTK-modules are free software; you can redistribute and/or modify
	them under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	at your option) any later version.
	
	The BlitzMax GTK-modules are distributed in the hope that they will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS for A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.
	
	You should have received a copy of the GNU General Public License
	along with the BlitzMax GTK-modules; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
End Rem
Strict

Import GTK.OOP
Import BRL.StandardIO
Include "procshape.bmx"

const ChildExitedMessage:String = "Prozess beendet" + chr$(13)

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
	vte_terminal_feed(TProcLib._widget.Handle,ChildExitedMessage.ToCString(),len(ChildExitedMessage))
End Function
