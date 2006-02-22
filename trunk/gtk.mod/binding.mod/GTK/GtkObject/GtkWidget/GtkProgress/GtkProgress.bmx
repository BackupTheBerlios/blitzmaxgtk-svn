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
	Function gtk_progress_set_show_text(progress:Byte Ptr,show_text:gboolean)="gtk_progress_set_show_text"
	Function gtk_progress_set_text_alignment(progress:Byte Ptr,x_align:gfloat,y_align:gfloat)="gtk_progress_set_text_alignment"
	Function gtk_progress_set_format_string(progress:Byte Ptr,format:Byte Ptr)="gtk_progress_set_format_string"
	Function gtk_progress_set_adjustment(progress:Byte Ptr,adjustment:Byte Ptr)="gtk_progress_set_adjustment"
	Function gtk_progress_set_percentage(progress:Byte Ptr,percentage:gdouble)="gtk_progress_set_percentage"
	Function gtk_progress_set_value(progress:Byte Ptr,value:gdouble)="gtk_progress_set_value"
	Function gtk_progress_get_value:gdouble(progress:Byte Ptr)="gtk_progress_get_value"
	Function gtk_progress_set_activity_mode(progress:Byte Ptr,activity_mode:gboolean)="gtk_progress_set_activity_mode"
	Function gtk_progress_get_current_text:Byte Ptr(progress:Byte Ptr)="gtk_progress_get_current_text"
	Function gtk_progress_get_text_from_value:Byte Ptr(progress:Byte Ptr,value:gdouble)="gtk_progress_get_text_from_value"
	Function gtk_progress_get_current_percentage:gdouble(progress:Byte Ptr)="gtk_progress_get_current_percentage"
	Function gtk_progress_get_percentage_from_value:gdouble(progress:Byte Ptr,value:gdouble)="gtk_progress_get_percentage_from_value"
	Function gtk_progress_configure(progress:Byte Ptr,value:gdouble,min:gdouble,max:gdouble)="gtk_progress_configure"
End Extern
