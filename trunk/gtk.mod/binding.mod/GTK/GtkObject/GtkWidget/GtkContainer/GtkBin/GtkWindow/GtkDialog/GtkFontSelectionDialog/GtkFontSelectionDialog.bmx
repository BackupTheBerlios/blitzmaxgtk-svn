Extern
	Function gtk_font_selection_dialog_new:Byte Ptr(title:Byte Ptr)="gtk_font_selection_dialog_new"
	Function gtk_font_selection_dialog_get_font:Byte Ptr(fsd:Byte Ptr)="gtk_font_selection_dialog_get_font"
	Function gtk_font_selection_dialog_get_font_name:Byte Ptr(fsd:Byte Ptr)="gtk_font_selection_dialog_get_font_name"
	Function gtk_font_selection_dialog_set_font_name:Byte(fsd:Byte Ptr,SFontName:Byte Ptr)="gtk_font_selection_dialog_set_font_name"
	Function gtk_font_selection_dialog_get_preview_text:Byte Ptr(fsd:Byte Ptr)="gtk_font_selection_dialog_get_preview_text"
	Function gtk_font_selection_dialog_set_preview_text(fsd:Byte Ptr,text:Byte Ptr)="gtk_font_selection_dialog_set_preview_text"
End Extern
