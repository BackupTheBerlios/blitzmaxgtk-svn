Extern
	Function gtk_event_box_new:Byte Ptr()="gtk_event_box_new"
	Function gtk_event_box_set_above_child(event_box:Byte Ptr,above_child:gboolean)="gtk_event_box_set_above_child"
	Function gtk_event_box_get_above_child:gboolean(event_box:Byte Ptr)="gtk_event_box_get_above_child"
	Function gtk_event_box_set_visible_window(event_box:Byte Ptr,visible_window:gboolean)="gtk_event_box_set_visible_window"
	Function gtk_event_box_get_visible_window:gboolean(event_box:Byte Ptr)="gtk_event_box_get_visible_window"
End Extern