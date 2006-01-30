GtkWidget*  gtk_viewport_new                (GtkAdjustment *hadjustment,GtkAdjustment *vadjustment);
GtkAdjustment* gtk_viewport_get_hadjustment (GtkViewport *viewport);
GtkAdjustment* gtk_viewport_get_vadjustment (GtkViewport *viewport);
void        gtk_viewport_set_hadjustment    (GtkViewport *viewport,GtkAdjustment *adjustment);
void        gtk_viewport_set_vadjustment    (GtkViewport *viewport,GtkAdjustment *adjustment);
void        gtk_viewport_set_shadow_type    (GtkViewport *viewport,GtkShadowType type);
GtkShadowType gtk_viewport_get_shadow_type  (GtkViewport *viewport);
