Extern
	Function gtk_font_button_new:Byte Ptr()="gtk_font_button_new"
	Function gtk_font_button_new_with_font:Byte Ptr(fontname:Byte Ptr)="gtk_font_button_new_with_font"
	Function gtk_font_button_set_font_name:Byte(font_button:Byte Ptr,fontname:Byte Ptr)="gtk_font_button_set_font_name"
	Function gtk_font_button_get_font_name:Byte Ptr(font_button:Byte Ptr)="gtk_font_button_set_font_name"
	Function gtk_font_button_set_show_style(font_button:Byte Ptr,show_style:Byte)="gtk_font_button_set_show_style"
	Function gtk_font_button_get_show_style:Byte(font_button:Byte Ptr)="gtk_font_button_get_show_style"
	Function gtk_font_button_set_show_size(font_button:Byte Ptr,show_size:Byte)="gtk_font_button_set_show_size"
	Function gtk_font_button_get_show_size:Byte(font_button:Byte Ptr)="gtk_font_button_get_show_size"
	Function gtk_font_button_set_use_font(font_button:Byte Ptr,use_font:Byte)="gtk_font_button_set_use_font"
	Function gtk_font_button_get_use_font:Byte(font_button:Byte Ptr)="gtk_font_button_get_use_font"
	Function gtk_font_button_set_use_size(font_button:Byte Ptr,use_size:Byte)="gtk_font_button_set_use_size"
	Function gtk_font_button_get_use_size:Byte(font_button:Byte Ptr)="gtk_font_button_get_use_size"
	Function gtk_font_button_set_title(font_button:Byte Ptr,title:Byte Ptr)="gtk_font_button_set_title"
	Function gtk_font_button_get_title:Byte Ptr(font_button:Byte Ptr)="gtk_font_button_get_title"
End Extern