void        gtk_paned_add1                  (GtkPaned *paned,GtkWidget *child);
void        gtk_paned_add2                  (GtkPaned *paned,GtkWidget *child);
void        gtk_paned_pack1                 (GtkPaned *paned,GtkWidget *child,gboolean resize,gboolean shrink);
void        gtk_paned_pack2                 (GtkPaned *paned,GtkWidget *child,gboolean resize,gboolean shrink);
GtkWidget*  gtk_paned_get_child1            (GtkPaned *paned);
GtkWidget*  gtk_paned_get_child2            (GtkPaned *paned);
void        gtk_paned_set_position          (GtkPaned *paned,gint position);
gint        gtk_paned_get_position          (GtkPaned *paned);