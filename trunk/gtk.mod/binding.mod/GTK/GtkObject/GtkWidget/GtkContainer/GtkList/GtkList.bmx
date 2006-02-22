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
	Function gtk_list_new:Byte Ptr()="gtk_list_new"
	Function gtk_list_insert_items(list:Byte Ptr,items:Byte Ptr,position:gint)="gtk_list_insert_items"
	Function gtk_list_append_items(list:Byte Ptr,items:Byte Ptr)="gtk_list_append_items"
	Function gtk_list_prepend_items(list:Byte Ptr,items:Byte Ptr)="gtk_list_prepend_items"
	Function gtk_list_remove_items(list:Byte Ptr,items:Byte Ptr)="gtk_list_remove_items"
	Function gtk_list_remove_items_no_unref(list:Byte Ptr,items:Byte Ptr)="gtk_list_remove_items_no_unref"
	Function gtk_list_clear_items(list:Byte Ptr,start:gint,end:gint)="gtk_list_clear_items"
	Function gtk_list_select_item(list:Byte Ptr,item:gint)="gtk_list_select_item"
	Function gtk_list_unselect_item(list:Byte Ptr,item:gint)="gtk_list_unselect_item"
	Function gtk_list_select_child(list:Byte Ptr,child:Byte Ptr)="gtk_list_select_child"
	Function gtk_list_unselect_child(list:Byte Ptr,child:Byte Ptr)="gtk_list_unselect_child"
	Function gtk_list_child_position:gint(list:Byte Ptr,child:Byte Ptr)="gtk_list_child_position"
	Function gtk_list_set_selection_mode(list:Byte Ptr,mode:GtkSelectionMode)="gtk_list_set_selection_mode"
	Function gtk_list_extend_selection(list:Byte Ptr,scroll_type:GtkScrollType,position:gfloat,auto_start_selection:gboolean)="gtk_list_extend_selection"
	Function gtk_list_start_selection(list:Byte Ptr)="gtk_list_start_selection"
	Function gtk_list_end_selection(list:Byte Ptr)="gtk_list_end_selection"
	Function gtk_list_select_all(list:Byte Ptr)="gtk_list_select_all"
	Function gtk_list_unselect_all(list:Byte Ptr)="gtk_list_unselect_all"
	Function gtk_list_scroll_horizontal(list:Byte Ptr,scroll_type:GtkScrollType,position:gfloat)="gtk_list_scroll_horizontal"
	Function gtk_list_scroll_vertical(list:Byte Ptr,scroll_type:GtkScrollType,position:gfloat)="gtk_list_scroll_vertical"
	Function gtk_list_toggle_add_mode(list:Byte Ptr)="gtk_list_toggle_add_mode"
	Function gtk_list_toggle_focus_row(list:Byte Ptr)="gtk_list_toggle_focus_row"
	Function gtk_list_toggle_row(list:Byte Ptr,item:Byte Ptr)="gtk_list_toggle_row"
	Function gtk_list_undo_selection(list:Byte Ptr)="gtk_list_undo_selection"
	Function gtk_list_end_drag_selection(list:Byte Ptr)="gtk_list_end_drag_selection"
End Extern
