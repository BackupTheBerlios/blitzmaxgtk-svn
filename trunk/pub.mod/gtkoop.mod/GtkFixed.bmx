Type GtkFixed Extends GtkContainer
	Function Create:GtkFixed()
		Local TempFixed:GtkFixed = New GtkFixed
		TempFixed.Handle = gtk_fixed_new()
		Return TempFixed
	End Function

	Method Put(Widget:GtkWidget,X:Int,Y:Int)
		gtk_fixed_put(Handle,Widget.Handle,X,Y)
	End Method
End Type
