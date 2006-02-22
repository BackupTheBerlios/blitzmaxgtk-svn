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
	Function gtk_size_group_new:Byte Ptr(mode:GtkSizeGroupMode)="gtk_size_group_new"
	Function gtk_size_group_set_mode(size_group:Byte Ptr,mode:GtkSizeGroupMode)="gtk_size_group_set_mode"
	Function gtk_size_group_get_mode:GtkSizeGroupMode(size_group:Byte Ptr)="gtk_size_group_get_mode"
	Function gtk_size_group_set_ignore_hidden(size_group:Byte Ptr,ignore_hidden:gboolean)="gtk_size_group_set_ignore_hidden"
	Function gtk_size_group_get_ignore_hidden:gboolean(size_group:Byte Ptr)="gtk_size_group_get_ignore_hidden"
	Function gtk_size_group_add_widget(size_group:Byte Ptr,widget:Byte Ptr)="gtk_size_group_add_widget"
	Function gtk_size_group_remove_widget(size_group:Byte Ptr,widget:Byte Ptr)="gtk_size_group_remove_widget"
End Extern
