GtkWidget*  gtk_pixmap_new                  (GdkPixmap *pixmap,GdkBitmap *mask);
void        gtk_pixmap_set                  (GtkPixmap *pixmap,GdkPixmap *val,GdkBitmap *mask);
void        gtk_pixmap_get                  (GtkPixmap *pixmap,GdkPixmap **val,GdkBitmap **mask);
void        gtk_pixmap_set_build_insensitive(GtkPixmap *pixmap,gboolean build);
