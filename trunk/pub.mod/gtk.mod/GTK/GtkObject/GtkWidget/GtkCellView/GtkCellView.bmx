Extern
	Function gtk_cell_view_new:Byte Ptr()="gtk_cell_view_new"
	Function gtk_cell_view_new_with_text:Byte Ptr(text:Byte Ptr)="gtk_cell_view_new_with_text"
	Function gtk_cell_view_new_with_markup:Byte Ptr(markup:Byte Ptr)="gtk_cell_view_new_with_markup"
	Function gtk_cell_view_new_with_pixbuf:Byte Ptr(pixbuf:Byte Ptr)="gtk_cell_view_new_with_pixbuf"
	Function gtk_cell_view_set_model(cell_view:Byte Ptr,model:Byte Ptr)="gtk_cell_view_set_model"
	Function gtk_cell_view_set_displayed_row(cell_view:Byte Ptr,path:Byte Ptr)="gtk_cell_view_set_displayed_row"
	Function gtk_cell_view_get_displayed_row:Byte Ptr(cell_view:Byte Ptr)="gtk_cell_view_get_displayed_row"
	Function gtk_cell_view_get_size_of_row:gboolean(cell_view:Byte Ptr,path:Byte Ptr,requisition:Byte Ptr)="gtk_cell_view_get_size_of_row"
	Function gtk_cell_view_set_background_color(cell_view:Byte Ptr,color:Byte Ptr)="gtk_cell_view_set_background_color"
	Function gtk_cell_view_get_cell_renderers:Byte Ptr(cell_view:Byte Ptr)="gtk_cell_view_get_cell_renderers"
End Extern
