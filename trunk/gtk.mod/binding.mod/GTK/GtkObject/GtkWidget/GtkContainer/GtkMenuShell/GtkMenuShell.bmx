Extern
	Function gtk_menu_shell_append(menu_shell:Byte Ptr,child:Byte Ptr)="gtk_menu_shell_append"
	Function gtk_menu_shell_prepend(menu_shell:Byte Ptr,child:Byte Ptr)="gtk_menu_shell_prepend"
	Function gtk_menu_shell_insert(menu_shell:Byte Ptr,child:Byte Ptr,position:gint)="gtk_menu_shell_insert"
	Function gtk_menu_shell_deactivate(menu_shell:Byte Ptr)="gtk_menu_shell_deactivate"
	Function gtk_menu_shell_select_item(menu_shell:Byte Ptr,menu_item:Byte Ptr)="gtk_menu_shell_select_item"
	Function gtk_menu_shell_select_first(menu_shell:Byte Ptr,search_sensitive:gboolean)="gtk_menu_shell_select_first"
	Function gtk_menu_shell_deselect(menu_shell:Byte Ptr)="gtk_menu_shell_deselect"
	Function gtk_menu_shell_activate_item(menu_shell:Byte Ptr,menu_item:Byte Ptr,force_deactivate:gboolean)="gtk_menu_shell_activate_item"
	Function gtk_menu_shell_cancel(menu_shell:Byte Ptr)="gtk_menu_shell_cancel"
	Function gtk_menu_shell_set_take_focus(menu_shell:Byte Ptr,take_focus:gboolean)="gtk_menu_shell_set_take_focus"
	Function gtk_menu_shell_get_take_focus:gboolean(menu_shell:Byte Ptr)="gtk_menu_shell_get_take_focus"
End Extern
