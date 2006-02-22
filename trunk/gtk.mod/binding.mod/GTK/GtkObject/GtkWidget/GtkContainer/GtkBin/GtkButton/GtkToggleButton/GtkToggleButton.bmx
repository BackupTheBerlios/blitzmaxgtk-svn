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
	Function gtk_toggle_button_new:Byte Ptr()="gtk_toggle_button_new"
	Function gtk_toggle_button_new_with_label:Byte Ptr(label:Byte Ptr)="gtk_toggle_button_new_with_label"
	Function gtk_toggle_button_new_with_mnemonic:Byte Ptr(label:Byte Ptr)="gtk_toggle_button_new_with_mnemonic"
	Function gtk_toggle_button_set_mode(toggle_button:Byte Ptr,draw_indicator:Byte)="gtk_toggle_button_set_mode"
	Function gtk_toggle_button_get_mode:Byte(toggle_button:Byte Ptr)="gtk_toggle_button_get_mode"
	Function gtk_toggle_button_toggled(toggle_button:Byte Ptr)="gtk_toggle_button_toggled"
	Function gtk_toggle_button_get_active:Byte(toggle_button:Byte Ptr)="gtk_toggle_button_get_active"
	Function gtk_toggle_button_set_active(toggle_button:Byte Ptr,is_active:Byte)="gtk_toggle_button_set_active"
	Function gtk_toggle_button_get_inconsistent:Byte(toggle_button:Byte Ptr)="gtk_toggle_button_get_inconsistent"
	Function gtk_toggle_button_set_inconsistent(toggle_button:Byte Ptr,setting:Byte)="gtk_toggle_button_set_inconsistent"
End Extern
