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
	Function gtk_dialog_new:Byte Ptr()="gtk_dialog_new"
	'
	Function gtk_dialog_run:int(dialog:Byte Ptr)="gtk_dialog_run"
	Function gtk_dialog_response(dialog:Byte Ptr,response_id:Int)="gtk_dialog_response"
	Function gtk_dialog_add_button:Byte Ptr(dialog:Byte Ptr,button_text:Byte Ptr,response_id:Int)="gtk_dialog_add_button"
	Function gtk_dialog_add_action_widget(dialog:Byte Ptr,child:Byte Ptr,response_id:Int)="gtk_dialog_add_action_widget"
	Function gtk_dialog_get_has_separator:Byte(dialog:Byte Ptr)="gtk_dialog_get_has_separator"
	Function gtk_dialog_set_default_response(dialog:Byte Ptr,response_id:Int)="gtk_dialog_set_default_response"
	Function gtk_dialog_set_has_separator(dialog:Byte Ptr,setting:Byte)="gtk_dialog_set_has_separator"
	Function gtk_dialog_set_response_sensitive(dialog:Byte Ptr,response_id:Int,setting:Byte)="gtk_dialog_set_response_sensitive"
	Function gtk_dialog_get_response_for_widget:Int(dialog:Byte Ptr,widget:Byte Ptr)="gtk_dialog_get_response_for_widget"
	Function gtk_alternative_dialog_button_order:Byte(screen:Byte Ptr)="gtk_alternative_dialog_button_order"
	Function gtk_dialog_set_alternative_button_order_from_array(dialog:Byte Ptr,n_params:Int,new_order:Byte Ptr)="gtk_dialog_set_alternative_button_order_from_array"
	Function gtk_dialog_get_type:Byte Ptr()
End Extern
