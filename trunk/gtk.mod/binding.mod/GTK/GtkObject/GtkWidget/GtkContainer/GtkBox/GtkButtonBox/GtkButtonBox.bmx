'GtkButtonBoxStyle
Const GTK_BUTTONBOX_DEFAULT_STYLE=1
Const GTK_BUTTONBOX_SPREAD=2
Const GTK_BUTTONBOX_EDGE=3
Const GTK_BUTTONBOX_START=4
Const GTK_BUTTONBOX_END=5


Extern
	Function gtk_button_box_get_layout:Byte(widget:Byte Ptr)="gtk_button_box_get_layout"
	Function gtk_button_box_get_child_size(widget:Byte Ptr,min_width:Byte Ptr,min_height:Byte Ptr)="gtk_button_box_get_child_size"
	Function gtk_button_box_get_child_ipadding(widget:Byte Ptr,ipad_x:Byte Ptr,ipad_y:Byte Ptr)="gtk_button_box_get_child_ipadding"
	Function gtk_button_box_get_child_secondary:Byte(widget:Byte Ptr,child:Byte Ptr)="gtk_button_box_get_child_secondary"
	Function gtk_button_box_set_layout(widget:Byte Ptr,layout_style:Byte)="gtk_button_box_set_layout"
	Function gtk_button_box_set_child_size(widget:Byte Ptr,min_width:int,min_height:int)="gtk_button_box_set_child_size"
	Function gtk_button_box_set_child_ipadding(widget:Byte Ptr,ipad_x:int,ipad_y:int)="gtk_button_box_set_child_ipadding"
	Function gtk_button_box_set_child_secondary(widget:Byte Ptr,child:Byte Ptr,is_secondary:Byte)="gtk_button_box_set_child_secondary"
End Extern
