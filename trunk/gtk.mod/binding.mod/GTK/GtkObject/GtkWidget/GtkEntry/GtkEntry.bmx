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
	Function gtk_entry_new:Byte Ptr()="gtk_entry_new"
	Function gtk_entry_new_with_max_length:Byte Ptr(cmax:int)="gtk_entry_new_with_max_length"
	Function gtk_entry_set_text(entry:Byte Ptr,text:Byte Ptr)="gtk_entry_set_text"
	Function gtk_entry_append_text(entry:Byte Ptr,text:Byte Ptr)="gtk_entry_append_text"
	Function gtk_entry_prepend_text(entry:Byte Ptr,text:Byte Ptr)="gtk_entry_prepend_text"
	Function gtk_entry_set_position(entry:Byte Ptr,position:int)="gtk_entry_set_position"
	Function gtk_entry_get_text:Byte Ptr(entry:Byte Ptr)="gtk_entry_get_text"
	Function gtk_entry_select_region(entry:Byte Ptr,slstart:int,slend:int)="gtk_entry_select_region"
	Function gtk_entry_set_visibility(entry:Byte Ptr,visible:Byte)="gtk_entry_set_visibility"
	Function gtk_entry_set_invisible_char(entry:Byte Ptr,ch:Byte)="gtk_entry_set_invisible_char"
	Function gtk_entry_set_editable(entry:Byte Ptr,editable:Byte)="gtk_entry_set_editable"
	Function gtk_entry_set_max_length(entry:Byte Ptr,cmax:int)="gtk_entry_set_max_length"
	Function gtk_entry_get_activates_default:Byte(entry:Byte Ptr)="gtk_entry_get_activates_default"
	Function gtk_entry_get_has_frame:Byte(entry:Byte Ptr)="gtk_entry_get_has_frame"
	Function gtk_entry_get_width_chars:int(entry:Byte Ptr)="gtk_entry_get_width_chars"
	Function gtk_entry_set_activates_default(entry:Byte Ptr,setting:Byte)="gtk_entry_set_activates_default"
	Function gtk_entry_set_has_frame(entry:Byte Ptr,setting:Byte)="gtk_entry_set_has_frame"
	Function gtk_entry_set_width_chars(entry:Byte Ptr,n_chars:int)="gtk_entry_set_width_chars"
	Function gtk_entry_get_invisible_char:Byte(entry:Byte Ptr)="gtk_entry_get_invisible_char"
	Function gtk_entry_set_alignment(entry:Byte Ptr,xalign:double)="gtk_entry_set_alignment"
	Function gtk_entry_get_alignment:double(entry:Byte Ptr)="gtk_entry_get_alignment"
	Function gtk_entry_get_layout:Byte Ptr(entry:Byte Ptr)="gtk_entry_get_layout"
	Function gtk_entry_get_layout_offsets(entry:Byte Ptr,x:Int,y:Int)="gtk_entry_get_layout_offsets"
	Function gtk_entry_layout_index_to_text_index:int(entry:Byte Ptr,layout_index:int)="gtk_entry_layout_index_to_text_index"
	Function gtk_entry_text_index_to_layout_index:int(entry:Byte Ptr,text_index:int)="gtk_entry_text_index_to_layout_index"
	Function gtk_entry_get_max_length:int(entry:Byte Ptr)="gtk_entry_get_max_length"
	Function gtk_entry_get_visibility:Byte(entry:Byte Ptr)="gtk_entry_get_visibility"
	Function gtk_entry_set_completion(entry:Byte Ptr,completion:Byte Ptr)="gtk_entry_set_completion"
	Function gtk_entry_get_completion:Byte Ptr(entry:Byte Ptr)="gtk_entry_get_completion"
End Extern
