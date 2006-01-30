Extern
	Function gtk_size_group_new:Byte Ptr(mode:GtkSizeGroupMode)="gtk_size_group_new"
	Function gtk_size_group_set_mode(size_group:Byte Ptr,mode:GtkSizeGroupMode)="gtk_size_group_set_mode"
	Function gtk_size_group_get_mode:GtkSizeGroupMode(size_group:Byte Ptr)="gtk_size_group_get_mode"
	Function gtk_size_group_set_ignore_hidden(size_group:Byte Ptr,ignore_hidden:gboolean)="gtk_size_group_set_ignore_hidden"
	Function gtk_size_group_get_ignore_hidden:gboolean(size_group:Byte Ptr)="gtk_size_group_get_ignore_hidden"
	Function gtk_size_group_add_widget(size_group:Byte Ptr,widget:Byte Ptr)="gtk_size_group_add_widget"
	Function gtk_size_group_remove_widget(size_group:Byte Ptr,widget:Byte Ptr)="gtk_size_group_remove_widget"
End Extern
