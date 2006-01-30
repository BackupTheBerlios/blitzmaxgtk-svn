GtkTextTag* gtk_text_tag_new                (const gchar *name);
gint        gtk_text_tag_get_priority       (GtkTextTag *tag);
void        gtk_text_tag_set_priority       (GtkTextTag *tag,gint priority);
gboolean    gtk_text_tag_event              (GtkTextTag *tag,GObject *event_object,GdkEvent *event,const GtkTextIter *iter);
GtkTextAttributes* gtk_text_attributes_new  (void);
GtkTextAttributes* gtk_text_attributes_copy (GtkTextAttributes *src);
void        gtk_text_attributes_copy_values (GtkTextAttributes *src,GtkTextAttributes *dest);
void        gtk_text_attributes_unref       (GtkTextAttributes *values);
GtkTextAttributes* gtk_text_attributes_ref  (GtkTextAttributes *values);
