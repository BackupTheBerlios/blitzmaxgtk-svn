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
Type GtkVPaned Extends GtkPaned
	Function Create:GtkVPaned()
		Local TempPane:GtkVPaned = New GtkVPaned
		TempPane.Handle = gtk_vpaned_new()
		Return TempPane
	End Function

	Function CreateFromHandle:GtkVPaned(Handle:GtkVPaned)
		Local TempPane:GtkVPaned = New GtkVPaned
		TempPane.Handle = Handle
		Return TempPane
	End Function
End Type

