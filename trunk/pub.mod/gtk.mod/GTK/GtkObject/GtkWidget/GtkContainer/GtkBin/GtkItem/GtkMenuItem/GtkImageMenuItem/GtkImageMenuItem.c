void        gtk_image_menu_item_set_image   (GtkImageMenuItem *image_menu_item,GtkWidget *image);
GtkWidget*  gtk_image_menu_item_get_image   (GtkImageMenuItem *image_menu_item);
GtkWidget*  gtk_image_menu_item_new         (void);
GtkWidget*  gtk_image_menu_item_new_from_stock(const gchar *stock_id,GtkAccelGroup *accel_group);
GtkWidget*  gtk_image_menu_item_new_with_label(const gchar *label);
GtkWidget*  gtk_image_menu_item_new_with_mnemonic(const gchar *label);
