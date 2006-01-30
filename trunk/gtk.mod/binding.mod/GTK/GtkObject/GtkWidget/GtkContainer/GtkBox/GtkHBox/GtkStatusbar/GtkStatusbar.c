GtkWidget*  gtk_statusbar_new               (void);
guint       gtk_statusbar_get_context_id    (GtkStatusbar *statusbar,const gchar *context_description);
guint       gtk_statusbar_push              (GtkStatusbar *statusbar,guint context_id,const gchar *text);
void        gtk_statusbar_pop               (GtkStatusbar *statusbar,guint context_id);
void        gtk_statusbar_remove            (GtkStatusbar *statusbar,guint context_id,guint message_id);
void        gtk_statusbar_set_has_resize_grip(GtkStatusbar *statusbar,gboolean setting);
gboolean    gtk_statusbar_get_has_resize_grip(GtkStatusbar *statusbar);
