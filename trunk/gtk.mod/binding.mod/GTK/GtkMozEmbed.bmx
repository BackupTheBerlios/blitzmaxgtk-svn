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
	Function gtk_moz_embed_get_type:Byte Ptr()
	function gtk_moz_embed_new:byte ptr()
	function gtk_moz_embed_set_comp_path(aPath:byte ptr)
	function gtk_moz_embed_load_url(embed:byte ptr, url:byte ptr)
	function gtk_moz_embed_stop_load(embed:byte ptr)
	function gtk_moz_embed_can_go_back:byte(embed:byte ptr)
	function gtk_moz_embed_can_go_forward:byte(embed:byte ptr)
	function gtk_moz_embed_go_back(embed:byte ptr)
	function gtk_moz_embed_go_forward(embed:byte ptr)
	function gtk_moz_embed_render_data(embed:byte ptr, data:byte ptr, length:int, base_uri:byte ptr, mime_type:byte ptr)
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

' GtkMozEmbedProgressFlags
const GTK_MOZ_EMBED_FLAG_START:int = 1
const GTK_MOZ_EMBED_FLAG_REDIRECTING:int = 2
const GTK_MOZ_EMBED_FLAG_TRANSFERRING:int = 4
const GTK_MOZ_EMBED_FLAG_NEGOTIATING:int = 8
const GTK_MOZ_EMBED_FLAG_STOP = 16

const GTK_MOZ_EMBED_FLAG_IS_REQUEST:int = 65536
const GTK_MOZ_EMBED_FLAG_IS_DOCUMENT:int = 131072
const GTK_MOZ_EMBED_FLAG_IS_NETWORK:int = 262144
const GTK_MOZ_EMBED_FLAG_IS_WINDOW:int= 524288

const GTK_MOZ_EMBED_FLAG_RESTORING:int = 16777216

' GtkMozEmbedStatusFlags
const GTK_MOZ_EMBED_STATUS_FAILED_DNS:int = 2152398878
const GTK_MOZ_EMBED_STATUS_FAILED_CONNECT:int = 2152398861
const GTK_MOZ_EMBED_STATUS_FAILED_TIMEOUT:int = 2152398862
const GTK_MOZ_EMBED_STATUS_FAILED_USERCANCELED:int = 2152398850

' GtkMozEmbedReloadFlags
const GTK_MOZ_EMBED_FLAG_RELOADNORMAL:int = 0
const GTK_MOZ_EMBED_FLAG_RELOADBYPASSCACHE:int = 1
const GTK_MOZ_EMBED_FLAG_RELOADBYPASSPROXY:int = 2
const GTK_MOZ_EMBED_FLAG_RELOADBYPASSPROXYANDCACHE:int = 3
const GTK_MOZ_EMBED_FLAG_RELOADCHARSETCHANGE:int = 4

' GtkMozEmbedChromeFlags
const GTK_MOZ_EMBED_FLAG_DEFAULTCHROME:int = 1
const GTK_MOZ_EMBED_FLAG_WINDOWBORDERSON:int = 2
const GTK_MOZ_EMBED_FLAG_WINDOWCLOSEON:int = 4
const GTK_MOZ_EMBED_FLAG_WINDOWRESIZEON:int = 8
const GTK_MOZ_EMBED_FLAG_MENUBARON:int = 16
const GTK_MOZ_EMBED_FLAG_TOOLBARON:int = 32
const GTK_MOZ_EMBED_FLAG_LOCATIONBARON:int = 64
const GTK_MOZ_EMBED_FLAG_STATUSBARON:int = 128
const GTK_MOZ_EMBED_FLAG_PERSONALTOOLBARON:int = 256
const GTK_MOZ_EMBED_FLAG_SCROLLBARSON:int = 512
const GTK_MOZ_EMBED_FLAG_TITLEBARON:int = 1024
const GTK_MOZ_EMBED_FLAG_EXTRACHROMEON:int = 2048
const GTK_MOZ_EMBED_FLAG_ALLCHROME:int = 4094
const GTK_MOZ_EMBED_FLAG_WINDOWRAISED:int = 33554432
const GTK_MOZ_EMBED_FLAG_WINDOWLOWERED:int = 67108864
const GTK_MOZ_EMBED_FLAG_CENTERSCREEN:int = 134217728
const GTK_MOZ_EMBED_FLAG_DEPENDENT:int = 268435456
const GTK_MOZ_EMBED_FLAG_MODAL:int = 536870912
const GTK_MOZ_EMBED_FLAG_OPENASDIALOG:int = 1073741824
const GTK_MOZ_EMBED_FLAG_OPENASCHROME:int = 2147483648

