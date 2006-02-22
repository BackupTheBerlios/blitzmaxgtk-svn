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
	Function gtk_file_selection_new:Byte Ptr(title:Byte Ptr)="gtk_file_selection_new"
	Function gtk_file_selection_set_filename(filesel:Byte Ptr,filename:Byte Ptr)="gtk_file_selection_set_filename"
	Function gtk_file_selection_get_filename:Byte Ptr(filesel:Byte Ptr)="gtk_file_selection_get_filename"
	Function gtk_file_selection_complete(filesel:Byte Ptr,pattern:Byte Ptr)="gtk_file_selection_complete"
	Function gtk_file_selection_show_fileop_buttons(filesel:Byte Ptr)="gtk_file_selection_show_fileop_buttons"
	Function gtk_file_selection_hide_fileop_buttons(filesel:Byte Ptr)="gtk_file_selection_hide_fileop_buttons"
	Function gtk_file_selection_get_selections:Byte Ptr(filesel:Byte Ptr)="gtk_file_selection_get_selections"
	Function gtk_file_selection_set_select_multiple(filesel:Byte Ptr,select_multiple:Byte)="gtk_file_selection_set_select_multiple"
	Function gtk_file_selection_get_select_multiple:Byte(filesel:Byte Ptr)="gtk_file_selection_get_select_multiple"
End Extern
