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
Type GtkEntry Extends GtkWidget
	Function Create:GtkEntry()
		Local TempEntry:GtkEntry = New GtkEntry
		TempEntry.Handle = gtk_entry_new()
		Return TempEntry
	End Function

	Function CreateFromHandle:GtkEntry(Handle:Byte Ptr)
		Local TempEntry:GtkEntry = New GtkEntry
		TempEntry.Handle = Handle
		Return TempEntry
	End Function

	Method SetMaxLength(MaxLength:Int)
		gtk_entry_set_max_length(Handle,MaxLength)
	End Method

	Method SetText(Text:String)
		gtk_entry_set_text(Handle,Text.ToCString())
	End Method

	Method SetVisibility(Visible:Byte)
		gtk_entry_set_visibility(Handle,Visible)
	End Method
	
	Method GetText:String()
		Return String.FromCString(gtk_entry_get_text(Handle))
	End Method
End Type
