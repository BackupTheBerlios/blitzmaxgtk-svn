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
	Function gtk_statusbar_new:Byte Ptr()="gtk_statusbar_new"
	Function gtk_statusbar_get_context_id:guint(statusbar:Byte Ptr,context_description:Byte Ptr)="gtk_statusbar_get_context_id"
	Function gtk_statusbar_push:guint(statusbar:Byte Ptr,context_id:guint,text:Byte Ptr)="gtk_statusbar_push"
	Function gtk_statusbar_pop(statusbar:Byte Ptr,context_id:guint)="gtk_statusbar_pop"
	Function gtk_statusbar_remove(statusbar:Byte Ptr,context_id:guint,message_id:guint)="gtk_statusbar_remove"
	Function gtk_statusbar_set_has_resize_grip(statusbar:Byte Ptr,setting:gboolean)="gtk_statusbar_set_has_resize_grip"
	Function gtk_statusbar_get_has_resize_grip:gboolean(statusbar:Byte Ptr)="gtk_statusbar_get_has_resize_grip"
End Extern
