Extern
	Function gtk_button_box_get_layout:GtkButtonBoxStyle(widget:Byte Ptr)="gtk_button_box_get_layout"
	Function gtk_button_box_get_child_size(widget:Byte Ptr,min_width:Byte Ptr,min_height:Byte Ptr)="gtk_button_box_get_child_size"
	Function gtk_button_box_get_child_ipadding(widget:Byte Ptr,ipad_x:Byte Ptr,ipad_y:Byte Ptr)="gtk_button_box_get_child_ipadding"
	Function gtk_button_box_get_child_secondary:gboolean(widget:Byte Ptr,child:Byte Ptr)="gtk_button_box_get_child_secondary"
	Function gtk_button_box_set_layout(widget:Byte Ptr,layout_style:GtkButtonBoxStyle)="gtk_button_box_set_layout"
	Function gtk_button_box_set_child_size(widget:Byte Ptr,min_width:gint,min_height:gint)="gtk_button_box_set_child_size"
	Function gtk_button_box_set_child_ipadding(widget:Byte Ptr,ipad_x:gint,ipad_y:gint)="gtk_button_box_set_child_ipadding"
	Function gtk_button_box_set_child_secondary(widget:Byte Ptr,child:Byte Ptr,is_secondary:gboolean)="gtk_button_box_set_child_secondary"
End Extern
