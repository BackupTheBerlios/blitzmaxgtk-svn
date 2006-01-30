Extern
	Function gtk_menu_tool_button_new:Byte Ptr(icon_widget:Byte Ptr,label:Byte Ptr)="gtk_menu_tool_button_new"
	Function gtk_menu_tool_button_new_from_stock:Byte Ptr(stock_id:Byte Ptr)="gtk_menu_tool_button_new_from_stock"
	Function gtk_menu_tool_button_set_menu(button:Byte Ptr,menu:Byte Ptr)="gtk_menu_tool_button_set_menu"
	Function gtk_menu_tool_button_get_menu:Byte Ptr(button:Byte Ptr)="gtk_menu_tool_button_get_menu"
	Function gtk_menu_tool_button_set_arrow_tooltip(button:Byte Ptr,tooltips:Byte Ptr,tip_text:Byte Ptr,tip_private:Byte Ptr)="gtk_menu_tool_button_set_arrow_tooltip"
End Extern
