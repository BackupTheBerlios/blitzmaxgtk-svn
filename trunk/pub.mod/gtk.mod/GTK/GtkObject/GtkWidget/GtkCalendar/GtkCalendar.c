GtkWidget*  gtk_calendar_new                (void);
gboolean    gtk_calendar_select_month       (GtkCalendar *calendar,guint month,guint year);
void        gtk_calendar_select_day         (GtkCalendar *calendar,guint day);
gboolean    gtk_calendar_mark_day           (GtkCalendar *calendar,guint day);
gboolean    gtk_calendar_unmark_day         (GtkCalendar *calendar,guint day);
void        gtk_calendar_clear_marks        (GtkCalendar *calendar);
GtkCalendarDisplayOptions gtk_calendar_get_display_options(GtkCalendar *calendar);
void        gtk_calendar_set_display_options(GtkCalendar *calendar,GtkCalendarDisplayOptions flags);
void        gtk_calendar_display_options    (GtkCalendar *calendar,GtkCalendarDisplayOptions flags);
void        gtk_calendar_get_date           (GtkCalendar *calendar,guint *year,guint *month,guint *day);
void        gtk_calendar_freeze             (GtkCalendar *calendar);
void        gtk_calendar_thaw               (GtkCalendar *calendar);
