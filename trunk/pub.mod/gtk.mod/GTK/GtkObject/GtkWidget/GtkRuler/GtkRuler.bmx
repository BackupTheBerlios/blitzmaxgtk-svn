Extern
	Function gtk_ruler_set_metric(ruler:Byte Ptr,metric:GtkMetricType)="gtk_ruler_set_metric"
	Function gtk_ruler_set_range(ruler:Byte Ptr,lower:gdouble,upper:gdouble,position:gdouble,max_size:gdouble)="gtk_ruler_set_range"
	Function gtk_ruler_get_metric:GtkMetricType(ruler:Byte Ptr)="gtk_ruler_get_metric"
	Function gtk_ruler_get_range(ruler:Byte Ptr,lower:Byte Ptr,upper:Byte Ptr,position:Byte Ptr,max_size:Byte Ptr)="gtk_ruler_get_range"
End Extern
