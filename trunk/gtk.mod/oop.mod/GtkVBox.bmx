Type GtkVBox Extends GtkBox
	Function Create:GtkVBox(Homogenous:Byte=False,Spacing:Int=0)
		Local TempBox:GtkVBox = New GtkVBox
		TempBox.Handle = gtk_vbox_new(Homogenous,Spacing)
		Return TempBox
	End Function

	Function CreateFromHandle:GtkVBox(Handle:Byte Ptr)
		Local TempBox:GtkVBox = New GtkVBox
		TempBox.Handle = Handle	
		Return TempBox
	End Function
End Type