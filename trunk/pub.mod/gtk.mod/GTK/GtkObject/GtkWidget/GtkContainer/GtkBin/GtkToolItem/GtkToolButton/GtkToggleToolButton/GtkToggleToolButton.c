GtkToolItem* gtk_toggle_tool_button_new     (void);
GtkToolItem* gtk_toggle_tool_button_new_from_stock(const gchar *stock_id);
void        gtk_toggle_tool_button_set_active(GtkToggleToolButton *button,gboolean is_active);
gboolean    gtk_toggle_tool_button_get_active(GtkToggleToolButton *button);
