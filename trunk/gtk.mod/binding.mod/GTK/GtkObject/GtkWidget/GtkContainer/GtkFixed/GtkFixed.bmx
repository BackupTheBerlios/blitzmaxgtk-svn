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
	Function gtk_fixed_new:Byte Ptr()="gtk_fixed_new"
	Function gtk_fixed_put(fixed:Byte Ptr,widget:Byte Ptr,x:int,y:int)="gtk_fixed_put"
	Function gtk_fixed_move(fixed:Byte Ptr,widget:Byte Ptr,x:int,y:int)="gtk_fixed_move"
	Function gtk_fixed_get_has_window:Byte(fixed:Byte Ptr)="gtk_fixed_get_has_window"
	Function gtk_fixed_set_has_window(fixed:Byte Ptr,has_window:Byte)="gtk_fixed_set_has_window"
End Extern
