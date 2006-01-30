Extern
	Function gtk_pixmap_new:Byte Ptr(pixmap:Byte Ptr,mask:Byte Ptr)="gtk_pixmap_new"
	Function gtk_pixmap_set(pixmap:Byte Ptr,val:Byte Ptr,mask:Byte Ptr)="gtk_pixmap_set"
	Function gtk_pixmap_get(pixmap:Byte Ptr,*val:Byte Ptr,*mask:Byte Ptr)="gtk_pixmap_get"
	Function gtk_pixmap_set_build_insensitive(pixmap:Byte Ptr,build:gboolean)="gtk_pixmap_set_build_insensitive"
End Extern
