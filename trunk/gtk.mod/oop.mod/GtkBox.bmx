Type GtkBox Extends GtkContainer
	Method PackStart(Widget:GtkWidget,Expand:Byte=False,Fill:Byte=False,Padding:Int=0)
		gtk_box_pack_start(Handle,Widget.Handle,Expand,Fill,Padding)
	End Method

	Method PackEnd(Widget:GtkWidget,Expand:Byte=False,Fill:Byte=False,Padding:Int=0)
		gtk_box_pack_end(Handle,Widget.Handle,Expand,Fill,Padding)
	End Method
End Type
