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
	Function :gint((GtkTreeModel *model:*GtkTreeIterCompareFunc),a:Byte Ptr,b:Byte Ptr,user_data);:gpointer)=""
	Function gtk_tree_sortable_sort_column_changed(sortable:Byte Ptr)="gtk_tree_sortable_sort_column_changed"
	Function gtk_tree_sortable_get_sort_column_id:gboolean(sortable:Byte Ptr,sort_column_id:Byte Ptr,order:Byte Ptr)="gtk_tree_sortable_get_sort_column_id"
	Function gtk_tree_sortable_set_sort_column_id(sortable:Byte Ptr,sort_column_id:gint,order:GtkSortType)="gtk_tree_sortable_set_sort_column_id"
	Function gtk_tree_sortable_set_sort_func(sortable:Byte Ptr,sort_column_id:gint,sort_func:GtkTreeIterCompareFunc,user_data:gpointer,destroy:GtkDestroyNotify)="gtk_tree_sortable_set_sort_func"
	Function gtk_tree_sortable_set_default_sort_func(sortable:Byte Ptr,sort_func:GtkTreeIterCompareFunc,user_data:gpointer,destroy:GtkDestroyNotify)="gtk_tree_sortable_set_default_sort_func"
	Function gtk_tree_sortable_has_default_sort_func:gboolean(sortable:Byte Ptr)="gtk_tree_sortable_has_default_sort_func"
End Extern
