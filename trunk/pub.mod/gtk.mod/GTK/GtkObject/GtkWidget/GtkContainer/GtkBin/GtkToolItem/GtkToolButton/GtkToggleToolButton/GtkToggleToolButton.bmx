Extern
	Function gtk_toggle_tool_button_new:Byte Ptr()="gtk_toggle_tool_button_new"
	Function gtk_toggle_tool_button_new_from_stock:Byte Ptr(stock_id:Byte Ptr)="gtk_toggle_tool_button_new_from_stock"
	Function gtk_toggle_tool_button_set_active(button:Byte Ptr,is_active:gboolean)="gtk_toggle_tool_button_set_active"
	Function gtk_toggle_tool_button_get_active:gboolean(button:Byte Ptr)="gtk_toggle_tool_button_get_active"
End Extern
