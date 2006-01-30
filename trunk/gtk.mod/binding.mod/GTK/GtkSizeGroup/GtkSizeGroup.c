GtkSizeGroup* gtk_size_group_new            (GtkSizeGroupMode mode);
void        gtk_size_group_set_mode         (GtkSizeGroup *size_group,GtkSizeGroupMode mode);
GtkSizeGroupMode gtk_size_group_get_mode    (GtkSizeGroup *size_group);
void        gtk_size_group_set_ignore_hidden(GtkSizeGroup *size_group,gboolean ignore_hidden);
gboolean    gtk_size_group_get_ignore_hidden(GtkSizeGroup *size_group);
void        gtk_size_group_add_widget       (GtkSizeGroup *size_group,GtkWidget *widget);
void        gtk_size_group_remove_widget    (GtkSizeGroup *size_group,GtkWidget *widget);
