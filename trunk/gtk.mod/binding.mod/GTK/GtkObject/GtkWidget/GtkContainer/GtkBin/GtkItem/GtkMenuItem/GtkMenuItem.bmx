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
	Function gtk_menu_item_new:Byte Ptr()="gtk_menu_item_new"
	Function gtk_menu_item_new_with_label:Byte Ptr(label:Byte Ptr)="gtk_menu_item_new_with_label"
	Function gtk_menu_item_new_with_mnemonic:Byte Ptr(label:Byte Ptr)="gtk_menu_item_new_with_mnemonic"
	Function gtk_menu_item_set_right_justified(menu_item:Byte Ptr,right_justified:Byte)="gtk_menu_item_set_right_justified"
	Function gtk_menu_item_set_submenu(menu_item:Byte Ptr,submenu:Byte Ptr)="gtk_menu_item_set_submenu"
	Function gtk_menu_item_set_accel_path(menu_item:Byte Ptr,accel_path:Byte Ptr)="gtk_menu_item_set_accel_path"
	Function gtk_menu_item_remove_submenu(menu_item:Byte Ptr)="gtk_menu_item_remove_submenu"
	Function gtk_menu_item_select(menu_item:Byte Ptr)="gtk_menu_item_select"
	Function gtk_menu_item_deselect(menu_item:Byte Ptr)="gtk_menu_item_deselect"
	Function gtk_menu_item_activate(menu_item:Byte Ptr)="gtk_menu_item_activate"
	Function gtk_menu_item_toggle_size_request(menu_item:Byte Ptr,requisition:Byte Ptr)="gtk_menu_item_toggle_size_request"
	Function gtk_menu_item_toggle_size_allocate(menu_item:Byte Ptr,allocation:int)="gtk_menu_item_toggle_size_allocate"
	Function gtk_menu_item_get_right_justified:Byte(menu_item:Byte Ptr)="gtk_menu_item_get_right_justified"
	Function gtk_menu_item_get_submenu:Byte Ptr(menu_item:Byte Ptr)="gtk_menu_item_get_submenu"
End Extern
