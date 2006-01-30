Extern
	Function gtk_toggle_button_new:Byte Ptr()="gtk_toggle_button_new"
	Function gtk_toggle_button_new_with_label:Byte Ptr(label:Byte Ptr)="gtk_toggle_button_new_with_label"
	Function gtk_toggle_button_new_with_mnemonic:Byte Ptr(label:Byte Ptr)="gtk_toggle_button_new_with_mnemonic"
	Function gtk_toggle_button_set_mode(toggle_button:Byte Ptr,draw_indicator:Byte)="gtk_toggle_button_set_mode"
	Function gtk_toggle_button_get_mode:Byte(toggle_button:Byte Ptr)="gtk_toggle_button_get_mode"
	Function gtk_toggle_button_toggled(toggle_button:Byte Ptr)="gtk_toggle_button_toggled"
	Function gtk_toggle_button_get_active:Byte(toggle_button:Byte Ptr)="gtk_toggle_button_get_active"
	Function gtk_toggle_button_set_active(toggle_button:Byte Ptr,is_active:Byte)="gtk_toggle_button_set_active"
	Function gtk_toggle_button_get_inconsistent:Byte(toggle_button:Byte Ptr)="gtk_toggle_button_get_inconsistent"
	Function gtk_toggle_button_set_inconsistent(toggle_button:Byte Ptr,setting:Byte)="gtk_toggle_button_set_inconsistent"
End Extern
