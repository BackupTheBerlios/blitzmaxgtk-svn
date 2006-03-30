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
	Function gtk_tree_store_newv:Byte Ptr(n_columns:Int,types:Byte Ptr)="gtk_tree_store_newv"
	Function gtk_tree_store_set_column_types(tree_store:Byte Ptr,n_columns:Int,types:Byte Ptr)="gtk_tree_store_set_column_types"
	Function gtk_tree_store_set_value(tree_store:Byte Ptr,iter:Byte Ptr,column:Int,value:Byte Ptr)="gtk_tree_store_set_value"
	Function gtk_tree_store_set_valist(tree_store:Byte Ptr,iter:Byte Ptr,var_args:Byte Ptr)="gtk_tree_store_set_valist"
	Function gtk_tree_store_remove:Byte(tree_store:Byte Ptr,iter:Byte Ptr)="gtk_tree_store_remove"
	Function gtk_tree_store_insert(tree_store:Byte Ptr,iter:Byte Ptr,parent:Byte Ptr,position:Int)="gtk_tree_store_insert"
	Function gtk_tree_store_insert_before(tree_store:Byte Ptr,iter:Byte Ptr,parent:Byte Ptr,sibling:Byte Ptr)="gtk_tree_store_insert_before"
	Function gtk_tree_store_insert_after(tree_store:Byte Ptr,iter:Byte Ptr,parent:Byte Ptr,sibling:Byte Ptr)="gtk_tree_store_insert_after"
	Function gtk_tree_store_prepend(tree_store:Byte Ptr,iter:Byte Ptr,parent:Byte Ptr)="gtk_tree_store_prepend"
	Function gtk_tree_store_append(tree_store:Byte Ptr,iter:Byte Ptr,parent:Byte Ptr)="gtk_tree_store_append"
	Function gtk_tree_store_is_ancestor:Byte(tree_store:Byte Ptr,iter:Byte Ptr,descendant:Byte Ptr)="gtk_tree_store_is_ancestor"
	Function gtk_tree_store_iter_depth:Int(tree_store:Byte Ptr,iter:Byte Ptr)="gtk_tree_store_iter_depth"
	Function gtk_tree_store_clear(tree_store:Byte Ptr)="gtk_tree_store_clear"
	Function gtk_tree_store_iter_is_valid:Byte(tree_store:Byte Ptr,iter:Byte Ptr)="gtk_tree_store_iter_is_valid"
	Function gtk_tree_store_reorder(tree_store:Byte Ptr,parent:Byte Ptr,new_order:Byte Ptr)="gtk_tree_store_reorder"
	Function gtk_tree_store_swap(tree_store:Byte Ptr,a:Byte Ptr,b:Byte Ptr)="gtk_tree_store_swap"
	Function gtk_tree_store_move_before(tree_store:Byte Ptr,iter:Byte Ptr,position:Byte Ptr)="gtk_tree_store_move_before"
	Function gtk_tree_store_move_after(tree_store:Byte Ptr,iter:Byte Ptr,position:Byte Ptr)="gtk_tree_store_move_after"
End Extern
