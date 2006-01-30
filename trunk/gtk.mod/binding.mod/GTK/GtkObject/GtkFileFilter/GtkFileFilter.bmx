Extern
	Function :gboolean((const GtkFileFilterInfo *filter_info:*GtkFileFilterFunc),data);:gpointer)=""
	Function gtk_file_filter_new:Byte Ptr()="gtk_file_filter_new"
	Function gtk_file_filter_set_name(filter:Byte Ptr,name:Byte Ptr)="gtk_file_filter_set_name"
	Function gchar*:const(filter:Byte Ptr)="gchar*"
	Function gtk_file_filter_add_mime_type(filter:Byte Ptr,mime_type:Byte Ptr)="gtk_file_filter_add_mime_type"
	Function gtk_file_filter_add_pattern(filter:Byte Ptr,pattern:Byte Ptr)="gtk_file_filter_add_pattern"
	Function gtk_file_filter_add_pixbuf_formats(filter:Byte Ptr)="gtk_file_filter_add_pixbuf_formats"
	Function gtk_file_filter_add_custom(filter:Byte Ptr,needed:GtkFileFilterFlags,func:GtkFileFilterFunc,data:gpointer,notify:GDestroyNotify)="gtk_file_filter_add_custom"
	Function gtk_file_filter_get_needed:GtkFileFilterFlags(filter:Byte Ptr)="gtk_file_filter_get_needed"
	Function gtk_file_filter_filter:gboolean(filter:Byte Ptr,filter_info:Byte Ptr)="gtk_file_filter_filter"
End Extern
