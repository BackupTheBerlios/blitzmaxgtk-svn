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
	Function gtk_im_context_set_client_window(context:Byte Ptr,window:Byte Ptr)="gtk_im_context_set_client_window"
	Function gtk_im_context_get_preedit_string(context:Byte Ptr,*str:Byte Ptr,*attrs:Byte Ptr,cursor_pos:Byte Ptr)="gtk_im_context_get_preedit_string"
	Function gtk_im_context_filter_keypress:gboolean(context:Byte Ptr,event:Byte Ptr)="gtk_im_context_filter_keypress"
	Function gtk_im_context_focus_in(context:Byte Ptr)="gtk_im_context_focus_in"
	Function gtk_im_context_focus_out(context:Byte Ptr)="gtk_im_context_focus_out"
	Function gtk_im_context_reset(context:Byte Ptr)="gtk_im_context_reset"
	Function gtk_im_context_set_cursor_location(context:Byte Ptr,area:Byte Ptr)="gtk_im_context_set_cursor_location"
	Function gtk_im_context_set_use_preedit(context:Byte Ptr,use_preedit:gboolean)="gtk_im_context_set_use_preedit"
	Function gtk_im_context_set_surrounding(context:Byte Ptr,text:Byte Ptr,len:gint,cursor_index:gint)="gtk_im_context_set_surrounding"
	Function gtk_im_context_get_surrounding:gboolean(context:Byte Ptr,*text:Byte Ptr,cursor_index:Byte Ptr)="gtk_im_context_get_surrounding"
	Function gtk_im_context_delete_surrounding:gboolean(context:Byte Ptr,offset:gint,n_chars:gint)="gtk_im_context_delete_surrounding"
End Extern
