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
	Function gtk_text_tag_new:Byte Ptr(name:Byte Ptr)="gtk_text_tag_new"
	Function gtk_text_tag_get_priority:gint(tag:Byte Ptr)="gtk_text_tag_get_priority"
	Function gtk_text_tag_set_priority(tag:Byte Ptr,priority:gint)="gtk_text_tag_set_priority"
	Function gtk_text_tag_event:gboolean(tag:Byte Ptr,event_object:Byte Ptr,event:Byte Ptr,iter:Byte Ptr)="gtk_text_tag_event"
	Function gtk_text_attributes_new:Byte Ptr()="gtk_text_attributes_new"
	Function gtk_text_attributes_copy:Byte Ptr(src:Byte Ptr)="gtk_text_attributes_copy"
	Function gtk_text_attributes_copy_values(src:Byte Ptr,dest:Byte Ptr)="gtk_text_attributes_copy_values"
	Function gtk_text_attributes_unref(values:Byte Ptr)="gtk_text_attributes_unref"
	Function gtk_text_attributes_ref:Byte Ptr(values:Byte Ptr)="gtk_text_attributes_ref"
End Extern
