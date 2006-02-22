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
	Function gtk_button_new:Byte Ptr()="gtk_button_new"
	Function gtk_button_new_with_label:Byte Ptr(label:Byte Ptr)="gtk_button_new_with_label"
	Function gtk_button_new_with_mnemonic:Byte Ptr(label:Byte Ptr)="gtk_button_new_with_mnemonic"
	Function gtk_button_new_from_stock:Byte Ptr(stock_id:Byte Ptr)="gtk_button_new_from_stock"
	Function gtk_button_pressed(button:Byte Ptr)="gtk_button_pressed"
	Function gtk_button_released(button:Byte Ptr)="gtk_button_released"
	Function gtk_button_clicked(button:Byte Ptr)="gtk_button_clicked"
	Function gtk_button_enter(button:Byte Ptr)="gtk_button_enter"
	Function gtk_button_leave(button:Byte Ptr)="gtk_button_leave"
	Function gtk_button_set_relief(button:Byte Ptr,newstyle:Byte)="gtk_button_set_relief"
	'Function gtk_button_get_relief:GtkReliefStyle(button:Byte Ptr)="gtk_button_get_relief"
	'Function gchar*:const(button:Byte Ptr)="gchar*"
	'Function gtk_button_set_label(button:Byte Ptr,label:Byte Ptr)="gtk_button_set_label"
	'Function gtk_button_get_use_stock:gboolean(button:Byte Ptr)="gtk_button_get_use_stock"
	'Function gtk_button_set_use_stock(button:Byte Ptr,use_stock:gboolean)="gtk_button_set_use_stock"
	'Function gtk_button_get_use_underline:gboolean(button:Byte Ptr)="gtk_button_get_use_underline"
	'Function gtk_button_set_use_underline(button:Byte Ptr,use_underline:gboolean)="gtk_button_set_use_underline"
	'Function gtk_button_set_focus_on_click(button:Byte Ptr,focus_on_click:gboolean)="gtk_button_set_focus_on_click"
	'Function gtk_button_get_focus_on_click:gboolean(button:Byte Ptr)="gtk_button_get_focus_on_click"
	'Function gtk_button_set_alignment(button:Byte Ptr,xalign:gfloat,yalign:gfloat)="gtk_button_set_alignment"
	'Function gtk_button_get_alignment(button:Byte Ptr,xalign:Byte Ptr,yalign:Byte Ptr)="gtk_button_get_alignment"
	'Function gtk_button_set_image(button:Byte Ptr,image:Byte Ptr)="gtk_button_set_image"
	'Function gtk_button_get_image:Byte Ptr(button:Byte Ptr)="gtk_button_get_image"
End Extern
