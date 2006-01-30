void        (*GtkCellLayoutDataFunc)        (GtkCellLayout *cell_layout,GtkCellRenderer *cell,GtkTreeModel *tree_model,GtkTreeIter *iter,gpointer data);
void        gtk_cell_layout_pack_start      (GtkCellLayout *cell_layout,GtkCellRenderer *cell,gboolean expand);
void        gtk_cell_layout_pack_end        (GtkCellLayout *cell_layout,GtkCellRenderer *cell,gboolean expand);
void        gtk_cell_layout_reorder         (GtkCellLayout *cell_layout,GtkCellRenderer *cell,gint position);
void        gtk_cell_layout_clear           (GtkCellLayout *cell_layout);
void        gtk_cell_layout_set_attributes  (GtkCellLayout *cell_layout,GtkCellRenderer *cell,...);
void        gtk_cell_layout_add_attribute   (GtkCellLayout *cell_layout,GtkCellRenderer *cell,const gchar *attribute,gint column);
void        gtk_cell_layout_set_cell_data_func(GtkCellLayout *cell_layout,GtkCellRenderer *cell,GtkCellLayoutDataFunc func,gpointer func_data,GDestroyNotify destroy);
void        gtk_cell_layout_clear_attributes(GtkCellLayout *cell_layout,GtkCellRenderer *cell);
