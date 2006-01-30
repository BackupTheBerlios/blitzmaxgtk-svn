void        gtk_im_context_set_client_window(GtkIMContext *context,GdkWindow *window);
void        gtk_im_context_get_preedit_string(GtkIMContext *context,gchar **str,PangoAttrList **attrs,gint *cursor_pos);
gboolean    gtk_im_context_filter_keypress  (GtkIMContext *context,GdkEventKey *event);
void        gtk_im_context_focus_in         (GtkIMContext *context);
void        gtk_im_context_focus_out        (GtkIMContext *context);
void        gtk_im_context_reset            (GtkIMContext *context);
void        gtk_im_context_set_cursor_location(GtkIMContext *context,GdkRectangle *area);
void        gtk_im_context_set_use_preedit  (GtkIMContext *context,gboolean use_preedit);
void        gtk_im_context_set_surrounding  (GtkIMContext *context,const gchar *text,gint len,gint cursor_index);
gboolean    gtk_im_context_get_surrounding  (GtkIMContext *context,gchar **text,gint *cursor_index);
gboolean    gtk_im_context_delete_surrounding(GtkIMContext *context,gint offset,gint n_chars);
