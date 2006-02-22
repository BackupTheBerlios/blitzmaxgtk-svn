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
	Function gtk_combo_new:Byte Ptr()="gtk_combo_new"
	Function gtk_combo_set_popdown_strings(combo:Byte Ptr,strings:Byte Ptr)="gtk_combo_set_popdown_strings"
	Function gtk_combo_set_value_in_list(combo:Byte Ptr,val:gboolean,ok_if_empty:gboolean)="gtk_combo_set_value_in_list"
	Function gtk_combo_set_use_arrows(combo:Byte Ptr,val:gboolean)="gtk_combo_set_use_arrows"
	Function gtk_combo_set_use_arrows_always(combo:Byte Ptr,val:gboolean)="gtk_combo_set_use_arrows_always"
	Function gtk_combo_set_case_sensitive(combo:Byte Ptr,val:gboolean)="gtk_combo_set_case_sensitive"
	Function gtk_combo_set_item_string(combo:Byte Ptr,item:Byte Ptr,item_value:Byte Ptr)="gtk_combo_set_item_string"
	Function gtk_combo_disable_activate(combo:Byte Ptr)="gtk_combo_disable_activate"
End Extern
