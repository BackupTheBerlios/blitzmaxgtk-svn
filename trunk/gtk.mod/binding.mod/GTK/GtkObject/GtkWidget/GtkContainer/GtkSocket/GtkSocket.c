GtkWidget*  gtk_socket_new                  (void);
void        gtk_socket_steal                (GtkSocket *socket_,GdkNativeWindow wid);
void        gtk_socket_add_id               (GtkSocket *socket_,GdkNativeWindow window_id);
GdkNativeWindow gtk_socket_get_id           (GtkSocket *socket_);
