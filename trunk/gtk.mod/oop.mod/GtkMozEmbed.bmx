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
		return tempembed
	end function

	Function CreateFromHandle:GtkMozEmbed(Handle:byte ptr)
		local tempembed:GtkMozEmbed = new GtkMozEmbed
		tempembed.Handle = Handle
		return tempembed
	end function

	Function SetCompPath(path:String)
		gtk_moz_embed_set_comp_path(path.ToCString())
	end function

	Method LoadURL(url:string)
		gtk_moz_embed_load_url(Handle, url.ToCString())
	end method
	
	method StopLoad()
		gtk_moz_embed_stop_load(Handle)
	end method
	
	method CanGoBack:byte()
		return gtk_moz_embed_can_go_back(Handle)
	end method
	
	method CanGoForward:byte()
		return gtk_moz_embed_can_go_forward(Handle)
	end method
	
	method GoBack()
		gtk_moz_embed_go_back()
	end method



end type

