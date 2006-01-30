Extern
	Function gtk_curve_new:Byte Ptr()="gtk_curve_new"
	Function gtk_curve_reset(curve:Byte Ptr)="gtk_curve_reset"
	Function gtk_curve_set_gamma(curve:Byte Ptr,gamma_:gfloat)="gtk_curve_set_gamma"
	Function gtk_curve_set_range(curve:Byte Ptr,min_x:gfloat,max_x:gfloat,min_y:gfloat,max_y:gfloat)="gtk_curve_set_range"
	Function gtk_curve_get_vector(curve:Byte Ptr,veclen:int,vector[]:gfloat)="gtk_curve_get_vector"
	Function gtk_curve_set_vector(curve:Byte Ptr,veclen:int,vector[]:gfloat)="gtk_curve_set_vector"
	Function gtk_curve_set_curve_type(curve:Byte Ptr,type:GtkCurveType)="gtk_curve_set_curve_type"
End Extern
