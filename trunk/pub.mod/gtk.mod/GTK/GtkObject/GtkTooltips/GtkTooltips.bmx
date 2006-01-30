Extern
	Function gtk_tooltips_new:Byte Ptr()="gtk_tooltips_new"
	Function gtk_tooltips_enable(tooltips:Byte Ptr)="gtk_tooltips_enable"
	Function gtk_tooltips_disable(tooltips:Byte Ptr)="gtk_tooltips_disable"
	Function gtk_tooltips_set_delay(tooltips:Byte Ptr,delay:guint)="gtk_tooltips_set_delay"
	Function gtk_tooltips_set_tip(tooltips:Byte Ptr,widget:Byte Ptr,tip_text:Byte Ptr,tip_private:Byte Ptr)="gtk_tooltips_set_tip"
	Function gtk_tooltips_data_get:Byte Ptr(widget:Byte Ptr)="gtk_tooltips_data_get"
	Function gtk_tooltips_force_window(tooltips:Byte Ptr)="gtk_tooltips_force_window"
	Function gtk_tooltips_get_info_from_tip_window:gboolean(tip_window:Byte Ptr,*tooltips:Byte Ptr,*current_widget:Byte Ptr)="gtk_tooltips_get_info_from_tip_window"
End Extern
