GtkWidget*  gtk_radio_menu_item_new         (GSList *group);
GtkWidget*  gtk_radio_menu_item_new_with_label(GSList *group,const gchar *label);
GtkWidget*  gtk_radio_menu_item_new_with_mnemonic(GSList *group,const gchar *label);
GtkWidget*  gtk_radio_menu_item_new_from_widget(GtkRadioMenuItem *group);
GtkWidget*  gtk_radio_menu_item_new_with_label_from_widget(GtkRadioMenuItem *group,const gchar *label);
GtkWidget*  gtk_radio_menu_item_new_with_mnemonic_from_widget(GtkRadioMenuItem *group,const gchar *label);
void        gtk_radio_menu_item_set_group   (GtkRadioMenuItem *radio_menu_item,GSList *group);
GSList*     gtk_radio_menu_item_get_group   (GtkRadioMenuItem *radio_menu_item);
