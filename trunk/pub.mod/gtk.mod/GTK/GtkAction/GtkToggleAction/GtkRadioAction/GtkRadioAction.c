GtkRadioAction* gtk_radio_action_new        (const gchar *name,const gchar *label,const gchar *tooltip,const gchar *stock_id,gint value);
GSList*     gtk_radio_action_get_group      (GtkRadioAction *action);
void        gtk_radio_action_set_group      (GtkRadioAction *action,GSList *group);
gint        gtk_radio_action_get_current_value(GtkRadioAction *action);
