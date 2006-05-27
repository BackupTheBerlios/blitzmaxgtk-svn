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
	Function gtk_container_add(container:Byte Ptr,widget:Byte Ptr)="gtk_container_add"
	Function gtk_container_remove(container:Byte Ptr,widget:Byte Ptr)="gtk_container_remove"
	'
	'Function gtk_container_get_resize_mode:GtkResizeMode(container:Byte Ptr)="gtk_container_get_resize_mode"
	'Function gtk_container_set_resize_mode(container:Byte Ptr,resize_mode:GtkResizeMode)="gtk_container_set_resize_mode"
	'Function gtk_container_check_resize(container:Byte Ptr)="gtk_container_check_resize"
	Function gtk_container_foreach(container:Byte Ptr,callback:byte ptr,callback_data:byte ptr)="gtk_container_foreach"
	'Function gtk_container_foreach_full(container:Byte Ptr,callback:GtkCallback,marshal:GtkCallbackMarshal,callback_data:gpointer,notify:GtkDestroyNotify)="gtk_container_foreach_full"
	'Function gtk_container_get_children:Byte Ptr(container:Byte Ptr)="gtk_container_get_children"
	'Function gtk_container_set_reallocate_redraws(container:Byte Ptr,needs_redraws:gboolean)="gtk_container_set_reallocate_redraws"
	'Function gtk_container_set_focus_child(container:Byte Ptr,child:Byte Ptr)="gtk_container_set_focus_child"
	'Function gtk_container_get_focus_vadjustment:Byte Ptr(container:Byte Ptr)="gtk_container_get_focus_vadjustment"
	'Function gtk_container_set_focus_vadjustment(container:Byte Ptr,adjustment:Byte Ptr)="gtk_container_set_focus_vadjustment"
	'Function gtk_container_get_focus_hadjustment:Byte Ptr(container:Byte Ptr)="gtk_container_get_focus_hadjustment"
	'Function gtk_container_set_focus_hadjustment(container:Byte Ptr,adjustment:Byte Ptr)="gtk_container_set_focus_hadjustment"
	'Function gtk_container_resize_children(container:Byte Ptr)="gtk_container_resize_children"
	'Function gtk_container_child_type:GType(container:Byte Ptr)="gtk_container_child_type"
	'Function gtk_container_child_get_property(container:Byte Ptr,child:Byte Ptr,property_name:Byte Ptr,value:Byte Ptr)="gtk_container_child_get_property"
	'Function gtk_container_child_set_property(container:Byte Ptr,child:Byte Ptr,property_name:Byte Ptr,value:Byte Ptr)="gtk_container_child_set_property"
	'Function gtk_container_child_get_valist(container:Byte Ptr,child:Byte Ptr,first_property_name:Byte Ptr,var_args:va_list)="gtk_container_child_get_valist"
	'Function gtk_container_child_set_valist(container:Byte Ptr,child:Byte Ptr,first_property_name:Byte Ptr,var_args:va_list)="gtk_container_child_set_valist"
	'Function gtk_container_forall(container:Byte Ptr,callback:GtkCallback,callback_data:gpointer)="gtk_container_forall"
	'Function gtk_container_get_border_width:guint(container:Byte Ptr)="gtk_container_get_border_width"
	'Function gtk_container_set_border_width(container:Byte Ptr,border_width:guint)="gtk_container_set_border_width"
	'Function gtk_container_propagate_expose(container:Byte Ptr,child:Byte Ptr,event:Byte Ptr)="gtk_container_propagate_expose"
	'Function gtk_container_get_focus_chain:gboolean(container:Byte Ptr,*focusable_widgets:Byte Ptr)="gtk_container_get_focus_chain"
	'Function gtk_container_set_focus_chain(container:Byte Ptr,focusable_widgets:Byte Ptr)="gtk_container_set_focus_chain"
	'Function gtk_container_unset_focus_chain(container:Byte Ptr)="gtk_container_unset_focus_chain"
	'Function gtk_container_class_find_child_property:Byte Ptr(cclass:Byte Ptr,property_name:Byte Ptr)="gtk_container_class_find_child_property"
	'Function gtk_container_class_install_child_property(cclass:Byte Ptr,property_id:guint,pspec:Byte Ptr)="gtk_container_class_install_child_property"
	'Function gtk_container_class_list_child_properties:Byte Ptr(cclass:Byte Ptr,n_properties:Byte Ptr)="gtk_container_class_list_child_properties"
End Extern
