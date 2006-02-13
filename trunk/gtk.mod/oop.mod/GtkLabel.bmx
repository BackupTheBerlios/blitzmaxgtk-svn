Type GtkLabel Extends GtkMisc
	Function Create:GtkLabel(Text:String="")
		Local TempLabel:GtkLabel = New GtkLabel
		TempLabel.Handle = gtk_label_new(Text.ToCString())
		Return TempLabel
	End Function

	Function CreateFromHandle:GtkLabel(Handle:Byte Ptr)
		Local TempLabel:GtkLabel = New GtkLabel
		TempLabel.Handle = Handle
		Return TempLabel
	End Function
	
	Method SetText(Text:String)
		gtk_label_set_text(Handle,Text.ToCString())
	End Method

	Method GetText:String()
		Return String.FromCString(gtk_label_get_text(Handle))
	End Method
End Type
