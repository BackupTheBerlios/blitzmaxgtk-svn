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
	Function gtk_icon_theme_new:Byte Ptr()="gtk_icon_theme_new"
	Function gtk_icon_theme_get_default:Byte Ptr()="gtk_icon_theme_get_default"
	Function gtk_icon_theme_get_for_screen:Byte Ptr(screen:Byte Ptr)="gtk_icon_theme_get_for_screen"
	Function gtk_icon_theme_set_screen(icon_theme:Byte Ptr,screen:Byte Ptr)="gtk_icon_theme_set_screen"
	Function gtk_icon_theme_set_search_path(icon_theme:Byte Ptr,path[]:Byte Ptr,n_elements:gint)="gtk_icon_theme_set_search_path"
	Function gtk_icon_theme_get_search_path(icon_theme:Byte Ptr,*path[]:Byte Ptr,n_elements:Byte Ptr)="gtk_icon_theme_get_search_path"
	Function gtk_icon_theme_append_search_path(icon_theme:Byte Ptr,path:Byte Ptr)="gtk_icon_theme_append_search_path"
	Function gtk_icon_theme_prepend_search_path(icon_theme:Byte Ptr,path:Byte Ptr)="gtk_icon_theme_prepend_search_path"
	Function gtk_icon_theme_set_custom_theme(icon_theme:Byte Ptr,theme_name:Byte Ptr)="gtk_icon_theme_set_custom_theme"
	Function gtk_icon_theme_has_icon:gboolean(icon_theme:Byte Ptr,icon_name:Byte Ptr)="gtk_icon_theme_has_icon"
	Function gtk_icon_theme_lookup_icon:Byte Ptr(icon_theme:Byte Ptr,icon_name:Byte Ptr,size:gint,flags:GtkIconLookupFlags)="gtk_icon_theme_lookup_icon"
	Function gtk_icon_theme_load_icon:Byte Ptr(icon_theme:Byte Ptr,icon_name:Byte Ptr,size:gint,flags:GtkIconLookupFlags,*error:Byte Ptr)="gtk_icon_theme_load_icon"
	Function gtk_icon_theme_list_icons:Byte Ptr(icon_theme:Byte Ptr,context:Byte Ptr)="gtk_icon_theme_list_icons"
	Function gtk_icon_theme_get_icon_sizes:Byte Ptr(icon_theme:Byte Ptr,icon_name:Byte Ptr)="gtk_icon_theme_get_icon_sizes"
	Function gtk_icon_theme_get_example_icon_name:Byte Ptr(icon_theme:Byte Ptr)="gtk_icon_theme_get_example_icon_name"
	Function gtk_icon_theme_rescan_if_needed:gboolean(icon_theme:Byte Ptr)="gtk_icon_theme_rescan_if_needed"
	Function gtk_icon_theme_add_builtin_icon(icon_name:Byte Ptr,size:gint,pixbuf:Byte Ptr)="gtk_icon_theme_add_builtin_icon"
	Function gtk_icon_info_copy:Byte Ptr(icon_info:Byte Ptr)="gtk_icon_info_copy"
	Function gtk_icon_info_free(icon_info:Byte Ptr)="gtk_icon_info_free"
	Function gtk_icon_info_get_base_size:gint(icon_info:Byte Ptr)="gtk_icon_info_get_base_size"
	Function gchar*:const(icon_info:Byte Ptr)="gchar*"
	Function gtk_icon_info_get_builtin_pixbuf:Byte Ptr(icon_info:Byte Ptr)="gtk_icon_info_get_builtin_pixbuf"
	Function gtk_icon_info_load_icon:Byte Ptr(icon_info:Byte Ptr,*error:Byte Ptr)="gtk_icon_info_load_icon"
	Function gtk_icon_info_set_raw_coordinates(icon_info:Byte Ptr,raw_coordinates:gboolean)="gtk_icon_info_set_raw_coordinates"
	Function gtk_icon_info_get_embedded_rect:gboolean(icon_info:Byte Ptr,rectangle:Byte Ptr)="gtk_icon_info_get_embedded_rect"
	Function gtk_icon_info_get_attach_points:gboolean(icon_info:Byte Ptr,*points:Byte Ptr,n_points:Byte Ptr)="gtk_icon_info_get_attach_points"
	Function gchar*:const(icon_info:Byte Ptr)="gchar*"
End Extern
