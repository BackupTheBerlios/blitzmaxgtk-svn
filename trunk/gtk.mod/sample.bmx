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
Framework GTK.OOP
Import GTK.Scintilla
GTKUtil.Init()
Glade.Init()

Local Application:GladeXML = GladeXML.Create("sample.glade")
Application.ConnectSignals()

Global Scintilla:GtkScintilla = GtkScintilla.Create()
Scintilla.Show()
Scintilla.SetSizeRequest(100,100)
Local VBox:GtkVBox = GtkVBox.CreateFromHandle(Application.GetWidget("main_vbox"))
VBox.PackEnd(Scintilla)

<<<<<<< .mine
Global Vte:VteTerminal = VteTerminal.Create()
VBox.PackEnd(Vte)
Vte.Show()
=======
Global Vte:VteTerminal = VteTerminal.Create()
VBox.PackEnd(Vte)
Vte.Show()
Vte.SetSizeRequest(100,500)
vte_terminal_set_size(Vte.Handle,100,500)
>>>>>>> .r147

GTKUtil.Main()

Function on_stupid_button_clicked()
	GTKUtil.Quit()
'Print Scintilla.GetLine(1)
Rem
Local foo:Byte Ptr[4]
foo[0] = "/home/bigmichi/Programme/BlitzMax/bin/bmk".ToCString()
foo[1] = "makeapp".ToCString()
foo[2] = "/home/bigmichi/Programme/BlitzMax/mod/gtk.mod/IDE/IDE.bmx".ToCString()
foo[3] = Null
vte_terminal_fork_command(vte,"/home/bigmichi/Programme/BlitzMax/bin/bmk".ToCString(),Foo,Null,Null,False,False,False)


foo[0] = "/home/bigmichi/Programme/BlitzMax/mod/gtk.mod/IDE/IDE".ToCString()
foo[1] = Null
foo[2] = Null
foo[3] = Null
vte_terminal_fork_command(vte,"/home/bigmichi/Programme/BlitzMax/mod/gtk.mod/IDE/IDE".ToCString(),Foo,Null,Null,False,False,False)

End Rem
Local foo:String[2]
foo[0] = "a"
foo[1] = "b"
Vte.ForkCommand("/home/philipp/test.pl",foo)
End Rem
Local foo:String[2]
foo[0] = "a"
foo[1] = "b"
Vte.ForkCommand("/home/philipp/test.pl",foo)
End Function

Function on_main_window_destroy_event()
	GTKUtil.Quit()
End Function
