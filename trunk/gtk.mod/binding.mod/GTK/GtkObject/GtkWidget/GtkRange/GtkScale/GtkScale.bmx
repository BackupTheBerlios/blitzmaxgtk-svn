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
	Function gtk_scale_set_digits(scale:Byte Ptr,digits:Int)="gtk_scale_set_digits"
	Function gtk_scale_set_draw_value(scale:Byte Ptr,draw_value:Byte)="gtk_scale_set_draw_value"
	'Function gtk_scale_set_value_pos(scale:Byte Ptr,pos:GtkPositionType)="gtk_scale_set_value_pos"
	Function gtk_scale_get_digits:Int(scale:Byte Ptr)="gtk_scale_get_digits"
	Function gtk_scale_get_draw_value:Byte(scale:Byte Ptr)="gtk_scale_get_draw_value"
	'Function gtk_scale_get_value_pos:GtkPositionType(scale:Byte Ptr)="gtk_scale_get_value_pos"
	Function gtk_scale_get_layout:Byte Ptr(scale:Byte Ptr)="gtk_scale_get_layout"
	Function gtk_scale_get_layout_offsets(scale:Byte Ptr,x:Byte Ptr,y:Byte Ptr)="gtk_scale_get_layout_offsets"
End Extern
