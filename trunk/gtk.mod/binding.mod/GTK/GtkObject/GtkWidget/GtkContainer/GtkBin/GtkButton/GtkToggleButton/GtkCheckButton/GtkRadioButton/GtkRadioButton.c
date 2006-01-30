GtkWidget*  gtk_radio_button_new            (GSList *group);
GtkWidget*  gtk_radio_button_new_from_widget(GtkRadioButton *group);
GtkWidget*  gtk_radio_button_new_with_label (GSList *group,const gchar *label);
GtkWidget*  gtk_radio_button_new_with_label_from_widget(GtkRadioButton *group,const gchar *label);
GtkWidget*  gtk_radio_button_new_with_mnemonic(GSList *group,const gchar *label);
GtkWidget*  gtk_radio_button_new_with_mnemonic_from_widget(GtkRadioButton *group,const gchar *label);
void        gtk_radio_button_set_group      (GtkRadioButton *radio_button,GSList *group);
GSList*     gtk_radio_button_get_group      (GtkRadioButton *radio_button);
