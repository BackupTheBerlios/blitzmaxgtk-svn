GtkToggleAction* gtk_toggle_action_new      (const gchar *name,const gchar *label,const gchar *tooltip,const gchar *stock_id);
void        gtk_toggle_action_toggled       (GtkToggleAction *action);
void        gtk_toggle_action_set_active    (GtkToggleAction *action,gboolean is_active);
gboolean    gtk_toggle_action_get_active    (GtkToggleAction *action);
void        gtk_toggle_action_set_draw_as_radio(GtkToggleAction *action,gboolean draw_as_radio);
gboolean    gtk_toggle_action_get_draw_as_radio(GtkToggleAction *action);
