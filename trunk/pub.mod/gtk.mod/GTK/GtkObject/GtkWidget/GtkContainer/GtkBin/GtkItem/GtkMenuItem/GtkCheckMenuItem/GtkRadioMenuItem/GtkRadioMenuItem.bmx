Extern
	Function gtk_radio_menu_item_new:Byte Ptr(group:Byte Ptr)="gtk_radio_menu_item_new"
	Function gtk_radio_menu_item_new_with_label:Byte Ptr(group:Byte Ptr,label:Byte Ptr)="gtk_radio_menu_item_new_with_label"
	Function gtk_radio_menu_item_new_with_mnemonic:Byte Ptr(group:Byte Ptr,label:Byte Ptr)="gtk_radio_menu_item_new_with_mnemonic"
	Function gtk_radio_menu_item_new_from_widget:Byte Ptr(group:Byte Ptr)="gtk_radio_menu_item_new_from_widget"
	Function gtk_radio_menu_item_new_with_label_from_widget:Byte Ptr(group:Byte Ptr,label:Byte Ptr)="gtk_radio_menu_item_new_with_label_from_widget"
	Function gtk_radio_menu_item_new_with_mnemonic_from_widget:Byte Ptr(group:Byte Ptr,label:Byte Ptr)="gtk_radio_menu_item_new_with_mnemonic_from_widget"
	Function gtk_radio_menu_item_set_group(radio_menu_item:Byte Ptr,group:Byte Ptr)="gtk_radio_menu_item_set_group"
	Function gtk_radio_menu_item_get_group:Byte Ptr(radio_menu_item:Byte Ptr)="gtk_radio_menu_item_get_group"
End Extern
