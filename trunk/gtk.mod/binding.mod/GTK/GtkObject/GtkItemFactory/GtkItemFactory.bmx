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
	Function ((gpointer func_data:*GtkPrintFunc),str);:Byte Ptr)=""
	Function :Byte Ptr((const gchar *path:*GtkTranslateFunc),func_data);:gpointer)=""
	Function (();:*GtkItemFactoryCallback))=""
	Function ((gpointer callback_data:*GtkItemFactoryCallback1),callback_action:guint,widget);:Byte Ptr)=""
	Function ((GtkWidget *widget:*GtkItemFactoryCallback2),callback_data:gpointer,callback_action);:guint)=""
	Function gtk_item_factory_new:Byte Ptr(container_type:GType,path:Byte Ptr,accel_group:Byte Ptr)="gtk_item_factory_new"
	Function gtk_item_factory_construct(ifactory:Byte Ptr,container_type:GType,path:Byte Ptr,accel_group:Byte Ptr)="gtk_item_factory_construct"
	Function gtk_item_factory_add_foreign(accel_widget:Byte Ptr,full_path:Byte Ptr,accel_group:Byte Ptr,keyval:guint,modifiers:GdkModifierType)="gtk_item_factory_add_foreign"
	Function gtk_item_factory_from_widget:Byte Ptr(widget:Byte Ptr)="gtk_item_factory_from_widget"
	Function gchar*:const(widget:Byte Ptr)="gchar*"
	Function gtk_item_factory_get_item:Byte Ptr(ifactory:Byte Ptr,path:Byte Ptr)="gtk_item_factory_get_item"
	Function gtk_item_factory_get_widget:Byte Ptr(ifactory:Byte Ptr,path:Byte Ptr)="gtk_item_factory_get_widget"
	Function gtk_item_factory_get_widget_by_action:Byte Ptr(ifactory:Byte Ptr,action:guint)="gtk_item_factory_get_widget_by_action"
	Function gtk_item_factory_get_item_by_action:Byte Ptr(ifactory:Byte Ptr,action:guint)="gtk_item_factory_get_item_by_action"
	Function gtk_item_factory_create_item(ifactory:Byte Ptr,entry:Byte Ptr,callback_data:gpointer,callback_type:guint)="gtk_item_factory_create_item"
	Function gtk_item_factory_create_items(ifactory:Byte Ptr,n_entries:guint,entries:Byte Ptr,callback_data:gpointer)="gtk_item_factory_create_items"
	Function gtk_item_factory_create_items_ac(ifactory:Byte Ptr,n_entries:guint,entries:Byte Ptr,callback_data:gpointer,callback_type:guint)="gtk_item_factory_create_items_ac"
	Function gtk_item_factory_delete_item(ifactory:Byte Ptr,path:Byte Ptr)="gtk_item_factory_delete_item"
	Function gtk_item_factory_delete_entry(ifactory:Byte Ptr,entry:Byte Ptr)="gtk_item_factory_delete_entry"
	Function gtk_item_factory_delete_entries(ifactory:Byte Ptr,n_entries:guint,entries:Byte Ptr)="gtk_item_factory_delete_entries"
	Function gtk_item_factory_popup(ifactory:Byte Ptr,x:guint,y:guint,mouse_button:guint,time_:guint32)="gtk_item_factory_popup"
	Function gtk_item_factory_popup_with_data(ifactory:Byte Ptr,popup_data:gpointer,destroy:GtkDestroyNotify,x:guint,y:guint,mouse_button:guint,time_:guint32)="gtk_item_factory_popup_with_data"
	Function gtk_item_factory_popup_data:gpointer(ifactory:Byte Ptr)="gtk_item_factory_popup_data"
	Function gtk_item_factory_popup_data_from_widget:gpointer(widget:Byte Ptr)="gtk_item_factory_popup_data_from_widget"
	Function gtk_item_factory_from_path:Byte Ptr(path:Byte Ptr)="gtk_item_factory_from_path"
	Function gtk_item_factory_create_menu_entries(n_entries:guint,entries:Byte Ptr)="gtk_item_factory_create_menu_entries"
	Function gtk_item_factories_path_delete(ifactory_path:Byte Ptr,path:Byte Ptr)="gtk_item_factories_path_delete"
	Function gtk_item_factory_set_translate_func(ifactory:Byte Ptr,func:GtkTranslateFunc,data:gpointer,notify:GtkDestroyNotify)="gtk_item_factory_set_translate_func"
End Extern
