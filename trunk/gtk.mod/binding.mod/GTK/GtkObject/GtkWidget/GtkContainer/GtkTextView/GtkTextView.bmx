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
	'Function gtk_text_view_new:Byte Ptr()="gtk_text_view_new"
	'Function gtk_text_view_new_with_buffer:Byte Ptr(buffer:Byte Ptr)="gtk_text_view_new_with_buffer"
	'Function gtk_text_view_set_buffer(text_view:Byte Ptr,buffer:Byte Ptr)="gtk_text_view_set_buffer"
	Function gtk_text_view_get_buffer:Byte Ptr(text_view:Byte Ptr)="gtk_text_view_get_buffer"
	'Function gtk_text_view_scroll_to_mark(text_view:Byte Ptr,mark:Byte Ptr,within_margin:gdouble,use_align:gboolean,xalign:gdouble,yalign:gdouble)="gtk_text_view_scroll_to_mark"
	'Function gtk_text_view_scroll_to_iter:gboolean(text_view:Byte Ptr,iter:Byte Ptr,within_margin:gdouble,use_align:gboolean,xalign:gdouble,yalign:gdouble)="gtk_text_view_scroll_to_iter"
	'Function gtk_text_view_scroll_mark_onscreen(text_view:Byte Ptr,mark:Byte Ptr)="gtk_text_view_scroll_mark_onscreen"
	'Function gtk_text_view_move_mark_onscreen:gboolean(text_view:Byte Ptr,mark:Byte Ptr)="gtk_text_view_move_mark_onscreen"
	'Function gtk_text_view_place_cursor_onscreen:gboolean(text_view:Byte Ptr)="gtk_text_view_place_cursor_onscreen"
	'Function gtk_text_view_get_visible_rect(text_view:Byte Ptr,visible_rect:Byte Ptr)="gtk_text_view_get_visible_rect"
	'Function gtk_text_view_get_iter_location(text_view:Byte Ptr,iter:Byte Ptr,location:Byte Ptr)="gtk_text_view_get_iter_location"
	'Function gtk_text_view_get_line_at_y(text_view:Byte Ptr,target_iter:Byte Ptr,y:gint,line_top:Byte Ptr)="gtk_text_view_get_line_at_y"
	'Function gtk_text_view_get_line_yrange(text_view:Byte Ptr,iter:Byte Ptr,y:Byte Ptr,height:Byte Ptr)="gtk_text_view_get_line_yrange"
	'Function gtk_text_view_get_iter_at_location(text_view:Byte Ptr,iter:Byte Ptr,x:gint,y:gint)="gtk_text_view_get_iter_at_location"
	'Function gtk_text_view_get_iter_at_position(text_view:Byte Ptr,iter:Byte Ptr,trailing:Byte Ptr,x:gint,y:gint)="gtk_text_view_get_iter_at_position"
	'Function gtk_text_view_buffer_to_window_coords(text_view:Byte Ptr,win:GtkTextWindowType,buffer_x:gint,buffer_y:gint,window_x:Byte Ptr,window_y:Byte Ptr)="gtk_text_view_buffer_to_window_coords"
	'Function gtk_text_view_window_to_buffer_coords(text_view:Byte Ptr,win:GtkTextWindowType,window_x:gint,window_y:gint,buffer_x:Byte Ptr,buffer_y:Byte Ptr)="gtk_text_view_window_to_buffer_coords"
	'Function gtk_text_view_get_window:Byte Ptr(text_view:Byte Ptr,win:GtkTextWindowType)="gtk_text_view_get_window"
	'Function gtk_text_view_get_window_type:GtkTextWindowType(text_view:Byte Ptr,window:Byte Ptr)="gtk_text_view_get_window_type"
	'Function gtk_text_view_set_border_window_size(text_view:Byte Ptr,type:GtkTextWindowType,size:gint)="gtk_text_view_set_border_window_size"
	'Function gtk_text_view_get_border_window_size:gint(text_view:Byte Ptr,type:GtkTextWindowType)="gtk_text_view_get_border_window_size"
	'Function gtk_text_view_forward_display_line:gboolean(text_view:Byte Ptr,iter:Byte Ptr)="gtk_text_view_forward_display_line"
	'Function gtk_text_view_backward_display_line:gboolean(text_view:Byte Ptr,iter:Byte Ptr)="gtk_text_view_backward_display_line"
	'Function gtk_text_view_forward_display_line_end:gboolean(text_view:Byte Ptr,iter:Byte Ptr)="gtk_text_view_forward_display_line_end"
	'Function gtk_text_view_backward_display_line_start:gboolean(text_view:Byte Ptr,iter:Byte Ptr)="gtk_text_view_backward_display_line_start"
	'Function gtk_text_view_starts_display_line:gboolean(text_view:Byte Ptr,iter:Byte Ptr)="gtk_text_view_starts_display_line"
	'Function gtk_text_view_move_visually:gboolean(text_view:Byte Ptr,iter:Byte Ptr,count:gint)="gtk_text_view_move_visually"
	'Function gtk_text_view_add_child_at_anchor(text_view:Byte Ptr,child:Byte Ptr,anchor:Byte Ptr)="gtk_text_view_add_child_at_anchor"
	'Function gtk_text_child_anchor_new:Byte Ptr()="gtk_text_child_anchor_new"
	'Function gtk_text_child_anchor_get_widgets:Byte Ptr(anchor:Byte Ptr)="gtk_text_child_anchor_get_widgets"
	'Function gtk_text_child_anchor_get_deleted:gboolean(anchor:Byte Ptr)="gtk_text_child_anchor_get_deleted"
	'Function gtk_text_view_add_child_in_window(text_view:Byte Ptr,child:Byte Ptr,which_window:GtkTextWindowType,xpos:gint,ypos:gint)="gtk_text_view_add_child_in_window"
	'Function gtk_text_view_move_child(text_view:Byte Ptr,child:Byte Ptr,xpos:gint,ypos:gint)="gtk_text_view_move_child"
	'Function gtk_text_view_set_wrap_mode(text_view:Byte Ptr,wrap_mode:GtkWrapMode)="gtk_text_view_set_wrap_mode"
	'Function gtk_text_view_get_wrap_mode:GtkWrapMode(text_view:Byte Ptr)="gtk_text_view_get_wrap_mode"
	'Function gtk_text_view_set_editable(text_view:Byte Ptr,setting:gboolean)="gtk_text_view_set_editable"
	'Function gtk_text_view_get_editable:gboolean(text_view:Byte Ptr)="gtk_text_view_get_editable"
	'Function gtk_text_view_set_cursor_visible(text_view:Byte Ptr,setting:gboolean)="gtk_text_view_set_cursor_visible"
	'Function gtk_text_view_get_cursor_visible:gboolean(text_view:Byte Ptr)="gtk_text_view_get_cursor_visible"
	'Function gtk_text_view_set_overwrite(text_view:Byte Ptr,overwrite:gboolean)="gtk_text_view_set_overwrite"
	'Function gtk_text_view_get_overwrite:gboolean(text_view:Byte Ptr)="gtk_text_view_get_overwrite"
	'Function gtk_text_view_set_pixels_above_lines(text_view:Byte Ptr,pixels_above_lines:gint)="gtk_text_view_set_pixels_above_lines"
	'Function gtk_text_view_get_pixels_above_lines:gint(text_view:Byte Ptr)="gtk_text_view_get_pixels_above_lines"
	'Function gtk_text_view_set_pixels_below_lines(text_view:Byte Ptr,pixels_below_lines:gint)="gtk_text_view_set_pixels_below_lines"
	'Function gtk_text_view_get_pixels_below_lines:gint(text_view:Byte Ptr)="gtk_text_view_get_pixels_below_lines"
	'Function gtk_text_view_set_pixels_inside_wrap(text_view:Byte Ptr,pixels_inside_wrap:gint)="gtk_text_view_set_pixels_inside_wrap"
	'Function gtk_text_view_get_pixels_inside_wrap:gint(text_view:Byte Ptr)="gtk_text_view_get_pixels_inside_wrap"
	'Function gtk_text_view_set_justification(text_view:Byte Ptr,justification:GtkJustification)="gtk_text_view_set_justification"
	'Function gtk_text_view_get_justification:GtkJustification(text_view:Byte Ptr)="gtk_text_view_get_justification"
	'Function gtk_text_view_set_left_margin(text_view:Byte Ptr,left_margin:gint)="gtk_text_view_set_left_margin"
	'Function gtk_text_view_get_left_margin:gint(text_view:Byte Ptr)="gtk_text_view_get_left_margin"
	'Function gtk_text_view_set_right_margin(text_view:Byte Ptr,right_margin:gint)="gtk_text_view_set_right_margin"
	'Function gtk_text_view_get_right_margin:gint(text_view:Byte Ptr)="gtk_text_view_get_right_margin"
	'Function gtk_text_view_set_indent(text_view:Byte Ptr,indent:gint)="gtk_text_view_set_indent"
	'Function gtk_text_view_get_indent:gint(text_view:Byte Ptr)="gtk_text_view_get_indent"
	'Function gtk_text_view_set_tabs(text_view:Byte Ptr,tabs:Byte Ptr)="gtk_text_view_set_tabs"
	'Function gtk_text_view_get_tabs:Byte Ptr(text_view:Byte Ptr)="gtk_text_view_get_tabs"
	'Function gtk_text_view_set_accepts_tab(text_view:Byte Ptr,accepts_tab:gboolean)="gtk_text_view_set_accepts_tab"
	'Function gtk_text_view_get_accepts_tab:gboolean(text_view:Byte Ptr)="gtk_text_view_get_accepts_tab"
	'Function gtk_text_view_get_default_attributes:Byte Ptr(text_view:Byte Ptr)="gtk_text_view_get_default_attributes"
End Extern
