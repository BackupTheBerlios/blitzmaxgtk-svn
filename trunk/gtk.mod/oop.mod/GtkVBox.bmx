Type GtkVBox Extends GtkBox
	Function Create:GtkVBox(Homogenous:Byte=False,Spacing:Int=0)
		Local TempBox:GtkVBox = New GtkVBox
		TempBox.Handle = gtk_vbox_new(Homogenous,Spacing)
		Return TempBox
	End Function
End Type