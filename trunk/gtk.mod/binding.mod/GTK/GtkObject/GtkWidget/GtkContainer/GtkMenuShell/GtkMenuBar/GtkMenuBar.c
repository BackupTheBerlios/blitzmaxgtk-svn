GtkWidget*  gtk_menu_bar_new                (void);
void        gtk_menu_bar_set_pack_direction (GtkMenuBar *menubar,GtkPackDirection pack_dir);
GtkPackDirection gtk_menu_bar_get_pack_direction(GtkMenuBar *menubar);
void        gtk_menu_bar_set_child_pack_direction(GtkMenuBar *menubar,GtkPackDirection child_pack_dir);
GtkPackDirection gtk_menu_bar_get_child_pack_direction(GtkMenuBar *menubar);
