Type GtkToggleButton Extends GtkButton
	Function CreateWithLabel:GtkToggleButton(Label:String)
		Local TempButton:GtkToggleButton = New GtkToggleButton
		TempButton.Handle = gtk_toggle_button_new_with_label(Label.ToCString())
		Return TempButton
	End Function
End type
