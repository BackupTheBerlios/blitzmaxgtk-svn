gboolean    (*GtkFileFilterFunc)            (const GtkFileFilterInfo *filter_info,gpointer data);
GtkFileFilter* gtk_file_filter_new          (void);
void        gtk_file_filter_set_name        (GtkFileFilter *filter,const gchar *name);
const gchar* gtk_file_filter_get_name       (GtkFileFilter *filter);
void        gtk_file_filter_add_mime_type   (GtkFileFilter *filter,const gchar *mime_type);
void        gtk_file_filter_add_pattern     (GtkFileFilter *filter,const gchar *pattern);
void        gtk_file_filter_add_pixbuf_formats(GtkFileFilter *filter);
void        gtk_file_filter_add_custom      (GtkFileFilter *filter,GtkFileFilterFlags needed,GtkFileFilterFunc func,gpointer data,GDestroyNotify notify);
GtkFileFilterFlags gtk_file_filter_get_needed(GtkFileFilter *filter);
gboolean    gtk_file_filter_filter          (GtkFileFilter *filter,const GtkFileFilterInfo *filter_info);
