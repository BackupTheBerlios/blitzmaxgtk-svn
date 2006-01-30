Extern
	Function gtk_socket_new:Byte Ptr()="gtk_socket_new"
	Function gtk_socket_steal(socket_:Byte Ptr,wid:GdkNativeWindow)="gtk_socket_steal"
	Function gtk_socket_add_id(socket_:Byte Ptr,window_id:GdkNativeWindow)="gtk_socket_add_id"
	Function gtk_socket_get_id:GdkNativeWindow(socket_:Byte Ptr)="gtk_socket_get_id"
End Extern
