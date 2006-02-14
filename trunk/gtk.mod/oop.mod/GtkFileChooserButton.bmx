Type GtkFileChooserButton Extends GtkHBox
	Field FCHandle:Byte Ptr

	Function CreateFCB:GtkFileChooserButton(Title:String,Action:Int)
		Local TempButton:GtkFileChooserButton = New GtkFileChooserButton
		TempButton.Handle = gtk_file_chooser_button_new(Title.ToCString(),Action)
		TempButton.FCHandle = g_type_check_instance_cast(TempButton.Handle,gtk_file_chooser_get_type())
		Return TempButton
	End Function

	Function CreateFCBFromHandle:GtkFileChooserButton(Handle:Byte Ptr)
		Local TempButton:GtkFileChooserButton = New GtkFileChooserButton
		TempButton.Handle = Handle
		TempButton.FCHandle = g_type_check_instance_cast(TempButton.Handle,gtk_file_chooser_get_type())
		Return TempButton
	End Function

	Method GetTitle:String()
		Return String.FromCString(gtk_file_chooser_button_get_title(Handle))
	End Method

	Method SetTitle(Title:String)
		gtk_file_chooser_button_set_title(Handle,Title.ToCString())
	End Method

	Method GetWidthChars:Int()
		Return gtk_file_chooser_button_get_width_chars(Handle)
	End Method

	Method SetWidthChars(WidthChars:Int)
		gtk_file_chooser_button_set_width_chars(Handle,WidthChars)
	End Method

	'GtkFileChooser methods (TODO: Look for a better way to implement this)
	Method SetLocalOnly(LocalOnly:Byte)
		gtk_file_chooser_set_local_only(FCHandle,LocalOnly)
	End Method

	Method GetLocalOnly:Byte()
		Return gtk_file_chooser_get_local_only(FCHandle)
	End Method

	Method SetSelectMultiple(Multiple:Byte)
		gtk_file_chooser_set_select_multiple(FCHandle,Multiple)
	End Method

	Method GetSelectMultiple:Byte()
		Return gtk_file_chooser_get_select_multiple(FCHandle)
	End Method

	Method SetShowHidden(ShowHidden:Byte)
		gtk_file_chooser_set_show_hidden(FCHandle,ShowHidden)
	End Method

	Method GetShowHidden:Byte ()
		Return gtk_file_chooser_get_show_hidden(FCHandle)
	End Method

	Method SetDoOverwriteConfirmation(Confirmation:Byte)
		gtk_file_chooser_set_do_overwrite_confirmation(FCHandle,Confirmation)
	End Method

	Method GetDoOverwriteConfirmation:Byte()
		Return gtk_file_chooser_get_do_overwrite_confirmation(FCHandle)
	End Method

	Method SetCurrentName(Name:String)
		gtk_file_chooser_set_current_name(FCHandle,Name.ToCString())
	End Method

	Method GetFilename:String()
		Return String.FromCString(gtk_file_chooser_get_filename(FCHandle))
	End Method

	Method SetFilename(Filename:String)
		gtk_file_chooser_set_filename(FCHandle,Filename.ToCString())
	End Method

	Method SelectFilename(Filename:String)
		gtk_file_chooser_select_filename(FCHandle,Filename.ToCString())
	End Method

	Method UnselectFilename(Filename:String)
		gtk_file_chooser_unselect_filename(FCHandle,Filename.ToCString())
	End Method

	Method SelectAll()
		gtk_file_chooser_select_all(FCHandle)
	End Method

	Method UnselectAll()
		gtk_file_chooser_unselect_all(FCHandle)
	End Method

	Method SetCurrentFolder:Byte(Folder:String)
		Return gtk_file_chooser_set_current_folder(FCHandle,Folder.ToCString())
	End Method

	Method GetCurrentFolder:String()
		Return String.FromCString(gtk_file_chooser_get_current_folder(FChandle))
	End Method

	Method SetURI(URI:String)
		gtk_file_chooser_set_uri(FCHandle,URI.ToCString())
	End Method

	Method GetURI:String()
		Return String.FromCString(gtk_file_chooser_get_uri(FCHandle))
	End Method

	Method SelectURI(URI:String)
		gtk_file_chooser_select_uri(FCHandle,URI.ToCString())
	End Method

	Method UnselectURI(URI:String)
		gtk_file_chooser_unselect_uri(FCHandle,URI.ToCString())
	End Method

	Method SetCurrentFolderURI:Byte(URI:String)	
		Return gtk_file_chooser_set_current_folder_uri(FCHandle,URI.ToCString())
	End Method

	Method GetCurrentFolderURI:String()
		Return String.FromCString(gtk_file_chooser_get_current_folder_uri(FCHandle))
	End Method

	Method SetPreviewWidget(PrevWidget:GtkWidget)
		gtk_file_chooser_set_preview_widget(FCHandle,PrevWidget.Handle)
	End Method

	Method GetPreviewWidget:Byte Ptr()
		Return gtk_file_chooser_get_preview_widget(FCHandle)
	End Method

	Method SetPreviewWidgetActive(Active:Byte)
		gtk_file_chooser_set_preview_widget_active(FCHandle,Active)
	End Method

	Method GetPreviewWidgetActive:Byte()
		Return gtk_file_chooser_get_preview_widget_active(FCHandle)
	End Method

	Method SetUsePreviewLabel(Use:Byte)
		gtk_file_chooser_set_use_preview_label(FCHandle,Use)
	End Method

	Method GetUsePreviewLabel:Byte()
		Return gtk_file_chooser_get_use_preview_label(FCHandle)
	End Method

	Method GetPreviewFilename:String()
		Return String.FromCString(gtk_file_chooser_get_preview_filename(FCHandle))
	End Method

	Method GetPreviewURI:String()
		Return String.FromCString(gtk_file_chooser_get_preview_uri(FCHandle))
	End Method

	Method SetExtraWidget(Widget:GtkWidget)
		gtk_file_chooser_set_extra_widget(FCHandle,Widget.Handle)
	End Method

	Method GetExtraWidget:Byte Ptr()
		Return gtk_file_chooser_get_extra_widget(FCHandle)
	End Method

	'TODO: File filters
	'TODO: GError
	
	Method AddShortcutFolder:Byte(Folder:String)
		Return gtk_file_chooser_add_shortcut_folder(FCHandle,Folder.ToCString(),Null)
	End Method
	
	Method DelShortcutFolder:Byte(Folder:String)
		Return gtk_file_chooser_remove_shortcut_folder(FCHandle,Folder.ToCString(),Null)
	End Method

	Method AddShortcutURI:Byte(URI:String)
		Return gtk_file_chooser_add_shortcut_folder_uri(FCHandle,URI.ToCString(),Null)
	End Method
	
	Method DelShortcutURI:Byte(URI:String)
		Return gtk_file_chooser_remove_shortcut_folder_uri(FCHandle,URI.ToCString(),Null)
	End Method
End Type
