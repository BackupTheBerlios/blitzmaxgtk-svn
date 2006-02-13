

Extern
	Function gtk_file_chooser_button_new:Byte Ptr(title:Byte Ptr,action:Byte)="gtk_file_chooser_button_new"
	Function gtk_file_chooser_button_new_with_backend:Byte Ptr(title:Byte Ptr,action:Byte,backend:Byte Ptr)="gtk_file_chooser_button_new_with_backend"
	Function gtk_file_chooser_button_new_with_dialog:Byte Ptr(dialog:Byte Ptr)="gtk_file_chooser_button_new_with_dialog"
	Function gtk_file_chooser_button_get_title:Byte Ptr(button:Byte Ptr)="gtk_file_chooser_button_get_title"
	Function gtk_file_chooser_button_set_title(button:Byte Ptr,title:Byte Ptr)="gtk_file_chooser_button_set_title"
	Function gtk_file_chooser_button_get_width_chars:Int(button:Byte Ptr)="gtk_file_chooser_button_get_width_chars"
	Function gtk_file_chooser_button_set_width_chars(button:Byte Ptr,n_chars:Int)="gtk_file_chooser_button_set_width_chars"
End Extern
