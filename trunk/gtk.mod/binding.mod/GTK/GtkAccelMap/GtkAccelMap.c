void        (*GtkAccelMapForeach)           (gpointer data,const gchar *accel_path,guint accel_key,GdkModifierType accel_mods,gboolean changed);
void        gtk_accel_map_add_entry         (const gchar *accel_path,guint accel_key,GdkModifierType accel_mods);
gboolean    gtk_accel_map_lookup_entry      (const gchar *accel_path,GtkAccelKey *key);
gboolean    gtk_accel_map_change_entry      (const gchar *accel_path,guint accel_key,GdkModifierType accel_mods,gboolean replace);
void        gtk_accel_map_load              (const gchar *file_name);
void        gtk_accel_map_save              (const gchar *file_name);
void        gtk_accel_map_foreach           (gpointer data,GtkAccelMapForeach foreach_func);
void        gtk_accel_map_load_fd           (gint fd);
void        gtk_accel_map_save_fd           (gint fd);
void        gtk_accel_map_load_scanner      (GScanner *scanner);
void        gtk_accel_map_add_filter        (const gchar *filter_pattern);
void        gtk_accel_map_foreach_unfiltered(gpointer data,GtkAccelMapForeach foreach_func);
GtkAccelMap* gtk_accel_map_get              (void);
void        gtk_accel_map_lock_path         (const gchar *accel_path);
void        gtk_accel_map_unlock_path       (const gchar *accel_path);
