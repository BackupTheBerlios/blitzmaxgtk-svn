GtkWidget*  gtk_tree_new                    (void);
void        gtk_tree_append                 (GtkTree *tree,GtkWidget *tree_item);
void        gtk_tree_prepend                (GtkTree *tree,GtkWidget *tree_item);
void        gtk_tree_insert                 (GtkTree *tree,GtkWidget *tree_item,gint position);
void        gtk_tree_remove_items           (GtkTree *tree,GList *items);
void        gtk_tree_clear_items            (GtkTree *tree,gint start,gint end);
void        gtk_tree_select_item            (GtkTree *tree,gint item);
void        gtk_tree_unselect_item          (GtkTree *tree,gint item);
void        gtk_tree_select_child           (GtkTree *tree,GtkWidget *tree_item);
void        gtk_tree_unselect_child         (GtkTree *tree,GtkWidget *tree_item);
gint        gtk_tree_child_position         (GtkTree *tree,GtkWidget *child);
void        gtk_tree_set_selection_mode     (GtkTree *tree,GtkSelectionMode mode);
void        gtk_tree_set_view_mode          (GtkTree *tree,GtkTreeViewMode mode);
void        gtk_tree_set_view_lines         (GtkTree *tree,gboolean flag);
void        gtk_tree_remove_item            (GtkTree *tree,GtkWidget *child);