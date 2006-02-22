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
	Function gtk_text_mark_set_visible(mark:Byte Ptr,setting:gboolean)="gtk_text_mark_set_visible"
	Function gtk_text_mark_get_visible:gboolean(mark:Byte Ptr)="gtk_text_mark_get_visible"
	Function gtk_text_mark_get_deleted:gboolean(mark:Byte Ptr)="gtk_text_mark_get_deleted"
	Function gchar*:const(mark:Byte Ptr)="gchar*"
	Function gtk_text_mark_get_buffer:Byte Ptr(mark:Byte Ptr)="gtk_text_mark_get_buffer"
	Function gtk_text_mark_get_left_gravity:gboolean(mark:Byte Ptr)="gtk_text_mark_get_left_gravity"
End Extern
