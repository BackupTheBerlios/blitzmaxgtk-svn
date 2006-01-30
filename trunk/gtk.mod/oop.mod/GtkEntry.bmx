Type GtkEntry Extends GtkWidget
	Function Create:GtkEntry()
		Local TempEntry:GtkEntry = New GtkEntry
		TempEntry.Handle = gtk_entry_new()
		Return TempEntry
	End Function

	Method SetMaxLength(MaxLength:Int)
		gtk_entry_set_max_length(Handle,MaxLength)
	End Method

	Method SetText(Text:String)
		gtk_entry_set_text(Handle,Text.ToCString())
	End Method

	Method SetVisibility(Visible:Byte)
		gtk_entry_set_visibility(Handle,Visible)
	End method
End Type