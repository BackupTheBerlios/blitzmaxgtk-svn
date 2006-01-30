GtkToolItem* gtk_menu_tool_button_new       (GtkWidget *icon_widget,const gchar *label);
GtkToolItem* gtk_menu_tool_button_new_from_stock(const gchar *stock_id);
void        gtk_menu_tool_button_set_menu   (GtkMenuToolButton *button,GtkWidget *menu);
GtkWidget*  gtk_menu_tool_button_get_menu   (GtkMenuToolButton *button);
void        gtk_menu_tool_button_set_arrow_tooltip(GtkMenuToolButton *button,GtkTooltips *tooltips,const gchar *tip_text,const gchar *tip_private);
