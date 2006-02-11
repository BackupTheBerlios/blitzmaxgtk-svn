Extern
	Function gtk_file_selection_new:Byte Ptr(title:Byte Ptr)="gtk_file_selection_new"
	Function gtk_file_selection_set_filename(filesel:Byte Ptr,filename:Byte Ptr)="gtk_file_selection_set_filename"
	Function gtk_file_selection_get_filename:Byte Ptr(filesel:Byte Ptr)="gtk_file_selection_get_filename"
	Function gtk_file_selection_complete(filesel:Byte Ptr,pattern:Byte Ptr)="gtk_file_selection_complete"
	Function gtk_file_selection_show_fileop_buttons(filesel:Byte Ptr)="gtk_file_selection_show_fileop_buttons"
	Function gtk_file_selection_hide_fileop_buttons(filesel:Byte Ptr)="gtk_file_selection_hide_fileop_buttons"
	Function gtk_file_selection_get_selections:Byte Ptr(filesel:Byte Ptr)="gtk_file_selection_get_selections"
	Function gtk_file_selection_set_select_multiple(filesel:Byte Ptr,select_multiple:Byte)="gtk_file_selection_set_select_multiple"
	Function gtk_file_selection_get_select_multiple:Byte(filesel:Byte Ptr)="gtk_file_selection_get_select_multiple"
End Extern
