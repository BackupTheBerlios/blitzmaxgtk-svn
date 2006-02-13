Type GtkToggleButton Extends GtkButton
	Function CreateWithLabel:GtkToggleButton(Label:String)
		Local TempButton:GtkToggleButton = New GtkToggleButton
		TempButton.Handle = gtk_toggle_button_new_with_label(Label.ToCString())
		Return TempButton
	End Function

	Function CreateFromHandle:GtkToggleButton(Handle:Byte Ptr)
		Local TempButton:GtkToggleButton = New GtkToggleButton
		TempButton.Handle = Handle
		Return TempButton
	End Function
End Type
