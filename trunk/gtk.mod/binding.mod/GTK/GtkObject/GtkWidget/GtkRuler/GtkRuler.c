void        gtk_ruler_set_metric            (GtkRuler *ruler,GtkMetricType metric);
void        gtk_ruler_set_range             (GtkRuler *ruler,gdouble lower,gdouble upper,gdouble position,gdouble max_size);
GtkMetricType gtk_ruler_get_metric          (GtkRuler *ruler);
void        gtk_ruler_get_range             (GtkRuler *ruler,gdouble *lower,gdouble *upper,gdouble *position,gdouble *max_size);
