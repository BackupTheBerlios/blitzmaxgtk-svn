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
	Function ((GtkCellLayout *cell_layout:*GtkCellLayoutDataFunc),cell:Byte Ptr,tree_model:Byte Ptr,iter:Byte Ptr,data);:gpointer)=""
	Function gtk_cell_layout_pack_start(cell_layout:Byte Ptr,cell:Byte Ptr,expand:gboolean)="gtk_cell_layout_pack_start"
	Function gtk_cell_layout_pack_end(cell_layout:Byte Ptr,cell:Byte Ptr,expand:gboolean)="gtk_cell_layout_pack_end"
	Function gtk_cell_layout_reorder(cell_layout:Byte Ptr,cell:Byte Ptr,position:gint)="gtk_cell_layout_reorder"
	Function gtk_cell_layout_clear(cell_layout:Byte Ptr)="gtk_cell_layout_clear"
	Function gtk_cell_layout_add_attribute(cell_layout:Byte Ptr,cell:Byte Ptr,attribute:Byte Ptr,column:gint)="gtk_cell_layout_add_attribute"
	Function gtk_cell_layout_set_cell_data_func(cell_layout:Byte Ptr,cell:Byte Ptr,func:GtkCellLayoutDataFunc,func_data:gpointer,destroy:GDestroyNotify)="gtk_cell_layout_set_cell_data_func"
	Function gtk_cell_layout_clear_attributes(cell_layout:Byte Ptr,cell:Byte Ptr)="gtk_cell_layout_clear_attributes"
End Extern
