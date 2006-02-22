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
	Function gtk_image_menu_item_set_image(image_menu_item:Byte Ptr,image:Byte Ptr)="gtk_image_menu_item_set_image"
	Function gtk_image_menu_item_get_image:Byte Ptr(image_menu_item:Byte Ptr)="gtk_image_menu_item_get_image"
	Function gtk_image_menu_item_new:Byte Ptr()="gtk_image_menu_item_new"
	Function gtk_image_menu_item_new_from_stock:Byte Ptr(stock_id:Byte Ptr,accel_group:Byte Ptr)="gtk_image_menu_item_new_from_stock"
	Function gtk_image_menu_item_new_with_label:Byte Ptr(label:Byte Ptr)="gtk_image_menu_item_new_with_label"
	Function gtk_image_menu_item_new_with_mnemonic:Byte Ptr(label:Byte Ptr)="gtk_image_menu_item_new_with_mnemonic"
End Extern
