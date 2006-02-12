Type GtkVPaned Extends GtkPaned
	Function Create:GtkVPaned()
		Local TempPane:GtkVPaned = New GtkVPaned
		TempPane.Handle = gtk_vpaned_new()
		Return TempPane
	End Function
End Type

