void        gtk_text_mark_set_visible       (GtkTextMark *mark,gboolean setting);
gboolean    gtk_text_mark_get_visible       (GtkTextMark *mark);
gboolean    gtk_text_mark_get_deleted       (GtkTextMark *mark);
const gchar* gtk_text_mark_get_name         (GtkTextMark *mark);
GtkTextBuffer* gtk_text_mark_get_buffer     (GtkTextMark *mark);
gboolean    gtk_text_mark_get_left_gravity  (GtkTextMark *mark);
