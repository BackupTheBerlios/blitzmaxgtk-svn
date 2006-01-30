'GtkMessageType
	Const GTK_MESSAGE_INFO:Byte=0
	Const GTK_MESSAGE_WARNING:Byte=1
	Const GTK_MESSAGE_QUESTION:Byte=2
	Const GTK_MESSAGE_ERROR:Byte=3

'GtkButtonsType
	Const GTK_BUTTONS_NONE:Byte=0
	Const GTK_BUTTONS_OK:Byte=1
	Const GTK_BUTTONS_CLOSE:Byte=2
	Const GTK_BUTTONS_CANCEL:Byte=3
	Const GTK_BUTTONS_YES_NO:Byte=4
	Const GTK_BUTTONS_OK_CANCEL:Byte=5

Extern
	Function gtk_message_dialog_new:Byte Ptr(parent:Byte Ptr, flags:Byte, MType:Byte, buttons:Byte, message_format:Byte Ptr)="gtk_message_dialog_new"
	Function gtk_message_dialog_set_markup(message_dialog:Byte Ptr,str:Byte Ptr)="gtk_message_dialog_set_markup"
	Function gtk_message_dialog_format_secondary_text(message_dialog:Byte Ptr, message_format:Byte Ptr)="gtk_message_dialog_format_secondary_text"
End Extern
