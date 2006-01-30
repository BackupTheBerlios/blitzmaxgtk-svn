GtkTreeModel* gtk_tree_model_sort_new_with_model(GtkTreeModel *child_model);
GtkTreeModel* gtk_tree_model_sort_get_model (GtkTreeModelSort *tree_model);
GtkTreePath* gtk_tree_model_sort_convert_child_path_to_path(GtkTreeModelSort *tree_model_sort,GtkTreePath *child_path);
void        gtk_tree_model_sort_convert_child_iter_to_iter(GtkTreeModelSort *tree_model_sort,GtkTreeIter *sort_iter,GtkTreeIter *child_iter);
GtkTreePath* gtk_tree_model_sort_convert_path_to_child_path(GtkTreeModelSort *tree_model_sort,GtkTreePath *sorted_path);
void        gtk_tree_model_sort_convert_iter_to_child_iter(GtkTreeModelSort *tree_model_sort,GtkTreeIter *child_iter,GtkTreeIter *sorted_iter);
void        gtk_tree_model_sort_reset_default_sort_func(GtkTreeModelSort *tree_model_sort);
void        gtk_tree_model_sort_clear_cache (GtkTreeModelSort *tree_model_sort);
gboolean    gtk_tree_model_sort_iter_is_valid(GtkTreeModelSort *tree_model_sort,GtkTreeIter *iter);
