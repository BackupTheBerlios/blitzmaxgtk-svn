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
	Function :gboolean(model:Byte Ptr,iter:Byte Ptr,data);:gpointer)=""
	Function ((GtkTreeModel *model:*GtkTreeModelFilterModifyFunc),iter:Byte Ptr,value:Byte Ptr,column:gint,data);:gpointer)=""
	Function gtk_tree_model_filter_new:Byte Ptr(child_model:Byte Ptr,root:Byte Ptr)="gtk_tree_model_filter_new"
	Function gtk_tree_model_filter_set_visible_func(filter:Byte Ptr,func:GtkTreeModelFilterVisibleFunc,data:gpointer,destroy:GtkDestroyNotify)="gtk_tree_model_filter_set_visible_func"
	Function gtk_tree_model_filter_set_modify_func(filter:Byte Ptr,n_columns:gint,types:Byte Ptr,func:GtkTreeModelFilterModifyFunc,data:gpointer,destroy:GtkDestroyNotify)="gtk_tree_model_filter_set_modify_func"
	Function gtk_tree_model_filter_set_visible_column(filter:Byte Ptr,column:gint)="gtk_tree_model_filter_set_visible_column"
	Function gtk_tree_model_filter_get_model:Byte Ptr(filter:Byte Ptr)="gtk_tree_model_filter_get_model"
	Function gtk_tree_model_filter_convert_child_iter_to_iter(filter:Byte Ptr,filter_iter:Byte Ptr,child_iter:Byte Ptr)="gtk_tree_model_filter_convert_child_iter_to_iter"
	Function gtk_tree_model_filter_convert_iter_to_child_iter(filter:Byte Ptr,child_iter:Byte Ptr,filter_iter:Byte Ptr)="gtk_tree_model_filter_convert_iter_to_child_iter"
	Function gtk_tree_model_filter_convert_child_path_to_path:Byte Ptr(filter:Byte Ptr,child_path:Byte Ptr)="gtk_tree_model_filter_convert_child_path_to_path"
	Function gtk_tree_model_filter_convert_path_to_child_path:Byte Ptr(filter:Byte Ptr,filter_path:Byte Ptr)="gtk_tree_model_filter_convert_path_to_child_path"
	Function gtk_tree_model_filter_refilter(filter:Byte Ptr)="gtk_tree_model_filter_refilter"
	Function gtk_tree_model_filter_clear_cache(filter:Byte Ptr)="gtk_tree_model_filter_clear_cache"
End Extern
