type GtkHTML extends GtkWidget
	field htmlhandle:byte ptr
	Function Create:GtkHTML()
		local temphtml:GtkHTML = new GtkHTML
		temphtml.Handle = gtk_html_new()
		temphtml.htmlhandle = g_type_check_instance_cast(temphtml.Handle, gtk_html_get_type())
		return temphtml
	end function

	method SetBase(URL:String)
		gtk_html_set_base(handle, Url.toCString())
	end method
	
	method GetBase:String()
		return String.FromCString(gtk_html_get_base(handle))
	end method
	
	method LoadFromString(URI:String)
		gtk_html_load_from_string(handle, URI.ToCString(), len(Uri))
	end method
end type

