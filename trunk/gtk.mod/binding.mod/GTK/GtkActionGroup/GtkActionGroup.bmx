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
	Function gtk_action_group_new:Byte Ptr(name:Byte Ptr)="gtk_action_group_new"
	Function gchar*:const(action_group:Byte Ptr)="gchar*"
	Function gtk_action_group_get_sensitive:gboolean(action_group:Byte Ptr)="gtk_action_group_get_sensitive"
	Function gtk_action_group_set_sensitive(action_group:Byte Ptr,sensitive:gboolean)="gtk_action_group_set_sensitive"
	Function gtk_action_group_get_visible:gboolean(action_group:Byte Ptr)="gtk_action_group_get_visible"
	Function gtk_action_group_set_visible(action_group:Byte Ptr,visible:gboolean)="gtk_action_group_set_visible"
	Function gtk_action_group_get_action:Byte Ptr(action_group:Byte Ptr,action_name:Byte Ptr)="gtk_action_group_get_action"
	Function gtk_action_group_list_actions:Byte Ptr(action_group:Byte Ptr)="gtk_action_group_list_actions"
	Function gtk_action_group_add_action(action_group:Byte Ptr,action:Byte Ptr)="gtk_action_group_add_action"
	Function gtk_action_group_add_action_with_accel(action_group:Byte Ptr,action:Byte Ptr,accelerator:Byte Ptr)="gtk_action_group_add_action_with_accel"
	Function gtk_action_group_remove_action(action_group:Byte Ptr,action:Byte Ptr)="gtk_action_group_remove_action"
	Function gtk_action_group_add_actions(action_group:Byte Ptr,entries:Byte Ptr,n_entries:guint,user_data:gpointer)="gtk_action_group_add_actions"
	Function gtk_action_group_add_actions_full(action_group:Byte Ptr,entries:Byte Ptr,n_entries:guint,user_data:gpointer,destroy:GDestroyNotify)="gtk_action_group_add_actions_full"
	Function gtk_action_group_add_toggle_actions(action_group:Byte Ptr,entries:Byte Ptr,n_entries:guint,user_data:gpointer)="gtk_action_group_add_toggle_actions"
	Function gtk_action_group_add_toggle_actions_full(action_group:Byte Ptr,entries:Byte Ptr,n_entries:guint,user_data:gpointer,destroy:GDestroyNotify)="gtk_action_group_add_toggle_actions_full"
	Function gtk_action_group_add_radio_actions(action_group:Byte Ptr,entries:Byte Ptr,n_entries:guint,value:gint,on_change:GCallback,user_data:gpointer)="gtk_action_group_add_radio_actions"
	Function gtk_action_group_add_radio_actions_full(action_group:Byte Ptr,entries:Byte Ptr,n_entries:guint,value:gint,on_change:GCallback,user_data:gpointer,destroy:GDestroyNotify)="gtk_action_group_add_radio_actions_full"
	Function gtk_action_group_set_translate_func(action_group:Byte Ptr,func:GtkTranslateFunc,data:gpointer,notify:GtkDestroyNotify)="gtk_action_group_set_translate_func"
	Function gtk_action_group_set_translation_domain(action_group:Byte Ptr,domain:Byte Ptr)="gtk_action_group_set_translation_domain"
	Function gchar*:const(action_group:Byte Ptr,string:Byte Ptr)="gchar*"
End Extern
