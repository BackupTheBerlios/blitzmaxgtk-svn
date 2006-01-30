GtkButtonBoxStyle gtk_button_box_get_layout (GtkButtonBox *widget);
void        gtk_button_box_get_child_size   (GtkButtonBox *widget,gint *min_width,gint *min_height);
void        gtk_button_box_get_child_ipadding(GtkButtonBox *widget,gint *ipad_x,gint *ipad_y);
gboolean    gtk_button_box_get_child_secondary(GtkButtonBox *widget,GtkWidget *child);
void        gtk_button_box_set_layout       (GtkButtonBox *widget,GtkButtonBoxStyle layout_style);
void        gtk_button_box_set_child_size   (GtkButtonBox *widget,gint min_width,gint min_height);
void        gtk_button_box_set_child_ipadding(GtkButtonBox *widget,gint ipad_x,gint ipad_y);
void        gtk_button_box_set_child_secondary(GtkButtonBox *widget,GtkWidget *child,gboolean is_secondary);
