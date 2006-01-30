Extern
	Function gtk_text_mark_set_visible(mark:Byte Ptr,setting:gboolean)="gtk_text_mark_set_visible"
	Function gtk_text_mark_get_visible:gboolean(mark:Byte Ptr)="gtk_text_mark_get_visible"
	Function gtk_text_mark_get_deleted:gboolean(mark:Byte Ptr)="gtk_text_mark_get_deleted"
	Function gchar*:const(mark:Byte Ptr)="gchar*"
	Function gtk_text_mark_get_buffer:Byte Ptr(mark:Byte Ptr)="gtk_text_mark_get_buffer"
	Function gtk_text_mark_get_left_gravity:gboolean(mark:Byte Ptr)="gtk_text_mark_get_left_gravity"
End Extern
