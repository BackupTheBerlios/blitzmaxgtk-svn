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

Extern
	function gtk_moz_embed_get_type:byte ptr()
	function gtk_moz_embed_new:byte ptr()
	function gtk_moz_embed_set_comp_path(aPath:byte ptr)
	function gtk_moz_embed_load_url(embed:byte ptr, url:byte ptr)
	function gtk_moz_embed_stop_load(embed:byte ptr)
	function gtk_moz_embed_can_go_back:byte(embed:byte ptr)
	function gtk_moz_embed_can_go_forward:byte(embed:byte ptr)
	function gtk_moz_embed_go_back(embed:byte ptr)
	function gtk_moz_embed_go_forward(embed:byte ptr)
	function gtk_moz_embed_render_data(embed:byte ptr, data.byte ptr, length:int, base_uri:byte ptr, mime_type:byte ptr)
	function gtk_moz_embed_open_stream(embed:byte ptr, base_uri:byte ptr, mime_type:byte ptr)
	function gtk_moz_embed_append_data(embed:byte ptr, data:byte ptr, length:int)
	function gtk_moz_embed_close_stream(embed:byte ptr)
	function gtk_moz_embed_get_link_message:byte ptr(embed:byte ptr)
	function gtk_moz_embed_get_js_status:byte ptr(embed:byte ptr)
	function gtk_moz_embed_get_title:byte ptr(embed:byte ptr)
	function gtk_moz_embed_get_location:byte ptr(embed:byte ptr)
	function gtk_moz_embed_reload(embed:byte ptr, flags:int)
	function gtk_moz_embed_set_chrome_mask(embed:byte ptr, flags:int)
	function gtk_moz_embed_get_chrome_mask:int(embed:byte ptr)
	function gtk_moz_embed_get_nsIWebBrowser(embed:byte ptr, retval:byte ptr ptr)
End Extern
