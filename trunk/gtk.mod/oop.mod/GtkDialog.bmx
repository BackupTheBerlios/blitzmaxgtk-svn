Type GtkDialog Extends GtkWindow
	Method Run:Int()
		Return gtk_dialog_run(g_type_check_instance_cast(Handle,gtk_dialog_get_type()))
	End Method
End Type
