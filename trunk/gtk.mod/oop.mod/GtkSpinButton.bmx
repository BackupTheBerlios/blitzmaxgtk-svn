Type GtkSpinButton Extends GtkEntry

	Function Create:GtkSpinButton(climbrate:Int=1,digits:Int=0)
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

End Type
