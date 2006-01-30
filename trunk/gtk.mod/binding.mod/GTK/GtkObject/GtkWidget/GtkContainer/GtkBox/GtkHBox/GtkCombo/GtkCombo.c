GtkWidget*  gtk_combo_new                   (void);
void        gtk_combo_set_popdown_strings   (GtkCombo *combo,GList *strings);
void        gtk_combo_set_value_in_list     (GtkCombo *combo,gboolean val,gboolean ok_if_empty);
void        gtk_combo_set_use_arrows        (GtkCombo *combo,gboolean val);
void        gtk_combo_set_use_arrows_always (GtkCombo *combo,gboolean val);
void        gtk_combo_set_case_sensitive    (GtkCombo *combo,gboolean val);
void        gtk_combo_set_item_string       (GtkCombo *combo,GtkItem *item,const gchar *item_value);
void        gtk_combo_disable_activate      (GtkCombo *combo);
