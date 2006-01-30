GtkWidget*  gtk_font_selection_new          (void);
GdkFont*    gtk_font_selection_get_font     (GtkFontSelection *fontsel);
gchar*      gtk_font_selection_get_font_name(GtkFontSelection *fontsel);
gboolean    gtk_font_selection_set_font_name(GtkFontSelection *fontsel,const gchar *fontname);
const gchar* gtk_font_selection_get_preview_text(GtkFontSelection *fontsel);
void        gtk_font_selection_set_preview_text(GtkFontSelection *fontsel,const gchar *text);
