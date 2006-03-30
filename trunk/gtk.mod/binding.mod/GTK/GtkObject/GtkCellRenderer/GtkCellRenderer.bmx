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
	Function gtk_cell_renderer_get_size(cell:Byte Ptr, widget:Byte Ptr, cell_area:Byte Ptr, x_offset:int, y_offset:int, width:int, Height:int) = "gtk_cell_renderer_get_size"
	Function gtk_cell_renderer_render(cell:Byte Ptr, window:Byte Ptr, widget:Byte Ptr, background_area:Byte Ptr, eypose_area:Byte Ptr, flags:Byte) = "gtk_cell_renderer_render"
	Function gtk_cell_renderer_activate:Byte(cell:Byte Ptr, event:Byte Ptr, widget:Byte Ptr, path:Byte Ptr, background_area:Byte Ptr, cell_area:Byte Ptr, flags:Byte) = "gtk_cell_renderer_activate"
	Function gtk_cell_renderer_start_editing:Byte Ptr(cell:Byte Ptr, event:Byte Ptr, path:Byte Ptr, background_area:Byte Ptr, cell_area:Byte Ptr, flags:Byte) = "gtk_cell_renderer_start_editing"
	Function gtk_cell_renderer_editing_canceled(cell:Byte Ptr) = "gtk_cell_renderer_editing_canceled"
	Function gtk_cell_renderer_stop_editing(cell:Byte Ptr, canceled:Byte) = "gtk_cell_renderer_stop_editing"
	Function gtk_cell_renderer_get_fixed_size(cell:Byte Ptr,width:int,height:int) = "gtk_cell_renderer_get_fixed_size"
	Function gtk_cell_renderer_set_fixed_size(cell:Byte Ptr, width:int, height:int) = "gtk_cell_renderer_set_fixed_size"
End Extern
