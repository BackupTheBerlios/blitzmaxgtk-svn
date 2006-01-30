Extern
	Function gtk_layout_new:Byte Ptr(hadjustment:Byte Ptr,vadjustment:Byte Ptr)="gtk_layout_new"
	Function gtk_layout_put(layout:Byte Ptr,child_widget:Byte Ptr,x:gint,y:gint)="gtk_layout_put"
	Function gtk_layout_move(layout:Byte Ptr,child_widget:Byte Ptr,x:gint,y:gint)="gtk_layout_move"
	Function gtk_layout_set_size(layout:Byte Ptr,width:guint,height:guint)="gtk_layout_set_size"
	Function gtk_layout_get_size(layout:Byte Ptr,width:Byte Ptr,height:Byte Ptr)="gtk_layout_get_size"
	Function gtk_layout_freeze(layout:Byte Ptr)="gtk_layout_freeze"
	Function gtk_layout_thaw(layout:Byte Ptr)="gtk_layout_thaw"
	Function gtk_layout_get_hadjustment:Byte Ptr(layout:Byte Ptr)="gtk_layout_get_hadjustment"
	Function gtk_layout_get_vadjustment:Byte Ptr(layout:Byte Ptr)="gtk_layout_get_vadjustment"
	Function gtk_layout_set_hadjustment(layout:Byte Ptr,adjustment:Byte Ptr)="gtk_layout_set_hadjustment"
	Function gtk_layout_set_vadjustment(layout:Byte Ptr,adjustment:Byte Ptr)="gtk_layout_set_vadjustment"
End Extern
