Extern
	Function gtk_box_pack_start(box:Byte Ptr,child:Byte Ptr,expand:Byte,fill:Byte,padding:int)="gtk_box_pack_start"
	Function gtk_box_pack_end(box:Byte Ptr,child:Byte Ptr,expand:Byte,fill:Byte,padding:int)="gtk_box_pack_end"
	Function gtk_box_pack_start_defaults(box:Byte Ptr,widget:Byte Ptr)="gtk_box_pack_start_defaults"
	Function gtk_box_pack_end_defaults(box:Byte Ptr,widget:Byte Ptr)="gtk_box_pack_end_defaults"
	Function gtk_box_get_homogeneous:Byte(box:Byte Ptr)="gtk_box_get_homogeneous"
	Function gtk_box_set_homogeneous(box:Byte Ptr,homogeneous:Byte)="gtk_box_set_homogeneous"
	Function gtk_box_get_spacing:int(box:Byte Ptr)="gtk_box_get_spacing"
	Function gtk_box_set_spacing(box:Byte Ptr,spacing:int)="gtk_box_set_spacing"
	Function gtk_box_reorder_child(box:Byte Ptr,child:Byte Ptr,position:int)="gtk_box_reorder_child"
	'Function gtk_box_query_child_packing(box:Byte Ptr,child:Byte Ptr,expand:Byte Ptr,fill:Byte Ptr,padding:Byte Ptr,pack_type:Byte)="gtk_box_query_child_packing"
	'Function gtk_box_set_child_packing(box:Byte Ptr,child:Byte Ptr,expand:Byte,fill:Byte,padding:int,pack_type:Byte)="gtk_box_set_child_packing"
End Extern
