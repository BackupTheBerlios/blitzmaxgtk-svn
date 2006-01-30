Type GtkNotebook Extends GtkContainer
	Function Create:GtkNotebook()
		Local TempNotebook:GtkNotebook = New GtkNotebook
		TempNotebook.Handle = gtk_notebook_new()
		Return TempNotebook
	End Function

	Method SetTabLabel(Content:GtkWidget,Label:GtkWidget)
		gtk_notebook_set_tab_label(Handle,Content.Handle,Label.Handle)
	End Method

	Method GetPage:GtkWidget(Num:Int)
		Local TempWidget:GtkWidget = New GtkWidget
		TempWidget.Handle = gtk_notebook_get_nth_page(Handle,Num)
		Return TempWidget
	End Method
End Type
