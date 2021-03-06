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
	Function gtk_text_buffer_new:Byte Ptr(table:Byte Ptr)="gtk_text_buffer_new"
	Function gtk_text_buffer_get_line_count:gint(buffer:Byte Ptr)="gtk_text_buffer_get_line_count"
	Function gtk_text_buffer_get_char_count:gint(buffer:Byte Ptr)="gtk_text_buffer_get_char_count"
	Function gtk_text_buffer_get_tag_table:Byte Ptr(buffer:Byte Ptr)="gtk_text_buffer_get_tag_table"
	Function gtk_text_buffer_insert(buffer:Byte Ptr,iter:Byte Ptr,text:Byte Ptr,len:gint)="gtk_text_buffer_insert"
	Function gtk_text_buffer_insert_at_cursor(buffer:Byte Ptr,text:Byte Ptr,len:gint)="gtk_text_buffer_insert_at_cursor"
	Function gtk_text_buffer_insert_interactive:gboolean(buffer:Byte Ptr,iter:Byte Ptr,text:Byte Ptr,len:gint,default_editable:gboolean)="gtk_text_buffer_insert_interactive"
	Function gtk_text_buffer_insert_interactive_at_cursor:gboolean(buffer:Byte Ptr,text:Byte Ptr,len:gint,default_editable:gboolean)="gtk_text_buffer_insert_interactive_at_cursor"
	Function gtk_text_buffer_insert_range(buffer:Byte Ptr,iter:Byte Ptr,start:Byte Ptr,end:Byte Ptr)="gtk_text_buffer_insert_range"
	Function gtk_text_buffer_insert_range_interactive:gboolean(buffer:Byte Ptr,iter:Byte Ptr,start:Byte Ptr,end:Byte Ptr,default_editable:gboolean)="gtk_text_buffer_insert_range_interactive"
	Function gtk_text_buffer_delete(buffer:Byte Ptr,start:Byte Ptr,end:Byte Ptr)="gtk_text_buffer_delete"
	Function gtk_text_buffer_delete_interactive:gboolean(buffer:Byte Ptr,start_iter:Byte Ptr,end_iter:Byte Ptr,default_editable:gboolean)="gtk_text_buffer_delete_interactive"
	Function gtk_text_buffer_backspace:gboolean(buffer:Byte Ptr,iter:Byte Ptr,interactive:gboolean,default_editable:gboolean)="gtk_text_buffer_backspace"
	Function gtk_text_buffer_set_text(buffer:Byte Ptr,text:Byte Ptr,len:gint)="gtk_text_buffer_set_text"
	Function gtk_text_buffer_get_text:Byte Ptr(buffer:Byte Ptr,start:Byte Ptr,end:Byte Ptr,include_hidden_chars:gboolean)="gtk_text_buffer_get_text"
	Function gtk_text_buffer_get_slice:Byte Ptr(buffer:Byte Ptr,start:Byte Ptr,end:Byte Ptr,include_hidden_chars:gboolean)="gtk_text_buffer_get_slice"
	Function gtk_text_buffer_insert_pixbuf(buffer:Byte Ptr,iter:Byte Ptr,pixbuf:Byte Ptr)="gtk_text_buffer_insert_pixbuf"
	Function gtk_text_buffer_insert_child_anchor(buffer:Byte Ptr,iter:Byte Ptr,anchor:Byte Ptr)="gtk_text_buffer_insert_child_anchor"
	Function gtk_text_buffer_create_child_anchor:Byte Ptr(buffer:Byte Ptr,iter:Byte Ptr)="gtk_text_buffer_create_child_anchor"
	Function gtk_text_buffer_create_mark:Byte Ptr(buffer:Byte Ptr,mark_name:Byte Ptr,where:Byte Ptr,left_gravity:gboolean)="gtk_text_buffer_create_mark"
	Function gtk_text_buffer_move_mark(buffer:Byte Ptr,mark:Byte Ptr,where:Byte Ptr)="gtk_text_buffer_move_mark"
	Function gtk_text_buffer_move_mark_by_name(buffer:Byte Ptr,name:Byte Ptr,where:Byte Ptr)="gtk_text_buffer_move_mark_by_name"
	Function gtk_text_buffer_delete_mark(buffer:Byte Ptr,mark:Byte Ptr)="gtk_text_buffer_delete_mark"
	Function gtk_text_buffer_delete_mark_by_name(buffer:Byte Ptr,name:Byte Ptr)="gtk_text_buffer_delete_mark_by_name"
	Function gtk_text_buffer_get_mark:Byte Ptr(buffer:Byte Ptr,name:Byte Ptr)="gtk_text_buffer_get_mark"
	Function gtk_text_buffer_get_insert:Byte Ptr(buffer:Byte Ptr)="gtk_text_buffer_get_insert"
	Function gtk_text_buffer_get_selection_bound:Byte Ptr(buffer:Byte Ptr)="gtk_text_buffer_get_selection_bound"
	Function gtk_text_buffer_place_cursor(buffer:Byte Ptr,where:Byte Ptr)="gtk_text_buffer_place_cursor"
	Function gtk_text_buffer_select_range(buffer:Byte Ptr,ins:Byte Ptr,bound:Byte Ptr)="gtk_text_buffer_select_range"
	Function gtk_text_buffer_apply_tag(buffer:Byte Ptr,tag:Byte Ptr,start:Byte Ptr,end:Byte Ptr)="gtk_text_buffer_apply_tag"
	Function gtk_text_buffer_remove_tag(buffer:Byte Ptr,tag:Byte Ptr,start:Byte Ptr,end:Byte Ptr)="gtk_text_buffer_remove_tag"
	Function gtk_text_buffer_apply_tag_by_name(buffer:Byte Ptr,name:Byte Ptr,start:Byte Ptr,end:Byte Ptr)="gtk_text_buffer_apply_tag_by_name"
	Function gtk_text_buffer_remove_tag_by_name(buffer:Byte Ptr,name:Byte Ptr,start:Byte Ptr,end:Byte Ptr)="gtk_text_buffer_remove_tag_by_name"
	Function gtk_text_buffer_remove_all_tags(buffer:Byte Ptr,start:Byte Ptr,end:Byte Ptr)="gtk_text_buffer_remove_all_tags"
	Function gtk_text_buffer_get_iter_at_line_offset(buffer:Byte Ptr,iter:Byte Ptr,line_number:gint,char_offset:gint)="gtk_text_buffer_get_iter_at_line_offset"
	Function gtk_text_buffer_get_iter_at_offset(buffer:Byte Ptr,iter:Byte Ptr,char_offset:gint)="gtk_text_buffer_get_iter_at_offset"
	Function gtk_text_buffer_get_iter_at_line(buffer:Byte Ptr,iter:Byte Ptr,line_number:gint)="gtk_text_buffer_get_iter_at_line"
	Function gtk_text_buffer_get_iter_at_line_index(buffer:Byte Ptr,iter:Byte Ptr,line_number:gint,byte_index:gint)="gtk_text_buffer_get_iter_at_line_index"
	Function gtk_text_buffer_get_iter_at_mark(buffer:Byte Ptr,iter:Byte Ptr,mark:Byte Ptr)="gtk_text_buffer_get_iter_at_mark"
	Function gtk_text_buffer_get_iter_at_child_anchor(buffer:Byte Ptr,iter:Byte Ptr,anchor:Byte Ptr)="gtk_text_buffer_get_iter_at_child_anchor"
	Function gtk_text_buffer_get_start_iter(buffer:Byte Ptr,iter:Byte Ptr)="gtk_text_buffer_get_start_iter"
	Function gtk_text_buffer_get_end_iter(buffer:Byte Ptr,iter:Byte Ptr)="gtk_text_buffer_get_end_iter"
	Function gtk_text_buffer_get_bounds(buffer:Byte Ptr,start:Byte Ptr,end:Byte Ptr)="gtk_text_buffer_get_bounds"
	Function gtk_text_buffer_get_modified:gboolean(buffer:Byte Ptr)="gtk_text_buffer_get_modified"
	Function gtk_text_buffer_set_modified(buffer:Byte Ptr,setting:gboolean)="gtk_text_buffer_set_modified"
	Function gtk_text_buffer_delete_selection:gboolean(buffer:Byte Ptr,interactive:gboolean,default_editable:gboolean)="gtk_text_buffer_delete_selection"
	Function gtk_text_buffer_paste_clipboard(buffer:Byte Ptr,clipboard:Byte Ptr,override_location:Byte Ptr,default_editable:gboolean)="gtk_text_buffer_paste_clipboard"
	Function gtk_text_buffer_copy_clipboard(buffer:Byte Ptr,clipboard:Byte Ptr)="gtk_text_buffer_copy_clipboard"
	Function gtk_text_buffer_cut_clipboard(buffer:Byte Ptr,clipboard:Byte Ptr,default_editable:gboolean)="gtk_text_buffer_cut_clipboard"
	Function gtk_text_buffer_get_selection_bounds:gboolean(buffer:Byte Ptr,start:Byte Ptr,end:Byte Ptr)="gtk_text_buffer_get_selection_bounds"
	Function gtk_text_buffer_begin_user_action(buffer:Byte Ptr)="gtk_text_buffer_begin_user_action"
	Function gtk_text_buffer_end_user_action(buffer:Byte Ptr)="gtk_text_buffer_end_user_action"
	Function gtk_text_buffer_add_selection_clipboard(buffer:Byte Ptr,clipboard:Byte Ptr)="gtk_text_buffer_add_selection_clipboard"
	Function gtk_text_buffer_remove_selection_clipboard(buffer:Byte Ptr,clipboard:Byte Ptr)="gtk_text_buffer_remove_selection_clipboard"
End Extern
