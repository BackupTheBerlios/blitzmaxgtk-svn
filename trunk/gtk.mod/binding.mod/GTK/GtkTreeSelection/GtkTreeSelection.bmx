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
	Function :gboolean((GtkTreeSelection *selection:*GtkTreeSelectionFunc),model:Byte Ptr,path:Byte Ptr,path_currently_selected:gboolean,data);:gpointer)=""
	Function ((GtkTreeModel *model:*GtkTreeSelectionForeachFunc),path:Byte Ptr,iter:Byte Ptr,data);:gpointer)=""
	Function gtk_tree_selection_set_mode(selection:Byte Ptr,type:GtkSelectionMode)="gtk_tree_selection_set_mode"
	Function gtk_tree_selection_get_mode:GtkSelectionMode(selection:Byte Ptr)="gtk_tree_selection_get_mode"
	Function gtk_tree_selection_set_select_function(selection:Byte Ptr,func:GtkTreeSelectionFunc,data:gpointer,destroy:GtkDestroyNotify)="gtk_tree_selection_set_select_function"
	Function gtk_tree_selection_get_user_data:gpointer(selection:Byte Ptr)="gtk_tree_selection_get_user_data"
	Function gtk_tree_selection_get_tree_view:Byte Ptr(selection:Byte Ptr)="gtk_tree_selection_get_tree_view"
	Function gtk_tree_selection_get_selected:gboolean(selection:Byte Ptr,*model:Byte Ptr,iter:Byte Ptr)="gtk_tree_selection_get_selected"
	Function gtk_tree_selection_selected_foreach(selection:Byte Ptr,func:GtkTreeSelectionForeachFunc,data:gpointer)="gtk_tree_selection_selected_foreach"
	Function gtk_tree_selection_get_selected_rows:Byte Ptr(selection:Byte Ptr,*model:Byte Ptr)="gtk_tree_selection_get_selected_rows"
	Function gtk_tree_selection_count_selected_rows:gint(selection:Byte Ptr)="gtk_tree_selection_count_selected_rows"
	Function gtk_tree_selection_select_path(selection:Byte Ptr,path:Byte Ptr)="gtk_tree_selection_select_path"
	Function gtk_tree_selection_unselect_path(selection:Byte Ptr,path:Byte Ptr)="gtk_tree_selection_unselect_path"
	Function gtk_tree_selection_path_is_selected:gboolean(selection:Byte Ptr,path:Byte Ptr)="gtk_tree_selection_path_is_selected"
	Function gtk_tree_selection_select_iter(selection:Byte Ptr,iter:Byte Ptr)="gtk_tree_selection_select_iter"
	Function gtk_tree_selection_unselect_iter(selection:Byte Ptr,iter:Byte Ptr)="gtk_tree_selection_unselect_iter"
	Function gtk_tree_selection_iter_is_selected:gboolean(selection:Byte Ptr,iter:Byte Ptr)="gtk_tree_selection_iter_is_selected"
	Function gtk_tree_selection_select_all(selection:Byte Ptr)="gtk_tree_selection_select_all"
	Function gtk_tree_selection_unselect_all(selection:Byte Ptr)="gtk_tree_selection_unselect_all"
	Function gtk_tree_selection_select_range(selection:Byte Ptr,start_path:Byte Ptr,end_path:Byte Ptr)="gtk_tree_selection_select_range"
	Function gtk_tree_selection_unselect_range(selection:Byte Ptr,start_path:Byte Ptr,end_path:Byte Ptr)="gtk_tree_selection_unselect_range"
End Extern
