Extern
	Function gtk_dialog_new:Byte Ptr()="gtk_dialog_new"
	'
	Function gtk_dialog_run:int(dialog:Byte Ptr)="gtk_dialog_run"
	Function gtk_dialog_response(dialog:Byte Ptr,response_id:Int)="gtk_dialog_response"
	Function gtk_dialog_add_button:Byte Ptr(dialog:Byte Ptr,button_text:Byte Ptr,response_id:Int)="gtk_dialog_add_button"
	Function gtk_dialog_add_action_widget(dialog:Byte Ptr,child:Byte Ptr,response_id:Int)="gtk_dialog_add_action_widget"
	Function gtk_dialog_get_has_separator:Byte(dialog:Byte Ptr)="gtk_dialog_get_has_separator"
	Function gtk_dialog_set_default_response(dialog:Byte Ptr,response_id:Int)="gtk_dialog_set_default_response"
	Function gtk_dialog_set_has_separator(dialog:Byte Ptr,setting:Byte)="gtk_dialog_set_has_separator"
	Function gtk_dialog_set_response_sensitive(dialog:Byte Ptr,response_id:Int,setting:Byte)="gtk_dialog_set_response_sensitive"
	Function gtk_dialog_get_response_for_widget:Int(dialog:Byte Ptr,widget:Byte Ptr)="gtk_dialog_get_response_for_widget"
	Function gtk_alternative_dialog_button_order:Byte(screen:Byte Ptr)="gtk_alternative_dialog_button_order"
	Function gtk_dialog_set_alternative_button_order_from_array(dialog:Byte Ptr,n_params:Int,new_order:Byte Ptr)="gtk_dialog_set_alternative_button_order_from_array"
End Extern
