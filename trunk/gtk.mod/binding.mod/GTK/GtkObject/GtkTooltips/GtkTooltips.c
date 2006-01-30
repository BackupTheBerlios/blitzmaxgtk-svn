GtkTooltips* gtk_tooltips_new               (void);
void        gtk_tooltips_enable             (GtkTooltips *tooltips);
void        gtk_tooltips_disable            (GtkTooltips *tooltips);
void        gtk_tooltips_set_delay          (GtkTooltips *tooltips,guint delay);
void        gtk_tooltips_set_tip            (GtkTooltips *tooltips,GtkWidget *widget,const gchar *tip_text,const gchar *tip_private);
GtkTooltipsData* gtk_tooltips_data_get      (GtkWidget *widget);
void        gtk_tooltips_force_window       (GtkTooltips *tooltips);
gboolean    gtk_tooltips_get_info_from_tip_window(GtkWindow *tip_window,GtkTooltips **tooltips,GtkWidget **current_widget);
