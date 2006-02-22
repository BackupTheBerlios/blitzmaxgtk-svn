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
	Function gtk_cell_renderer_toggle_new:Byte Ptr()="gtk_cell_renderer_toggle_new"
	Function gtk_cell_renderer_toggle_get_radio:gboolean(toggle:Byte Ptr)="gtk_cell_renderer_toggle_get_radio"
	Function gtk_cell_renderer_toggle_set_radio(toggle:Byte Ptr,radio:gboolean)="gtk_cell_renderer_toggle_set_radio"
	Function gtk_cell_renderer_toggle_get_active:gboolean(toggle:Byte Ptr)="gtk_cell_renderer_toggle_get_active"
	Function gtk_cell_renderer_toggle_set_active(toggle:Byte Ptr,setting:gboolean)="gtk_cell_renderer_toggle_set_active"
End Extern
