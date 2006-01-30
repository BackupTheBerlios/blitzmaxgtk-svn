GtkWidget*  gtk_file_chooser_button_new     (const gchar *title,GtkFileChooserAction action);
GtkWidget*  gtk_file_chooser_button_new_with_backend(const gchar *title,GtkFileChooserAction action,const gchar *backend);
GtkWidget*  gtk_file_chooser_button_new_with_dialog(GtkWidget *dialog);
const gchar* gtk_file_chooser_button_get_title(GtkFileChooserButton *button);
void        gtk_file_chooser_button_set_title(GtkFileChooserButton *button,const gchar *title);
gint        gtk_file_chooser_button_get_width_chars(GtkFileChooserButton *button);
void        gtk_file_chooser_button_set_width_chars(GtkFileChooserButton *button,gint n_chars);
