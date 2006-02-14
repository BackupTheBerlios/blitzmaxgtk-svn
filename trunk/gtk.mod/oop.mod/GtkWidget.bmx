Type GtkWidget Extends GtkObject
	Function CreateWidgetFromHandle:GtkWidget(Handle:Byte Ptr)
		Local TempWidget:GtkWidget = New GtkWidget
		TempWidget.Handle = Handle
		Return TempWidget
	End Function

	Method Show()
		gtk_widget_show(Handle)
	End Method

	Method ShowAll()
		gtk_widget_show_all(Handle)
	End Method
	
	Method Hide()
		gtk_widget_hide(Handle)
	End Method

	Method HideAll()
		gtk_widget_hide_all(Handle)
	End Method

	Method SetSizeRequest(Width:Int,Height:Int)
		gtk_widget_set_size_request(Handle,Width,Height)
	End Method

	Method Destroy()
		gtk_widget_destroy(Handle)
	End Method
End Type
