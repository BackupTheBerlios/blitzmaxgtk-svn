GtkTextBuffer* gtk_text_buffer_new          (GtkTextTagTable *table);
gint        gtk_text_buffer_get_line_count  (GtkTextBuffer *buffer);
gint        gtk_text_buffer_get_char_count  (GtkTextBuffer *buffer);
GtkTextTagTable* gtk_text_buffer_get_tag_table(GtkTextBuffer *buffer);
void        gtk_text_buffer_insert          (GtkTextBuffer *buffer,GtkTextIter *iter,const gchar *text,gint len);
void        gtk_text_buffer_insert_at_cursor(GtkTextBuffer *buffer,const gchar *text,gint len);
gboolean    gtk_text_buffer_insert_interactive(GtkTextBuffer *buffer,GtkTextIter *iter,const gchar *text,gint len,gboolean default_editable);
gboolean    gtk_text_buffer_insert_interactive_at_cursor(GtkTextBuffer *buffer,const gchar *text,gint len,gboolean default_editable);
void        gtk_text_buffer_insert_range    (GtkTextBuffer *buffer,GtkTextIter *iter,const GtkTextIter *start,const GtkTextIter *end);
gboolean    gtk_text_buffer_insert_range_interactive(GtkTextBuffer *buffer,GtkTextIter *iter,const GtkTextIter *start,const GtkTextIter *end,gboolean default_editable);
void        gtk_text_buffer_insert_with_tags(GtkTextBuffer *buffer,GtkTextIter *iter,const gchar *text,gint len,GtkTextTag *first_tag,...);
void        gtk_text_buffer_insert_with_tags_by_name(GtkTextBuffer *buffer,GtkTextIter *iter,const gchar *text,gint len,const gchar *first_tag_name,...);
void        gtk_text_buffer_delete          (GtkTextBuffer *buffer,GtkTextIter *start,GtkTextIter *end);
gboolean    gtk_text_buffer_delete_interactive(GtkTextBuffer *buffer,GtkTextIter *start_iter,GtkTextIter *end_iter,gboolean default_editable);
gboolean    gtk_text_buffer_backspace       (GtkTextBuffer *buffer,GtkTextIter *iter,gboolean interactive,gboolean default_editable);
void        gtk_text_buffer_set_text        (GtkTextBuffer *buffer,const gchar *text,gint len);
gchar*      gtk_text_buffer_get_text        (GtkTextBuffer *buffer,const GtkTextIter *start,const GtkTextIter *end,gboolean include_hidden_chars);
gchar*      gtk_text_buffer_get_slice       (GtkTextBuffer *buffer,const GtkTextIter *start,const GtkTextIter *end,gboolean include_hidden_chars);
void        gtk_text_buffer_insert_pixbuf   (GtkTextBuffer *buffer,GtkTextIter *iter,GdkPixbuf *pixbuf);
void        gtk_text_buffer_insert_child_anchor(GtkTextBuffer *buffer,GtkTextIter *iter,GtkTextChildAnchor *anchor);
GtkTextChildAnchor* gtk_text_buffer_create_child_anchor(GtkTextBuffer *buffer,GtkTextIter *iter);
GtkTextMark* gtk_text_buffer_create_mark    (GtkTextBuffer *buffer,const gchar *mark_name,const GtkTextIter *where,gboolean left_gravity);
void        gtk_text_buffer_move_mark       (GtkTextBuffer *buffer,GtkTextMark *mark,const GtkTextIter *where);
void        gtk_text_buffer_move_mark_by_name(GtkTextBuffer *buffer,const gchar *name,const GtkTextIter *where);
void        gtk_text_buffer_delete_mark     (GtkTextBuffer *buffer,GtkTextMark *mark);
void        gtk_text_buffer_delete_mark_by_name(GtkTextBuffer *buffer,const gchar *name);
GtkTextMark* gtk_text_buffer_get_mark       (GtkTextBuffer *buffer,const gchar *name);
GtkTextMark* gtk_text_buffer_get_insert     (GtkTextBuffer *buffer);
GtkTextMark* gtk_text_buffer_get_selection_bound(GtkTextBuffer *buffer);
void        gtk_text_buffer_place_cursor    (GtkTextBuffer *buffer,const GtkTextIter *where);
void        gtk_text_buffer_select_range    (GtkTextBuffer *buffer,const GtkTextIter *ins,const GtkTextIter *bound);
void        gtk_text_buffer_apply_tag       (GtkTextBuffer *buffer,GtkTextTag *tag,const GtkTextIter *start,const GtkTextIter *end);
void        gtk_text_buffer_remove_tag      (GtkTextBuffer *buffer,GtkTextTag *tag,const GtkTextIter *start,const GtkTextIter *end);
void        gtk_text_buffer_apply_tag_by_name(GtkTextBuffer *buffer,const gchar *name,const GtkTextIter *start,const GtkTextIter *end);
void        gtk_text_buffer_remove_tag_by_name(GtkTextBuffer *buffer,const gchar *name,const GtkTextIter *start,const GtkTextIter *end);
void        gtk_text_buffer_remove_all_tags (GtkTextBuffer *buffer,const GtkTextIter *start,const GtkTextIter *end);
GtkTextTag* gtk_text_buffer_create_tag      (GtkTextBuffer *buffer,const gchar *tag_name,const gchar *first_property_name,...);
void        gtk_text_buffer_get_iter_at_line_offset(GtkTextBuffer *buffer,GtkTextIter *iter,gint line_number,gint char_offset);
void        gtk_text_buffer_get_iter_at_offset(GtkTextBuffer *buffer,GtkTextIter *iter,gint char_offset);
void        gtk_text_buffer_get_iter_at_line(GtkTextBuffer *buffer,GtkTextIter *iter,gint line_number);
void        gtk_text_buffer_get_iter_at_line_index(GtkTextBuffer *buffer,GtkTextIter *iter,gint line_number,gint byte_index);
void        gtk_text_buffer_get_iter_at_mark(GtkTextBuffer *buffer,GtkTextIter *iter,GtkTextMark *mark);
void        gtk_text_buffer_get_iter_at_child_anchor(GtkTextBuffer *buffer,GtkTextIter *iter,GtkTextChildAnchor *anchor);
void        gtk_text_buffer_get_start_iter  (GtkTextBuffer *buffer,GtkTextIter *iter);
void        gtk_text_buffer_get_end_iter    (GtkTextBuffer *buffer,GtkTextIter *iter);
void        gtk_text_buffer_get_bounds      (GtkTextBuffer *buffer,GtkTextIter *start,GtkTextIter *end);
gboolean    gtk_text_buffer_get_modified    (GtkTextBuffer *buffer);
void        gtk_text_buffer_set_modified    (GtkTextBuffer *buffer,gboolean setting);
gboolean    gtk_text_buffer_delete_selection(GtkTextBuffer *buffer,gboolean interactive,gboolean default_editable);
void        gtk_text_buffer_paste_clipboard (GtkTextBuffer *buffer,GtkClipboard *clipboard,GtkTextIter *override_location,gboolean default_editable);
void        gtk_text_buffer_copy_clipboard  (GtkTextBuffer *buffer,GtkClipboard *clipboard);
void        gtk_text_buffer_cut_clipboard   (GtkTextBuffer *buffer,GtkClipboard *clipboard,gboolean default_editable);
gboolean    gtk_text_buffer_get_selection_bounds(GtkTextBuffer *buffer,GtkTextIter *start,GtkTextIter *end);
void        gtk_text_buffer_begin_user_action(GtkTextBuffer *buffer);
void        gtk_text_buffer_end_user_action (GtkTextBuffer *buffer);
void        gtk_text_buffer_add_selection_clipboard(GtkTextBuffer *buffer,GtkClipboard *clipboard);
void        gtk_text_buffer_remove_selection_clipboard(GtkTextBuffer *buffer,GtkClipboard *clipboard);
