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
	Function gtk_editable_select_region(editable:Byte Ptr,start:gint,end:gint)="gtk_editable_select_region"
	Function gtk_editable_get_selection_bounds:gboolean(editable:Byte Ptr,start:Byte Ptr,end:Byte Ptr)="gtk_editable_get_selection_bounds"
	Function gtk_editable_insert_text(editable:Byte Ptr,new_text:Byte Ptr,new_text_length:gint,position:Byte Ptr)="gtk_editable_insert_text"
	Function gtk_editable_delete_text(editable:Byte Ptr,start_pos:gint,end_pos:gint)="gtk_editable_delete_text"
	Function gtk_editable_get_chars:Byte Ptr(editable:Byte Ptr,start_pos:gint,end_pos:gint)="gtk_editable_get_chars"
	Function gtk_editable_cut_clipboard(editable:Byte Ptr)="gtk_editable_cut_clipboard"
	Function gtk_editable_copy_clipboard(editable:Byte Ptr)="gtk_editable_copy_clipboard"
	Function gtk_editable_paste_clipboard(editable:Byte Ptr)="gtk_editable_paste_clipboard"
	Function gtk_editable_delete_selection(editable:Byte Ptr)="gtk_editable_delete_selection"
	Function gtk_editable_set_position(editable:Byte Ptr,position:gint)="gtk_editable_set_position"
	Function gtk_editable_get_position:gint(editable:Byte Ptr)="gtk_editable_get_position"
	Function gtk_editable_set_editable(editable:Byte Ptr,is_editable:gboolean)="gtk_editable_set_editable"
	Function gtk_editable_get_editable:gboolean(editable:Byte Ptr)="gtk_editable_get_editable"
End Extern
