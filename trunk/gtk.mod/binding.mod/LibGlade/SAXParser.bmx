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
	Function glade_parser_parse_file:Byte Ptr(gfile:Byte Ptr, domain:Byte Ptr, gbuffer:Byte Ptr)="glade_parser_parse_file"
	Function glade_parser_parse_buffer:Byte Ptr(gbuffer:Byte Ptr, glen:int)="glade_parser_parse_buffer"
	Function glade_interface_destroy(interface:Byte Ptr)="glade_interface_destroy"
	Function glade_interface_dump(interface:Byte Ptr, gfilename:Byte Ptr)="glade_interface_dump"
End Extern
