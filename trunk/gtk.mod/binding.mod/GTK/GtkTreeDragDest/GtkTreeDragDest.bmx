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
	Function gtk_tree_drag_source_drag_data_delete:gboolean(drag_source:Byte Ptr,path:Byte Ptr)="gtk_tree_drag_source_drag_data_delete"
	Function gtk_tree_drag_source_drag_data_get:gboolean(drag_source:Byte Ptr,path:Byte Ptr,selection_data:Byte Ptr)="gtk_tree_drag_source_drag_data_get"
	Function gtk_tree_drag_source_row_draggable:gboolean(drag_source:Byte Ptr,path:Byte Ptr)="gtk_tree_drag_source_row_draggable"
	Function gtk_tree_drag_dest_drag_data_received:gboolean(drag_dest:Byte Ptr,dest:Byte Ptr,selection_data:Byte Ptr)="gtk_tree_drag_dest_drag_data_received"
	Function gtk_tree_drag_dest_row_drop_possible:gboolean(drag_dest:Byte Ptr,dest_path:Byte Ptr,selection_data:Byte Ptr)="gtk_tree_drag_dest_row_drop_possible"
	Function gtk_tree_set_row_drag_data:gboolean(selection_data:Byte Ptr,tree_model:Byte Ptr,path:Byte Ptr)="gtk_tree_set_row_drag_data"
	Function gtk_tree_get_row_drag_data:gboolean(selection_data:Byte Ptr,*tree_model:Byte Ptr,*path:Byte Ptr)="gtk_tree_get_row_drag_data"
End Extern
