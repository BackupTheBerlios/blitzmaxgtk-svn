Extern
	Function gtk_paned_add1(paned:Byte Ptr,child:Byte Ptr)="gtk_paned_add1"
	Function gtk_paned_add2(paned:Byte Ptr,child:Byte Ptr)="gtk_paned_add2"
	Function gtk_paned_pack1(paned:Byte Ptr,child:Byte Ptr,resize:gboolean,shrink:gboolean)="gtk_paned_pack1"
	Function gtk_paned_pack2(paned:Byte Ptr,child:Byte Ptr,resize:gboolean,shrink:gboolean)="gtk_paned_pack2"
	Function gtk_paned_get_child1:Byte Ptr(paned:Byte Ptr)="gtk_paned_get_child1"
	Function gtk_paned_get_child2:Byte Ptr(paned:Byte Ptr)="gtk_paned_get_child2"
	Function gtk_paned_set_position(paned:Byte Ptr,position:gint)="gtk_paned_set_position"
	Function gtk_paned_get_position:gint(paned:Byte Ptr)="gtk_paned_get_position"
End Extern
