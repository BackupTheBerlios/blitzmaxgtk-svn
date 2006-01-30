Type GObject
	Field Handle:Byte Ptr

	Method SignalConnect:Long(Signal:String,TFunction:Byte Ptr,Data:Byte Ptr=Null,DestroyData:Byte Ptr=Null,ConnectFlags:Byte=0)
		Return g_signal_connect_data(Handle,Signal.ToCString(),TFunction,Data,DestroyData,ConnectFlags)
	End Method
End Type
