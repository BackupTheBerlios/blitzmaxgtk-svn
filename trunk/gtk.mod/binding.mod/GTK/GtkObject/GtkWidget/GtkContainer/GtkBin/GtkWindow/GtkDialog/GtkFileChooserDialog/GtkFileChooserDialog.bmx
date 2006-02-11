  
'GtkFileChooserAction
Const GTK_FILE_CHOOSER_ACTION_OPEN=0
Const GTK_FILE_CHOOSER_ACTION_SAVE=1
Const GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER=2
Const GTK_FILE_CHOOSER_ACTION_CREATE_FOLDER=3


Extern
	Function gtk_file_chooser_dialog_new:Byte Ptr(title:Byte Ptr, parent:Byte Ptr, action:Byte Ptr, first_button_text:Byte Ptr, second_button_text:Byte Ptr)="gtk_file_chooser_dialog_new"
	Function gtk_file_chooser_dialog_new_with_backend:Byte Ptr(title:Byte Ptr, parent:Byte Ptr, action:Byte Ptr, first_button_text:Byte Ptr, second_button_text:Byte Ptr)="gtk_file_chooser_dialog_new_with_backend"
End Extern
