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
	Function gtk_text_new:Byte Ptr(hadj:Byte Ptr,vadj:Byte Ptr)="gtk_text_new"
	Function gtk_text_set_editable(text:Byte Ptr,editable:gboolean)="gtk_text_set_editable"
	Function gtk_text_set_word_wrap(text:Byte Ptr,word_wrap:gboolean)="gtk_text_set_word_wrap"
	Function gtk_text_set_line_wrap(text:Byte Ptr,line_wrap:gboolean)="gtk_text_set_line_wrap"
	Function gtk_text_set_adjustments(text:Byte Ptr,hadj:Byte Ptr,vadj:Byte Ptr)="gtk_text_set_adjustments"
	Function gtk_text_set_point(text:Byte Ptr,index:guint)="gtk_text_set_point"
	Function gtk_text_get_point:guint(text:Byte Ptr)="gtk_text_get_point"
	Function gtk_text_get_length:guint(text:Byte Ptr)="gtk_text_get_length"
	Function gtk_text_freeze(text:Byte Ptr)="gtk_text_freeze"
	Function gtk_text_thaw(text:Byte Ptr)="gtk_text_thaw"
	Function gtk_text_insert(text:Byte Ptr,font:Byte Ptr,fore:Byte Ptr,back:Byte Ptr,chars:Byte Ptr,length:gint)="gtk_text_insert"
	Function gtk_text_backward_delete:gboolean(text:Byte Ptr,nchars:guint)="gtk_text_backward_delete"
	Function gtk_text_forward_delete:gboolean(text:Byte Ptr,nchars:guint)="gtk_text_forward_delete"
End Extern
