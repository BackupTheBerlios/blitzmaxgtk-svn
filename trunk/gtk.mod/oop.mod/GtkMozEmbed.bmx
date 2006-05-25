Rem
	This file is part of the BlitzMax GTK-modules.
	The BlitzMax GTK-modules are free software; you can redistribute and/or modify
	them under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	at your option) any later version.
	
	The BlitzMax GTK-modules are distributed in the hope that they will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS for A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.
	
	You should have received a copy of the GNU General Public License
	along with the BlitzMax GTK-modules; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
End Rem

Type GtkMozEmbed extends GtkWidget
	Field MozHandle:byte ptr
	
	Function Create:GtkMozEmbed()
		Local tempembed:GtkMozEmbed = new GtkMozEmbed
		tempembed.Handle = gtk_moz_embed_new()
		tempembed.MozHandle = g_type_check_instance_cast(tempembed.Handle, gtk_moz_embed_get_type())
		return tempembed
	end function

	Function CreateFromHandle:GtkMozEmbed(TheHandle:byte ptr)
		local tempembed:GtkMozEmbed = new GtkMozEmbed
		tempembed.Handle = TheHandle
		tempembed.MozHandle = g_type_check_instance_cast(tempembed.Handle, gtk_moz_embed_get_type())
		return tempembed
	end function

	Function SetCompPath(path:String)
		gtk_moz_embed_set_comp_path(path.ToCString())
	end function

	Method LoadURL(url:string)
		gtk_moz_embed_load_url(MozHandle, url.ToCString())
	end method
	
	method StopLoad()
		gtk_moz_embed_stop_load(MozHandle)
	end method
	
	method CanGoBack:byte()
		return gtk_moz_embed_can_go_back(MozHandle)
	end method
	
	method CanGoForward:byte()
		return gtk_moz_embed_can_go_forward(MozHandle)
	end method
	
	method GoBack()
		gtk_moz_embed_go_back(MozHandle)
	end method

	method GoForward()
		gtk_moz_embed_go_forward(MozHandle)
	end method
	
	method RenderData(data:String, BaseURI:String, MimeType:String)
		gtk_moz_embed_render_data(MozHandle, data.ToCString(), len(data), BaseURI.ToCString(), MimeType.ToCString())
	end method
	
	method OpenStream(BaseURI:String, MimeType:String)
		gtk_moz_embed_open_stream(MozHandle, BaseURI.ToCString(), MimeType.ToCString())
	end method
	
	method AppendData(data:String)
		gtk_moz_embed_append_data(MozHandle, data.ToCString(), len(data))
	end method
	
	method CloseStream()
		gtk_moz_embed_close_stream(MozHandle)
	end method
	
	method GetLinkMessage:String()
		return String.FromCString(gtk_moz_embed_get_link_message(MozHandle))
	end method
	
	method GetJSStatus:String()
		return String.FromCString(gtk_moz_embed_get_js_status(MozHandle))
	end method
	
	method GetTitle:String()
		return String.FromCString(gtk_moz_embed_get_title(MozHandle))
	end method
	
	method GetLocation:String()
		return String.FromCString(gtk_moz_embed_get_location(MozHandle))
	end method
	
	method Reload(flags:int=GTK_MOZ_EMBED_FLAG_RELOADNORMAL)
		gtk_moz_embed_reload(MozHandle, flags)
	end method
	
	method SetChromeMask(flags:int)
		gtk_moz_embed_set_chrome_mask(MozHandle, flags)
	end method
	
	method GetChromeMask:int()
		return gtk_moz_embed_get_chrome_mask(MozHandle)
	end method
	
	method GetNSIWebBrowser:byte ptr()
		local retval:byte ptr
		gtk_moz_embed_get_nsIWebBrowser(MozHandle, varptr retval)
		return retval
	end method
end type

