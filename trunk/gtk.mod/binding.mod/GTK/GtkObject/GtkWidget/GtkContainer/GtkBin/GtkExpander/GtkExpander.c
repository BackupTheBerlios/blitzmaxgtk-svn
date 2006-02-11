GtkWidget*  gtk_expander_new                (const gchar *label);
GtkWidget*  gtk_expander_new_with_mnemonic  (const gchar *label);
void        gtk_expander_set_expanded       (GtkExpander *expander,gboolean expanded);
gboolean    gtk_expander_get_expanded       (GtkExpander *expander);
void        gtk_expander_set_spacing        (GtkExpander *expander,gint spacing);
gint        gtk_expander_get_spacing        (GtkExpander *expander);
void        gtk_expander_set_label          (GtkExpander *expander,const gchar *label);
const gchar* gtk_expander_get_label         (GtkExpander *expander);
void        gtk_expander_set_use_underline  (GtkExpander *expander,gboolean use_underline);
gboolean    gtk_expander_get_use_underline  (GtkExpander *expander);
void        gtk_expander_set_use_markup     (GtkExpander *expander,gboolean use_markup);
gboolean    gtk_expander_get_use_markup     (GtkExpander *expander);
void        gtk_expander_set_label_widget   (GtkExpander *expander,GtkWidget *label_widget);
GtkWidget*  gtk_expander_get_label_widget   (GtkExpander *expander);