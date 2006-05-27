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
	Function gtk_file_chooser_dialog_new:Byte Ptr(title:Byte Ptr, parent:Byte Ptr, action:Int, first_button_text:Byte Ptr, first_button_response:Int, second_button_text:Byte Ptr=Null, second_button_response:Int=0, third_button_text:Byte Ptr=Null, third_button_response:Int=0, terminator:byte ptr)="gtk_file_chooser_dialog_new"
	Function gtk_file_chooser_dialog_new_with_backend:Byte Ptr(title:Byte Ptr, parent:Byte Ptr, action:Byte Ptr, first_button_text:Byte Ptr, second_button_text:Byte Ptr, terminator:byte ptr)="gtk_file_chooser_dialog_new_with_backend"
End Extern
