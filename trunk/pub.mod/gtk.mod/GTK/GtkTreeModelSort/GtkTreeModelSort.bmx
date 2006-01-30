Extern
	Function gtk_tree_model_sort_new_with_model:Byte Ptr(child_model:Byte Ptr)="gtk_tree_model_sort_new_with_model"
	Function gtk_tree_model_sort_get_model:Byte Ptr(tree_model:Byte Ptr)="gtk_tree_model_sort_get_model"
	Function gtk_tree_model_sort_convert_child_path_to_path:Byte Ptr(tree_model_sort:Byte Ptr,child_path:Byte Ptr)="gtk_tree_model_sort_convert_child_path_to_path"
	Function gtk_tree_model_sort_convert_child_iter_to_iter(tree_model_sort:Byte Ptr,sort_iter:Byte Ptr,child_iter:Byte Ptr)="gtk_tree_model_sort_convert_child_iter_to_iter"
	Function gtk_tree_model_sort_convert_path_to_child_path:Byte Ptr(tree_model_sort:Byte Ptr,sorted_path:Byte Ptr)="gtk_tree_model_sort_convert_path_to_child_path"
	Function gtk_tree_model_sort_convert_iter_to_child_iter(tree_model_sort:Byte Ptr,child_iter:Byte Ptr,sorted_iter:Byte Ptr)="gtk_tree_model_sort_convert_iter_to_child_iter"
	Function gtk_tree_model_sort_reset_default_sort_func(tree_model_sort:Byte Ptr)="gtk_tree_model_sort_reset_default_sort_func"
	Function gtk_tree_model_sort_clear_cache(tree_model_sort:Byte Ptr)="gtk_tree_model_sort_clear_cache"
	Function gtk_tree_model_sort_iter_is_valid:gboolean(tree_model_sort:Byte Ptr,iter:Byte Ptr)="gtk_tree_model_sort_iter_is_valid"
End Extern
