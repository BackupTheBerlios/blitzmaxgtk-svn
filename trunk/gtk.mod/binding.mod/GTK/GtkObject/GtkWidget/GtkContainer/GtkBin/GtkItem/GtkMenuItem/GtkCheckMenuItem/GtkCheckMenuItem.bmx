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
	Function gtk_check_menu_item_new:Byte Ptr()="gtk_check_menu_item_new"
	Function gtk_check_menu_item_new_with_label:Byte Ptr(label:Byte Ptr)="gtk_check_menu_item_new_with_label"
	Function gtk_check_menu_item_new_with_mnemonic:Byte Ptr(label:Byte Ptr)="gtk_check_menu_item_new_with_mnemonic"
	Function gtk_check_menu_item_get_active:Byte(check_menu_item:Byte Ptr)="gtk_check_menu_item_get_active"
	Function gtk_check_menu_item_set_active(check_menu_item:Byte Ptr,is_active:Byte)="gtk_check_menu_item_set_active"
	Function gtk_check_menu_item_set_show_toggle(menu_item:Byte Ptr,always:Byte)="gtk_check_menu_item_set_show_toggle"
	Function gtk_check_menu_item_toggled(check_menu_item:Byte Ptr)="gtk_check_menu_item_toggled"
	Function gtk_check_menu_item_get_inconsistent:Byte(check_menu_item:Byte Ptr)="gtk_check_menu_item_get_inconsistent"
	Function gtk_check_menu_item_set_inconsistent(check_menu_item:Byte Ptr,setting:Byte)="gtk_check_menu_item_set_inconsistent"
	Function gtk_check_menu_item_set_draw_as_radio(check_menu_item:Byte Ptr,draw_as_radio:Byte)="gtk_check_menu_item_set_draw_as_radio"
	Function gtk_check_menu_item_get_draw_as_radio:Byte(check_menu_item:Byte Ptr)="gtk_check_menu_item_get_draw_as_radio"
End Extern
