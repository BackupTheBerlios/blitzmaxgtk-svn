Extern
	Function gtk_alignment_new:Byte Ptr(xalign:double,yalign:double,xscale:double,yscale:double)="gtk_alignment_new"
	Function gtk_alignment_set(alignment:Byte Ptr,xalign:double,yalign:double,xscale:double,yscale:double)="gtk_alignment_set"
	Function gtk_alignment_get_padding(alignment:Byte Ptr,padding_top:Byte Ptr,padding_bottom:Byte Ptr,padding_left:Byte Ptr,padding_right:Byte Ptr)="gtk_alignment_get_padding"
	Function gtk_alignment_set_padding(alignment:Byte Ptr,padding_top:Int,padding_bottom:Int,padding_left:Int,padding_right:Int)="gtk_alignment_set_padding"
End Extern
