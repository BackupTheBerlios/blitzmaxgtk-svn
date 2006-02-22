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
Type GtkFixed Extends GtkContainer
	Function Create:GtkFixed()
		Local TempFixed:GtkFixed = New GtkFixed
		TempFixed.Handle = gtk_fixed_new()
		Return TempFixed
	End Function

	Function CreateFromHandle:GtkFixed(Handle:Byte Ptr)
		Local TempFixed:GtkFixed = New GtkFixed
		TempFixed.Handle = Handle
		Return TempFixed
	End Function

	Method Put(Widget:GtkWidget,X:Int,Y:Int)
		gtk_fixed_put(Handle,Widget.Handle,X,Y)
	End Method
End Type
