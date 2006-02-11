Type GladeXML
	Field mHandle:Byte Ptr

	Function Create:GladeXML(Filename:String,Root:String="",Domain:String="")
		Local TempXML:GladeXML = New GladeXML
		Local RHandle:Byte Ptr
		If Root = "" RHandle = Null Else RHandle = Root.ToCString()
		Local DHandle:Byte Ptr
		If Domain = "" DHandle = Null Else DHandle = Domain.ToCString()
		TempXML.mHandle = glade_xml_new(Filename.ToCString(),RHandle,DHandle)
		Return TempXML
	End Function

	Method ConnectSignals()
		glade_xml_signal_autoconnect(mHandle)
	End Method
End Type