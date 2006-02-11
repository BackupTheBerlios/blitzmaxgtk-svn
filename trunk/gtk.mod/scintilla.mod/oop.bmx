Type GtkScintilla Extends GtkWidget
	Field ScintillaHandle:Byte Ptr

	Function Create:GtkScintilla()
		Local TempScintilla:GtkScintilla = New GtkScintilla
		TempScintilla.Handle = scintilla_new()
		TempScintilla.ScintillaHandle = g_type_check_instance_cast(TempScintilla.Handle,scintilla_get_type())
		Return TempScintilla
	End Function
End Type
