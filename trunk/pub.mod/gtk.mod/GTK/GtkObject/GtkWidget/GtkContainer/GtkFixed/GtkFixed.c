GtkWidget*  gtk_fixed_new                   (void);
void        gtk_fixed_put                   (GtkFixed *fixed,GtkWidget *widget,gint x,gint y);
void        gtk_fixed_move                  (GtkFixed *fixed,GtkWidget *widget,gint x,gint y);
gboolean    gtk_fixed_get_has_window        (GtkFixed *fixed);
void        gtk_fixed_set_has_window        (GtkFixed *fixed,gboolean has_window);
