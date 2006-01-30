Extern
	Function ((GtkCellLayout *cell_layout:*GtkCellLayoutDataFunc),cell:Byte Ptr,tree_model:Byte Ptr,iter:Byte Ptr,data);:gpointer)=""
	Function gtk_cell_layout_pack_start(cell_layout:Byte Ptr,cell:Byte Ptr,expand:gboolean)="gtk_cell_layout_pack_start"
	Function gtk_cell_layout_pack_end(cell_layout:Byte Ptr,cell:Byte Ptr,expand:gboolean)="gtk_cell_layout_pack_end"
	Function gtk_cell_layout_reorder(cell_layout:Byte Ptr,cell:Byte Ptr,position:gint)="gtk_cell_layout_reorder"
	Function gtk_cell_layout_clear(cell_layout:Byte Ptr)="gtk_cell_layout_clear"
	Function gtk_cell_layout_add_attribute(cell_layout:Byte Ptr,cell:Byte Ptr,attribute:Byte Ptr,column:gint)="gtk_cell_layout_add_attribute"
	Function gtk_cell_layout_set_cell_data_func(cell_layout:Byte Ptr,cell:Byte Ptr,func:GtkCellLayoutDataFunc,func_data:gpointer,destroy:GDestroyNotify)="gtk_cell_layout_set_cell_data_func"
	Function gtk_cell_layout_clear_attributes(cell_layout:Byte Ptr,cell:Byte Ptr)="gtk_cell_layout_clear_attributes"
End Extern
