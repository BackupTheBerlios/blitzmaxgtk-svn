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
Type GtkFileChooserDialog Extends GtkDialog
	Field FCHandle:Byte Ptr

	Function CreateFCD:GtkFileChooserDialog(Title:String="",Parent:GtkWindow=Null,action:Int,firstbtntext:String,firstbtnresponse:Int,secondbtntext:String="",secondbtnresponse:Int=0,thirdbtntext:String="",thirdbtnresponse:Int=0)
		Local Dialog:GtkFileChooserDialog = New GtkFileChooserDialog
		Local PHandle:Byte Ptr=Null
		If Parent <> Null PHandle = Parent.Handle
		Local SBText:Byte Ptr = Null
		If secondbtntext <> "" SBText = secondbtntext.ToCString()
		Local TBText:Byte Ptr = Null
		If thirdbtntext <> "" TBText = thirdbtntext.ToCString()
		Dialog.Handle = gtk_file_chooser_dialog_new(Title.ToCString(),PHandle,action,firstbtntext.ToCString(),firstbtnresponse,sbtext,secondbtnresponse,tbtext,thirdbtnresponse, null)
		Dialog.FCHandle = g_type_check_instance_cast(Dialog.Handle,gtk_file_chooser_get_type())
		Dialog.DialogHandle = g_type_check_instance_cast(Dialog.Handle,gtk_dialog_get_type())
		Return Dialog
	End Function

	Function CreateFCDFromHandle:GtkFileChooserDialog(Handle:Byte Ptr)
		Local Dialog:GtkFileChooserDialog = New GtkFileChooserDialog
		Dialog.Handle = Handle
		Dialog.FCHandle = g_type_check_instance_cast(Dialog.Handle,gtk_file_chooser_get_type())
		Dialog.DialogHandle = g_type_check_instance_cast(Dialog.Handle,gtk_dialog_get_type())
		Return Dialog
	End Function

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
