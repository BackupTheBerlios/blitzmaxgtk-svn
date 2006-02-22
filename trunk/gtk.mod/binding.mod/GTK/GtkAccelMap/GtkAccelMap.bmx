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
	Function ((gpointer data:*GtkAccelMapForeach),accel_path:Byte Ptr,accel_key:guint,accel_mods:GdkModifierType,changed);:gboolean)=""
	Function gtk_accel_map_add_entry(accel_path:Byte Ptr,accel_key:guint,accel_mods:GdkModifierType)="gtk_accel_map_add_entry"
	Function gtk_accel_map_lookup_entry:gboolean(accel_path:Byte Ptr,key:Byte Ptr)="gtk_accel_map_lookup_entry"
	Function gtk_accel_map_change_entry:gboolean(accel_path:Byte Ptr,accel_key:guint,accel_mods:GdkModifierType,replace:gboolean)="gtk_accel_map_change_entry"
	Function gtk_accel_map_load(file_name:Byte Ptr)="gtk_accel_map_load"
	Function gtk_accel_map_save(file_name:Byte Ptr)="gtk_accel_map_save"
	Function gtk_accel_map_foreach(data:gpointer,foreach_func:GtkAccelMapForeach)="gtk_accel_map_foreach"
	Function gtk_accel_map_load_fd(fd:gint)="gtk_accel_map_load_fd"
	Function gtk_accel_map_save_fd(fd:gint)="gtk_accel_map_save_fd"
	Function gtk_accel_map_load_scanner(scanner:Byte Ptr)="gtk_accel_map_load_scanner"
	Function gtk_accel_map_add_filter(filter_pattern:Byte Ptr)="gtk_accel_map_add_filter"
	Function gtk_accel_map_foreach_unfiltered(data:gpointer,foreach_func:GtkAccelMapForeach)="gtk_accel_map_foreach_unfiltered"
	Function gtk_accel_map_get:Byte Ptr()="gtk_accel_map_get"
	Function gtk_accel_map_lock_path(accel_path:Byte Ptr)="gtk_accel_map_lock_path"
	Function gtk_accel_map_unlock_path(accel_path:Byte Ptr)="gtk_accel_map_unlock_path"
End Extern
