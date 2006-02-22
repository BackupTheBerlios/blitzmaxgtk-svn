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
	Function gtk_paned_add1(paned:Byte Ptr,child:Byte Ptr)="gtk_paned_add1"
	Function gtk_paned_add2(paned:Byte Ptr,child:Byte Ptr)="gtk_paned_add2"
	Function gtk_paned_pack1(paned:Byte Ptr,child:Byte Ptr,resize:Byte,shrink:Byte)="gtk_paned_pack1"
	Function gtk_paned_pack2(paned:Byte Ptr,child:Byte Ptr,resize:Byte,shrink:Byte)="gtk_paned_pack2"
	Function gtk_paned_get_child1:Byte Ptr(paned:Byte Ptr)="gtk_paned_get_child1"
	Function gtk_paned_get_child2:Byte Ptr(paned:Byte Ptr)="gtk_paned_get_child2"
	Function gtk_paned_set_position(paned:Byte Ptr,position:Int)="gtk_paned_set_position"
	Function gtk_paned_get_position:Int(paned:Byte Ptr)="gtk_paned_get_position"
End Extern
