Extern
	Function gtk_combo_box_entry_new:Byte Ptr()="gtk_combo_box_entry_new"
	Function gtk_combo_box_entry_new_with_model:Byte Ptr(model:Byte Ptr,text_column:int)="gtk_combo_box_entry_new_with_model"
	Function gtk_combo_box_entry_new_text:Byte Ptr()="gtk_combo_box_entry_new_text"
	Function gtk_combo_box_entry_set_text_column(entry_box:Byte Ptr,text_column:int)="gtk_combo_box_entry_set_text_column"
	Function gtk_combo_box_entry_get_text_column:int(entry_box:Byte Ptr)="gtk_combo_box_entry_get_text_column"
End Extern
