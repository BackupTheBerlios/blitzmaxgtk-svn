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
Type GtkAdjustment Extends GtkObject
	Function Create:GtkAdjustment(InitialValue:Double,Mini:Double,Maxi:Double,StepIncr:Double,PageIncr:Double,Size:Double)
		Local TempAdj:GtkAdjustment = New GtkAdjustment
		TempAdj.Handle = gtk_adjustment_new(InitialValue,Mini,Maxi,StepIncr,PageIncr,Size)
		Return TempAdj
	End Function

	Function CreateFromHandle:GtkAdjustment(Handle:Byte Ptr)
		Local TempAdj:GtkAdjustment = New GtkAdjustment
		TempAdj.Handle = Handle
		Return TempAdj
	End Function

	Method SetValue(Value:Double)
		gtk_adjustment_set_value(Handle,Value)
	End Method

	Method GetValue:Double()
		Return gtk_adjustment_get_value(Handle)
	End Method
End Type
