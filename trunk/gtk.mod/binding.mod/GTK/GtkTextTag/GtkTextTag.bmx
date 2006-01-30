Extern
	Function gtk_text_tag_new:Byte Ptr(name:Byte Ptr)="gtk_text_tag_new"
	Function gtk_text_tag_get_priority:gint(tag:Byte Ptr)="gtk_text_tag_get_priority"
	Function gtk_text_tag_set_priority(tag:Byte Ptr,priority:gint)="gtk_text_tag_set_priority"
	Function gtk_text_tag_event:gboolean(tag:Byte Ptr,event_object:Byte Ptr,event:Byte Ptr,iter:Byte Ptr)="gtk_text_tag_event"
	Function gtk_text_attributes_new:Byte Ptr()="gtk_text_attributes_new"
	Function gtk_text_attributes_copy:Byte Ptr(src:Byte Ptr)="gtk_text_attributes_copy"
	Function gtk_text_attributes_copy_values(src:Byte Ptr,dest:Byte Ptr)="gtk_text_attributes_copy_values"
	Function gtk_text_attributes_unref(values:Byte Ptr)="gtk_text_attributes_unref"
	Function gtk_text_attributes_ref:Byte Ptr(values:Byte Ptr)="gtk_text_attributes_ref"
End Extern
