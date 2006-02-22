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
	Function ((GtkCTree *ctree:*GtkCTreeFunc),node:Byte Ptr,data);:gpointer)=""
	Function :gboolean((GtkCTree *ctree:*GtkCTreeGNodeFunc),depth:guint,gnode:Byte Ptr,cnode:Byte Ptr,data);:gpointer)=""
	Function :gboolean((GtkCTree *ctree:*GtkCTreeCompareDragFunc),source_node:Byte Ptr,new_parent:Byte Ptr,new_sibling);:Byte Ptr)=""
	Function gtk_ctree_new_with_titles:Byte Ptr(columns:gint,tree_column:gint,titles[]:Byte Ptr)="gtk_ctree_new_with_titles"
	Function gtk_ctree_new:Byte Ptr(columns:gint,tree_column:gint)="gtk_ctree_new"
	Function gtk_ctree_insert_node:Byte Ptr(ctree:Byte Ptr,parent:Byte Ptr,sibling:Byte Ptr,text[]:Byte Ptr,spacing:guint8,pixmap_closed:Byte Ptr,mask_closed:Byte Ptr,pixmap_opened:Byte Ptr,mask_opened:Byte Ptr,is_leaf:gboolean,expanded:gboolean)="gtk_ctree_insert_node"
	Function gtk_ctree_remove_node(ctree:Byte Ptr,node:Byte Ptr)="gtk_ctree_remove_node"
	Function gtk_ctree_insert_gnode:Byte Ptr(ctree:Byte Ptr,parent:Byte Ptr,sibling:Byte Ptr,gnode:Byte Ptr,func:GtkCTreeGNodeFunc,data:gpointer)="gtk_ctree_insert_gnode"
	Function gtk_ctree_export_to_gnode:Byte Ptr(ctree:Byte Ptr,parent:Byte Ptr,sibling:Byte Ptr,node:Byte Ptr,func:GtkCTreeGNodeFunc,data:gpointer)="gtk_ctree_export_to_gnode"
	Function gtk_ctree_post_recursive(ctree:Byte Ptr,node:Byte Ptr,func:GtkCTreeFunc,data:gpointer)="gtk_ctree_post_recursive"
	Function gtk_ctree_post_recursive_to_depth(ctree:Byte Ptr,node:Byte Ptr,depth:gint,func:GtkCTreeFunc,data:gpointer)="gtk_ctree_post_recursive_to_depth"
	Function gtk_ctree_pre_recursive(ctree:Byte Ptr,node:Byte Ptr,func:GtkCTreeFunc,data:gpointer)="gtk_ctree_pre_recursive"
	Function gtk_ctree_pre_recursive_to_depth(ctree:Byte Ptr,node:Byte Ptr,depth:gint,func:GtkCTreeFunc,data:gpointer)="gtk_ctree_pre_recursive_to_depth"
	Function gtk_ctree_is_viewable:gboolean(ctree:Byte Ptr,node:Byte Ptr)="gtk_ctree_is_viewable"
	Function gtk_ctree_last:Byte Ptr(ctree:Byte Ptr,node:Byte Ptr)="gtk_ctree_last"
	Function gtk_ctree_find_node_ptr:Byte Ptr(ctree:Byte Ptr,ctree_row:Byte Ptr)="gtk_ctree_find_node_ptr"
	Function gtk_ctree_find:gboolean(ctree:Byte Ptr,node:Byte Ptr,child:Byte Ptr)="gtk_ctree_find"
	Function gtk_ctree_is_ancestor:gboolean(ctree:Byte Ptr,node:Byte Ptr,child:Byte Ptr)="gtk_ctree_is_ancestor"
	Function gtk_ctree_find_by_row_data:Byte Ptr(ctree:Byte Ptr,node:Byte Ptr,data:gpointer)="gtk_ctree_find_by_row_data"
	Function gtk_ctree_find_all_by_row_data:Byte Ptr(ctree:Byte Ptr,node:Byte Ptr,data:gpointer)="gtk_ctree_find_all_by_row_data"
	Function gtk_ctree_find_by_row_data_custom:Byte Ptr(ctree:Byte Ptr,node:Byte Ptr,data:gpointer,func:GCompareFunc)="gtk_ctree_find_by_row_data_custom"
	Function gtk_ctree_find_all_by_row_data_custom:Byte Ptr(ctree:Byte Ptr,node:Byte Ptr,data:gpointer,func:GCompareFunc)="gtk_ctree_find_all_by_row_data_custom"
	Function gtk_ctree_is_hot_spot:gboolean(ctree:Byte Ptr,x:gint,y:gint)="gtk_ctree_is_hot_spot"
	Function gtk_ctree_move(ctree:Byte Ptr,node:Byte Ptr,new_parent:Byte Ptr,new_sibling:Byte Ptr)="gtk_ctree_move"
	Function gtk_ctree_expand(ctree:Byte Ptr,node:Byte Ptr)="gtk_ctree_expand"
	Function gtk_ctree_expand_recursive(ctree:Byte Ptr,node:Byte Ptr)="gtk_ctree_expand_recursive"
	Function gtk_ctree_expand_to_depth(ctree:Byte Ptr,node:Byte Ptr,depth:gint)="gtk_ctree_expand_to_depth"
	Function gtk_ctree_collapse(ctree:Byte Ptr,node:Byte Ptr)="gtk_ctree_collapse"
	Function gtk_ctree_collapse_recursive(ctree:Byte Ptr,node:Byte Ptr)="gtk_ctree_collapse_recursive"
	Function gtk_ctree_collapse_to_depth(ctree:Byte Ptr,node:Byte Ptr,depth:gint)="gtk_ctree_collapse_to_depth"
	Function gtk_ctree_toggle_expansion(ctree:Byte Ptr,node:Byte Ptr)="gtk_ctree_toggle_expansion"
	Function gtk_ctree_toggle_expansion_recursive(ctree:Byte Ptr,node:Byte Ptr)="gtk_ctree_toggle_expansion_recursive"
	Function gtk_ctree_select(ctree:Byte Ptr,node:Byte Ptr)="gtk_ctree_select"
	Function gtk_ctree_select_recursive(ctree:Byte Ptr,node:Byte Ptr)="gtk_ctree_select_recursive"
	Function gtk_ctree_unselect(ctree:Byte Ptr,node:Byte Ptr)="gtk_ctree_unselect"
	Function gtk_ctree_unselect_recursive(ctree:Byte Ptr,node:Byte Ptr)="gtk_ctree_unselect_recursive"
	Function gtk_ctree_real_select_recursive(ctree:Byte Ptr,node:Byte Ptr,state:gint)="gtk_ctree_real_select_recursive"
	Function gtk_ctree_node_set_text(ctree:Byte Ptr,node:Byte Ptr,column:gint,text:Byte Ptr)="gtk_ctree_node_set_text"
	Function gtk_ctree_node_set_pixmap(ctree:Byte Ptr,node:Byte Ptr,column:gint,pixmap:Byte Ptr,mask:Byte Ptr)="gtk_ctree_node_set_pixmap"
	Function gtk_ctree_node_set_pixtext(ctree:Byte Ptr,node:Byte Ptr,column:gint,text:Byte Ptr,spacing:guint8,pixmap:Byte Ptr,mask:Byte Ptr)="gtk_ctree_node_set_pixtext"
	Function gtk_ctree_set_node_info(ctree:Byte Ptr,node:Byte Ptr,text:Byte Ptr,spacing:guint8,pixmap_closed:Byte Ptr,mask_closed:Byte Ptr,pixmap_opened:Byte Ptr,mask_opened:Byte Ptr,is_leaf:gboolean,expanded:gboolean)="gtk_ctree_set_node_info"
	Function gtk_ctree_node_set_shift(ctree:Byte Ptr,node:Byte Ptr,column:gint,vertical:gint,horizontal:gint)="gtk_ctree_node_set_shift"
	Function gtk_ctree_node_set_selectable(ctree:Byte Ptr,node:Byte Ptr,selectable:gboolean)="gtk_ctree_node_set_selectable"
	Function gtk_ctree_node_get_selectable:gboolean(ctree:Byte Ptr,node:Byte Ptr)="gtk_ctree_node_get_selectable"
	Function gtk_ctree_node_get_cell_type:GtkCellType(ctree:Byte Ptr,node:Byte Ptr,column:gint)="gtk_ctree_node_get_cell_type"
	Function gtk_ctree_node_get_text:gboolean(ctree:Byte Ptr,node:Byte Ptr,column:gint,*text:Byte Ptr)="gtk_ctree_node_get_text"
	Function gtk_ctree_node_get_pixmap:gboolean(ctree:Byte Ptr,node:Byte Ptr,column:gint,*pixmap:Byte Ptr,*mask:Byte Ptr)="gtk_ctree_node_get_pixmap"
	Function gtk_ctree_node_get_pixtext:gboolean(ctree:Byte Ptr,node:Byte Ptr,column:gint,*text:Byte Ptr,spacing:Byte Ptr,*pixmap:Byte Ptr,*mask:Byte Ptr)="gtk_ctree_node_get_pixtext"
	Function gtk_ctree_get_node_info:gboolean(ctree:Byte Ptr,node:Byte Ptr,*text:Byte Ptr,spacing:Byte Ptr,*pixmap_closed:Byte Ptr,*mask_closed:Byte Ptr,*pixmap_opened:Byte Ptr,*mask_opened:Byte Ptr,is_leaf:Byte Ptr,expanded:Byte Ptr)="gtk_ctree_get_node_info"
	Function gtk_ctree_node_set_row_style(ctree:Byte Ptr,node:Byte Ptr,style:Byte Ptr)="gtk_ctree_node_set_row_style"
	Function gtk_ctree_node_get_row_style:Byte Ptr(ctree:Byte Ptr,node:Byte Ptr)="gtk_ctree_node_get_row_style"
	Function gtk_ctree_node_set_cell_style(ctree:Byte Ptr,node:Byte Ptr,column:gint,style:Byte Ptr)="gtk_ctree_node_set_cell_style"
	Function gtk_ctree_node_get_cell_style:Byte Ptr(ctree:Byte Ptr,node:Byte Ptr,column:gint)="gtk_ctree_node_get_cell_style"
	Function gtk_ctree_node_set_foreground(ctree:Byte Ptr,node:Byte Ptr,color:Byte Ptr)="gtk_ctree_node_set_foreground"
	Function gtk_ctree_node_set_background(ctree:Byte Ptr,node:Byte Ptr,color:Byte Ptr)="gtk_ctree_node_set_background"
	Function gtk_ctree_node_set_row_data(ctree:Byte Ptr,node:Byte Ptr,data:gpointer)="gtk_ctree_node_set_row_data"
	Function gtk_ctree_node_set_row_data_full(ctree:Byte Ptr,node:Byte Ptr,data:gpointer,destroy:GtkDestroyNotify)="gtk_ctree_node_set_row_data_full"
	Function gtk_ctree_node_get_row_data:gpointer(ctree:Byte Ptr,node:Byte Ptr)="gtk_ctree_node_get_row_data"
	Function gtk_ctree_node_moveto(ctree:Byte Ptr,node:Byte Ptr,column:gint,row_align:gfloat,col_align:gfloat)="gtk_ctree_node_moveto"
	Function gtk_ctree_node_is_visible:GtkVisibility(ctree:Byte Ptr,node:Byte Ptr)="gtk_ctree_node_is_visible"
	Function gtk_ctree_set_indent(ctree:Byte Ptr,indent:gint)="gtk_ctree_set_indent"
	Function gtk_ctree_set_spacing(ctree:Byte Ptr,spacing:gint)="gtk_ctree_set_spacing"
	Function gtk_ctree_set_line_style(ctree:Byte Ptr,line_style:GtkCTreeLineStyle)="gtk_ctree_set_line_style"
	Function gtk_ctree_set_expander_style(ctree:Byte Ptr,expander_style:GtkCTreeExpanderStyle)="gtk_ctree_set_expander_style"
	Function gtk_ctree_set_drag_compare_func(ctree:Byte Ptr,cmp_func:GtkCTreeCompareDragFunc)="gtk_ctree_set_drag_compare_func"
	Function gtk_ctree_sort_node(ctree:Byte Ptr,node:Byte Ptr)="gtk_ctree_sort_node"
	Function gtk_ctree_sort_recursive(ctree:Byte Ptr,node:Byte Ptr)="gtk_ctree_sort_recursive"
	Function gtk_ctree_node_nth:Byte Ptr(ctree:Byte Ptr,row:guint)="gtk_ctree_node_nth"
	Function gtk_ctree_set_show_stub(ctree:Byte Ptr,show_stub:gboolean)="gtk_ctree_set_show_stub"
End Extern
