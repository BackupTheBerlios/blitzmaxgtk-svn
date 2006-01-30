Extern
	Function gtk_combo_new:Byte Ptr()="gtk_combo_new"
	Function gtk_combo_set_popdown_strings(combo:Byte Ptr,strings:Byte Ptr)="gtk_combo_set_popdown_strings"
	Function gtk_combo_set_value_in_list(combo:Byte Ptr,val:gboolean,ok_if_empty:gboolean)="gtk_combo_set_value_in_list"
	Function gtk_combo_set_use_arrows(combo:Byte Ptr,val:gboolean)="gtk_combo_set_use_arrows"
	Function gtk_combo_set_use_arrows_always(combo:Byte Ptr,val:gboolean)="gtk_combo_set_use_arrows_always"
	Function gtk_combo_set_case_sensitive(combo:Byte Ptr,val:gboolean)="gtk_combo_set_case_sensitive"
	Function gtk_combo_set_item_string(combo:Byte Ptr,item:Byte Ptr,item_value:Byte Ptr)="gtk_combo_set_item_string"
	Function gtk_combo_disable_activate(combo:Byte Ptr)="gtk_combo_disable_activate"
End Extern
