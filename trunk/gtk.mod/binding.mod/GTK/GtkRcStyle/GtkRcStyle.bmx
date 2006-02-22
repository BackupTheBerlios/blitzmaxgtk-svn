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
	Function gtk_rc_scanner_new:Byte Ptr()="gtk_rc_scanner_new"
	Function gtk_rc_get_style:Byte Ptr(widget:Byte Ptr)="gtk_rc_get_style"
	Function gtk_rc_get_style_by_paths:Byte Ptr(settings:Byte Ptr,widget_path:Byte Ptr,class_path:Byte Ptr,type:GType)="gtk_rc_get_style_by_paths"
	Function gtk_rc_add_widget_name_style(rc_style:Byte Ptr,pattern:Byte Ptr)="gtk_rc_add_widget_name_style"
	Function gtk_rc_add_widget_class_style(rc_style:Byte Ptr,pattern:Byte Ptr)="gtk_rc_add_widget_class_style"
	Function gtk_rc_add_class_style(rc_style:Byte Ptr,pattern:Byte Ptr)="gtk_rc_add_class_style"
	Function gtk_rc_parse(filename:Byte Ptr)="gtk_rc_parse"
	Function gtk_rc_parse_string(rc_string:Byte Ptr)="gtk_rc_parse_string"
	Function gtk_rc_reparse_all:gboolean()="gtk_rc_reparse_all"
	Function gtk_rc_reparse_all_for_settings:gboolean(settings:Byte Ptr,force_load:gboolean)="gtk_rc_reparse_all_for_settings"
	Function gtk_rc_reset_styles(settings:Byte Ptr)="gtk_rc_reset_styles"
	Function gtk_rc_add_default_file(filename:Byte Ptr)="gtk_rc_add_default_file"
	Function gtk_rc_get_default_files:Byte Ptr()="gtk_rc_get_default_files"
	Function gtk_rc_set_default_files(*filenames:Byte Ptr)="gtk_rc_set_default_files"
	Function gtk_rc_parse_color:guint(scanner:Byte Ptr,color:Byte Ptr)="gtk_rc_parse_color"
	Function gtk_rc_parse_state:guint(scanner:Byte Ptr,state:Byte Ptr)="gtk_rc_parse_state"
	Function gtk_rc_parse_priority:guint(scanner:Byte Ptr,priority:Byte Ptr)="gtk_rc_parse_priority"
	Function gtk_rc_find_module_in_path:Byte Ptr(module_file:Byte Ptr)="gtk_rc_find_module_in_path"
	Function gtk_rc_find_pixmap_in_path:Byte Ptr(settings:Byte Ptr,scanner:Byte Ptr,pixmap_file:Byte Ptr)="gtk_rc_find_pixmap_in_path"
	Function gtk_rc_get_module_dir:Byte Ptr()="gtk_rc_get_module_dir"
	Function gtk_rc_get_im_module_path:Byte Ptr()="gtk_rc_get_im_module_path"
	Function gtk_rc_get_im_module_file:Byte Ptr()="gtk_rc_get_im_module_file"
	Function gtk_rc_get_theme_dir:Byte Ptr()="gtk_rc_get_theme_dir"
	Function gtk_rc_style_new:Byte Ptr()="gtk_rc_style_new"
	Function gtk_rc_style_copy:Byte Ptr(orig:Byte Ptr)="gtk_rc_style_copy"
	Function gtk_rc_style_ref(rc_style:Byte Ptr)="gtk_rc_style_ref"
	Function gtk_rc_style_unref(rc_style:Byte Ptr)="gtk_rc_style_unref"
End Extern
