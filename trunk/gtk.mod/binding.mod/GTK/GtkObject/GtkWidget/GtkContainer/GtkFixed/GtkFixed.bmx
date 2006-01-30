Extern
	Function gtk_fixed_new:Byte Ptr()="gtk_fixed_new"
	Function gtk_fixed_put(fixed:Byte Ptr,widget:Byte Ptr,x:int,y:int)="gtk_fixed_put"
	Function gtk_fixed_move(fixed:Byte Ptr,widget:Byte Ptr,x:int,y:int)="gtk_fixed_move"
	Function gtk_fixed_get_has_window:Byte(fixed:Byte Ptr)="gtk_fixed_get_has_window"
	Function gtk_fixed_set_has_window(fixed:Byte Ptr,has_window:Byte)="gtk_fixed_set_has_window"
End Extern
