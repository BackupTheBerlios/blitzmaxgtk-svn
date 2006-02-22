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
Const G_CONNECT_AFTER:Byte = 1
Const G_CONNECT_SWAPPED:Byte = 2

Extern
	Function g_signal_connect_data(instance:Byte Ptr, detailed_signal:Byte Ptr, c_handler:Byte Ptr,data:Byte Ptr,destroy_data:Byte Ptr,connect_flags:Byte)="g_signal_connect_data"
End Extern
