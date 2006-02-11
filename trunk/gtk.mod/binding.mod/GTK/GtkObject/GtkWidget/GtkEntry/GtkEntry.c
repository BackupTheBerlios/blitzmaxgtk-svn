GtkWidget*  gtk_entry_new                   (void);
GtkWidget*  gtk_entry_new_with_max_length   (gint max);
void        gtk_entry_set_text              (GtkEntry *entry,const gchar *text);
void        gtk_entry_append_text           (GtkEntry *entry,const gchar *text);
void        gtk_entry_prepend_text          (GtkEntry *entry,const gchar *text);
void        gtk_entry_set_position          (GtkEntry *entry,gint position);
const gchar* gtk_entry_get_text             (GtkEntry *entry);
void        gtk_entry_select_region         (GtkEntry *entry,gint start,gint end);
void        gtk_entry_set_visibility        (GtkEntry *entry,gboolean visible);
void        gtk_entry_set_invisible_char    (GtkEntry *entry,gunichar ch);
void        gtk_entry_set_editable          (GtkEntry *entry,gboolean editable);
void        gtk_entry_set_max_length        (GtkEntry *entry,gint max);
gboolean    gtk_entry_get_activates_default (GtkEntry *entry);
gboolean    gtk_entry_get_has_frame         (GtkEntry *entry);
gint        gtk_entry_get_width_chars       (GtkEntry *entry);
void        gtk_entry_set_activates_default (GtkEntry *entry,gboolean setting);
void        gtk_entry_set_has_frame         (GtkEntry *entry,gboolean setting);
void        gtk_entry_set_width_chars       (GtkEntry *entry,gint n_chars);
gunichar    gtk_entry_get_invisible_char    (GtkEntry *entry);
void        gtk_entry_set_alignment         (GtkEntry *entry,gfloat xalign);
gfloat      gtk_entry_get_alignment         (GtkEntry *entry);
PangoLayout* gtk_entry_get_layout           (GtkEntry *entry);
void        gtk_entry_get_layout_offsets    (GtkEntry *entry,gint *x,gint *y);
gint        gtk_entry_layout_index_to_text_index(GtkEntry *entry,gint layout_index);
gint        gtk_entry_text_index_to_layout_index(GtkEntry *entry,gint text_index);
gint        gtk_entry_get_max_length        (GtkEntry *entry);
gboolean    gtk_entry_get_visibility        (GtkEntry *entry);
void        gtk_entry_set_completion        (GtkEntry *entry,GtkEntryCompletion *completion);
GtkEntryCompletion* gtk_entry_get_completion(GtkEntry *entry);