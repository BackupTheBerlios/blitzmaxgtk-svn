Extern
	Function :gboolean((GtkTreeModel *model:*GtkTreeModelForeachFunc),path:Byte Ptr,iter:Byte Ptr,data);:gpointer)=""
	Function gtk_tree_path_new:Byte Ptr()="gtk_tree_path_new"
	Function gtk_tree_path_new_from_string:Byte Ptr(path:Byte Ptr)="gtk_tree_path_new_from_string"
	Function gtk_tree_path_to_string:Byte Ptr(path:Byte Ptr)="gtk_tree_path_to_string"
	Function gtk_tree_path_new_first:Byte Ptr()="gtk_tree_path_new_first"
	Function gtk_tree_path_append_index(path:Byte Ptr,index_:gint)="gtk_tree_path_append_index"
	Function gtk_tree_path_prepend_index(path:Byte Ptr,index_:gint)="gtk_tree_path_prepend_index"
	Function gtk_tree_path_get_depth:gint(path:Byte Ptr)="gtk_tree_path_get_depth"
	Function gtk_tree_path_get_indices:Byte Ptr(path:Byte Ptr)="gtk_tree_path_get_indices"
	Function gtk_tree_path_free(path:Byte Ptr)="gtk_tree_path_free"
	Function gtk_tree_path_copy:Byte Ptr(path:Byte Ptr)="gtk_tree_path_copy"
	Function gtk_tree_path_compare:gint(a:Byte Ptr,b:Byte Ptr)="gtk_tree_path_compare"
	Function gtk_tree_path_next(path:Byte Ptr)="gtk_tree_path_next"
	Function gtk_tree_path_prev:gboolean(path:Byte Ptr)="gtk_tree_path_prev"
	Function gtk_tree_path_up:gboolean(path:Byte Ptr)="gtk_tree_path_up"
	Function gtk_tree_path_down(path:Byte Ptr)="gtk_tree_path_down"
	Function gtk_tree_path_is_ancestor:gboolean(path:Byte Ptr,descendant:Byte Ptr)="gtk_tree_path_is_ancestor"
	Function gtk_tree_path_is_descendant:gboolean(path:Byte Ptr,ancestor:Byte Ptr)="gtk_tree_path_is_descendant"
	Function gtk_tree_row_reference_new:Byte Ptr(model:Byte Ptr,path:Byte Ptr)="gtk_tree_row_reference_new"
	Function gtk_tree_row_reference_new_proxy:Byte Ptr(proxy:Byte Ptr,model:Byte Ptr,path:Byte Ptr)="gtk_tree_row_reference_new_proxy"
	Function gtk_tree_row_reference_get_model:Byte Ptr(reference:Byte Ptr)="gtk_tree_row_reference_get_model"
	Function gtk_tree_row_reference_get_path:Byte Ptr(reference:Byte Ptr)="gtk_tree_row_reference_get_path"
	Function gtk_tree_row_reference_valid:gboolean(reference:Byte Ptr)="gtk_tree_row_reference_valid"
	Function gtk_tree_row_reference_free(reference:Byte Ptr)="gtk_tree_row_reference_free"
	Function gtk_tree_row_reference_copy:Byte Ptr(reference:Byte Ptr)="gtk_tree_row_reference_copy"
	Function gtk_tree_row_reference_inserted(proxy:Byte Ptr,path:Byte Ptr)="gtk_tree_row_reference_inserted"
	Function gtk_tree_row_reference_deleted(proxy:Byte Ptr,path:Byte Ptr)="gtk_tree_row_reference_deleted"
	Function gtk_tree_row_reference_reordered(proxy:Byte Ptr,path:Byte Ptr,iter:Byte Ptr,new_order:Byte Ptr)="gtk_tree_row_reference_reordered"
	Function gtk_tree_iter_copy:Byte Ptr(iter:Byte Ptr)="gtk_tree_iter_copy"
	Function gtk_tree_iter_free(iter:Byte Ptr)="gtk_tree_iter_free"
	Function gtk_tree_model_get_flags:GtkTreeModelFlags(tree_model:Byte Ptr)="gtk_tree_model_get_flags"
	Function gtk_tree_model_get_n_columns:gint(tree_model:Byte Ptr)="gtk_tree_model_get_n_columns"
	Function gtk_tree_model_get_column_type:GType(tree_model:Byte Ptr,index_:gint)="gtk_tree_model_get_column_type"
	Function gtk_tree_model_get_iter:gboolean(tree_model:Byte Ptr,iter:Byte Ptr,path:Byte Ptr)="gtk_tree_model_get_iter"
	Function gtk_tree_model_get_iter_from_string:gboolean(tree_model:Byte Ptr,iter:Byte Ptr,path_string:Byte Ptr)="gtk_tree_model_get_iter_from_string"
	Function gtk_tree_model_get_iter_first:gboolean(tree_model:Byte Ptr,iter:Byte Ptr)="gtk_tree_model_get_iter_first"
	Function gtk_tree_model_get_path:Byte Ptr(tree_model:Byte Ptr,iter:Byte Ptr)="gtk_tree_model_get_path"
	Function gtk_tree_model_get_value(tree_model:Byte Ptr,iter:Byte Ptr,column:gint,value:Byte Ptr)="gtk_tree_model_get_value"
	Function gtk_tree_model_iter_next:gboolean(tree_model:Byte Ptr,iter:Byte Ptr)="gtk_tree_model_iter_next"
	Function gtk_tree_model_iter_children:gboolean(tree_model:Byte Ptr,iter:Byte Ptr,parent:Byte Ptr)="gtk_tree_model_iter_children"
	Function gtk_tree_model_iter_has_child:gboolean(tree_model:Byte Ptr,iter:Byte Ptr)="gtk_tree_model_iter_has_child"
	Function gtk_tree_model_iter_n_children:gint(tree_model:Byte Ptr,iter:Byte Ptr)="gtk_tree_model_iter_n_children"
	Function gtk_tree_model_iter_nth_child:gboolean(tree_model:Byte Ptr,iter:Byte Ptr,parent:Byte Ptr,n:gint)="gtk_tree_model_iter_nth_child"
	Function gtk_tree_model_iter_parent:gboolean(tree_model:Byte Ptr,iter:Byte Ptr,child:Byte Ptr)="gtk_tree_model_iter_parent"
	Function gtk_tree_model_get_string_from_iter:Byte Ptr(tree_model:Byte Ptr,iter:Byte Ptr)="gtk_tree_model_get_string_from_iter"
	Function gtk_tree_model_ref_node(tree_model:Byte Ptr,iter:Byte Ptr)="gtk_tree_model_ref_node"
	Function gtk_tree_model_unref_node(tree_model:Byte Ptr,iter:Byte Ptr)="gtk_tree_model_unref_node"
	Function gtk_tree_model_get_valist(tree_model:Byte Ptr,iter:Byte Ptr,var_args:va_list)="gtk_tree_model_get_valist"
	Function gtk_tree_model_foreach(model:Byte Ptr,func:GtkTreeModelForeachFunc,user_data:gpointer)="gtk_tree_model_foreach"
	Function gtk_tree_model_row_changed(tree_model:Byte Ptr,path:Byte Ptr,iter:Byte Ptr)="gtk_tree_model_row_changed"
	Function gtk_tree_model_row_inserted(tree_model:Byte Ptr,path:Byte Ptr,iter:Byte Ptr)="gtk_tree_model_row_inserted"
	Function gtk_tree_model_row_has_child_toggled(tree_model:Byte Ptr,path:Byte Ptr,iter:Byte Ptr)="gtk_tree_model_row_has_child_toggled"
	Function gtk_tree_model_row_deleted(tree_model:Byte Ptr,path:Byte Ptr)="gtk_tree_model_row_deleted"
	Function gtk_tree_model_rows_reordered(tree_model:Byte Ptr,path:Byte Ptr,iter:Byte Ptr,new_order:Byte Ptr)="gtk_tree_model_rows_reordered"
End Extern
