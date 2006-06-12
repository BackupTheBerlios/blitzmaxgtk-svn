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
	'Function :gboolean((GtkTreeView *tree_view:*GtkTreeViewColumnDropFunc),column:Byte Ptr,prev_column:Byte Ptr,next_column:Byte Ptr,data);:gpointer)=""
	'Function ((GtkTreeView *tree_view:*GtkTreeViewMappingFunc),path:Byte Ptr,user_data);:gpointer)=""
	'Function :gboolean((GtkTreeModel *model:*GtkTreeViewSearchEqualFunc),column:gint,key:Byte Ptr,iter:Byte Ptr,search_data);:gpointer)=""
	Function gtk_tree_view_new:Byte Ptr()="gtk_tree_view_new"
	Function gtk_tree_view_new_with_model:Byte Ptr(model:Byte Ptr)="gtk_tree_view_new_with_model"
	Function gtk_tree_view_get_model:Byte Ptr(tree_view:Byte Ptr)="gtk_tree_view_get_model"
	Function gtk_tree_view_set_model(tree_view:Byte Ptr,model:Byte Ptr)="gtk_tree_view_set_model"
	Function gtk_tree_view_get_selection:Byte Ptr(tree_view:Byte Ptr)="gtk_tree_view_get_selection"
	Function gtk_tree_view_get_hadjustment:Byte Ptr(tree_view:Byte Ptr)="gtk_tree_view_get_hadjustment"
	Function gtk_tree_view_set_hadjustment(tree_view:Byte Ptr,adjustment:Byte Ptr)="gtk_tree_view_set_hadjustment"
	Function gtk_tree_view_get_vadjustment:Byte Ptr(tree_view:Byte Ptr)="gtk_tree_view_get_vadjustment"
	Function gtk_tree_view_set_vadjustment(tree_view:Byte Ptr,adjustment:Byte Ptr)="gtk_tree_view_set_vadjustment"
	Function gtk_tree_view_get_headers_visible:Byte(tree_view:Byte Ptr)="gtk_tree_view_get_headers_visible"
	Function gtk_tree_view_set_headers_visible(tree_view:Byte Ptr,headers_visible:Byte)="gtk_tree_view_set_headers_visible"
	Function gtk_tree_view_columns_autosize(tree_view:Byte Ptr)="gtk_tree_view_columns_autosize"
	Function gtk_tree_view_set_headers_clickable(tree_view:Byte Ptr,setting:Byte)="gtk_tree_view_set_headers_clickable"
	Function gtk_tree_view_set_rules_hint(tree_view:Byte Ptr,setting:Byte)="gtk_tree_view_set_rules_hint"
	Function gtk_tree_view_get_rules_hint:Byte(tree_view:Byte Ptr)="gtk_tree_view_get_rules_hint"
	Function gtk_tree_view_append_column:int(tree_view:Byte Ptr,column:Byte Ptr)="gtk_tree_view_append_column"
	Function gtk_tree_view_remove_column:int(tree_view:Byte Ptr,column:Byte Ptr)="gtk_tree_view_remove_column"
	Function gtk_tree_view_insert_column:int(tree_view:Byte Ptr,column:Byte Ptr,position:int)="gtk_tree_view_insert_column"
	'Function gtk_tree_view_insert_column_with_data_func:int(tree_view:Byte Ptr,position:int,title:Byte Ptr,cell:Byte Ptr,func:GtkTreeCellDataFunc,data:gpointer,dnotify:GDestroyNotify)="gtk_tree_view_insert_column_with_data_func"
	Function gtk_tree_view_get_column:Byte Ptr(tree_view:Byte Ptr,n:int)="gtk_tree_view_get_column"
	Function gtk_tree_view_get_columns:Byte Ptr(tree_view:Byte Ptr)="gtk_tree_view_get_columns"
	Function gtk_tree_view_move_column_after(tree_view:Byte Ptr,column:Byte Ptr,base_column:Byte Ptr)="gtk_tree_view_move_column_after"
	Function gtk_tree_view_set_expander_column(tree_view:Byte Ptr,column:Byte Ptr)="gtk_tree_view_set_expander_column"
	Function gtk_tree_view_get_expander_column:Byte Ptr(tree_view:Byte Ptr)="gtk_tree_view_get_expander_column"
	'Function gtk_tree_view_set_column_drag_function(tree_view:Byte Ptr,func:GtkTreeViewColumnDropFunc,user_data:gpointer,destroy:GtkDestroyNotify)="gtk_tree_view_set_column_drag_function"
	Function gtk_tree_view_scroll_to_point(tree_view:Byte Ptr,tree_x:int,tree_y:int)="gtk_tree_view_scroll_to_point"
	Function gtk_tree_view_scroll_to_cell(tree_view:Byte Ptr,path:Byte Ptr,column:Byte Ptr,use_align:Byte,row_align:Float,col_align:float)="gtk_tree_view_scroll_to_cell"
	Function gtk_tree_view_set_cursor(tree_view:Byte Ptr,path:Byte Ptr,focus_column:Byte Ptr,start_editing:Byte)="gtk_tree_view_set_cursor"
	Function gtk_tree_view_set_cursor_on_cell(tree_view:Byte Ptr,path:Byte Ptr,focus_column:Byte Ptr,focus_cell:Byte Ptr,start_editing:Byte)="gtk_tree_view_set_cursor_on_cell"
	Function gtk_tree_view_get_cursor(tree_view:Byte Ptr,path:Byte Ptr,focus_column:Byte Ptr)="gtk_tree_view_get_cursor"
	Function gtk_tree_view_row_activated(tree_view:Byte Ptr,path:Byte Ptr,column:Byte Ptr)="gtk_tree_view_row_activated"
	Function gtk_tree_view_expand_all(tree_view:Byte Ptr)="gtk_tree_view_expand_all"
	Function gtk_tree_view_collapse_all(tree_view:Byte Ptr)="gtk_tree_view_collapse_all"
	Function gtk_tree_view_expand_to_path(tree_view:Byte Ptr,path:Byte Ptr)="gtk_tree_view_expand_to_path"
	Function gtk_tree_view_expand_row:Byte(tree_view:Byte Ptr,path:Byte Ptr,open_all:Byte)="gtk_tree_view_expand_row"
	Function gtk_tree_view_collapse_row:Byte(tree_view:Byte Ptr,path:Byte Ptr)="gtk_tree_view_collapse_row"
	Function gtk_tree_view_map_expanded_rows(tree_view:Byte Ptr,func:Byte Ptr,data:Byte Ptr)="gtk_tree_view_map_expanded_rows"
	Function gtk_tree_view_row_expanded:Byte(tree_view:Byte Ptr,path:Byte Ptr)="gtk_tree_view_row_expanded"
	Function gtk_tree_view_set_reorderable(tree_view:Byte Ptr,reorderable:Byte)="gtk_tree_view_set_reorderable"
	Function gtk_tree_view_get_reorderable:Byte(tree_view:Byte Ptr)="gtk_tree_view_get_reorderable"
	Function gtk_tree_view_get_path_at_pos:Byte(tree_view:Byte Ptr,x:int,y:int,path:Byte Ptr,column:Byte Ptr,cell_x:Byte Ptr,cell_y:Byte Ptr)="gtk_tree_view_get_path_at_pos"
	Function gtk_tree_view_get_cell_area(tree_view:Byte Ptr,path:Byte Ptr,column:Byte Ptr,rect:Byte Ptr)="gtk_tree_view_get_cell_area"
	Function gtk_tree_view_get_background_area(tree_view:Byte Ptr,path:Byte Ptr,column:Byte Ptr,rect:Byte Ptr)="gtk_tree_view_get_background_area"
	Function gtk_tree_view_get_visible_rect(tree_view:Byte Ptr,visible_rect:Byte Ptr)="gtk_tree_view_get_visible_rect"
	Function gtk_tree_view_get_visible_range:Byte(tree_view:Byte Ptr,start_path:Byte Ptr,end_path:Byte Ptr)="gtk_tree_view_get_visible_range"
	Function gtk_tree_view_get_bin_window:Byte Ptr(tree_view:Byte Ptr)="gtk_tree_view_get_bin_window"
	Function gtk_tree_view_widget_to_tree_coords(tree_view:Byte Ptr,wx:int,wy:int,tx:Byte Ptr,ty:Byte Ptr)="gtk_tree_view_widget_to_tree_coords"
	Function gtk_tree_view_tree_to_widget_coords(tree_view:Byte Ptr,tx:int,ty:int,wx:Byte Ptr,wy:Byte Ptr)="gtk_tree_view_tree_to_widget_coords"
	Function gtk_tree_view_enable_model_drag_dest(tree_view:Byte Ptr,targets:Byte Ptr,n_targets:int,actions:Byte ptr)="gtk_tree_view_enable_model_drag_dest"
	Function gtk_tree_view_enable_model_drag_source(tree_view:Byte Ptr,start_button_mask:Byte Ptr,targets:Byte Ptr,n_targets:int,actions:Byte Ptr)="gtk_tree_view_enable_model_drag_source"
	Function gtk_tree_view_unset_rows_drag_source(tree_view:Byte Ptr)="gtk_tree_view_unset_rows_drag_source"
	Function gtk_tree_view_unset_rows_drag_dest(tree_view:Byte Ptr)="gtk_tree_view_unset_rows_drag_dest"
	Function gtk_tree_view_set_drag_dest_row(tree_view:Byte Ptr,path:Byte Ptr,pos:Byte Ptr)="gtk_tree_view_set_drag_dest_row"
	Function gtk_tree_view_get_drag_dest_row(tree_view:Byte Ptr,path:Byte Ptr,pos:Byte Ptr)="gtk_tree_view_get_drag_dest_row"
	Function gtk_tree_view_get_dest_row_at_pos:Byte(tree_view:Byte Ptr,drag_x:int,drag_y:int,path:Byte Ptr,pos:Byte Ptr)="gtk_tree_view_get_dest_row_at_pos"
	Function gtk_tree_view_create_row_drag_icon:Byte Ptr(tree_view:Byte Ptr,path:Byte Ptr)="gtk_tree_view_create_row_drag_icon"
	Function gtk_tree_view_set_enable_search(tree_view:Byte Ptr,enable_search:Byte)="gtk_tree_view_set_enable_search"
	Function gtk_tree_view_get_enable_search:Byte(tree_view:Byte Ptr)="gtk_tree_view_get_enable_search"
	Function gtk_tree_view_get_search_column:int(tree_view:Byte Ptr)="gtk_tree_view_get_search_column"
	Function gtk_tree_view_set_search_column(tree_view:Byte Ptr,column:int)="gtk_tree_view_set_search_column"
	'Function gtk_tree_view_get_search_equal_func:GtkTreeViewSearchEqualFunc(tree_view:Byte Ptr)="gtk_tree_view_get_search_equal_func"
	'Function gtk_tree_view_set_search_equal_func(tree_view:Byte Ptr,search_equal_func:GtkTreeViewSearchEqualFunc,search_user_data:gpointer,search_destroy:GtkDestroyNotify)="gtk_tree_view_set_search_equal_func"
	Function gtk_tree_view_get_fixed_height_mode:Byte(tree_view:Byte Ptr)="gtk_tree_view_get_fixed_height_mode"
	Function gtk_tree_view_set_fixed_height_mode(tree_view:Byte Ptr,enable:Byte)="gtk_tree_view_set_fixed_height_mode"
	Function gtk_tree_view_get_hover_selection:Byte(tree_view:Byte Ptr)="gtk_tree_view_get_hover_selection"
	Function gtk_tree_view_set_hover_selection(tree_view:Byte Ptr,hover:Byte)="gtk_tree_view_set_hover_selection"
	Function gtk_tree_view_get_hover_expand:Byte(tree_view:Byte Ptr)="gtk_tree_view_get_hover_expand"
	Function gtk_tree_view_set_hover_expand(tree_view:Byte Ptr,expand:Byte)="gtk_tree_view_set_hover_expand"
	'Function ((GtkTreeView *tree_view:*GtkTreeDestroyCountFunc),path:Byte Ptr,children:gint,user_data);:gpointer)=""
	'Function gtk_tree_view_set_destroy_count_func(tree_view:Byte Ptr,func:GtkTreeDestroyCountFunc,data:gpointer,destroy:GtkDestroyNotify)="gtk_tree_view_set_destroy_count_func"
	'Function :gboolean((GtkTreeModel *model:*GtkTreeViewRowSeparatorFunc),iter:Byte Ptr,data);:gpointer)=""
	'Function gtk_tree_view_get_row_separator_func:GtkTreeViewRowSeparatorFunc(tree_view:Byte Ptr)="gtk_tree_view_get_row_separator_func"
	'Function gtk_tree_view_set_row_separator_func(tree_view:Byte Ptr,func:GtkTreeViewRowSeparatorFunc,data:gpointer,Destroy:GtkDestroyNotify)="gtk_tree_view_set_row_separator_func"
	Function gtk_tree_view_get_type:Long()
End Extern
