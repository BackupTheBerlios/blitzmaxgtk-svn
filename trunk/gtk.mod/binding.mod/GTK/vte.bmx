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
	Function vte_terminal_new:Byte Ptr()="vte_terminal_new"
	Function vte_terminal_fork_command:Int(terminal:Byte Ptr,command:Byte Ptr,argv:Byte Ptr,envv:Byte Ptr,directory:Byte Ptr,lastlog:Byte,utmp:Byte,wtmp:Byte)="vte_terminal_fork_command"
	Function vte_terminal_set_size(terminal:Byte Ptr, columns:Long, rows:Long)="vte_terminal_set_size"
	Function vte_terminal_set_color_background(terminal:Byte Ptr, color:Byte Ptr)="vte_terminal_set_color_background"
	Function vte_terminal_set_color_foreground(terminal:Byte Ptr, color:Byte Ptr)="vte_terminal_set_color_foreground"
	Function vte_terminal_set_font_from_string(terminal:Byte Ptr, name:Byte Ptr)="vte_terminal_set_font_from_string"
	Function vte_terminal_feed(terminal:byte ptr,data:byte ptr,length:long)="vte_terminal_feed"
	function vte_terminal_get_adjustment:byte ptr(terminal:byte ptr)="vte_terminal_get_adjustment"
End Extern
