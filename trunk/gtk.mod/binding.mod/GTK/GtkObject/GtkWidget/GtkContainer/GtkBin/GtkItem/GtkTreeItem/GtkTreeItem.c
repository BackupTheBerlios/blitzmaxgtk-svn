GtkWidget*  gtk_tree_item_new               (void);
GtkWidget*  gtk_tree_item_new_with_label    (const gchar *label);
void        gtk_tree_item_set_subtree       (GtkTreeItem *tree_item,GtkWidget *subtree);
void        gtk_tree_item_remove_subtree    (GtkTreeItem *tree_item);
void        gtk_tree_item_select            (GtkTreeItem *tree_item);
void        gtk_tree_item_deselect          (GtkTreeItem *tree_item);
void        gtk_tree_item_expand            (GtkTreeItem *tree_item);
void        gtk_tree_item_collapse          (GtkTreeItem *tree_item);
