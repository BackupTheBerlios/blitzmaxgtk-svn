Extern
	Function gtk_menu_bar_new:Byte Ptr()="gtk_menu_bar_new"
	Function gtk_menu_bar_set_pack_direction(menubar:Byte Ptr,pack_dir:GtkPackDirection)="gtk_menu_bar_set_pack_direction"
	Function gtk_menu_bar_get_pack_direction:GtkPackDirection(menubar:Byte Ptr)="gtk_menu_bar_get_pack_direction"
	Function gtk_menu_bar_set_child_pack_direction(menubar:Byte Ptr,child_pack_dir:GtkPackDirection)="gtk_menu_bar_set_child_pack_direction"
	Function gtk_menu_bar_get_child_pack_direction:GtkPackDirection(menubar:Byte Ptr)="gtk_menu_bar_get_child_pack_direction"
End Extern
