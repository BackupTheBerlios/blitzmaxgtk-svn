GtkObject*  gtk_adjustment_new              (gdouble value,gdouble lower,gdouble upper,gdouble step_increment,gdouble page_increment,gdouble page_size);
gdouble     gtk_adjustment_get_value        (GtkAdjustment *adjustment);
void        gtk_adjustment_set_value        (GtkAdjustment *adjustment,gdouble value);
void        gtk_adjustment_clamp_page       (GtkAdjustment *adjustment,gdouble lower,gdouble upper);
void        gtk_adjustment_changed          (GtkAdjustment *adjustment);
void        gtk_adjustment_value_changed    (GtkAdjustment *adjustment);
