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
	Function :gboolean((const GtkFileFilterInfo *filter_info:*GtkFileFilterFunc),data);:gpointer)=""
	Function gtk_file_filter_new:Byte Ptr()="gtk_file_filter_new"
	Function gtk_file_filter_set_name(filter:Byte Ptr,name:Byte Ptr)="gtk_file_filter_set_name"
	Function gchar*:const(filter:Byte Ptr)="gchar*"
	Function gtk_file_filter_add_mime_type(filter:Byte Ptr,mime_type:Byte Ptr)="gtk_file_filter_add_mime_type"
	Function gtk_file_filter_add_pattern(filter:Byte Ptr,pattern:Byte Ptr)="gtk_file_filter_add_pattern"
	Function gtk_file_filter_add_pixbuf_formats(filter:Byte Ptr)="gtk_file_filter_add_pixbuf_formats"
	Function gtk_file_filter_add_custom(filter:Byte Ptr,needed:GtkFileFilterFlags,func:GtkFileFilterFunc,data:gpointer,notify:GDestroyNotify)="gtk_file_filter_add_custom"
	Function gtk_file_filter_get_needed:GtkFileFilterFlags(filter:Byte Ptr)="gtk_file_filter_get_needed"
	Function gtk_file_filter_filter:gboolean(filter:Byte Ptr,filter_info:Byte Ptr)="gtk_file_filter_filter"
End Extern
