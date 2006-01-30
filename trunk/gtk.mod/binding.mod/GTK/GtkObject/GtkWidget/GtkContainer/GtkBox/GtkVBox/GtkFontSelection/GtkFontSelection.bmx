Extern
	Function gtk_font_selection_new:Byte Ptr()="gtk_font_selection_new"
	Function gtk_font_selection_get_font:Byte Ptr(fontsel:Byte Ptr)="gtk_font_selection_get_font"
	Function gtk_font_selection_get_font_name:Byte Ptr(fontsel:Byte Ptr)="gtk_font_selection_get_font_name"
	Function gtk_font_selection_set_font_name:gboolean(fontsel:Byte Ptr,fontname:Byte Ptr)="gtk_font_selection_set_font_name"
	Function gchar*:const(fontsel:Byte Ptr)="gchar*"
	Function gtk_font_selection_set_preview_text(fontsel:Byte Ptr,text:Byte Ptr)="gtk_font_selection_set_preview_text"
End Extern
