Extern
	Function gtk_check_menu_item_new:Byte Ptr()="gtk_check_menu_item_new"
	Function gtk_check_menu_item_new_with_label:Byte Ptr(label:Byte Ptr)="gtk_check_menu_item_new_with_label"
	Function gtk_check_menu_item_new_with_mnemonic:Byte Ptr(label:Byte Ptr)="gtk_check_menu_item_new_with_mnemonic"
	Function gtk_check_menu_item_get_active:Byte(check_menu_item:Byte Ptr)="gtk_check_menu_item_get_active"
	Function gtk_check_menu_item_set_active(check_menu_item:Byte Ptr,is_active:Byte)="gtk_check_menu_item_set_active"
	Function gtk_check_menu_item_set_show_toggle(menu_item:Byte Ptr,always:Byte)="gtk_check_menu_item_set_show_toggle"
	Function gtk_check_menu_item_toggled(check_menu_item:Byte Ptr)="gtk_check_menu_item_toggled"
	Function gtk_check_menu_item_get_inconsistent:Byte(check_menu_item:Byte Ptr)="gtk_check_menu_item_get_inconsistent"
	Function gtk_check_menu_item_set_inconsistent(check_menu_item:Byte Ptr,setting:Byte)="gtk_check_menu_item_set_inconsistent"
	Function gtk_check_menu_item_set_draw_as_radio(check_menu_item:Byte Ptr,draw_as_radio:Byte)="gtk_check_menu_item_set_draw_as_radio"
	Function gtk_check_menu_item_get_draw_as_radio:Byte(check_menu_item:Byte Ptr)="gtk_check_menu_item_get_draw_as_radio"
End Extern
