Extern
	Function gtk_file_chooser_error_quark:GQuark()="gtk_file_chooser_error_quark"
	Function gtk_file_chooser_set_action(chooser:Byte Ptr,action:GtkFileChooserAction)="gtk_file_chooser_set_action"
	Function gtk_file_chooser_get_action:GtkFileChooserAction(chooser:Byte Ptr)="gtk_file_chooser_get_action"
	Function gtk_file_chooser_set_local_only(chooser:Byte Ptr,local_only:gboolean)="gtk_file_chooser_set_local_only"
	Function gtk_file_chooser_get_local_only:gboolean(chooser:Byte Ptr)="gtk_file_chooser_get_local_only"
	Function gtk_file_chooser_set_select_multiple(chooser:Byte Ptr,select_multiple:gboolean)="gtk_file_chooser_set_select_multiple"
	Function gtk_file_chooser_get_select_multiple:gboolean(chooser:Byte Ptr)="gtk_file_chooser_get_select_multiple"
	Function gtk_file_chooser_set_show_hidden(chooser:Byte Ptr,show_hidden:gboolean)="gtk_file_chooser_set_show_hidden"
	Function gtk_file_chooser_get_show_hidden:gboolean(chooser:Byte Ptr)="gtk_file_chooser_get_show_hidden"
	Function gtk_file_chooser_set_do_overwrite_confirmation(chooser:Byte Ptr,do_overwrite_confirmation:gboolean)="gtk_file_chooser_set_do_overwrite_confirmation"
	Function gtk_file_chooser_get_do_overwrite_confirmation:gboolean(chooser:Byte Ptr)="gtk_file_chooser_get_do_overwrite_confirmation"
	Function gtk_file_chooser_set_current_name(chooser:Byte Ptr,name:Byte Ptr)="gtk_file_chooser_set_current_name"
	Function gtk_file_chooser_get_filename:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_get_filename"
	Function gtk_file_chooser_set_filename:gboolean(chooser:Byte Ptr,filename:Byte Ptr)="gtk_file_chooser_set_filename"
	Function gtk_file_chooser_select_filename:gboolean(chooser:Byte Ptr,filename:Byte Ptr)="gtk_file_chooser_select_filename"
	Function gtk_file_chooser_unselect_filename(chooser:Byte Ptr,filename:Byte Ptr)="gtk_file_chooser_unselect_filename"
	Function gtk_file_chooser_select_all(chooser:Byte Ptr)="gtk_file_chooser_select_all"
	Function gtk_file_chooser_unselect_all(chooser:Byte Ptr)="gtk_file_chooser_unselect_all"
	Function gtk_file_chooser_get_filenames:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_get_filenames"
	Function gtk_file_chooser_set_current_folder:gboolean(chooser:Byte Ptr,filename:Byte Ptr)="gtk_file_chooser_set_current_folder"
	Function gtk_file_chooser_get_current_folder:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_get_current_folder"
	Function gtk_file_chooser_get_uri:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_get_uri"
	Function gtk_file_chooser_set_uri:gboolean(chooser:Byte Ptr,uri:Byte Ptr)="gtk_file_chooser_set_uri"
	Function gtk_file_chooser_select_uri:gboolean(chooser:Byte Ptr,uri:Byte Ptr)="gtk_file_chooser_select_uri"
	Function gtk_file_chooser_unselect_uri(chooser:Byte Ptr,uri:Byte Ptr)="gtk_file_chooser_unselect_uri"
	Function gtk_file_chooser_get_uris:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_get_uris"
	Function gtk_file_chooser_set_current_folder_uri:gboolean(chooser:Byte Ptr,uri:Byte Ptr)="gtk_file_chooser_set_current_folder_uri"
	Function gtk_file_chooser_get_current_folder_uri:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_get_current_folder_uri"
	Function gtk_file_chooser_set_preview_widget(chooser:Byte Ptr,preview_widget:Byte Ptr)="gtk_file_chooser_set_preview_widget"
	Function gtk_file_chooser_get_preview_widget:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_get_preview_widget"
	Function gtk_file_chooser_set_preview_widget_active(chooser:Byte Ptr,active:gboolean)="gtk_file_chooser_set_preview_widget_active"
	Function gtk_file_chooser_get_preview_widget_active:gboolean(chooser:Byte Ptr)="gtk_file_chooser_get_preview_widget_active"
	Function gtk_file_chooser_set_use_preview_label(chooser:Byte Ptr,use_label:gboolean)="gtk_file_chooser_set_use_preview_label"
	Function gtk_file_chooser_get_use_preview_label:gboolean(chooser:Byte Ptr)="gtk_file_chooser_get_use_preview_label"
	Function gtk_file_chooser_get_preview_filename:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_get_preview_filename"
	Function gtk_file_chooser_get_preview_uri:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_get_preview_uri"
	Function gtk_file_chooser_set_extra_widget(chooser:Byte Ptr,extra_widget:Byte Ptr)="gtk_file_chooser_set_extra_widget"
	Function gtk_file_chooser_get_extra_widget:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_get_extra_widget"
	Function gtk_file_chooser_add_filter(chooser:Byte Ptr,filter:Byte Ptr)="gtk_file_chooser_add_filter"
	Function gtk_file_chooser_remove_filter(chooser:Byte Ptr,filter:Byte Ptr)="gtk_file_chooser_remove_filter"
	Function gtk_file_chooser_list_filters:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_list_filters"
	Function gtk_file_chooser_set_filter(chooser:Byte Ptr,filter:Byte Ptr)="gtk_file_chooser_set_filter"
	Function gtk_file_chooser_get_filter:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_get_filter"
	Function gtk_file_chooser_add_shortcut_folder:gboolean(chooser:Byte Ptr,folder:Byte Ptr,*error:Byte Ptr)="gtk_file_chooser_add_shortcut_folder"
	Function gtk_file_chooser_remove_shortcut_folder:gboolean(chooser:Byte Ptr,folder:Byte Ptr,*error:Byte Ptr)="gtk_file_chooser_remove_shortcut_folder"
	Function gtk_file_chooser_list_shortcut_folders:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_list_shortcut_folders"
	Function gtk_file_chooser_add_shortcut_folder_uri:gboolean(chooser:Byte Ptr,uri:Byte Ptr,*error:Byte Ptr)="gtk_file_chooser_add_shortcut_folder_uri"
	Function gtk_file_chooser_remove_shortcut_folder_uri:gboolean(chooser:Byte Ptr,uri:Byte Ptr,*error:Byte Ptr)="gtk_file_chooser_remove_shortcut_folder_uri"
	Function gtk_file_chooser_list_shortcut_folder_uris:Byte Ptr(chooser:Byte Ptr)="gtk_file_chooser_list_shortcut_folder_uris"
End Extern