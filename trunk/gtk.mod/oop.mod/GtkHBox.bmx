Type GtkHBox Extends GtkBox
	Function Create:GtkHBox(Homogenous:Byte=False,Spacing:Int=0)
		Local TempBox:GtkHBox = New GtkHBox
		TempBox.Handle = gtk_hbox_new(Homogenous,Spacing)
		Return TempBox
	End Function

	Function CreateFromHandle:GtkHBox(Handle:Byte Ptr)
		Local TempBox:GtkHBox = New GtkHBox
		TempBox.Handle = Handle
		Return TempBox
	End Function
End Type
