GtkToolItem* gtk_radio_tool_button_new      (GSList *group);
GtkToolItem* gtk_radio_tool_button_new_from_stock(GSList *group,const gchar *stock_id);
GtkToolItem* gtk_radio_tool_button_new_from_widget(GtkRadioToolButton *group);
GtkToolItem* gtk_radio_tool_button_new_with_stock_from_widget(GtkRadioToolButton *group,const gchar *stock_id);
GSList*     gtk_radio_tool_button_get_group (GtkRadioToolButton *button);
void        gtk_radio_tool_button_set_group (GtkRadioToolButton *button,GSList *group);
