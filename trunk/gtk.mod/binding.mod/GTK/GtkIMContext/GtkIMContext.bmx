Extern
	Function gtk_im_context_set_client_window(context:Byte Ptr,window:Byte Ptr)="gtk_im_context_set_client_window"
	Function gtk_im_context_get_preedit_string(context:Byte Ptr,*str:Byte Ptr,*attrs:Byte Ptr,cursor_pos:Byte Ptr)="gtk_im_context_get_preedit_string"
	Function gtk_im_context_filter_keypress:gboolean(context:Byte Ptr,event:Byte Ptr)="gtk_im_context_filter_keypress"
	Function gtk_im_context_focus_in(context:Byte Ptr)="gtk_im_context_focus_in"
	Function gtk_im_context_focus_out(context:Byte Ptr)="gtk_im_context_focus_out"
	Function gtk_im_context_reset(context:Byte Ptr)="gtk_im_context_reset"
	Function gtk_im_context_set_cursor_location(context:Byte Ptr,area:Byte Ptr)="gtk_im_context_set_cursor_location"
	Function gtk_im_context_set_use_preedit(context:Byte Ptr,use_preedit:gboolean)="gtk_im_context_set_use_preedit"
	Function gtk_im_context_set_surrounding(context:Byte Ptr,text:Byte Ptr,len:gint,cursor_index:gint)="gtk_im_context_set_surrounding"
	Function gtk_im_context_get_surrounding:gboolean(context:Byte Ptr,*text:Byte Ptr,cursor_index:Byte Ptr)="gtk_im_context_get_surrounding"
	Function gtk_im_context_delete_surrounding:gboolean(context:Byte Ptr,offset:gint,n_chars:gint)="gtk_im_context_delete_surrounding"
End Extern
