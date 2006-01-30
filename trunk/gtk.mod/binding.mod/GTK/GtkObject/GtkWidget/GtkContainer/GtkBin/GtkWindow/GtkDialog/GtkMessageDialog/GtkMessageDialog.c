GtkWidget*  gtk_message_dialog_new          (GtkWindow *parent,GtkDialogFlags flags,GtkMessageType type,GtkButtonsType buttons,const gchar *message_format,...);
GtkWidget*  gtk_message_dialog_new_with_markup(GtkWindow *parent,GtkDialogFlags flags,GtkMessageType type,GtkButtonsType buttons,const gchar *message_format,...);
void        gtk_message_dialog_set_markup   (GtkMessageDialog *message_dialog,const gchar *str);
void        gtk_message_dialog_format_secondary_text(GtkMessageDialog *message_dialog,const gchar *message_format,...);
void        gtk_message_dialog_format_secondary_markup(GtkMessageDialog *message_dialog,const gchar *message_format,...);
