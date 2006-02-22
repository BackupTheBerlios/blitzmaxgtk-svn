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
	Function gtk_ui_manager_new:Byte Ptr()="gtk_ui_manager_new"
	Function gtk_ui_manager_set_add_tearoffs(self:Byte Ptr,add_tearoffs:gboolean)="gtk_ui_manager_set_add_tearoffs"
	Function gtk_ui_manager_get_add_tearoffs:gboolean(self:Byte Ptr)="gtk_ui_manager_get_add_tearoffs"
	Function gtk_ui_manager_insert_action_group(self:Byte Ptr,action_group:Byte Ptr,pos:gint)="gtk_ui_manager_insert_action_group"
	Function gtk_ui_manager_remove_action_group(self:Byte Ptr,action_group:Byte Ptr)="gtk_ui_manager_remove_action_group"
	Function gtk_ui_manager_get_action_groups:Byte Ptr(self:Byte Ptr)="gtk_ui_manager_get_action_groups"
	Function gtk_ui_manager_get_accel_group:Byte Ptr(self:Byte Ptr)="gtk_ui_manager_get_accel_group"
	Function gtk_ui_manager_get_widget:Byte Ptr(self:Byte Ptr,path:Byte Ptr)="gtk_ui_manager_get_widget"
	Function gtk_ui_manager_get_toplevels:Byte Ptr(self:Byte Ptr,types:GtkUIManagerItemType)="gtk_ui_manager_get_toplevels"
	Function gtk_ui_manager_get_action:Byte Ptr(self:Byte Ptr,path:Byte Ptr)="gtk_ui_manager_get_action"
	Function gtk_ui_manager_add_ui_from_string:guint(self:Byte Ptr,buffer:Byte Ptr,length:gssize,*error:Byte Ptr)="gtk_ui_manager_add_ui_from_string"
	Function gtk_ui_manager_add_ui_from_file:guint(self:Byte Ptr,filename:Byte Ptr,*error:Byte Ptr)="gtk_ui_manager_add_ui_from_file"
	Function gtk_ui_manager_new_merge_id:guint(self:Byte Ptr)="gtk_ui_manager_new_merge_id"
	Function gtk_ui_manager_add_ui(self:Byte Ptr,merge_id:guint,path:Byte Ptr,name:Byte Ptr,action:Byte Ptr,type:GtkUIManagerItemType,top:gboolean)="gtk_ui_manager_add_ui"
	Function gtk_ui_manager_remove_ui(self:Byte Ptr,merge_id:guint)="gtk_ui_manager_remove_ui"
	Function gtk_ui_manager_get_ui:Byte Ptr(self:Byte Ptr)="gtk_ui_manager_get_ui"
	Function gtk_ui_manager_ensure_update(self:Byte Ptr)="gtk_ui_manager_ensure_update"
End Extern
