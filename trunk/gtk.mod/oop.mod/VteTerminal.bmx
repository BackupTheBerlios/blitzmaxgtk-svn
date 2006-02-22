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
Type VteTerminal Extends GtkWidget
	Field TerminalHandle:Byte Ptr

	Function Create:VteTerminal()
		Local TempTerm:VteTerminal = New VteTerminal
		TempTerm.Handle = vte_terminal_new()
		TempTerm.TerminalHandle = g_type_check_instance_cast(TempTerm.Handle,vte_terminal_get_type())
		Return TempTerm
	End Function

	Function CreateFromHandle:VteTerminal(Handle:Byte Ptr)
		Local TempTerm:VteTerminal = New VteTerminal
		TempTerm.Handle = Handle
		Return TempTerm
	End Function
	
	Method SetSize(colums:Int,rows:Int)
		vte_terminal_set_size(TerminalHandle,colums,rows)
	End Method

	Method ForkCommand:Int(command:String,argv:String[]=Null,envv:String[]=Null,directory:String="",lastlog:Byte=False,utmp:Byte=False,wtmp:Byte=False)
		Local argvptr:Byte Ptr = Null
		If argv <> Null Then
			Local ArgvArray:Byte Ptr[argv.Length+2]
			ArgvArray[0] = command.ToCString()
			For Local i:Int = 0 To argv.Length-1
				ArgvArray[i+1] = argv[i].ToCString()
			Next
			ArgvArray[ArgvArray.Length-1] = Null
			argvptr = ArgvArray
		EndIf
		Local envvptr:Byte Ptr = Null
		If envv <> Null  Then
			Local envvArray:Byte Ptr[envv.Length+1]
			For Local i:Int = 0 To envv.Length-1
				envvArray[i] = envv[i].ToCString()
			Next
			envvArray[envvArray.Length-1] = Null
			envvptr = envvArray
		EndIf
		Local dptr:Byte Ptr = Null
		If directory <> "" dptr = directory.ToCString()
		Return vte_terminal_fork_command(Handle,command.ToCString(),argvptr,envvptr,dptr,lastlog,utmp,wtmp)
	End Method
End Type
