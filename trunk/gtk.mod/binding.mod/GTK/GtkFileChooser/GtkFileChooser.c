GQuark      gtk_file_chooser_error_quark    (void);
void        gtk_file_chooser_set_action     (GtkFileChooser *chooser,GtkFileChooserAction action);
GtkFileChooserAction gtk_file_chooser_get_action(GtkFileChooser *chooser);
void        gtk_file_chooser_set_local_only (GtkFileChooser *chooser,gboolean local_only);
gboolean    gtk_file_chooser_get_local_only (GtkFileChooser *chooser);
void        gtk_file_chooser_set_select_multiple(GtkFileChooser *chooser,gboolean select_multiple);
gboolean    gtk_file_chooser_get_select_multiple(GtkFileChooser *chooser);
void        gtk_file_chooser_set_show_hidden(GtkFileChooser *chooser,gboolean show_hidden);
gboolean    gtk_file_chooser_get_show_hidden(GtkFileChooser *chooser);
void        gtk_file_chooser_set_do_overwrite_confirmation(GtkFileChooser *chooser,gboolean do_overwrite_confirmation);
gboolean    gtk_file_chooser_get_do_overwrite_confirmation(GtkFileChooser *chooser);
void        gtk_file_chooser_set_current_name(GtkFileChooser *chooser,const gchar *name);
gchar*      gtk_file_chooser_get_filename   (GtkFileChooser *chooser);
gboolean    gtk_file_chooser_set_filename   (GtkFileChooser *chooser,const char *filename);
gboolean    gtk_file_chooser_select_filename(GtkFileChooser *chooser,const char *filename);
void        gtk_file_chooser_unselect_filename(GtkFileChooser *chooser,const char *filename);
void        gtk_file_chooser_select_all     (GtkFileChooser *chooser);
void        gtk_file_chooser_unselect_all   (GtkFileChooser *chooser);
GSList*     gtk_file_chooser_get_filenames  (GtkFileChooser *chooser);
gboolean    gtk_file_chooser_set_current_folder(GtkFileChooser *chooser,const gchar *filename);
gchar*      gtk_file_chooser_get_current_folder(GtkFileChooser *chooser);
gchar*      gtk_file_chooser_get_uri        (GtkFileChooser *chooser);
gboolean    gtk_file_chooser_set_uri        (GtkFileChooser *chooser,const char *uri);
gboolean    gtk_file_chooser_select_uri     (GtkFileChooser *chooser,const char *uri);
void        gtk_file_chooser_unselect_uri   (GtkFileChooser *chooser,const char *uri);
GSList*     gtk_file_chooser_get_uris       (GtkFileChooser *chooser);
gboolean    gtk_file_chooser_set_current_folder_uri(GtkFileChooser *chooser,const gchar *uri);
gchar*      gtk_file_chooser_get_current_folder_uri(GtkFileChooser *chooser);
void        gtk_file_chooser_set_preview_widget(GtkFileChooser *chooser,GtkWidget *preview_widget);
GtkWidget*  gtk_file_chooser_get_preview_widget(GtkFileChooser *chooser);
void        gtk_file_chooser_set_preview_widget_active(GtkFileChooser *chooser,gboolean active);
gboolean    gtk_file_chooser_get_preview_widget_active(GtkFileChooser *chooser);
void        gtk_file_chooser_set_use_preview_label(GtkFileChooser *chooser,gboolean use_label);
gboolean    gtk_file_chooser_get_use_preview_label(GtkFileChooser *chooser);
char*       gtk_file_chooser_get_preview_filename(GtkFileChooser *chooser);
char*       gtk_file_chooser_get_preview_uri(GtkFileChooser *chooser);
void        gtk_file_chooser_set_extra_widget(GtkFileChooser *chooser,GtkWidget *extra_widget);
GtkWidget*  gtk_file_chooser_get_extra_widget(GtkFileChooser *chooser);
void        gtk_file_chooser_add_filter     (GtkFileChooser *chooser,GtkFileFilter *filter);
void        gtk_file_chooser_remove_filter  (GtkFileChooser *chooser,GtkFileFilter *filter);
GSList*     gtk_file_chooser_list_filters   (GtkFileChooser *chooser);
void        gtk_file_chooser_set_filter     (GtkFileChooser *chooser,GtkFileFilter *filter);
GtkFileFilter* gtk_file_chooser_get_filter  (GtkFileChooser *chooser);
gboolean    gtk_file_chooser_add_shortcut_folder(GtkFileChooser *chooser,const char *folder,GError **error);
gboolean    gtk_file_chooser_remove_shortcut_folder(GtkFileChooser *chooser,const char *folder,GError **error);
GSList*     gtk_file_chooser_list_shortcut_folders(GtkFileChooser *chooser);
gboolean    gtk_file_chooser_add_shortcut_folder_uri(GtkFileChooser *chooser,const char *uri,GError **error);
gboolean    gtk_file_chooser_remove_shortcut_folder_uri(GtkFileChooser *chooser,const char *uri,GError **error);
GSList*     gtk_file_chooser_list_shortcut_folder_uris(GtkFileChooser *chooser);
