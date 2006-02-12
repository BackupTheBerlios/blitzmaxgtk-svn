Type GtkPaned Extends GtkContainer
	Method Add1(Widget:GtkWidget)
		gtk_paned_add1(Handle,Widget.Handle)
	End Method

	Method Add2(Widget:GtkWidget)
		gtk_paned_add2(Handle,Widget.Handle)
	End Method

	Method Pack1(Widget:GtkWidget,Resize:Byte,Shrink:Byte)
		gtk_paned_pack1(Handle,Widget.Handle,Resize,Shrink)
	End Method

	Method Pack2(Widget:GtkWidget,Resize:Byte,Shrink:Byte)
		gtk_paned_pack2(Handle,Widget.Handle,Resize,Shrink)
	End Method
End Type