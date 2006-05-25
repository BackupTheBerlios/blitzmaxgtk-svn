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
	Function gtk_list_store_newv:Byte Ptr(n_columns:Short,types:Byte Ptr)="gtk_list_store_newv"
	Function gtk_list_store_set_column_types(list_store:Byte Ptr,n_columns:Int,types:Byte Ptr)="gtk_list_store_set_column_types"
	Function gtk_list_store_set_valist(list_store:Byte Ptr,iter:Byte Ptr,var_args:Byte Ptr)="gtk_list_store_set_valist"
	Function gtk_list_store_set_value(list_store:Byte Ptr,iter:Byte Ptr,column:Int,value:Byte Ptr)="gtk_list_store_set_value"
	Function gtk_list_store_remove:Byte(list_store:Byte Ptr,iter:Byte Ptr)="gtk_list_store_remove"
	Function gtk_list_store_insert(list_store:Byte Ptr,iter:Byte Ptr,position:Int)="gtk_list_store_insert"
	Function gtk_list_store_insert_before(list_store:Byte Ptr,iter:Byte Ptr,sibling:Byte Ptr)="gtk_list_store_insert_before"
	Function gtk_list_store_insert_after(list_store:Byte Ptr,iter:Byte Ptr,sibling:Byte Ptr)="gtk_list_store_insert_after"
	Function gtk_list_store_insert_with_valuesv(list_store:Byte Ptr,iter:Byte Ptr,position:Int,columns:Byte Ptr,values:Byte Ptr,n_values:Int)="gtk_list_store_insert_with_valuesv"
	Function gtk_list_store_prepend(list_store:Byte Ptr,iter:Byte Ptr)="gtk_list_store_prepend"
	Function gtk_list_store_append(list_store:Byte Ptr,iter:Byte Ptr)="gtk_list_store_append"
	Function gtk_list_store_clear(list_store:Byte Ptr)="gtk_list_store_clear"
	Function gtk_list_store_iter_is_valid:Byte(list_store:Byte Ptr,iter:Byte Ptr)="gtk_list_store_iter_is_valid"
	Function gtk_list_store_reorder(store:Byte Ptr,new_order:Byte Ptr)="gtk_list_store_reorder"
	Function gtk_list_store_swap(store:Byte Ptr,a:Byte Ptr,b:Byte Ptr)="gtk_list_store_swap"
	Function gtk_list_store_move_before(store:Byte Ptr,iter:Byte Ptr,position:Byte Ptr)="gtk_list_store_move_before"
	Function gtk_list_store_move_after(store:Byte Ptr,iter:Byte Ptr,position:Byte Ptr)="gtk_list_store_move_after"
End Extern
