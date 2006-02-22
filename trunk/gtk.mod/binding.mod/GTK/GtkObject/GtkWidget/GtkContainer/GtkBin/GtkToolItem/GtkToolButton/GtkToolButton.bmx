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
	Function gtk_tool_button_new:Byte Ptr(icon_widget:Byte Ptr,label:Byte Ptr)="gtk_tool_button_new"
	Function gtk_tool_button_new_from_stock:Byte Ptr(stock_id:Byte Ptr)="gtk_tool_button_new_from_stock"
	Function gtk_tool_button_set_label(button:Byte Ptr,label:Byte Ptr)="gtk_tool_button_set_label"
	Function gtk_tool_button_get_label:Byte Ptr(button:Byte Ptr)="gtk_tool_button_get_label"
	Function gtk_tool_button_set_use_underline(button:Byte Ptr,use_underline:Byte)="gtk_tool_button_set_use_underline"
	Function gtk_tool_button_get_use_underline:Byte(button:Byte Ptr)="gtk_tool_button_get_use_underline"
	Function gtk_tool_button_set_stock_id(button:Byte Ptr,stock_id:Byte Ptr)="gtk_tool_button_set_stock_id"
	Function gtk_tool_button_get_stock_id:Byte Ptr(button:Byte Ptr)="gtk_tool_button_get_stock_id"
	Function gtk_tool_button_set_icon_name(button:Byte Ptr,icon_name:Byte Ptr)="gtk_tool_button_set_icon_name"
	Function gtk_tool_button_get_icon_name:Byte Ptr(button:Byte Ptr)="gtk_tool_button_get_icon_name"
	Function gtk_tool_button_set_icon_widget(button:Byte Ptr,icon_widget:Byte Ptr)="gtk_tool_button_set_icon_widget"
	Function gtk_tool_button_get_icon_widget:Byte Ptr(button:Byte Ptr)="gtk_tool_button_get_icon_widget"
	Function gtk_tool_button_set_label_widget(button:Byte Ptr,label_widget:Byte Ptr)="gtk_tool_button_set_label_widget"
	Function gtk_tool_button_get_label_widget:Byte Ptr(button:Byte Ptr)="gtk_tool_button_get_label_widget"
End Extern
