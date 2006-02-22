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
	Function gtk_accel_group_new:Byte Ptr()="gtk_accel_group_new"
	Function gtk_accel_group_connect(accel_group:Byte Ptr,accel_key:guint,accel_mods:GdkModifierType,accel_flags:GtkAccelFlags,closure:Byte Ptr)="gtk_accel_group_connect"
	Function gtk_accel_group_connect_by_path(accel_group:Byte Ptr,accel_path:Byte Ptr,closure:Byte Ptr)="gtk_accel_group_connect_by_path"
	Function :gboolean((GtkAccelGroup *accel_group:*GtkAccelGroupActivate),acceleratable:Byte Ptr,keyval:guint,modifier);:GdkModifierType)=""
	Function :gboolean((GtkAccelKey *key:*GtkAccelGroupFindFunc),closure:Byte Ptr,data);:gpointer)=""
	Function gtk_accel_group_disconnect:gboolean(accel_group:Byte Ptr,closure:Byte Ptr)="gtk_accel_group_disconnect"
	Function gtk_accel_group_disconnect_key:gboolean(accel_group:Byte Ptr,accel_key:guint,accel_mods:GdkModifierType)="gtk_accel_group_disconnect_key"
	Function gtk_accel_group_query:Byte Ptr(accel_group:Byte Ptr,accel_key:guint,accel_mods:GdkModifierType,n_entries:Byte Ptr)="gtk_accel_group_query"
	Function gtk_accel_group_activate:gboolean(accel_group:Byte Ptr,accel_quark:GQuark,acceleratable:Byte Ptr,accel_key:guint,accel_mods:GdkModifierType)="gtk_accel_group_activate"
	Function gtk_accel_group_lock(accel_group:Byte Ptr)="gtk_accel_group_lock"
	Function gtk_accel_group_unlock(accel_group:Byte Ptr)="gtk_accel_group_unlock"
	Function gtk_accel_group_from_accel_closure:Byte Ptr(closure:Byte Ptr)="gtk_accel_group_from_accel_closure"
	Function gtk_accel_groups_activate:gboolean(TObject:Byte Ptr,accel_key:guint,accel_mods:GdkModifierType)="gtk_accel_groups_activate"
	Function gtk_accel_groups_from_object:Byte Ptr(TObject:Byte Ptr)="gtk_accel_groups_from_object"
	Function gtk_accel_group_find:Byte Ptr(accel_group:Byte Ptr,find_func:GtkAccelGroupFindFunc,data:gpointer)="gtk_accel_group_find"
	Function gtk_accelerator_valid:gboolean(keyval:guint,modifiers:GdkModifierType)="gtk_accelerator_valid"
	Function gtk_accelerator_parse(accelerator:Byte Ptr,accelerator_key:Byte Ptr,accelerator_mods:Byte Ptr)="gtk_accelerator_parse"
	Function gtk_accelerator_name:Byte Ptr(accelerator_key:guint,accelerator_mods:GdkModifierType)="gtk_accelerator_name"
	Function gtk_accelerator_get_label:Byte Ptr(accelerator_key:guint,accelerator_mods:GdkModifierType)="gtk_accelerator_get_label"
	Function gtk_accelerator_set_default_mod_mask(default_mod_mask:GdkModifierType)="gtk_accelerator_set_default_mod_mask"
	Function gtk_accelerator_get_default_mod_mask:guint()="gtk_accelerator_get_default_mod_mask"
End Extern
