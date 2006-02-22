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
Type GtkWidget Extends GtkObject
	Function CreateWidgetFromHandle:GtkWidget(Handle:Byte Ptr)
		Local TempWidget:GtkWidget = New GtkWidget
		TempWidget.Handle = Handle
		Return TempWidget
	End Function

	Method Show()
		gtk_widget_show(Handle)
	End Method

	Method ShowAll()
		gtk_widget_show_all(Handle)
	End Method
	
	Method Hide()
		gtk_widget_hide(Handle)
	End Method

	Method HideAll()
		gtk_widget_hide_all(Handle)
	End Method

	Method SetSizeRequest(Width:Int,Height:Int)
		gtk_widget_set_size_request(Handle,Width,Height)
	End Method

	Method Destroy()
		gtk_widget_destroy(Handle)
	End Method
End Type
