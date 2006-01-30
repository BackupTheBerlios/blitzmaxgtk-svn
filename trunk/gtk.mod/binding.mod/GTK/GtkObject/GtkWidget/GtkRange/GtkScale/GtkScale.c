void        gtk_scale_set_digits            (GtkScale *scale,gint digits);
void        gtk_scale_set_draw_value        (GtkScale *scale,gboolean draw_value);
void        gtk_scale_set_value_pos         (GtkScale *scale,GtkPositionType pos);
gint        gtk_scale_get_digits            (GtkScale *scale);
gboolean    gtk_scale_get_draw_value        (GtkScale *scale);
GtkPositionType gtk_scale_get_value_pos     (GtkScale *scale);
PangoLayout* gtk_scale_get_layout           (GtkScale *scale);
void        gtk_scale_get_layout_offsets    (GtkScale *scale,gint *x,gint *y);
