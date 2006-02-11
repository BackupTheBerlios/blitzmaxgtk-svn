Extern
	Function gtk_adjustment_new:Byte Ptr(value:Double,VLower:Double,VUpper:Double,step_increment:Double,page_increment:Double,page_size:Double)="gtk_adjustment_new"
	Function gtk_adjustment_get_value:Double(adjustment:Byte Ptr)="gtk_adjustment_get_value"
	Function gtk_adjustment_set_value(adjustment:Byte Ptr,value:Double)="gtk_adjustment_set_value"
	Function gtk_adjustment_clamp_page(adjustment:Byte Ptr,VLower:Double,VUpper:Double)="gtk_adjustment_clamp_page"
	Function gtk_adjustment_changed(adjustment:Byte Ptr)="gtk_adjustment_changed"
	Function gtk_adjustment_value_changed(adjustment:Byte Ptr)="gtk_adjustment_value_changed"
End Extern
