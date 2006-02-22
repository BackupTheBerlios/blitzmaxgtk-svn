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
	Function gtk_file_chooser_button_new:Byte Ptr(title:Byte Ptr,action:Byte)="gtk_file_chooser_button_new"
	Function gtk_file_chooser_button_new_with_backend:Byte Ptr(title:Byte Ptr,action:Byte,backend:Byte Ptr)="gtk_file_chooser_button_new_with_backend"
	Function gtk_file_chooser_button_new_with_dialog:Byte Ptr(dialog:Byte Ptr)="gtk_file_chooser_button_new_with_dialog"
	Function gtk_file_chooser_button_get_title:Byte Ptr(button:Byte Ptr)="gtk_file_chooser_button_get_title"
	Function gtk_file_chooser_button_set_title(button:Byte Ptr,title:Byte Ptr)="gtk_file_chooser_button_set_title"
	Function gtk_file_chooser_button_get_width_chars:Int(button:Byte Ptr)="gtk_file_chooser_button_get_width_chars"
	Function gtk_file_chooser_button_set_width_chars(button:Byte Ptr,n_chars:Int)="gtk_file_chooser_button_set_width_chars"
End Extern
