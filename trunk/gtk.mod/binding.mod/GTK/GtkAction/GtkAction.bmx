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
	Function gtk_action_new:Byte Ptr(name:Byte Ptr,label:Byte Ptr,tooltip:Byte Ptr,stock_id:Byte Ptr)="gtk_action_new"
	Function gchar*:const(action:Byte Ptr)="gchar*"
	Function gtk_action_is_sensitive:gboolean(action:Byte Ptr)="gtk_action_is_sensitive"
	Function gtk_action_get_sensitive:gboolean(action:Byte Ptr)="gtk_action_get_sensitive"
	Function gtk_action_set_sensitive(action:Byte Ptr,sensitive:gboolean)="gtk_action_set_sensitive"
	Function gtk_action_is_visible:gboolean(action:Byte Ptr)="gtk_action_is_visible"
	Function gtk_action_get_visible:gboolean(action:Byte Ptr)="gtk_action_get_visible"
	Function gtk_action_set_visible(action:Byte Ptr,visible:gboolean)="gtk_action_set_visible"
	Function gtk_action_activate(action:Byte Ptr)="gtk_action_activate"
	Function gtk_action_create_icon:Byte Ptr(action:Byte Ptr,icon_size:GtkIconSize)="gtk_action_create_icon"
	Function gtk_action_create_menu_item:Byte Ptr(action:Byte Ptr)="gtk_action_create_menu_item"
	Function gtk_action_create_tool_item:Byte Ptr(action:Byte Ptr)="gtk_action_create_tool_item"
	Function gtk_action_connect_proxy(action:Byte Ptr,proxy:Byte Ptr)="gtk_action_connect_proxy"
	Function gtk_action_disconnect_proxy(action:Byte Ptr,proxy:Byte Ptr)="gtk_action_disconnect_proxy"
	Function gtk_action_get_proxies:Byte Ptr(action:Byte Ptr)="gtk_action_get_proxies"
	Function gtk_action_connect_accelerator(action:Byte Ptr)="gtk_action_connect_accelerator"
	Function gtk_action_disconnect_accelerator(action:Byte Ptr)="gtk_action_disconnect_accelerator"
	Function gtk_action_block_activate_from(action:Byte Ptr,proxy:Byte Ptr)="gtk_action_block_activate_from"
	Function gtk_action_unblock_activate_from(action:Byte Ptr,proxy:Byte Ptr)="gtk_action_unblock_activate_from"
	Function gchar*:const(action:Byte Ptr)="gchar*"
	Function gtk_action_set_accel_path(action:Byte Ptr,accel_path:Byte Ptr)="gtk_action_set_accel_path"
	Function gtk_action_get_accel_closure:Byte Ptr(action:Byte Ptr)="gtk_action_get_accel_closure"
	Function gtk_action_set_accel_group(action:Byte Ptr,accel_group:Byte Ptr)="gtk_action_set_accel_group"
End Extern
