Type GtkFontButton Extends GtkButton
	Function Create:GtkFontButton()
		Local TempButton:GtkFontButton = New GtkFontButton	
		TempButton.Handle = gtk_font_button_new()
		Return TempButton
	End Function
End Type
