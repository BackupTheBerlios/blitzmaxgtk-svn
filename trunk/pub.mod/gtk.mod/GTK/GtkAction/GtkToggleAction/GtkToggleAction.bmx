Extern
	Function gtk_toggle_action_new:Byte Ptr(name:Byte Ptr,label:Byte Ptr,tooltip:Byte Ptr,stock_id:Byte Ptr)="gtk_toggle_action_new"
	Function gtk_toggle_action_toggled(action:Byte Ptr)="gtk_toggle_action_toggled"
	Function gtk_toggle_action_set_active(action:Byte Ptr,is_active:gboolean)="gtk_toggle_action_set_active"
	Function gtk_toggle_action_get_active:gboolean(action:Byte Ptr)="gtk_toggle_action_get_active"
	Function gtk_toggle_action_set_draw_as_radio(action:Byte Ptr,draw_as_radio:gboolean)="gtk_toggle_action_set_draw_as_radio"
	Function gtk_toggle_action_get_draw_as_radio:gboolean(action:Byte Ptr)="gtk_toggle_action_get_draw_as_radio"
End Extern
