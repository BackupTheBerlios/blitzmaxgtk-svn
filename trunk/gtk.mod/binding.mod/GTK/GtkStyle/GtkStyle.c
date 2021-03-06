GtkStyle*   gtk_style_new                   (void);
GtkStyle*   gtk_style_copy                  (GtkStyle *style);
GtkStyle*   gtk_style_attach                (GtkStyle *style,GdkWindow *window);
void        gtk_style_detach                (GtkStyle *style);
GtkStyle*   gtk_style_ref                   (GtkStyle *style);
void        gtk_style_unref                 (GtkStyle *style);
void        gtk_style_set_background        (GtkStyle *style,GdkWindow *window,GtkStateType state_type);
void        gtk_style_apply_default_background(GtkStyle *style,GdkWindow *window,gboolean set_bg,GtkStateType state_type,GdkRectangle *area,gint x,gint y,gint width,gint height);
GtkIconSet* gtk_style_lookup_icon_set       (GtkStyle *style,const gchar *stock_id);
GdkPixbuf*  gtk_style_render_icon           (GtkStyle *style,const GtkIconSource *source,GtkTextDirection direction,GtkStateType state,GtkIconSize size,GtkWidget *widget,const gchar *detail);
GdkFont*    gtk_style_get_font              (GtkStyle *style);
void        gtk_style_set_font              (GtkStyle *style,GdkFont *font);
void        gtk_draw_hline                  (GtkStyle *style,GdkWindow *window,GtkStateType state_type,gint x1,gint x2,gint y);
void        gtk_draw_vline                  (GtkStyle *style,GdkWindow *window,GtkStateType state_type,gint y1_,gint y2_,gint x);
void        gtk_draw_shadow                 (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,gint x,gint y,gint width,gint height);
void        gtk_draw_polygon                (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,GdkPoint *points,gint npoints,gboolean fill);
void        gtk_draw_arrow                  (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,GtkArrowType arrow_type,gboolean fill,gint x,gint y,gint width,gint height);
void        gtk_draw_diamond                (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,gint x,gint y,gint width,gint height);
void        gtk_draw_string                 (GtkStyle *style,GdkWindow *window,GtkStateType state_type,gint x,gint y,const gchar *string);
void        gtk_draw_box                    (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,gint x,gint y,gint width,gint height);
void        gtk_draw_box_gap                (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,gint x,gint y,gint width,gint height,GtkPositionType gap_side,gint gap_x,gint gap_width);
void        gtk_draw_check                  (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,gint x,gint y,gint width,gint height);
void        gtk_draw_extension              (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,gint x,gint y,gint width,gint height,GtkPositionType gap_side);
void        gtk_draw_flat_box               (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,gint x,gint y,gint width,gint height);
void        gtk_draw_focus                  (GtkStyle *style,GdkWindow *window,gint x,gint y,gint width,gint height);
void        gtk_draw_handle                 (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,gint x,gint y,gint width,gint height,GtkOrientation orientation);
void        gtk_draw_option                 (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,gint x,gint y,gint width,gint height);
void        gtk_draw_shadow_gap             (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,gint x,gint y,gint width,gint height,GtkPositionType gap_side,gint gap_x,gint gap_width);
void        gtk_draw_slider                 (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,gint x,gint y,gint width,gint height,GtkOrientation orientation);
void        gtk_draw_tab                    (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,gint x,gint y,gint width,gint height);
void        gtk_draw_expander               (GtkStyle *style,GdkWindow *window,GtkStateType state_type,gint x,gint y,GtkExpanderStyle expander_style);
void        gtk_draw_layout                 (GtkStyle *style,GdkWindow *window,GtkStateType state_type,gboolean use_text,gint x,gint y,PangoLayout *layout);
void        gtk_draw_resize_grip            (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GdkWindowEdge edge,gint x,gint y,gint width,gint height);
void        gtk_paint_arrow                 (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,GdkRectangle *area,GtkWidget *widget,const gchar *detail,GtkArrowType arrow_type,gboolean fill,gint x,gint y,gint width,gint height);
void        gtk_paint_box                   (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,GdkRectangle *area,GtkWidget *widget,const gchar *detail,gint x,gint y,gint width,gint height);
void        gtk_paint_box_gap               (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,GdkRectangle *area,GtkWidget *widget,gchar *detail,gint x,gint y,gint width,gint height,GtkPositionType gap_side,gint gap_x,gint gap_width);
void        gtk_paint_check                 (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,GdkRectangle *area,GtkWidget *widget,const gchar *detail,gint x,gint y,gint width,gint height);
void        gtk_paint_diamond               (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,GdkRectangle *area,GtkWidget *widget,const gchar *detail,gint x,gint y,gint width,gint height);
void        gtk_paint_extension             (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,GdkRectangle *area,GtkWidget *widget,gchar *detail,gint x,gint y,gint width,gint height,GtkPositionType gap_side);
void        gtk_paint_flat_box              (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,GdkRectangle *area,GtkWidget *widget,const gchar *detail,gint x,gint y,gint width,gint height);
void        gtk_paint_focus                 (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GdkRectangle *area,GtkWidget *widget,const gchar *detail,gint x,gint y,gint width,gint height);
void        gtk_paint_handle                (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,GdkRectangle *area,GtkWidget *widget,const gchar *detail,gint x,gint y,gint width,gint height,GtkOrientation orientation);
void        gtk_paint_hline                 (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GdkRectangle *area,GtkWidget *widget,const gchar *detail,gint x1,gint x2,gint y);
void        gtk_paint_option                (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,GdkRectangle *area,GtkWidget *widget,const gchar *detail,gint x,gint y,gint width,gint height);
void        gtk_paint_polygon               (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,GdkRectangle *area,GtkWidget *widget,const gchar *detail,GdkPoint *points,gint npoints,gboolean fill);
void        gtk_paint_shadow                (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,GdkRectangle *area,GtkWidget *widget,const gchar *detail,gint x,gint y,gint width,gint height);
void        gtk_paint_shadow_gap            (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,GdkRectangle *area,GtkWidget *widget,gchar *detail,gint x,gint y,gint width,gint height,GtkPositionType gap_side,gint gap_x,gint gap_width);
void        gtk_paint_slider                (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,GdkRectangle *area,GtkWidget *widget,const gchar *detail,gint x,gint y,gint width,gint height,GtkOrientation orientation);
void        gtk_paint_string                (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GdkRectangle *area,GtkWidget *widget,const gchar *detail,gint x,gint y,const gchar *string);
void        gtk_paint_tab                   (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GtkShadowType shadow_type,GdkRectangle *area,GtkWidget *widget,const gchar *detail,gint x,gint y,gint width,gint height);
void        gtk_paint_vline                 (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GdkRectangle *area,GtkWidget *widget,const gchar *detail,gint y1_,gint y2_,gint x);
void        gtk_paint_expander              (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GdkRectangle *area,GtkWidget *widget,const gchar *detail,gint x,gint y,GtkExpanderStyle expander_style);
void        gtk_paint_layout                (GtkStyle *style,GdkWindow *window,GtkStateType state_type,gboolean use_text,GdkRectangle *area,GtkWidget *widget,const gchar *detail,gint x,gint y,PangoLayout *layout);
void        gtk_paint_resize_grip           (GtkStyle *style,GdkWindow *window,GtkStateType state_type,GdkRectangle *area,GtkWidget *widget,const gchar *detail,GdkWindowEdge edge,gint x,gint y,gint width,gint height);
void        gtk_draw_insertion_cursor       (GtkWidget *widget,GdkDrawable *drawable,GdkRectangle *area,GdkRectangle *location,gboolean is_primary,GtkTextDirection direction,gboolean draw_arrow);
GtkBorder*  gtk_border_copy                 (const GtkBorder *border_);
void        gtk_border_free                 (GtkBorder *border_);
gboolean    (*GtkRcPropertyParser)          (const GParamSpec *pspec,const GString *rc_string,GValue *property_value);
