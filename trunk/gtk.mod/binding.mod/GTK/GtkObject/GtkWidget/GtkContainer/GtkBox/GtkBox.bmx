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
	Function gtk_box_pack_start(box:Byte Ptr,child:Byte Ptr,expand:Byte,fill:Byte,padding:int)="gtk_box_pack_start"
	Function gtk_box_pack_end(box:Byte Ptr,child:Byte Ptr,expand:Byte,fill:Byte,padding:int)="gtk_box_pack_end"
	Function gtk_box_pack_start_defaults(box:Byte Ptr,widget:Byte Ptr)="gtk_box_pack_start_defaults"
	Function gtk_box_pack_end_defaults(box:Byte Ptr,widget:Byte Ptr)="gtk_box_pack_end_defaults"
	Function gtk_box_get_homogeneous:Byte(box:Byte Ptr)="gtk_box_get_homogeneous"
	Function gtk_box_set_homogeneous(box:Byte Ptr,homogeneous:Byte)="gtk_box_set_homogeneous"
	Function gtk_box_get_spacing:int(box:Byte Ptr)="gtk_box_get_spacing"
	Function gtk_box_set_spacing(box:Byte Ptr,spacing:int)="gtk_box_set_spacing"
	Function gtk_box_reorder_child(box:Byte Ptr,child:Byte Ptr,position:int)="gtk_box_reorder_child"
	'Function gtk_box_query_child_packing(box:Byte Ptr,child:Byte Ptr,expand:Byte Ptr,fill:Byte Ptr,padding:Byte Ptr,pack_type:Byte)="gtk_box_query_child_packing"
	'Function gtk_box_set_child_packing(box:Byte Ptr,child:Byte Ptr,expand:Byte,fill:Byte,padding:int,pack_type:Byte)="gtk_box_set_child_packing"
End Extern
