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
	Function gtk_tree_new:Byte Ptr()="gtk_tree_new"
	Function gtk_tree_append(tree:Byte Ptr,tree_item:Byte Ptr)="gtk_tree_append"
	Function gtk_tree_prepend(tree:Byte Ptr,tree_item:Byte Ptr)="gtk_tree_prepend"
	Function gtk_tree_insert(tree:Byte Ptr,tree_item:Byte Ptr,position:gint)="gtk_tree_insert"
	Function gtk_tree_remove_items(tree:Byte Ptr,items:Byte Ptr)="gtk_tree_remove_items"
	Function gtk_tree_clear_items(tree:Byte Ptr,start:gint,end:gint)="gtk_tree_clear_items"
	Function gtk_tree_select_item(tree:Byte Ptr,item:gint)="gtk_tree_select_item"
	Function gtk_tree_unselect_item(tree:Byte Ptr,item:gint)="gtk_tree_unselect_item"
	Function gtk_tree_select_child(tree:Byte Ptr,tree_item:Byte Ptr)="gtk_tree_select_child"
	Function gtk_tree_unselect_child(tree:Byte Ptr,tree_item:Byte Ptr)="gtk_tree_unselect_child"
	Function gtk_tree_child_position:gint(tree:Byte Ptr,child:Byte Ptr)="gtk_tree_child_position"
	Function gtk_tree_set_selection_mode(tree:Byte Ptr,mode:GtkSelectionMode)="gtk_tree_set_selection_mode"
	Function gtk_tree_set_view_mode(tree:Byte Ptr,mode:GtkTreeViewMode)="gtk_tree_set_view_mode"
	Function gtk_tree_set_view_lines(tree:Byte Ptr,flag:gboolean)="gtk_tree_set_view_lines"
	Function gtk_tree_remove_item(tree:Byte Ptr,child:Byte Ptr)="gtk_tree_remove_item"
End Extern
