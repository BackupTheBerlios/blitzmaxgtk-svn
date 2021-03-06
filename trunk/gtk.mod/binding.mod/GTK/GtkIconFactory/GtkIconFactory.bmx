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
	Function gtk_icon_source_copy:Byte Ptr(source:Byte Ptr)="gtk_icon_source_copy"
	Function gtk_icon_source_free(source:Byte Ptr)="gtk_icon_source_free"
	Function gtk_icon_factory_add(factory:Byte Ptr,stock_id:Byte Ptr,icon_set:Byte Ptr)="gtk_icon_factory_add"
	Function gtk_icon_factory_add_default(factory:Byte Ptr)="gtk_icon_factory_add_default"
	Function gtk_icon_factory_lookup:Byte Ptr(factory:Byte Ptr,stock_id:Byte Ptr)="gtk_icon_factory_lookup"
	Function gtk_icon_factory_lookup_default:Byte Ptr(stock_id:Byte Ptr)="gtk_icon_factory_lookup_default"
	Function gtk_icon_factory_new:Byte Ptr()="gtk_icon_factory_new"
	Function gtk_icon_factory_remove_default(factory:Byte Ptr)="gtk_icon_factory_remove_default"
	Function gtk_icon_set_add_source(icon_set:Byte Ptr,source:Byte Ptr)="gtk_icon_set_add_source"
	Function gtk_icon_set_copy:Byte Ptr(icon_set:Byte Ptr)="gtk_icon_set_copy"
	Function gtk_icon_set_new:Byte Ptr()="gtk_icon_set_new"
	Function gtk_icon_set_new_from_pixbuf:Byte Ptr(pixbuf:Byte Ptr)="gtk_icon_set_new_from_pixbuf"
	Function gtk_icon_set_ref:Byte Ptr(icon_set:Byte Ptr)="gtk_icon_set_ref"
	Function gtk_icon_set_render_icon:Byte Ptr(icon_set:Byte Ptr,style:Byte Ptr,direction:GtkTextDirection,state:GtkStateType,size:GtkIconSize,widget:Byte Ptr,detail:Byte Ptr)="gtk_icon_set_render_icon"
	Function gtk_icon_set_unref(icon_set:Byte Ptr)="gtk_icon_set_unref"
	Function gtk_icon_size_lookup:gboolean(size:GtkIconSize,width:Byte Ptr,height:Byte Ptr)="gtk_icon_size_lookup"
	Function gtk_icon_size_lookup_for_settings:gboolean(settings:Byte Ptr,size:GtkIconSize,width:Byte Ptr,height:Byte Ptr)="gtk_icon_size_lookup_for_settings"
	Function gtk_icon_size_register:GtkIconSize(name:Byte Ptr,width:gint,height:gint)="gtk_icon_size_register"
	Function gtk_icon_size_register_alias(alias:Byte Ptr,target:GtkIconSize)="gtk_icon_size_register_alias"
	Function gtk_icon_size_from_name:GtkIconSize(name:Byte Ptr)="gtk_icon_size_from_name"
	Function gchar*:const(size:GtkIconSize)="gchar*"
	Function gtk_icon_set_get_sizes(icon_set:Byte Ptr,*sizes:Byte Ptr,n_sizes:Byte Ptr)="gtk_icon_set_get_sizes"
	Function gtk_icon_source_get_direction:GtkTextDirection(source:Byte Ptr)="gtk_icon_source_get_direction"
	Function gtk_icon_source_get_direction_wildcarded:gboolean(source:Byte Ptr)="gtk_icon_source_get_direction_wildcarded"
	Function gchar*:const(source:Byte Ptr)="gchar*"
	Function gtk_icon_source_get_pixbuf:Byte Ptr(source:Byte Ptr)="gtk_icon_source_get_pixbuf"
	Function gchar*:const(source:Byte Ptr)="gchar*"
	Function gtk_icon_source_get_size:GtkIconSize(source:Byte Ptr)="gtk_icon_source_get_size"
	Function gtk_icon_source_get_size_wildcarded:gboolean(source:Byte Ptr)="gtk_icon_source_get_size_wildcarded"
	Function gtk_icon_source_get_state:GtkStateType(source:Byte Ptr)="gtk_icon_source_get_state"
	Function gtk_icon_source_get_state_wildcarded:gboolean(source:Byte Ptr)="gtk_icon_source_get_state_wildcarded"
	Function gtk_icon_source_new:Byte Ptr()="gtk_icon_source_new"
	Function gtk_icon_source_set_direction(source:Byte Ptr,direction:GtkTextDirection)="gtk_icon_source_set_direction"
	Function gtk_icon_source_set_direction_wildcarded(source:Byte Ptr,setting:gboolean)="gtk_icon_source_set_direction_wildcarded"
	Function gtk_icon_source_set_filename(source:Byte Ptr,filename:Byte Ptr)="gtk_icon_source_set_filename"
	Function gtk_icon_source_set_pixbuf(source:Byte Ptr,pixbuf:Byte Ptr)="gtk_icon_source_set_pixbuf"
	Function gtk_icon_source_set_icon_name(source:Byte Ptr,icon_name:Byte Ptr)="gtk_icon_source_set_icon_name"
	Function gtk_icon_source_set_size(source:Byte Ptr,size:GtkIconSize)="gtk_icon_source_set_size"
	Function gtk_icon_source_set_size_wildcarded(source:Byte Ptr,setting:gboolean)="gtk_icon_source_set_size_wildcarded"
	Function gtk_icon_source_set_state(source:Byte Ptr,state:GtkStateType)="gtk_icon_source_set_state"
	Function gtk_icon_source_set_state_wildcarded(source:Byte Ptr,setting:gboolean)="gtk_icon_source_set_state_wildcarded"
End Extern
