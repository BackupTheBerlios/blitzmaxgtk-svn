gboolean    (*GtkTreeModelForeachFunc)      (GtkTreeModel *model,GtkTreePath *path,GtkTreeIter *iter,gpointer data);
GtkTreePath* gtk_tree_path_new              (void);
GtkTreePath* gtk_tree_path_new_from_string  (const gchar *path);
GtkTreePath* gtk_tree_path_new_from_indices (gint first_index,...);
gchar*      gtk_tree_path_to_string         (GtkTreePath *path);
GtkTreePath* gtk_tree_path_new_first        (void);
void        gtk_tree_path_append_index      (GtkTreePath *path,gint index_);
void        gtk_tree_path_prepend_index     (GtkTreePath *path,gint index_);
gint        gtk_tree_path_get_depth         (GtkTreePath *path);
gint*       gtk_tree_path_get_indices       (GtkTreePath *path);
void        gtk_tree_path_free              (GtkTreePath *path);
GtkTreePath* gtk_tree_path_copy             (const GtkTreePath *path);
gint        gtk_tree_path_compare           (const GtkTreePath *a,const GtkTreePath *b);
void        gtk_tree_path_next              (GtkTreePath *path);
gboolean    gtk_tree_path_prev              (GtkTreePath *path);
gboolean    gtk_tree_path_up                (GtkTreePath *path);
void        gtk_tree_path_down              (GtkTreePath *path);
gboolean    gtk_tree_path_is_ancestor       (GtkTreePath *path,GtkTreePath *descendant);
gboolean    gtk_tree_path_is_descendant     (GtkTreePath *path,GtkTreePath *ancestor);
GtkTreeRowReference* gtk_tree_row_reference_new(GtkTreeModel *model,GtkTreePath *path);
GtkTreeRowReference* gtk_tree_row_reference_new_proxy(GObject *proxy,GtkTreeModel *model,GtkTreePath *path);
GtkTreeModel* gtk_tree_row_reference_get_model(GtkTreeRowReference *reference);
GtkTreePath* gtk_tree_row_reference_get_path(GtkTreeRowReference *reference);
gboolean    gtk_tree_row_reference_valid    (GtkTreeRowReference *reference);
void        gtk_tree_row_reference_free     (GtkTreeRowReference *reference);
GtkTreeRowReference* gtk_tree_row_reference_copy(GtkTreeRowReference *reference);
void        gtk_tree_row_reference_inserted (GObject *proxy,GtkTreePath *path);
void        gtk_tree_row_reference_deleted  (GObject *proxy,GtkTreePath *path);
void        gtk_tree_row_reference_reordered(GObject *proxy,GtkTreePath *path,GtkTreeIter *iter,gint *new_order);
GtkTreeIter* gtk_tree_iter_copy             (GtkTreeIter *iter);
void        gtk_tree_iter_free              (GtkTreeIter *iter);
GtkTreeModelFlags gtk_tree_model_get_flags  (GtkTreeModel *tree_model);
gint        gtk_tree_model_get_n_columns    (GtkTreeModel *tree_model);
GType       gtk_tree_model_get_column_type  (GtkTreeModel *tree_model,gint index_);
gboolean    gtk_tree_model_get_iter         (GtkTreeModel *tree_model,GtkTreeIter *iter,GtkTreePath *path);
gboolean    gtk_tree_model_get_iter_from_string(GtkTreeModel *tree_model,GtkTreeIter *iter,const gchar *path_string);
gboolean    gtk_tree_model_get_iter_first   (GtkTreeModel *tree_model,GtkTreeIter *iter);
GtkTreePath* gtk_tree_model_get_path        (GtkTreeModel *tree_model,GtkTreeIter *iter);
void        gtk_tree_model_get_value        (GtkTreeModel *tree_model,GtkTreeIter *iter,gint column,GValue *value);
gboolean    gtk_tree_model_iter_next        (GtkTreeModel *tree_model,GtkTreeIter *iter);
gboolean    gtk_tree_model_iter_children    (GtkTreeModel *tree_model,GtkTreeIter *iter,GtkTreeIter *parent);
gboolean    gtk_tree_model_iter_has_child   (GtkTreeModel *tree_model,GtkTreeIter *iter);
gint        gtk_tree_model_iter_n_children  (GtkTreeModel *tree_model,GtkTreeIter *iter);
gboolean    gtk_tree_model_iter_nth_child   (GtkTreeModel *tree_model,GtkTreeIter *iter,GtkTreeIter *parent,gint n);
gboolean    gtk_tree_model_iter_parent      (GtkTreeModel *tree_model,GtkTreeIter *iter,GtkTreeIter *child);
gchar*      gtk_tree_model_get_string_from_iter(GtkTreeModel *tree_model,GtkTreeIter *iter);
void        gtk_tree_model_ref_node         (GtkTreeModel *tree_model,GtkTreeIter *iter);
void        gtk_tree_model_unref_node       (GtkTreeModel *tree_model,GtkTreeIter *iter);
void        gtk_tree_model_get              (GtkTreeModel *tree_model,GtkTreeIter *iter,...);
void        gtk_tree_model_get_valist       (GtkTreeModel *tree_model,GtkTreeIter *iter,va_list var_args);
void        gtk_tree_model_foreach          (GtkTreeModel *model,GtkTreeModelForeachFunc func,gpointer user_data);
void        gtk_tree_model_row_changed      (GtkTreeModel *tree_model,GtkTreePath *path,GtkTreeIter *iter);
void        gtk_tree_model_row_inserted     (GtkTreeModel *tree_model,GtkTreePath *path,GtkTreeIter *iter);
void        gtk_tree_model_row_has_child_toggled(GtkTreeModel *tree_model,GtkTreePath *path,GtkTreeIter *iter);
void        gtk_tree_model_row_deleted      (GtkTreeModel *tree_model,GtkTreePath *path);
void        gtk_tree_model_rows_reordered   (GtkTreeModel *tree_model,GtkTreePath *path,GtkTreeIter *iter,gint *new_order);
