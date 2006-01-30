
Extern
	Function gtk_plug_construct(plug:Byte Ptr,socket_id:int)="gtk_plug_construct"
	Function gtk_plug_construct_for_display(plug:Byte Ptr,display:Byte Ptr,socket_id:Int)="gtk_plug_construct_for_display"
	Function gtk_plug_new:Byte Ptr(socket_id:Int)="gtk_plug_new"
	Function gtk_plug_new_for_display:Byte Ptr(display:Byte Ptr,socket_id:int)="gtk_plug_new_for_display"
	Function gtk_plug_get_id:Int(plug:Byte Ptr)="gtk_plug_get_id"
End Extern
