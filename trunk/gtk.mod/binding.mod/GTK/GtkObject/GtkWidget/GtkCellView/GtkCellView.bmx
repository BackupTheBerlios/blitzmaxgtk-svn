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
	Function gtk_cell_view_new:Byte Ptr()="gtk_cell_view_new"
	Function gtk_cell_view_new_with_text:Byte Ptr(text:Byte Ptr)="gtk_cell_view_new_with_text"
	Function gtk_cell_view_new_with_markup:Byte Ptr(markup:Byte Ptr)="gtk_cell_view_new_with_markup"
	Function gtk_cell_view_new_with_pixbuf:Byte Ptr(pixbuf:Byte Ptr)="gtk_cell_view_new_with_pixbuf"
	Function gtk_cell_view_set_model(cell_view:Byte Ptr,model:Byte Ptr)="gtk_cell_view_set_model"
	Function gtk_cell_view_set_displayed_row(cell_view:Byte Ptr,path:Byte Ptr)="gtk_cell_view_set_displayed_row"
	Function gtk_cell_view_get_displayed_row:Byte Ptr(cell_view:Byte Ptr)="gtk_cell_view_get_displayed_row"
	Function gtk_cell_view_get_size_of_row:gboolean(cell_view:Byte Ptr,path:Byte Ptr,requisition:Byte Ptr)="gtk_cell_view_get_size_of_row"
	Function gtk_cell_view_set_background_color(cell_view:Byte Ptr,color:Byte Ptr)="gtk_cell_view_set_background_color"
	Function gtk_cell_view_get_cell_renderers:Byte Ptr(cell_view:Byte Ptr)="gtk_cell_view_get_cell_renderers"
End Extern
