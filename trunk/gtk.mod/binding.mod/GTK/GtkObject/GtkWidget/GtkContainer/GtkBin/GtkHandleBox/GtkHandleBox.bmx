'GtkPositionType
Const GTK_POS_LEFT=1
Const GTK_POS_RIGHT=2
Const GTK_POS_TOP=3
Const GTK_POS_BOTTOM=4

Extern
	Function gtk_handle_box_set_shadow_type(handle_box:Byte Ptr, hbtype:Byte)="gtk_handle_box_set_shadow_type"
	Function gtk_handle_box_set_handle_position(handle_box:Byte Ptr, position:Byte)="gtk_handle_box_set_handle_position"
	Function gtk_handle_box_set_snap_edge(handle_box:Byte Ptr, edge:Byte)="gtk_handle_box_set_snap_edge"
End Extern
