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

	Function CreateFromHandle:GladeXML(Handle:Byte Ptr)
		Local TempXML:GladeXML = New GladeXML
		TempXML.mHandle = Handle
		Return TempXML
	End Function

	Method ConnectSignals()
		glade_xml_signal_autoconnect(mHandle)
	End Method

	Method GetWidget:GtkWidget(Name:String)
		Local Widget:GtkWidget = New GtkWidget
		Widget.Handle = glade_xml_get_widget(mHandle,Name.ToCString())
		Return Widget
	End Method
End Type