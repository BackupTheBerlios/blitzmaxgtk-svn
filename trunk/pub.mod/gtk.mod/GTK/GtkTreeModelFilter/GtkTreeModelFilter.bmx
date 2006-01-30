Extern
	Function :gboolean(model:Byte Ptr,iter:Byte Ptr,data);:gpointer)=""
	Function ((GtkTreeModel *model:*GtkTreeModelFilterModifyFunc),iter:Byte Ptr,value:Byte Ptr,column:gint,data);:gpointer)=""
	Function gtk_tree_model_filter_new:Byte Ptr(child_model:Byte Ptr,root:Byte Ptr)="gtk_tree_model_filter_new"
	Function gtk_tree_model_filter_set_visible_func(filter:Byte Ptr,func:GtkTreeModelFilterVisibleFunc,data:gpointer,destroy:GtkDestroyNotify)="gtk_tree_model_filter_set_visible_func"
	Function gtk_tree_model_filter_set_modify_func(filter:Byte Ptr,n_columns:gint,types:Byte Ptr,func:GtkTreeModelFilterModifyFunc,data:gpointer,destroy:GtkDestroyNotify)="gtk_tree_model_filter_set_modify_func"
	Function gtk_tree_model_filter_set_visible_column(filter:Byte Ptr,column:gint)="gtk_tree_model_filter_set_visible_column"
	Function gtk_tree_model_filter_get_model:Byte Ptr(filter:Byte Ptr)="gtk_tree_model_filter_get_model"
	Function gtk_tree_model_filter_convert_child_iter_to_iter(filter:Byte Ptr,filter_iter:Byte Ptr,child_iter:Byte Ptr)="gtk_tree_model_filter_convert_child_iter_to_iter"
	Function gtk_tree_model_filter_convert_iter_to_child_iter(filter:Byte Ptr,child_iter:Byte Ptr,filter_iter:Byte Ptr)="gtk_tree_model_filter_convert_iter_to_child_iter"
	Function gtk_tree_model_filter_convert_child_path_to_path:Byte Ptr(filter:Byte Ptr,child_path:Byte Ptr)="gtk_tree_model_filter_convert_child_path_to_path"
	Function gtk_tree_model_filter_convert_path_to_child_path:Byte Ptr(filter:Byte Ptr,filter_path:Byte Ptr)="gtk_tree_model_filter_convert_path_to_child_path"
	Function gtk_tree_model_filter_refilter(filter:Byte Ptr)="gtk_tree_model_filter_refilter"
	Function gtk_tree_model_filter_clear_cache(filter:Byte Ptr)="gtk_tree_model_filter_clear_cache"
End Extern
