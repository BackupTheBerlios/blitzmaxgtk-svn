Extern
	Function gtk_statusbar_new:Byte Ptr()="gtk_statusbar_new"
	Function gtk_statusbar_get_context_id:guint(statusbar:Byte Ptr,context_description:Byte Ptr)="gtk_statusbar_get_context_id"
	Function gtk_statusbar_push:guint(statusbar:Byte Ptr,context_id:guint,text:Byte Ptr)="gtk_statusbar_push"
	Function gtk_statusbar_pop(statusbar:Byte Ptr,context_id:guint)="gtk_statusbar_pop"
	Function gtk_statusbar_remove(statusbar:Byte Ptr,context_id:guint,message_id:guint)="gtk_statusbar_remove"
	Function gtk_statusbar_set_has_resize_grip(statusbar:Byte Ptr,setting:gboolean)="gtk_statusbar_set_has_resize_grip"
	Function gtk_statusbar_get_has_resize_grip:gboolean(statusbar:Byte Ptr)="gtk_statusbar_get_has_resize_grip"
End Extern
