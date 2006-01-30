Extern
	Function :gint((GtkTreeModel *model:*GtkTreeIterCompareFunc),a:Byte Ptr,b:Byte Ptr,user_data);:gpointer)=""
	Function gtk_tree_sortable_sort_column_changed(sortable:Byte Ptr)="gtk_tree_sortable_sort_column_changed"
	Function gtk_tree_sortable_get_sort_column_id:gboolean(sortable:Byte Ptr,sort_column_id:Byte Ptr,order:Byte Ptr)="gtk_tree_sortable_get_sort_column_id"
	Function gtk_tree_sortable_set_sort_column_id(sortable:Byte Ptr,sort_column_id:gint,order:GtkSortType)="gtk_tree_sortable_set_sort_column_id"
	Function gtk_tree_sortable_set_sort_func(sortable:Byte Ptr,sort_column_id:gint,sort_func:GtkTreeIterCompareFunc,user_data:gpointer,destroy:GtkDestroyNotify)="gtk_tree_sortable_set_sort_func"
	Function gtk_tree_sortable_set_default_sort_func(sortable:Byte Ptr,sort_func:GtkTreeIterCompareFunc,user_data:gpointer,destroy:GtkDestroyNotify)="gtk_tree_sortable_set_default_sort_func"
	Function gtk_tree_sortable_has_default_sort_func:gboolean(sortable:Byte Ptr)="gtk_tree_sortable_has_default_sort_func"
End Extern
