Extern
	Function gtk_font_selection_dialog_new:Byte Ptr(title:Byte Ptr)="gtk_font_selection_dialog_new"
	Function gtk_font_selection_dialog_get_font:Byte Ptr(fsd:Byte Ptr)="gtk_font_selection_dialog_get_font"
	Function gtk_font_selection_dialog_get_font_name:Byte Ptr(fsd:Byte Ptr)="gtk_font_selection_dialog_get_font_name"
	Function gtk_font_selection_dialog_set_font_name:gboolean(fsd:Byte Ptr,fontname:Byte Ptr)="gtk_font_selection_dialog_set_font_name"
	Function gchar*:const(fsd:Byte Ptr)="gchar*"
	Function gtk_font_selection_dialog_set_preview_text(fsd:Byte Ptr,text:Byte Ptr)="gtk_font_selection_dialog_set_preview_text"
End Extern
