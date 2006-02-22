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
	'Function gtk_range_get_adjustment:Byte Ptr(range:Byte Ptr)="gtk_range_get_adjustment"
	'Function gtk_range_set_update_policy(range:Byte Ptr,policy:GtkUpdateType)="gtk_range_set_update_policy"
	'Function gtk_range_set_adjustment(range:Byte Ptr,adjustment:Byte Ptr)="gtk_range_set_adjustment"
	'Function gtk_range_get_inverted:gboolean(range:Byte Ptr)="gtk_range_get_inverted"
	'Function gtk_range_set_inverted(range:Byte Ptr,setting:gboolean)="gtk_range_set_inverted"
	'Function gtk_range_get_update_policy:GtkUpdateType(range:Byte Ptr)="gtk_range_get_update_policy"
	Function gtk_range_get_value:double(range:Byte Ptr)="gtk_range_get_value"
	'Function gtk_range_set_increments(range:Byte Ptr,step:gdouble,page:gdouble)="gtk_range_set_increments"
	'Function gtk_range_set_range(range:Byte Ptr,min:gdouble,max:gdouble)="gtk_range_set_range"
	Function gtk_range_set_value(range:Byte Ptr,value:double)="gtk_range_set_value"
End Extern
