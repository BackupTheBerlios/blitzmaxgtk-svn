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
	Function :gboolean((GtkEntryCompletion *completion:*GtkEntryCompletionMatchFunc),key:Byte Ptr,iter:Byte Ptr,user_data);:gpointer)=""
	Function gtk_entry_completion_new:Byte Ptr()="gtk_entry_completion_new"
	Function gtk_entry_completion_get_entry:Byte Ptr(completion:Byte Ptr)="gtk_entry_completion_get_entry"
	Function gtk_entry_completion_set_model(completion:Byte Ptr,model:Byte Ptr)="gtk_entry_completion_set_model"
	Function gtk_entry_completion_get_model:Byte Ptr(completion:Byte Ptr)="gtk_entry_completion_get_model"
	Function gtk_entry_completion_set_match_func(completion:Byte Ptr,func:GtkEntryCompletionMatchFunc,func_data:gpointer,func_notify:GDestroyNotify)="gtk_entry_completion_set_match_func"
	Function gtk_entry_completion_set_minimum_key_length(completion:Byte Ptr,length:gint)="gtk_entry_completion_set_minimum_key_length"
	Function gtk_entry_completion_get_minimum_key_length:gint(completion:Byte Ptr)="gtk_entry_completion_get_minimum_key_length"
	Function gtk_entry_completion_complete(completion:Byte Ptr)="gtk_entry_completion_complete"
	Function gtk_entry_completion_insert_prefix(completion:Byte Ptr)="gtk_entry_completion_insert_prefix"
	Function gtk_entry_completion_insert_action_text(completion:Byte Ptr,index_:gint,text:Byte Ptr)="gtk_entry_completion_insert_action_text"
	Function gtk_entry_completion_insert_action_markup(completion:Byte Ptr,index_:gint,markup:Byte Ptr)="gtk_entry_completion_insert_action_markup"
	Function gtk_entry_completion_delete_action(completion:Byte Ptr,index_:gint)="gtk_entry_completion_delete_action"
	Function gtk_entry_completion_set_text_column(completion:Byte Ptr,column:gint)="gtk_entry_completion_set_text_column"
	Function gtk_entry_completion_get_text_column:gint(completion:Byte Ptr)="gtk_entry_completion_get_text_column"
	Function gtk_entry_completion_set_inline_completion(completion:Byte Ptr,inline_completion:gboolean)="gtk_entry_completion_set_inline_completion"
	Function gtk_entry_completion_get_inline_completion:gboolean(completion:Byte Ptr)="gtk_entry_completion_get_inline_completion"
	Function gtk_entry_completion_set_popup_completion(completion:Byte Ptr,popup_completion:gboolean)="gtk_entry_completion_set_popup_completion"
	Function gtk_entry_completion_get_popup_completion:gboolean(completion:Byte Ptr)="gtk_entry_completion_get_popup_completion"
	Function gtk_entry_completion_set_popup_set_width(completion:Byte Ptr,popup_set_width:gboolean)="gtk_entry_completion_set_popup_set_width"
	Function gtk_entry_completion_get_popup_set_width:gboolean(completion:Byte Ptr)="gtk_entry_completion_get_popup_set_width"
	Function gtk_entry_completion_set_popup_single_match(completion:Byte Ptr,popup_single_match:gboolean)="gtk_entry_completion_set_popup_single_match"
	Function gtk_entry_completion_get_popup_single_match:gboolean(completion:Byte Ptr)="gtk_entry_completion_get_popup_single_match"
End Extern
