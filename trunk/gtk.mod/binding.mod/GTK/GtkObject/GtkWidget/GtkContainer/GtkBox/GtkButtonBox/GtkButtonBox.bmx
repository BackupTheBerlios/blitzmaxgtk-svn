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
'GtkButtonBoxStyle
Const GTK_BUTTONBOX_DEFAULT_STYLE=1
Const GTK_BUTTONBOX_SPREAD=2
Const GTK_BUTTONBOX_EDGE=3
Const GTK_BUTTONBOX_START=4
Const GTK_BUTTONBOX_END=5


Extern
	Function gtk_button_box_get_layout:Byte(widget:Byte Ptr)="gtk_button_box_get_layout"
	Function gtk_button_box_get_child_size(widget:Byte Ptr,min_width:Byte Ptr,min_height:Byte Ptr)="gtk_button_box_get_child_size"
	Function gtk_button_box_get_child_ipadding(widget:Byte Ptr,ipad_x:Byte Ptr,ipad_y:Byte Ptr)="gtk_button_box_get_child_ipadding"
	Function gtk_button_box_get_child_secondary:Byte(widget:Byte Ptr,child:Byte Ptr)="gtk_button_box_get_child_secondary"
	Function gtk_button_box_set_layout(widget:Byte Ptr,layout_style:Byte)="gtk_button_box_set_layout"
	Function gtk_button_box_set_child_size(widget:Byte Ptr,min_width:int,min_height:int)="gtk_button_box_set_child_size"
	Function gtk_button_box_set_child_ipadding(widget:Byte Ptr,ipad_x:int,ipad_y:int)="gtk_button_box_set_child_ipadding"
	Function gtk_button_box_set_child_secondary(widget:Byte Ptr,child:Byte Ptr,is_secondary:Byte)="gtk_button_box_set_child_secondary"
End Extern
