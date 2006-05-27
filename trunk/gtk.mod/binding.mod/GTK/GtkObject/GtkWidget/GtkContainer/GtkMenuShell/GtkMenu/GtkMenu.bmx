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
	Function gtk_menu_new:byte ptr()
	function gtk_menu_set_screen(menu:byte ptr, screen:byte ptr)
	function gtk_menu_reorder_child(menu:byte ptr, child:byte ptr, position:int)
	function gtk_menu_attach(menu:byte ptr, child:byte ptr, left_attach:int, right_attach:int, top_attach:int, bottom_attach:int)
	function gtk_menu_popup(menu:byte ptr, parent_menu_shell:byte ptr, parent_menu_item:byte ptr, func:byte ptr, data:byte ptr, button:int, activate_time:int)
	function gtk_menu_set_accel_group(menu:byte ptr, accel_group:byte ptr)
	function gtk_menu_get_accel_group:byte ptr(menu:byte ptr)
	function gtk_menu_set_accel_path(menu:byte ptr, accel_path:byte ptr)
	function gtk_menu_set_title(menu:byte ptr, title:byte ptr)
	function gtk_menu_get_tearoff_state:byte(menu:byte ptr)
	function gtk_menu_get_title:byte ptr(menu:byte ptr)
	function gtk_menu_popdown(menu:byte ptr)
	function gtk_menu_reposition(menu:byte ptr)
	function gtk_menu_get_active:byte ptr(menu:byte ptr)
	function gtk_menu_set_active(menu:byte ptr, index:int)
	function gtk_menu_set_tearoff_state(menu:byte ptr, torn_off:byte)
	function gtk_menu_attach_to_widget(menu:byte ptr, attach_widget:byte ptr, detacher:byte ptr)
	function gtk_menu_detach(menu:byte ptr)
	function gtk_menu_get_attach_widget:byte ptr(menu:byte ptr)
	function gtk_menu_get_for_attach_widget:byte ptr(widget:byte ptr)
	function gtk_menu_set_monitor(menu:byte ptr, monitor_num:int)
End Extern
