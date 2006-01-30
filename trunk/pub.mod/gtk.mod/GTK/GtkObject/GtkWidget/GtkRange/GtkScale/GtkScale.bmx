Extern
	Function gtk_scale_set_digits(scale:Byte Ptr,digits:int)="gtk_scale_set_digits"
	Function gtk_scale_set_draw_value(scale:Byte Ptr,draw_value:Byte)="gtk_scale_set_draw_value"
	'Function gtk_scale_set_value_pos(scale:Byte Ptr,pos:GtkPositionType)="gtk_scale_set_value_pos"
	Function gtk_scale_get_digits:int(scale:Byte Ptr)="gtk_scale_get_digits"
	Function gtk_scale_get_draw_value:Byte(scale:Byte Ptr)="gtk_scale_get_draw_value"
	Function gtk_scale_get_value_pos:GtkPositionType(scale:Byte Ptr)="gtk_scale_get_value_pos"
	Function gtk_scale_get_layout:Byte Ptr(scale:Byte Ptr)="gtk_scale_get_layout"
	Function gtk_scale_get_layout_offsets(scale:Byte Ptr,x:Byte Ptr,y:Byte Ptr)="gtk_scale_get_layout_offsets"
End Extern
