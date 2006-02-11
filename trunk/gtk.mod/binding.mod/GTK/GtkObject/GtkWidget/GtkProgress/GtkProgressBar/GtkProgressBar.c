GtkWidget*  gtk_progress_bar_new            (void);
void        gtk_progress_bar_pulse          (GtkProgressBar *pbar);
void        gtk_progress_bar_set_text       (GtkProgressBar *pbar,const gchar *text);
void        gtk_progress_bar_set_fraction   (GtkProgressBar *pbar,gdouble fraction);
void        gtk_progress_bar_set_pulse_step (GtkProgressBar *pbar,gdouble fraction);
void        gtk_progress_bar_set_orientation(GtkProgressBar *pbar,GtkProgressBarOrientation orientation);
void        gtk_progress_bar_set_ellipsize  (GtkProgressBar *pbar,PangoEllipsizeMode mode);
const gchar* gtk_progress_bar_get_text      (GtkProgressBar *pbar);
gdouble     gtk_progress_bar_get_fraction   (GtkProgressBar *pbar);
gdouble     gtk_progress_bar_get_pulse_step (GtkProgressBar *pbar);
GtkProgressBarOrientation gtk_progress_bar_get_orientation(GtkProgressBar *pbar);
PangoEllipsizeMode gtk_progress_bar_get_ellipsize(GtkProgressBar *pbar);
GtkWidget*  gtk_progress_bar_new_with_adjustment(GtkAdjustment *adjustment);
void        gtk_progress_bar_set_bar_style  (GtkProgressBar *pbar,GtkProgressBarStyle style);
void        gtk_progress_bar_set_discrete_blocks(GtkProgressBar *pbar,guint blocks);
void        gtk_progress_bar_set_activity_step(GtkProgressBar *pbar,guint step);
void        gtk_progress_bar_set_activity_blocks(GtkProgressBar *pbar,guint blocks);
void        gtk_progress_bar_update         (GtkProgressBar *pbar,gdouble percentage);