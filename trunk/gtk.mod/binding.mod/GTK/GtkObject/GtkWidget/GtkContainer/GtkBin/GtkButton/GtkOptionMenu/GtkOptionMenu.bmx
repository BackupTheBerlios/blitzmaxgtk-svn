Extern
	Function gtk_option_menu_new:Byte Ptr()="gtk_option_menu_new"
	Function gtk_option_menu_get_menu:Byte Ptr(option_menu:Byte Ptr)="gtk_option_menu_get_menu"
	Function gtk_option_menu_set_menu(option_menu:Byte Ptr,menu:Byte Ptr)="gtk_option_menu_set_menu"
	Function gtk_option_menu_remove_menu(option_menu:Byte Ptr)="gtk_option_menu_remove_menu"
	Function gtk_option_menu_set_history(option_menu:Byte Ptr,index_:int)="gtk_option_menu_set_history"
	Function gtk_option_menu_get_history:int(option_menu:Byte Ptr)="gtk_option_menu_get_history"
End Extern
