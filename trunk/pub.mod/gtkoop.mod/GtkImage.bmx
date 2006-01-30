Type GtkImage Extends GtkMisc
	Function CreateFromIconName:GtkImage(Name:String,Size:Int)
		Local TempImage:GtkImage = New GtkImage
		TempImage.Handle = gtk_image_new_from_icon_name(Name.ToCString(),Size)
		Return TempImage
	End Function

	Function CreateFromFile:GtkImage(Filename:String)
		Local TempImage:GtkImage = New GtkImage
		TempImage.Handle = gtk_image_new_from_file(Filename.ToCString())
		Return TempImage
	End Function

	Method SetPixelSize(Size:Int)
		gtk_image_set_pixel_size(Handle,size)
	End method
End Type
