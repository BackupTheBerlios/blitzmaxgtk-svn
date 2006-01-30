GtkWidget*  gtk_font_selection_dialog_new   (const gchar *title);
GdkFont*    gtk_font_selection_dialog_get_font(GtkFontSelectionDialog *fsd);
gchar*      gtk_font_selection_dialog_get_font_name(GtkFontSelectionDialog *fsd);
gboolean    gtk_font_selection_dialog_set_font_name(GtkFontSelectionDialog *fsd,const gchar *fontname);
const gchar* gtk_font_selection_dialog_get_preview_text(GtkFontSelectionDialog *fsd);
void        gtk_font_selection_dialog_set_preview_text(GtkFontSelectionDialog *fsd,const gchar *text);
