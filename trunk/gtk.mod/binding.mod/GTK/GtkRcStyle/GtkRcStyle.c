GScanner*   gtk_rc_scanner_new              (void);
GtkStyle*   gtk_rc_get_style                (GtkWidget *widget);
GtkStyle*   gtk_rc_get_style_by_paths       (GtkSettings *settings,const char *widget_path,const char *class_path,GType type);
void        gtk_rc_add_widget_name_style    (GtkRcStyle *rc_style,const gchar *pattern);
void        gtk_rc_add_widget_class_style   (GtkRcStyle *rc_style,const gchar *pattern);
void        gtk_rc_add_class_style          (GtkRcStyle *rc_style,const gchar *pattern);
void        gtk_rc_parse                    (const gchar *filename);
void        gtk_rc_parse_string             (const gchar *rc_string);
gboolean    gtk_rc_reparse_all              (void);
gboolean    gtk_rc_reparse_all_for_settings (GtkSettings *settings,gboolean force_load);
void        gtk_rc_reset_styles             (GtkSettings *settings);
void        gtk_rc_add_default_file         (const gchar *filename);
gchar**     gtk_rc_get_default_files        (void);
void        gtk_rc_set_default_files        (gchar **filenames);
guint       gtk_rc_parse_color              (GScanner *scanner,GdkColor *color);
guint       gtk_rc_parse_state              (GScanner *scanner,GtkStateType *state);
guint       gtk_rc_parse_priority           (GScanner *scanner,GtkPathPriorityType *priority);
gchar*      gtk_rc_find_module_in_path      (const gchar *module_file);
gchar*      gtk_rc_find_pixmap_in_path      (GtkSettings *settings,GScanner *scanner,const gchar *pixmap_file);
gchar*      gtk_rc_get_module_dir           (void);
gchar*      gtk_rc_get_im_module_path       (void);
gchar*      gtk_rc_get_im_module_file       (void);
gchar*      gtk_rc_get_theme_dir            (void);
GtkRcStyle* gtk_rc_style_new                (void);
GtkRcStyle* gtk_rc_style_copy               (GtkRcStyle *orig);
void        gtk_rc_style_ref                (GtkRcStyle *rc_style);
void        gtk_rc_style_unref              (GtkRcStyle *rc_style);
