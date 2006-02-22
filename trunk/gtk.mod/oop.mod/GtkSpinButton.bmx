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
Type GtkSpinButton Extends GtkEntry

	Function CreateSB:GtkSpinButton(climbrate:Int=1,digits:Int=0)
		Local TempSpinButton:GtkSpinButton = New GtkSpinButton
		Local TempAdj:Byte Ptr = gtk_adjustment_new (50.0, 0.0, 100.0, 1.0, 5.0, 5.0)
		TempSpinButton.Handle = gtk_spin_button_new (TempAdj, climbrate, digits)
		Return TempSpinButton
	End Function
	
	Function CreateFromHandle:GtkSpinButton(Handle:Byte Ptr)
		Local TempSpinButton:GtkSpinButton = New GtkSpinButton
		TempSpinButton.Handle = Handle
		Return TempSpinButton
	End Function
	
	Method SetValue(Value:Double)
		gtk_spin_button_set_value(Handle, Value)
	End Method
	
	Method GetValue:Double()
		return gtk_spin_button_get_value(Handle)
	End Method

End Type
