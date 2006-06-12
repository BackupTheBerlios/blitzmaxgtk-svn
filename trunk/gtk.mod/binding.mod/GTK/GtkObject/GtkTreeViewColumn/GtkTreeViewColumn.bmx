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
	'Function ((GtkTreeViewColumn *tree_column:*GtkTreeCellDataFunc),cell:Byte Ptr,tree_model:Byte Ptr,iter:Byte Ptr,data);:gpointer)=""
	Function gtk_tree_view_column_new:Byte Ptr()="gtk_tree_view_column_new"
	Function gtk_tree_view_column_pack_start(tree_column:Byte Ptr,cell:Byte Ptr,expand:Byte)="gtk_tree_view_column_pack_start"
	Function gtk_tree_view_column_pack_end(tree_column:Byte Ptr,cell:Byte Ptr,expand:Byte)="gtk_tree_view_column_pack_end"
	Function gtk_tree_view_column_clear(tree_column:Byte Ptr)="gtk_tree_view_column_clear"
	Function gtk_tree_view_column_get_cell_renderers:Byte Ptr(tree_column:Byte Ptr)="gtk_tree_view_column_get_cell_renderers"
	Function gtk_tree_view_column_add_attribute(tree_column:Byte Ptr,cell_renderer:Byte Ptr,attribute:Byte Ptr,column:Int)="gtk_tree_view_column_add_attribute"
	Function gtk_tree_view_column_set_attributes(tree_column:Byte Ptr, cell_renderer:Byte Ptr, key:Byte Ptr, val:Byte Ptr, term:Byte Ptr=Null)
	Function gtk_tree_view_column_set_cell_data_func(tree_column:Byte Ptr,cell_renderer:Byte Ptr,func:Byte Ptr,func_data:Byte Ptr,destroy:Byte)="gtk_tree_view_column_set_cell_data_func"
	Function gtk_tree_view_column_clear_attributes(tree_column:Byte Ptr,cell_renderer:Byte Ptr)="gtk_tree_view_column_clear_attributes"
	Function gtk_tree_view_column_set_spacing(tree_column:Byte Ptr,spacing:Int)="gtk_tree_view_column_set_spacing"
	Function gtk_tree_view_column_get_spacing:Int(tree_column:Byte Ptr)="gtk_tree_view_column_get_spacing"
	Function gtk_tree_view_column_set_visible(tree_column:Byte Ptr,visible:Byte)="gtk_tree_view_column_set_visible"
	Function gtk_tree_view_column_get_visible:Byte(tree_column:Byte Ptr)="gtk_tree_view_column_get_visible"
	Function gtk_tree_view_column_set_resizable(tree_column:Byte Ptr,resizable:Byte)="gtk_tree_view_column_set_resizable"
	Function gtk_tree_view_column_get_resizable:Byte(tree_column:Byte Ptr)="gtk_tree_view_column_get_resizable"
	Function gtk_tree_view_column_set_sizing(tree_column:Byte Ptr,CType:Byte)="gtk_tree_view_column_set_sizing"
	Function gtk_tree_view_column_get_sizing:Byte Ptr(tree_column:Byte Ptr)="gtk_tree_view_column_get_sizing"
	Function gtk_tree_view_column_get_width:Int(tree_column:Byte Ptr)="gtk_tree_view_column_get_width"
	Function gtk_tree_view_column_get_fixed_width:Int(tree_column:Byte Ptr)="gtk_tree_view_column_get_fixed_width"
	Function gtk_tree_view_column_set_fixed_width(tree_column:Byte Ptr,fixed_width:Int)="gtk_tree_view_column_set_fixed_width"
	Function gtk_tree_view_column_set_min_width(tree_column:Byte Ptr,min_width:Int)="gtk_tree_view_column_set_min_width"
	Function gtk_tree_view_column_get_min_width:Int(tree_column:Byte Ptr)="gtk_tree_view_column_get_min_width"
	Function gtk_tree_view_column_set_max_width(tree_column:Byte Ptr,max_width:Int)="gtk_tree_view_column_set_max_width"
	Function gtk_tree_view_column_get_max_width:Int(tree_column:Byte Ptr)="gtk_tree_view_column_get_max_width"
	Function gtk_tree_view_column_clicked(tree_column:Byte Ptr)="gtk_tree_view_column_clicked"
	Function gtk_tree_view_column_set_title(tree_column:Byte Ptr,title:Byte Ptr)="gtk_tree_view_column_set_title"
	'Function gchar*:const(tree_column:Byte Ptr)="gchar*"
	Function gtk_tree_view_column_set_expand(tree_column:Byte Ptr,expand:Byte)="gtk_tree_view_column_set_expand"
	Function gtk_tree_view_column_get_expand:Byte(tree_column:Byte Ptr)="gtk_tree_view_column_get_expand"
	Function gtk_tree_view_column_set_clickable(tree_column:Byte Ptr,clickable:Byte)="gtk_tree_view_column_set_clickable"
	Function gtk_tree_view_column_get_clickable:Byte(tree_column:Byte Ptr)="gtk_tree_view_column_get_clickable"
	Function gtk_tree_view_column_set_widget(tree_column:Byte Ptr,widget:Byte Ptr)="gtk_tree_view_column_set_widget"
	Function gtk_tree_view_column_get_widget:Byte Ptr(tree_column:Byte Ptr)="gtk_tree_view_column_get_widget"
	Function gtk_tree_view_column_set_alignment(tree_column:Byte Ptr,xalign:Double)="gtk_tree_view_column_set_alignment"
	Function gtk_tree_view_column_get_alignment:Double(tree_column:Byte Ptr)="gtk_tree_view_column_get_alignment"
	Function gtk_tree_view_column_set_reorderable(tree_column:Byte Ptr,reorderable:Byte)="gtk_tree_view_column_set_reorderable"
	Function gtk_tree_view_column_get_reorderable:Byte(tree_column:Byte Ptr)="gtk_tree_view_column_get_reorderable"
	Function gtk_tree_view_column_set_sort_column_id(tree_column:Byte Ptr,sort_column_id:Int)="gtk_tree_view_column_set_sort_column_id"
	Function gtk_tree_view_column_get_sort_column_id:Int(tree_column:Byte Ptr)="gtk_tree_view_column_get_sort_column_id"
	Function gtk_tree_view_column_set_sort_indicator(tree_column:Byte Ptr,setting:Byte)="gtk_tree_view_column_set_sort_indicator"
	Function gtk_tree_view_column_get_sort_indicator:Byte(tree_column:Byte Ptr)="gtk_tree_view_column_get_sort_indicator"
	Function gtk_tree_view_column_set_sort_order(tree_column:Byte Ptr,order:Byte)="gtk_tree_view_column_set_sort_order"
	Function gtk_tree_view_column_get_sort_order:Byte(tree_column:Byte Ptr)="gtk_tree_view_column_get_sort_order"
	Function gtk_tree_view_column_cell_set_cell_data(tree_column:Byte Ptr,tree_model:Byte Ptr,iter:Byte Ptr,is_expander:Byte,is_expanded:Byte)="gtk_tree_view_column_cell_set_cell_data"
	Function gtk_tree_view_column_cell_get_size(tree_column:Byte Ptr,cell_area:Byte Ptr,x_offset:Byte Ptr,y_offset:Byte Ptr,width:Byte Ptr,height:Byte Ptr)="gtk_tree_view_column_cell_get_size"
	Function gtk_tree_view_column_cell_get_position:Byte(tree_column:Byte Ptr,cell_renderer:Byte Ptr,start_pos:Byte Ptr,width:Byte Ptr)="gtk_tree_view_column_cell_get_position"
	Function gtk_tree_view_column_cell_is_visible:Byte(tree_column:Byte Ptr)="gtk_tree_view_column_cell_is_visible"
	Function gtk_tree_view_column_focus_cell(tree_column:Byte Ptr,cell:Byte Ptr)="gtk_tree_view_column_focus_cell"
	Function gtk_tree_view_column_queue_resize(tree_column:Byte Ptr)="gtk_tree_view_column_queue_resize"
End Extern
