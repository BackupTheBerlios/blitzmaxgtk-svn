gboolean    gtk_tree_drag_source_drag_data_delete(GtkTreeDragSource *drag_source,GtkTreePath *path);
gboolean    gtk_tree_drag_source_drag_data_get(GtkTreeDragSource *drag_source,GtkTreePath *path,GtkSelectionData *selection_data);
gboolean    gtk_tree_drag_source_row_draggable(GtkTreeDragSource *drag_source,GtkTreePath *path);
gboolean    gtk_tree_drag_dest_drag_data_received(GtkTreeDragDest *drag_dest,GtkTreePath *dest,GtkSelectionData *selection_data);
gboolean    gtk_tree_drag_dest_row_drop_possible(GtkTreeDragDest *drag_dest,GtkTreePath *dest_path,GtkSelectionData *selection_data);
gboolean    gtk_tree_set_row_drag_data      (GtkSelectionData *selection_data,GtkTreeModel *tree_model,GtkTreePath *path);
gboolean    gtk_tree_get_row_drag_data      (GtkSelectionData *selection_data,GtkTreeModel **tree_model,GtkTreePath **path);
