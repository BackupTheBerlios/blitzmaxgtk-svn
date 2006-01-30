Const G_CONNECT_AFTER:Byte = 1
Const G_CONNECT_SWAPPED:Byte = 2

Extern
	Function g_signal_connect_data(instance:Byte Ptr, detailed_signal:Byte Ptr, c_handler:Byte Ptr,data:Byte Ptr,destroy_data:Byte Ptr,connect_flags:Byte)="g_signal_connect_data"
End Extern
