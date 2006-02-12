Extern
	Function gtk_file_chooser_dialog_new:Byte Ptr(title:Byte Ptr, parent:Byte Ptr, action:Int, first_button_text:Byte Ptr, first_button_response:Int, second_button_text:Byte Ptr=Null, second_button_response:Int=0, third_button_text:Byte Ptr=Null, third_button_response:Int=0)="gtk_file_chooser_dialog_new"
	Function gtk_file_chooser_dialog_new_with_backend:Byte Ptr(title:Byte Ptr, parent:Byte Ptr, action:Byte Ptr, first_button_text:Byte Ptr, second_button_text:Byte Ptr)="gtk_file_chooser_dialog_new_with_backend"
End Extern
