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
Type GtkWindow Extends GtkBin
	Function Create:GtkWindow(WindowType:Int = GTK_WINDOW_TOPLEVEL)
		Local TempWindow:GtkWindow = New GtkWindow
		TempWindow.Handle = gtk_window_new(WindowType)
		Return TempWindow
	End Function

	Function CreateFromHandle:GtkWindow(Handle:Byte Ptr)
		Local TempWindow:GtkWindow = New GtkWindow
		TempWindow.Handle = Handle
		Return TempWindow
	End Function

	Method SetTitle(Title:String)
		gtk_window_set_title(Handle,Title.ToCString())
	End Method
End Type
