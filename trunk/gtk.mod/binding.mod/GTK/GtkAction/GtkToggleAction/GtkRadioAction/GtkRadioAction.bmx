Extern
	Function gtk_radio_action_new:Byte Ptr(name:Byte Ptr,label:Byte Ptr,tooltip:Byte Ptr,stock_id:Byte Ptr,value:gint)="gtk_radio_action_new"
	Function gtk_radio_action_get_group:Byte Ptr(action:Byte Ptr)="gtk_radio_action_get_group"
	Function gtk_radio_action_set_group(action:Byte Ptr,group:Byte Ptr)="gtk_radio_action_set_group"
	Function gtk_radio_action_get_current_value:gint(action:Byte Ptr)="gtk_radio_action_get_current_value"
End Extern
