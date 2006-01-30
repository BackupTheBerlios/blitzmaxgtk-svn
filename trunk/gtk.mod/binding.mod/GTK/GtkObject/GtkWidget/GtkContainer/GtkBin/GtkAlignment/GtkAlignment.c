GtkWidget*  gtk_alignment_new               (gfloat xalign,gfloat yalign,gfloat xscale,gfloat yscale);
void        gtk_alignment_set               (GtkAlignment *alignment,gfloat xalign,gfloat yalign,gfloat xscale,gfloat yscale);
void        gtk_alignment_get_padding       (GtkAlignment *alignment,guint *padding_top,guint *padding_bottom,guint *padding_left,guint *padding_right);
void        gtk_alignment_set_padding       (GtkAlignment *alignment,guint padding_top,guint padding_bottom,guint padding_left,guint padding_right);
