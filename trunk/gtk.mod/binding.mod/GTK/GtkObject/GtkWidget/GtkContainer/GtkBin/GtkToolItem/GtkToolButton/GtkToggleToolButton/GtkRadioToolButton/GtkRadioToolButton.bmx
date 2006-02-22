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
	Function gtk_radio_tool_button_new:Byte Ptr(group:Byte Ptr)="gtk_radio_tool_button_new"
	Function gtk_radio_tool_button_new_from_stock:Byte Ptr(group:Byte Ptr,stock_id:Byte Ptr)="gtk_radio_tool_button_new_from_stock"
	Function gtk_radio_tool_button_new_from_widget:Byte Ptr(group:Byte Ptr)="gtk_radio_tool_button_new_from_widget"
	Function gtk_radio_tool_button_new_with_stock_from_widget:Byte Ptr(group:Byte Ptr,stock_id:Byte Ptr)="gtk_radio_tool_button_new_with_stock_from_widget"
	Function gtk_radio_tool_button_get_group:Byte Ptr(button:Byte Ptr)="gtk_radio_tool_button_get_group"
	Function gtk_radio_tool_button_set_group(button:Byte Ptr,group:Byte Ptr)="gtk_radio_tool_button_set_group"
End Extern
