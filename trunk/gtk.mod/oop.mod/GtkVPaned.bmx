Type GtkVPaned Extends GtkPaned
	Function Create:GtkVPaned()
		Local TempPane:GtkVPaned = New GtkVPaned
		TempPane.Handle = gtk_vpaned_new()
		Return TempPane
	End Function

	Function CreateFromHandle:GtkVPaned(Handle:GtkVPaned)
		Local TempPane:GtkVPaned = New GtkVPaned
		TempPane.Handle = Handle
		Return TempPane
	End Function
End Type

