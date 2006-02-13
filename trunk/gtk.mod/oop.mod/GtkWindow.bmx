Type GtkWindow Extends GtkBin
	Function Create:GtkWindow(WindowType:Int = GTK_WINDOW_TOPLEVEL)
		Local TempWindow:GtkWindow = New GtkWindow
		TempWindow.Handle = gtk_window_new(WindowType)
		Return TempWindow
	End Function

	Function CreateFromHandle:GtkWindow(Handle:Byte Ptr)
		Local TempWindow:GtkWindow = New GtkWindow
		TempWindow.Handle = Handle
		Return TempWindow
	End Function

	Method SetTitle(Title:String)
		gtk_window_set_title(Handle,Title.ToCString())
	End Method
End Type
