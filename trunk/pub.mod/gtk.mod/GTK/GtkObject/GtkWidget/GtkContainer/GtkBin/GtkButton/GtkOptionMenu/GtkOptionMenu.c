GtkWidget*  gtk_option_menu_new             (void);
GtkWidget*  gtk_option_menu_get_menu        (GtkOptionMenu *option_menu);
void        gtk_option_menu_set_menu        (GtkOptionMenu *option_menu,GtkWidget *menu);
void        gtk_option_menu_remove_menu     (GtkOptionMenu *option_menu);
void        gtk_option_menu_set_history     (GtkOptionMenu *option_menu,guint index_);
gint        gtk_option_menu_get_history     (GtkOptionMenu *option_menu);
