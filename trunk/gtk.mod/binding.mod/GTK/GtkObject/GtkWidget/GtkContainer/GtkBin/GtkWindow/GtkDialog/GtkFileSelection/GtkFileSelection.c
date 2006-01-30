GtkWidget*  gtk_file_selection_new          (const gchar *title);
void        gtk_file_selection_set_filename (GtkFileSelection *filesel,const gchar *filename);
const gchar* gtk_file_selection_get_filename(GtkFileSelection *filesel);
void        gtk_file_selection_complete     (GtkFileSelection *filesel,const gchar *pattern);
void        gtk_file_selection_show_fileop_buttons(GtkFileSelection *filesel);
void        gtk_file_selection_hide_fileop_buttons(GtkFileSelection *filesel);
gchar**     gtk_file_selection_get_selections(GtkFileSelection *filesel);
void        gtk_file_selection_set_select_multiple(GtkFileSelection *filesel,gboolean select_multiple);
gboolean    gtk_file_selection_get_select_multiple(GtkFileSelection *filesel);
