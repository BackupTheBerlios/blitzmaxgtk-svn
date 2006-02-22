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
	Function gtk_toggle_action_new:Byte Ptr(name:Byte Ptr,label:Byte Ptr,tooltip:Byte Ptr,stock_id:Byte Ptr)="gtk_toggle_action_new"
	Function gtk_toggle_action_toggled(action:Byte Ptr)="gtk_toggle_action_toggled"
	Function gtk_toggle_action_set_active(action:Byte Ptr,is_active:gboolean)="gtk_toggle_action_set_active"
	Function gtk_toggle_action_get_active:gboolean(action:Byte Ptr)="gtk_toggle_action_get_active"
	Function gtk_toggle_action_set_draw_as_radio(action:Byte Ptr,draw_as_radio:gboolean)="gtk_toggle_action_set_draw_as_radio"
	Function gtk_toggle_action_get_draw_as_radio:gboolean(action:Byte Ptr)="gtk_toggle_action_get_draw_as_radio"
End Extern
