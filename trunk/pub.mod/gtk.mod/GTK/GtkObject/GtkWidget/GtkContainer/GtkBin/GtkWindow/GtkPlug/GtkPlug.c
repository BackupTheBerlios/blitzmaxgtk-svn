void        gtk_plug_construct              (GtkPlug *plug,GdkNativeWindow socket_id);
void        gtk_plug_construct_for_display  (GtkPlug *plug,GdkDisplay *display,GdkNativeWindow socket_id);
GtkWidget*  gtk_plug_new                    (GdkNativeWindow socket_id);
GtkWidget*  gtk_plug_new_for_display        (GdkDisplay *display,GdkNativeWindow socket_id);
GdkNativeWindow gtk_plug_get_id             (GtkPlug *plug);
