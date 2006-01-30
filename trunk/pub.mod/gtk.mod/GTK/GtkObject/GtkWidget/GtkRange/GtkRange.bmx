Extern
	'Function gtk_range_get_adjustment:Byte Ptr(range:Byte Ptr)="gtk_range_get_adjustment"
	'Function gtk_range_set_update_policy(range:Byte Ptr,policy:GtkUpdateType)="gtk_range_set_update_policy"
	'Function gtk_range_set_adjustment(range:Byte Ptr,adjustment:Byte Ptr)="gtk_range_set_adjustment"
	'Function gtk_range_get_inverted:gboolean(range:Byte Ptr)="gtk_range_get_inverted"
	'Function gtk_range_set_inverted(range:Byte Ptr,setting:gboolean)="gtk_range_set_inverted"
	'Function gtk_range_get_update_policy:GtkUpdateType(range:Byte Ptr)="gtk_range_get_update_policy"
	Function gtk_range_get_value:double(range:Byte Ptr)="gtk_range_get_value"
	'Function gtk_range_set_increments(range:Byte Ptr,step:gdouble,page:gdouble)="gtk_range_set_increments"
	'Function gtk_range_set_range(range:Byte Ptr,min:gdouble,max:gdouble)="gtk_range_set_range"
	Function gtk_range_set_value(range:Byte Ptr,value:double)="gtk_range_set_value"
End Extern
