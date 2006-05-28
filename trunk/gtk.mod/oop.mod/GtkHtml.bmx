type GtkHTML extends GtkWidget
	field htmlhandle:byte ptr
	Function Create:GtkHTML()
		local temphtml:GtkHTML = new GtkHTML
		temphtml.Handle = gtk_html_new()
		temphtml.htmlhandle = g_type_check_instance_cast(temphtml.Handle, gtk_html_get_type())
		return temphtml
	end function

	method SetBase(URL:String)
		gtk_html_set_base(htmlhandle, Url.toCString())
	end method
	
	method GetBase:String()
		return String.FromCString(gtk_html_get_base(htmlhandle))
	end method
	
	method LoadFromString(URI:String)
		gtk_html_load_from_string(htmlhandle, URI.ToCString(), len(Uri))
	end method
	
	method Begin:GtkHtmlStream()
		return GtkHtmlStream.CreateFromHandle(gtk_html_begin(htmlhandle))
	end method
	
	Method BeginContent:GtkHtmlStream(ContentType:string)
		return GtkHtmlStream.CreateFromHandle(gtk_html_begin_content(htmlhandle, ContentType.ToCString()))
	end method
	
	method BeginFull:GtkHtmlStream(target_frame:string, content_type:string, flags:int)
		return GtkHtmlStream.CreateFromHandle(gtk_html_begin_full(htmlhandle,target_frame.ToCString(),content_type.ToCString(),flags))
	end method
	
	method write(stream:GtkHtmlStream, text:string)
		gtk_html_write(htmlhandle,stream.handle,text.ToCString(),len(text))
	end method
	
	method EndStream(stream:GtkHtmlStream, status:byte)
		gtk_html_end(htmlhandle, stream.handle, status)
	end method
	
	method Stop()
		gtk_html_stop(htmlhandle)
	end method
	
	method SetAllowFrameset(allowFrameset:byte)
		gtk_html_set_allow_frameset(htmlhandle,allowframeset)
	end method
	
	method GetAllowFrameset:byte()
		return gtk_html_get_allow_frameset(htmlhandle)
	end method
end type

type GtkHtmlStream extends GObject
	function create:gtkHtmlstream(html:gtkhtml, type_func:byte ptr, write_func:byte ptr, close_func:byte ptr, user_data:byte ptr=null)
		local tempstream:gtkhtmlstream = new gtkhtmlstream
		tempstream.handle = gtk_html_stream_new(html.htmlhandle, type_func, write_func, close_func, user_data)
		return tempstream
	end function

	function createfromhandle:gtkhtmlstream(handle:byte ptr)
		local tempstream:gtkhtmlstream = new gtkhtmlstream
		tempstream.Handle = handle
		return tempstream
	end function
	
	method Write(text:string)
		gtk_html_stream_write(handle, text.ToCString(), len(text))
	end method
	
	method Destroy()
		gtk_html_stream_destroy(handle)
	end method

	method Close(status:byte)
		gtk_html_stream_close(handle,status)
	end method
end type

