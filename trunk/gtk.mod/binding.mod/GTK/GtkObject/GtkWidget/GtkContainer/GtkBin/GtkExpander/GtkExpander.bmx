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
	Function gtk_expander_new:Byte Ptr(label:Byte Ptr)="gtk_expander_new"
	Function gtk_expander_new_with_mnemonic:Byte Ptr(label:Byte Ptr)="gtk_expander_new_with_mnemonic"
	Function gtk_expander_set_expanded(expander:Byte Ptr,expanded:Byte)="gtk_expander_set_expanded"
	Function gtk_expander_get_expanded:Byte(expander:Byte Ptr)="gtk_expander_get_expanded"
	Function gtk_expander_set_spacing(expander:Byte Ptr,spacing:Int)="gtk_expander_set_spacing"
	Function gtk_expander_get_spacing:Int(expander:Byte Ptr)="gtk_expander_get_spacing"
	Function gtk_expander_set_label(expander:Byte Ptr,label:Byte Ptr)="gtk_expander_set_label"
	Function gtk_expander_get_label:Byte ptr(expander:Byte Ptr)="gtk_expander_get_label"
	Function gtk_expander_set_use_underline(expander:Byte Ptr,use_underline:Byte)="gtk_expander_set_use_underline"
	Function gtk_expander_get_use_underline:Byte(expander:Byte Ptr)="gtk_expander_get_use_underline"
	Function gtk_expander_set_use_markup(expander:Byte Ptr,use_markup:Byte)="gtk_expander_set_use_markup"
	Function gtk_expander_get_use_markup:Byte(expander:Byte Ptr)="gtk_expander_get_use_markup"
	Function gtk_expander_set_label_widget(expander:Byte Ptr,label_widget:Byte Ptr)="gtk_expander_set_label_widget"
	Function gtk_expander_get_label_widget:Byte Ptr(expander:Byte Ptr)="gtk_expander_get_label_widget"
End Extern
