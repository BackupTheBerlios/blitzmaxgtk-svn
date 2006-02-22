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
	Function gtk_calendar_new:Byte Ptr()="gtk_calendar_new"
	Function gtk_calendar_select_month:gboolean(calendar:Byte Ptr,month:guint,year:guint)="gtk_calendar_select_month"
	Function gtk_calendar_select_day(calendar:Byte Ptr,day:guint)="gtk_calendar_select_day"
	Function gtk_calendar_mark_day:gboolean(calendar:Byte Ptr,day:guint)="gtk_calendar_mark_day"
	Function gtk_calendar_unmark_day:gboolean(calendar:Byte Ptr,day:guint)="gtk_calendar_unmark_day"
	Function gtk_calendar_clear_marks(calendar:Byte Ptr)="gtk_calendar_clear_marks"
	Function gtk_calendar_get_display_options:GtkCalendarDisplayOptions(calendar:Byte Ptr)="gtk_calendar_get_display_options"
	Function gtk_calendar_set_display_options(calendar:Byte Ptr,flags:GtkCalendarDisplayOptions)="gtk_calendar_set_display_options"
	Function gtk_calendar_display_options(calendar:Byte Ptr,flags:GtkCalendarDisplayOptions)="gtk_calendar_display_options"
	Function gtk_calendar_get_date(calendar:Byte Ptr,year:Byte Ptr,month:Byte Ptr,day:Byte Ptr)="gtk_calendar_get_date"
	Function gtk_calendar_freeze(calendar:Byte Ptr)="gtk_calendar_freeze"
	Function gtk_calendar_thaw(calendar:Byte Ptr)="gtk_calendar_thaw"
End Extern
