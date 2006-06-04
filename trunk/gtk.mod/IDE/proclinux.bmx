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

const ChildExitedMessage:String = "Prozess beendet"

Const SIGTERM:byte = 15
Const SIGKILL:byte = 9

Extern "c"
	Function _kill(Pid:int, signal:byte)="kill"
	Function vte_terminal_set_background_transparent(terminal:byte ptr, transparent:byte)
End Extern


Type TProcLib Extends TProcShape
	Global _widget:VteTerminal, _is_running:Byte=False, _scrollbar_widget:byte ptr, _box:GtkHBox, _pid:Int

	'Function Init(TopWidget:GtkContainer)
	Function Init:GtkWidget()
		_box = GtkHBox.Create()
		_box.Show()
		
		_widget = VteTerminal.Create()
'		_widget.SetSizeRequest(20,100)
		_box.packstart(_widget,true,true)
		
		vte_terminal_set_color_background(_widget.Handle,GdkColor.MakeOutOfInts(255,255,255))
		vte_terminal_set_color_foreground(_widget.Handle,GdkColor.MakeOutOfInts(0,0,0))
		vte_terminal_set_font_from_string(_widget.Handle,"monospace 9".ToCString())
		vte_terminal_set_background_transparent(_widget.Handle, true)
		_widget.show()
		_widget.SignalConnect("child-exited",TProcLibChildExit)
		' Scrollbar
		_scrollbar_widget = gtk_vscrollbar_new(vte_terminal_get_adjustment(_widget.TerminalHandle))
		gtk_widget_show(_scrollbar_widget)
		local tmpwidget:GtkWidget = GtkWidget.CreateWidgetFromHandle(_scrollbar_widget)
		_box.packend(tmpwidget,false,false)
		local tmprWidget:GtkWidget = new GtkWidget
		tmprWidget.Handle = _box.Handle
		Return tmprWidget
	End Function

	Function CreateProcess:Int(Path:String,ArgV:String[])
		_is_running = True
		_pid = _widget.ForkCommand(Path,ArgV)
		Return _pid
	End Function

	Function Running:Byte()
		Return _is_running
	End Function

	Function Say(Text:String)
		local fText:String = chr$(10) + chr$(13) + _ISO_8859_1_To_UTF_8(Text) + chr$(10) + chr$(13)
		vte_terminal_feed(_widget.Handle,fText.ToCString(),len(fText))
	End Function
	
	Function SendSignal(Signal:byte)
		If not _is_running return
		_kill(_pid,Signal)
	End Function

	Function _ISO_8859_1_To_UTF_8:String(InputString:String)
		Return String.FromCString(g_convert(InputString.ToCString(),-1,"UTF-8".ToCString(),"ISO-8859-1".ToCString(),Null,Null,Null))
	End Function
End Type

Function TProcLibChildExit()
	Print "child exit detected"
	TProcLib._is_running = False
	TProcLib.Say(ChildExitedMessage)
	'vte_terminal_feed(TProcLib._widget.Handle,ChildExitedMessage.ToCString(),len(ChildExitedMessage))
End Function
