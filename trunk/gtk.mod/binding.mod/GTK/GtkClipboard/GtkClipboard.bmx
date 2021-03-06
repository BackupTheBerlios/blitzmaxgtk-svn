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
	Function ((GtkClipboard *clipboard:*GtkClipboardReceivedFunc),selection_data:Byte Ptr,data);:gpointer)=""
	Function ((GtkClipboard *clipboard:*GtkClipboardTextReceivedFunc),text:Byte Ptr,data);:gpointer)=""
	Function (clipboard:Byte Ptr,pixbuf:Byte Ptr,data);:gpointer)=""
	Function (clipboard:Byte Ptr,atoms:Byte Ptr,n_atoms:gint,data);:gpointer)=""
	Function ((GtkClipboard *clipboard:*GtkClipboardGetFunc),selection_data:Byte Ptr,info:guint,user_data_or_owner);:gpointer)=""
	Function ((GtkClipboard *clipboard:*GtkClipboardClearFunc),user_data_or_owner);:gpointer)=""
	Function gtk_clipboard_get:Byte Ptr(selection:GdkAtom)="gtk_clipboard_get"
	Function gtk_clipboard_get_for_display:Byte Ptr(display:Byte Ptr,selection:GdkAtom)="gtk_clipboard_get_for_display"
	Function gtk_clipboard_get_display:Byte Ptr(clipboard:Byte Ptr)="gtk_clipboard_get_display"
	Function gtk_clipboard_set_with_data:gboolean(clipboard:Byte Ptr,targets:Byte Ptr,n_targets:guint,get_func:GtkClipboardGetFunc,clear_func:GtkClipboardClearFunc,user_data:gpointer)="gtk_clipboard_set_with_data"
	Function gtk_clipboard_set_with_owner:gboolean(clipboard:Byte Ptr,targets:Byte Ptr,n_targets:guint,get_func:GtkClipboardGetFunc,clear_func:GtkClipboardClearFunc,owner:Byte Ptr)="gtk_clipboard_set_with_owner"
	Function gtk_clipboard_get_owner:Byte Ptr(clipboard:Byte Ptr)="gtk_clipboard_get_owner"
	Function gtk_clipboard_clear(clipboard:Byte Ptr)="gtk_clipboard_clear"
	Function gtk_clipboard_set_text(clipboard:Byte Ptr,text:Byte Ptr,len:gint)="gtk_clipboard_set_text"
	Function gtk_clipboard_set_image(clipboard:Byte Ptr,pixbuf:Byte Ptr)="gtk_clipboard_set_image"
	Function gtk_clipboard_request_contents(clipboard:Byte Ptr,target:GdkAtom,callback:GtkClipboardReceivedFunc,user_data:gpointer)="gtk_clipboard_request_contents"
	Function gtk_clipboard_request_text(clipboard:Byte Ptr,callback:GtkClipboardTextReceivedFunc,user_data:gpointer)="gtk_clipboard_request_text"
	Function gtk_clipboard_request_image(clipboard:Byte Ptr,callback:GtkClipboardImageReceivedFunc,user_data:gpointer)="gtk_clipboard_request_image"
	Function gtk_clipboard_request_targets(clipboard:Byte Ptr,callback:GtkClipboardTargetsReceivedFunc,user_data:gpointer)="gtk_clipboard_request_targets"
	Function gtk_clipboard_wait_for_contents:Byte Ptr(clipboard:Byte Ptr,target:GdkAtom)="gtk_clipboard_wait_for_contents"
	Function gtk_clipboard_wait_for_text:Byte Ptr(clipboard:Byte Ptr)="gtk_clipboard_wait_for_text"
	Function gtk_clipboard_wait_for_image:Byte Ptr(clipboard:Byte Ptr)="gtk_clipboard_wait_for_image"
	Function gtk_clipboard_wait_is_text_available:gboolean(clipboard:Byte Ptr)="gtk_clipboard_wait_is_text_available"
	Function gtk_clipboard_wait_is_image_available:gboolean(clipboard:Byte Ptr)="gtk_clipboard_wait_is_image_available"
	Function gtk_clipboard_wait_for_targets:gboolean(clipboard:Byte Ptr,*targets:Byte Ptr,n_targets:Byte Ptr)="gtk_clipboard_wait_for_targets"
	Function gtk_clipboard_wait_is_target_available:gboolean(clipboard:Byte Ptr,target:GdkAtom)="gtk_clipboard_wait_is_target_available"
	Function gtk_clipboard_set_can_store(clipboard:Byte Ptr,targets:Byte Ptr,n_targets:gint)="gtk_clipboard_set_can_store"
	Function gtk_clipboard_store(clipboard:Byte Ptr)="gtk_clipboard_store"
End Extern
