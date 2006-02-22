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
	Function gtk_file_chooser_error_quark:Byte Ptr()="gtk_file_chooser_error_quark"
	Function gtk_file_chooser_set_action(chooser:Byte Ptr,action:Int)="gtk_file_chooser_set_action"
	Function gtk_file_chooser_get_action:Int(chooser:Byte Ptr)="gtk_file_chooser_get_action"
	Function gtk_file_chooser_set_local_only(chooser:Byte Ptr,local_only:Byte)="gtk_file_chooser_set_local_only"
	Function gtk_file_chooser_get_local_only:Byte(chooser:Byte Ptr)="gtk_file_chooser_get_local_only"
	Function gtk_file_chooser_set_select_multiple(chooser:Byte Ptr,select_multiple:Byte)="gtk_file_chooser_set_select_multiple"
	Function gtk_file_chooser_get_select_multiple:Byte(chooser:Byte Ptr)="gtk_file_chooser_get_select_multiple"
	Function gtk_file_chooser_set_show_hidden(chooser:Byte Ptr,show_hidden:Byte)="gtk_file_chooser_set_show_hidden"
	Function gtk_file_chooser_get_show_hidden:Byte(chooser:Byte Ptr)="gtk_file_chooser_get_show_hidden"
	Function gtk_file_chooser_set_do_overwrite_confirmation(chooser:Byte Ptr,do_overwrite_confirmation:Byte)="gtk_file_chooser_set_do_overwrite_confirmation"
	Function gtk_file_chooser_get_do_overwrite_confirmation:Byte(chooser:Byte Ptr)="gtk_file_chooser_get_do_overwrite_confirmation"
	Function gtk_file_chooser_set_current_name(chooser:Byte Ptr,name:Byte Ptr)="gtk_file_chooser_set_current_name"
	Function gtk_file_chooser_get_filename:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_get_filename"
	Function gtk_file_chooser_set_filename:Byte(chooser:Byte Ptr,filename:Byte Ptr)="gtk_file_chooser_set_filename"
	Function gtk_file_chooser_select_filename:Byte(chooser:Byte Ptr,filename:Byte Ptr)="gtk_file_chooser_select_filename"
	Function gtk_file_chooser_unselect_filename(chooser:Byte Ptr,filename:Byte Ptr)="gtk_file_chooser_unselect_filename"
	Function gtk_file_chooser_select_all(chooser:Byte Ptr)="gtk_file_chooser_select_all"
	Function gtk_file_chooser_unselect_all(chooser:Byte Ptr)="gtk_file_chooser_unselect_all"
	Function gtk_file_chooser_get_filenames:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_get_filenames"
	Function gtk_file_chooser_set_current_folder:Byte(chooser:Byte Ptr,filename:Byte Ptr)="gtk_file_chooser_set_current_folder"
	Function gtk_file_chooser_get_current_folder:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_get_current_folder"
	Function gtk_file_chooser_get_uri:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_get_uri"
	Function gtk_file_chooser_set_uri:Byte(chooser:Byte Ptr,uri:Byte Ptr)="gtk_file_chooser_set_uri"
	Function gtk_file_chooser_select_uri:Byte(chooser:Byte Ptr,uri:Byte Ptr)="gtk_file_chooser_select_uri"
	Function gtk_file_chooser_unselect_uri(chooser:Byte Ptr,uri:Byte Ptr)="gtk_file_chooser_unselect_uri"
	Function gtk_file_chooser_get_uris:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_get_uris"
	Function gtk_file_chooser_set_current_folder_uri:Byte(chooser:Byte Ptr,uri:Byte Ptr)="gtk_file_chooser_set_current_folder_uri"
	Function gtk_file_chooser_get_current_folder_uri:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_get_current_folder_uri"
	Function gtk_file_chooser_set_preview_widget(chooser:Byte Ptr,preview_widget:Byte Ptr)="gtk_file_chooser_set_preview_widget"
	Function gtk_file_chooser_get_preview_widget:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_get_preview_widget"
	Function gtk_file_chooser_set_preview_widget_active(chooser:Byte Ptr,active:Byte)="gtk_file_chooser_set_preview_widget_active"
	Function gtk_file_chooser_get_preview_widget_active:Byte(chooser:Byte Ptr)="gtk_file_chooser_get_preview_widget_active"
	Function gtk_file_chooser_set_use_preview_label(chooser:Byte Ptr,use_label:Byte)="gtk_file_chooser_set_use_preview_label"
	Function gtk_file_chooser_get_use_preview_label:Byte(chooser:Byte Ptr)="gtk_file_chooser_get_use_preview_label"
	Function gtk_file_chooser_get_preview_filename:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_get_preview_filename"
	Function gtk_file_chooser_get_preview_uri:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_get_preview_uri"
	Function gtk_file_chooser_set_extra_widget(chooser:Byte Ptr,extra_widget:Byte Ptr)="gtk_file_chooser_set_extra_widget"
	Function gtk_file_chooser_get_extra_widget:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_get_extra_widget"
	Function gtk_file_chooser_add_filter(chooser:Byte Ptr,filter:Byte Ptr)="gtk_file_chooser_add_filter"
	Function gtk_file_chooser_remove_filter(chooser:Byte Ptr,filter:Byte Ptr)="gtk_file_chooser_remove_filter"
	Function gtk_file_chooser_list_filters:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_list_filters"
	Function gtk_file_chooser_set_filter(chooser:Byte Ptr,filter:Byte Ptr)="gtk_file_chooser_set_filter"
	Function gtk_file_chooser_get_filter:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_get_filter"
	Function gtk_file_chooser_add_shortcut_folder:Byte(chooser:Byte Ptr,folder:Byte Ptr,error:Byte Ptr)="gtk_file_chooser_add_shortcut_folder"
	Function gtk_file_chooser_remove_shortcut_folder:Byte(chooser:Byte Ptr,folder:Byte Ptr,error:Byte Ptr)="gtk_file_chooser_remove_shortcut_folder"
	Function gtk_file_chooser_list_shortcut_folders:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_list_shortcut_folders"
	Function gtk_file_chooser_add_shortcut_folder_uri:Byte(chooser:Byte Ptr,uri:Byte Ptr,error:Byte Ptr)="gtk_file_chooser_add_shortcut_folder_uri"
	Function gtk_file_chooser_remove_shortcut_folder_uri:Byte(chooser:Byte Ptr,uri:Byte Ptr,error:Byte Ptr)="gtk_file_chooser_remove_shortcut_folder_uri"
	Function gtk_file_chooser_list_shortcut_folder_uris:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_list_shortcut_folder_uris"
	Function gtk_file_chooser_get_type:Byte Ptr()
End Extern
