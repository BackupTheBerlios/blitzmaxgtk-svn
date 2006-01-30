GtkWidget*  gtk_curve_new                   (void);
void        gtk_curve_reset                 (GtkCurve *curve);
void        gtk_curve_set_gamma             (GtkCurve *curve,gfloat gamma_);
void        gtk_curve_set_range             (GtkCurve *curve,gfloat min_x,gfloat max_x,gfloat min_y,gfloat max_y);
void        gtk_curve_get_vector            (GtkCurve *curve,int veclen,gfloat vector[]);
void        gtk_curve_set_vector            (GtkCurve *curve,int veclen,gfloat vector[]);
void        gtk_curve_set_curve_type        (GtkCurve *curve,GtkCurveType type);
