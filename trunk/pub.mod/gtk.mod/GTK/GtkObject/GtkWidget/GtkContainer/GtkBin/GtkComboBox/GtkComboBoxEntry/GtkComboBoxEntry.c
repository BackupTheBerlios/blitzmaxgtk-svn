GtkWidget*  gtk_combo_box_entry_new         (void);
GtkWidget*  gtk_combo_box_entry_new_with_model(GtkTreeModel *model,gint text_column);
GtkWidget*  gtk_combo_box_entry_new_text    (void);
void        gtk_combo_box_entry_set_text_column(GtkComboBoxEntry *entry_box,gint text_column);
gint        gtk_combo_box_entry_get_text_column(GtkComboBoxEntry *entry_box);
