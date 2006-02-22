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
	Function gtk_font_selection_new:Byte Ptr()="gtk_font_selection_new"
	Function gtk_font_selection_get_font:Byte Ptr(fontsel:Byte Ptr)="gtk_font_selection_get_font"
	Function gtk_font_selection_get_font_name:Byte Ptr(fontsel:Byte Ptr)="gtk_font_selection_get_font_name"
	Function gtk_font_selection_set_font_name:gboolean(fontsel:Byte Ptr,fontname:Byte Ptr)="gtk_font_selection_set_font_name"
	Function gchar*:const(fontsel:Byte Ptr)="gchar*"
	Function gtk_font_selection_set_preview_text(fontsel:Byte Ptr,text:Byte Ptr)="gtk_font_selection_set_preview_text"
End Extern
