gint        (*GtkTreeIterCompareFunc)       (GtkTreeModel *model,GtkTreeIter *a,GtkTreeIter *b,gpointer user_data);
void        gtk_tree_sortable_sort_column_changed(GtkTreeSortable *sortable);
gboolean    gtk_tree_sortable_get_sort_column_id(GtkTreeSortable *sortable,gint *sort_column_id,GtkSortType *order);
void        gtk_tree_sortable_set_sort_column_id(GtkTreeSortable *sortable,gint sort_column_id,GtkSortType order);
void        gtk_tree_sortable_set_sort_func (GtkTreeSortable *sortable,gint sort_column_id,GtkTreeIterCompareFunc sort_func,gpointer user_data,GtkDestroyNotify destroy);
void        gtk_tree_sortable_set_default_sort_func(GtkTreeSortable *sortable,GtkTreeIterCompareFunc sort_func,gpointer user_data,GtkDestroyNotify destroy);
gboolean    gtk_tree_sortable_has_default_sort_func(GtkTreeSortable *sortable);
