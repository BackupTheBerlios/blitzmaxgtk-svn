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
	Function g_main_context_pending:Byte(contex:Byte Ptr=Null)="g_main_context_pending"
	Function g_main_context_iteration:Byte(context:Byte Ptr, may_block:Byte)="g_main_context_iteration"
	Function g_type_check_instance_cast:Byte Ptr(instance:Byte Ptr,gtype:Byte Ptr)="g_type_check_instance_cast"
	Function vte_terminal_get_type:Byte Ptr()="vte_terminal_get_type"
	Function g_convert:Byte Ptr(InputString:Byte Ptr,length:Int,to_codeset:Byte Ptr,from_codeset:Byte Ptr,bytes_read:Byte Ptr,bytes_written:Byte Ptr,error:Byte Ptr)
	function g_value_init(Value:byte ptr,GType:int)
	Function g_free(tstring:Byte Ptr)
	Function g_object_unref(obj:Byte Ptr)
	Function g_object_set(obj:Byte Ptr, key:Byte Ptr, val:Byte Ptr, term:Byte Ptr=Null)
End Extern
