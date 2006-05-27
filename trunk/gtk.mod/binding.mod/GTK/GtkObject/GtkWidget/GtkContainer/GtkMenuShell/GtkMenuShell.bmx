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
	Function gtk_menu_shell_append(menu_shell:Byte Ptr,child:Byte Ptr)="gtk_menu_shell_append"
	Function gtk_menu_shell_prepend(menu_shell:Byte Ptr,child:Byte Ptr)="gtk_menu_shell_prepend"
	Function gtk_menu_shell_insert(menu_shell:Byte Ptr,child:Byte Ptr,position:int)="gtk_menu_shell_insert"
	Function gtk_menu_shell_deactivate(menu_shell:Byte Ptr)="gtk_menu_shell_deactivate"
	Function gtk_menu_shell_select_item(menu_shell:Byte Ptr,menu_item:Byte Ptr)="gtk_menu_shell_select_item"
	Function gtk_menu_shell_select_first(menu_shell:Byte Ptr,search_sensitive:byte)="gtk_menu_shell_select_first"
	Function gtk_menu_shell_deselect(menu_shell:Byte Ptr)="gtk_menu_shell_deselect"
	Function gtk_menu_shell_activate_item(menu_shell:Byte Ptr,menu_item:Byte Ptr,force_deactivate:byte)="gtk_menu_shell_activate_item"
	Function gtk_menu_shell_cancel(menu_shell:Byte Ptr)="gtk_menu_shell_cancel"
	Function gtk_menu_shell_set_take_focus(menu_shell:Byte Ptr,take_focus:byte)="gtk_menu_shell_set_take_focus"
	Function gtk_menu_shell_get_take_focus:byte(menu_shell:Byte Ptr)="gtk_menu_shell_get_take_focus"
End Extern
