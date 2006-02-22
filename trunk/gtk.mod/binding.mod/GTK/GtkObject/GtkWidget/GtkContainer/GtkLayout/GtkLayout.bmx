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
	Function gtk_layout_new:Byte Ptr(hadjustment:Byte Ptr,vadjustment:Byte Ptr)="gtk_layout_new"
	Function gtk_layout_put(layout:Byte Ptr,child_widget:Byte Ptr,x:gint,y:gint)="gtk_layout_put"
	Function gtk_layout_move(layout:Byte Ptr,child_widget:Byte Ptr,x:gint,y:gint)="gtk_layout_move"
	Function gtk_layout_set_size(layout:Byte Ptr,width:guint,height:guint)="gtk_layout_set_size"
	Function gtk_layout_get_size(layout:Byte Ptr,width:Byte Ptr,height:Byte Ptr)="gtk_layout_get_size"
	Function gtk_layout_freeze(layout:Byte Ptr)="gtk_layout_freeze"
	Function gtk_layout_thaw(layout:Byte Ptr)="gtk_layout_thaw"
	Function gtk_layout_get_hadjustment:Byte Ptr(layout:Byte Ptr)="gtk_layout_get_hadjustment"
	Function gtk_layout_get_vadjustment:Byte Ptr(layout:Byte Ptr)="gtk_layout_get_vadjustment"
	Function gtk_layout_set_hadjustment(layout:Byte Ptr,adjustment:Byte Ptr)="gtk_layout_set_hadjustment"
	Function gtk_layout_set_vadjustment(layout:Byte Ptr,adjustment:Byte Ptr)="gtk_layout_set_vadjustment"
End Extern
