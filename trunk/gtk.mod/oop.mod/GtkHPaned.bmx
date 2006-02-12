Type GtkHPaned Extends GtkPaned
	Function Create:GtkHPaned()
		Local TempPane:GtkHPaned = New GtkHPaned
		TempPane.Handle = gtk_hpaned_new()
		Return TempPane
	End Function
End Type
