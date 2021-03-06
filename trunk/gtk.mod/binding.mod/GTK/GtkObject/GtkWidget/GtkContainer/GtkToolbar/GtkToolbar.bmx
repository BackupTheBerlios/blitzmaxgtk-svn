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
	Function gtk_toolbar_new:Byte Ptr()="gtk_toolbar_new"
	Function gtk_toolbar_insert(toolbar:Byte Ptr,item:Byte Ptr,pos:gint)="gtk_toolbar_insert"
	Function gtk_toolbar_get_item_index:gint(toolbar:Byte Ptr,item:Byte Ptr)="gtk_toolbar_get_item_index"
	Function gtk_toolbar_get_n_items:gint(toolbar:Byte Ptr)="gtk_toolbar_get_n_items"
	Function gtk_toolbar_get_nth_item:Byte Ptr(toolbar:Byte Ptr,n:gint)="gtk_toolbar_get_nth_item"
	Function gtk_toolbar_get_drop_index:gint(toolbar:Byte Ptr,x:gint,y:gint)="gtk_toolbar_get_drop_index"
	Function gtk_toolbar_set_drop_highlight_item(toolbar:Byte Ptr,tool_item:Byte Ptr,index_:gint)="gtk_toolbar_set_drop_highlight_item"
	Function gtk_toolbar_set_show_arrow(toolbar:Byte Ptr,show_arrow:gboolean)="gtk_toolbar_set_show_arrow"
	Function gtk_toolbar_set_orientation(toolbar:Byte Ptr,orientation:GtkOrientation)="gtk_toolbar_set_orientation"
	Function gtk_toolbar_set_tooltips(toolbar:Byte Ptr,enable:gboolean)="gtk_toolbar_set_tooltips"
	Function gtk_toolbar_unset_icon_size(toolbar:Byte Ptr)="gtk_toolbar_unset_icon_size"
	Function gtk_toolbar_get_show_arrow:gboolean(toolbar:Byte Ptr)="gtk_toolbar_get_show_arrow"
	Function gtk_toolbar_get_orientation:GtkOrientation(toolbar:Byte Ptr)="gtk_toolbar_get_orientation"
	Function gtk_toolbar_get_style:GtkToolbarStyle(toolbar:Byte Ptr)="gtk_toolbar_get_style"
	Function gtk_toolbar_get_icon_size:GtkIconSize(toolbar:Byte Ptr)="gtk_toolbar_get_icon_size"
	Function gtk_toolbar_get_tooltips:gboolean(toolbar:Byte Ptr)="gtk_toolbar_get_tooltips"
	Function gtk_toolbar_get_relief_style:GtkReliefStyle(toolbar:Byte Ptr)="gtk_toolbar_get_relief_style"
	Function gtk_toolbar_append_item:Byte Ptr(toolbar:Byte Ptr,text:Byte Ptr,tooltip_text:Byte Ptr,tooltip_private_text:Byte Ptr,icon:Byte Ptr,callback:GtkSignalFunc,user_data:gpointer)="gtk_toolbar_append_item"
	Function gtk_toolbar_prepend_item:Byte Ptr(toolbar:Byte Ptr,text:Byte Ptr,tooltip_text:Byte Ptr,tooltip_private_text:Byte Ptr,icon:Byte Ptr,callback:GtkSignalFunc,user_data:gpointer)="gtk_toolbar_prepend_item"
	Function gtk_toolbar_insert_item:Byte Ptr(toolbar:Byte Ptr,text:Byte Ptr,tooltip_text:Byte Ptr,tooltip_private_text:Byte Ptr,icon:Byte Ptr,callback:GtkSignalFunc,user_data:gpointer,position:gint)="gtk_toolbar_insert_item"
	Function gtk_toolbar_append_space(toolbar:Byte Ptr)="gtk_toolbar_append_space"
	Function gtk_toolbar_prepend_space(toolbar:Byte Ptr)="gtk_toolbar_prepend_space"
	Function gtk_toolbar_insert_space(toolbar:Byte Ptr,position:gint)="gtk_toolbar_insert_space"
	Function gtk_toolbar_append_element:Byte Ptr(toolbar:Byte Ptr,type:GtkToolbarChildType,widget:Byte Ptr,text:Byte Ptr,tooltip_text:Byte Ptr,tooltip_private_text:Byte Ptr,icon:Byte Ptr,callback:GtkSignalFunc,user_data:gpointer)="gtk_toolbar_append_element"
	Function gtk_toolbar_prepend_element:Byte Ptr(toolbar:Byte Ptr,type:GtkToolbarChildType,widget:Byte Ptr,text:Byte Ptr,tooltip_text:Byte Ptr,tooltip_private_text:Byte Ptr,icon:Byte Ptr,callback:GtkSignalFunc,user_data:gpointer)="gtk_toolbar_prepend_element"
	Function gtk_toolbar_insert_element:Byte Ptr(toolbar:Byte Ptr,type:GtkToolbarChildType,widget:Byte Ptr,text:Byte Ptr,tooltip_text:Byte Ptr,tooltip_private_text:Byte Ptr,icon:Byte Ptr,callback:GtkSignalFunc,user_data:gpointer,position:gint)="gtk_toolbar_insert_element"
	Function gtk_toolbar_append_widget(toolbar:Byte Ptr,widget:Byte Ptr,tooltip_text:Byte Ptr,tooltip_private_text:Byte Ptr)="gtk_toolbar_append_widget"
	Function gtk_toolbar_prepend_widget(toolbar:Byte Ptr,widget:Byte Ptr,tooltip_text:Byte Ptr,tooltip_private_text:Byte Ptr)="gtk_toolbar_prepend_widget"
	Function gtk_toolbar_insert_widget(toolbar:Byte Ptr,widget:Byte Ptr,tooltip_text:Byte Ptr,tooltip_private_text:Byte Ptr,position:gint)="gtk_toolbar_insert_widget"
	Function gtk_toolbar_set_style(toolbar:Byte Ptr,style:GtkToolbarStyle)="gtk_toolbar_set_style"
	Function gtk_toolbar_insert_stock:Byte Ptr(toolbar:Byte Ptr,stock_id:Byte Ptr,tooltip_text:Byte Ptr,tooltip_private_text:Byte Ptr,callback:GtkSignalFunc,user_data:gpointer,position:gint)="gtk_toolbar_insert_stock"
	Function gtk_toolbar_set_icon_size(toolbar:Byte Ptr,icon_size:GtkIconSize)="gtk_toolbar_set_icon_size"
	Function gtk_toolbar_remove_space(toolbar:Byte Ptr,position:gint)="gtk_toolbar_remove_space"
	Function gtk_toolbar_unset_style(toolbar:Byte Ptr)="gtk_toolbar_unset_style"
End Extern
