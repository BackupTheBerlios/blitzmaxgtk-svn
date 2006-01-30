Extern
	Function gtk_adjustment_new:Byte Ptr(value:gdouble,lower:gdouble,upper:gdouble,step_increment:gdouble,page_increment:gdouble,page_size:gdouble)="gtk_adjustment_new"
	Function gtk_adjustment_get_value:gdouble(adjustment:Byte Ptr)="gtk_adjustment_get_value"
	Function gtk_adjustment_set_value(adjustment:Byte Ptr,value:gdouble)="gtk_adjustment_set_value"
	Function gtk_adjustment_clamp_page(adjustment:Byte Ptr,lower:gdouble,upper:gdouble)="gtk_adjustment_clamp_page"
	Function gtk_adjustment_changed(adjustment:Byte Ptr)="gtk_adjustment_changed"
	Function gtk_adjustment_value_changed(adjustment:Byte Ptr)="gtk_adjustment_value_changed"
End Extern
