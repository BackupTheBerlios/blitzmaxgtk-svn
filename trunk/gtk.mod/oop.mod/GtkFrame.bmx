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
Type GtkFrame Extends GtkBin
	Function Create:GtkFrame(Label:String)
		Local TempFrame:GtkFrame = New GtkFrame
		TempFrame.Handle = gtk_frame_new(Label.ToCString())
		Return TempFrame
	End Function

	Function CreateFromHandle:GtkFrame(Handle:Byte Ptr)
		Local TempFrame:GtkFrame = New GtkFrame
		TempFrame.Handle = Handle
		Return TempFrame
	End Function
End Type
