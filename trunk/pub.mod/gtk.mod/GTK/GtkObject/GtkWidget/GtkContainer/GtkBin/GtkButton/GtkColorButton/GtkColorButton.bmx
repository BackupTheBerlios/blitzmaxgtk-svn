Extern
	Function gtk_color_button_new:Byte Ptr()="gtk_color_button_new"
	Function gtk_color_button_new_with_color:Byte Ptr(color:Byte Ptr)="gtk_color_button_new_with_color"
	Function gtk_color_button_set_color(color_button:Byte Ptr,color:Byte Ptr)="gtk_color_button_set_color"
	Function gtk_color_button_get_color(color_button:Byte Ptr,color:Byte Ptr)="gtk_color_button_get_color"
	Function gtk_color_button_set_alpha(color_button:Byte Ptr,alpha:Short)="gtk_color_button_set_alpha"
	Function gtk_color_button_get_alpha:Byte(color_button:Byte Ptr)="gtk_color_button_get_alpha"
	Function gtk_color_button_set_use_alpha(color_button:Byte Ptr,use_alpha:Byte)="gtk_color_button_set_use_alpha"
	Function gtk_color_button_get_use_alpha:Byte(color_button:Byte Ptr)="gtk_color_button_get_use_alpha"
	Function gtk_color_button_set_title(color_button:Byte Ptr,title:Byte Ptr)="gtk_color_button_set_title"
	'Function gchar*:const(color_button:Byte Ptr)="gchar*"
End Extern
