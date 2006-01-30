Extern
	Function gtk_tree_item_new:Byte Ptr()="gtk_tree_item_new"
	Function gtk_tree_item_new_with_label:Byte Ptr(label:Byte Ptr)="gtk_tree_item_new_with_label"
	Function gtk_tree_item_set_subtree(tree_item:Byte Ptr,subtree:Byte Ptr)="gtk_tree_item_set_subtree"
	Function gtk_tree_item_remove_subtree(tree_item:Byte Ptr)="gtk_tree_item_remove_subtree"
	Function gtk_tree_item_select(tree_item:Byte Ptr)="gtk_tree_item_select"
	Function gtk_tree_item_deselect(tree_item:Byte Ptr)="gtk_tree_item_deselect"
	Function gtk_tree_item_expand(tree_item:Byte Ptr)="gtk_tree_item_expand"
	Function gtk_tree_item_collapse(tree_item:Byte Ptr)="gtk_tree_item_collapse"
End Extern
