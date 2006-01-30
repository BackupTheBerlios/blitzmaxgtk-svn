Extern
	Function gtk_tree_drag_source_drag_data_delete:gboolean(drag_source:Byte Ptr,path:Byte Ptr)="gtk_tree_drag_source_drag_data_delete"
	Function gtk_tree_drag_source_drag_data_get:gboolean(drag_source:Byte Ptr,path:Byte Ptr,selection_data:Byte Ptr)="gtk_tree_drag_source_drag_data_get"
	Function gtk_tree_drag_source_row_draggable:gboolean(drag_source:Byte Ptr,path:Byte Ptr)="gtk_tree_drag_source_row_draggable"
	Function gtk_tree_drag_dest_drag_data_received:gboolean(drag_dest:Byte Ptr,dest:Byte Ptr,selection_data:Byte Ptr)="gtk_tree_drag_dest_drag_data_received"
	Function gtk_tree_drag_dest_row_drop_possible:gboolean(drag_dest:Byte Ptr,dest_path:Byte Ptr,selection_data:Byte Ptr)="gtk_tree_drag_dest_row_drop_possible"
	Function gtk_tree_set_row_drag_data:gboolean(selection_data:Byte Ptr,tree_model:Byte Ptr,path:Byte Ptr)="gtk_tree_set_row_drag_data"
	Function gtk_tree_get_row_drag_data:gboolean(selection_data:Byte Ptr,*tree_model:Byte Ptr,*path:Byte Ptr)="gtk_tree_get_row_drag_data"
End Extern
