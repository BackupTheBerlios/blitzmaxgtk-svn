GtkWidget*  gtk_tips_query_new              (void);
void        gtk_tips_query_start_query      (GtkTipsQuery *tips_query);
void        gtk_tips_query_stop_query       (GtkTipsQuery *tips_query);
void        gtk_tips_query_set_caller       (GtkTipsQuery *tips_query,GtkWidget *caller);
void        gtk_tips_query_set_labels       (GtkTipsQuery *tips_query,const gchar *label_inactive,const gchar *label_no_tip);
