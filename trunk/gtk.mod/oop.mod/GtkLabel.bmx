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
Type GtkLabel Extends GtkMisc
	Function Create:GtkLabel(Text:String="")
		Local TempLabel:GtkLabel = New GtkLabel
		TempLabel.Handle = gtk_label_new(Text.ToCString())
		Return TempLabel
	End Function

	Function CreateFromHandle:GtkLabel(Handle:Byte Ptr)
		Local TempLabel:GtkLabel = New GtkLabel
		TempLabel.Handle = Handle
		Return TempLabel
	End Function
	
	Method SetText(Text:String)
		gtk_label_set_text(Handle,Text.ToCString())
	End Method

	Method GetText:String()
		Return String.FromCString(gtk_label_get_text(Handle))
	End Method
End Type
