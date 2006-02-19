Extern
	Function g_main_context_pending:Byte(contex:Byte Ptr=Null)="g_main_context_pending"
	Function g_main_context_iteration:Byte(context:Byte Ptr, may_block:Byte)="g_main_context_iteration"
	Function g_type_check_instance_cast:Byte Ptr(instance:Byte Ptr,gtype:Byte Ptr)="g_type_check_instance_cast"
	Function vte_terminal_get_type:Byte Ptr()="vte_terminal_get_type"
	Function g_convert:Byte Ptr(InputString:Byte Ptr,length:Int,to_codeset:Byte Ptr,from_codeset:Byte Ptr,bytes_read:Byte Ptr,bytes_written:Byte Ptr,error:Byte Ptr)
End Extern
