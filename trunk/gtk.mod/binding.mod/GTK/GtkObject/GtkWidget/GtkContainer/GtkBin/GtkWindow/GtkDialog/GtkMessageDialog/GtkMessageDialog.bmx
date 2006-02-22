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
'GtkMessageType
	Const GTK_MESSAGE_INFO:Byte=0
	Const GTK_MESSAGE_WARNING:Byte=1
	Const GTK_MESSAGE_QUESTION:Byte=2
	Const GTK_MESSAGE_ERROR:Byte=3

'GtkButtonsType
	Const GTK_BUTTONS_NONE:Byte=0
	Const GTK_BUTTONS_OK:Byte=1
	Const GTK_BUTTONS_CLOSE:Byte=2
	Const GTK_BUTTONS_CANCEL:Byte=3
	Const GTK_BUTTONS_YES_NO:Byte=4
	Const GTK_BUTTONS_OK_CANCEL:Byte=5

Extern
	Function gtk_message_dialog_new:Byte Ptr(parent:Byte Ptr, flags:Byte, MType:Byte, buttons:Byte, message_format:Byte Ptr)="gtk_message_dialog_new"
	Function gtk_message_dialog_set_markup(message_dialog:Byte Ptr,str:Byte Ptr)="gtk_message_dialog_set_markup"
	Function gtk_message_dialog_format_secondary_text(message_dialog:Byte Ptr, message_format:Byte Ptr)="gtk_message_dialog_format_secondary_text"
End Extern
