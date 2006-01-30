Extern
	Function glade_xml_new:Byte Ptr(fname:Byte Ptr, root:Byte Ptr, domain:Byte Ptr)="glade_xml_new"
	Function glade_xml_new_from_buffer:Byte Ptr(buffer:Byte Ptr, size:Int)="glade_xml_new_from_buffer"
	Function glade_xml_construct:Byte(gself:Byte Ptr, fname:Byte Ptr, root:Byte Ptr, domain:Byte Ptr)="glade_xml_construct"
	Function glade_xml_signal_connect(gself:Byte Ptr, handlername:Byte Ptr, func:Byte Ptr)="glade_xml_signal_connect"
	Function glade_xml_signal_connect_data(gself:Byte Ptr, handlername:Byte Ptr, func:Byte Ptr, user_data:Byte Ptr)="glade_xml_signal_connect_data"
	Function glade_xml_signal_autoconnect(gself:Byte Ptr)="glade_xml_signal_autoconnect"
	Function glade_xml_get_widget:Byte Ptr(gself:Byte Ptr, gname:Byte Ptr)="glade_xml_get_widget"
	Function glade_xml_get_widget_prefix:Byte Ptr(gself:Byte Ptr, gname:Byte Ptr)="glade_xml_get_widget_prefix"
	Function glade_get_widget_name:Byte Ptr(gwidget:Byte Ptr)="glade_get_widget_name"
	Function glade_get_widget_tree:Byte Ptr(gwidget:Byte Ptr)="glade_get_widget_tree"
	'
	Function glade_xml_signal_connect_full(gself:Byte Ptr, handler_name:Byte Ptr, func:Byte Ptr, user_data:Byte Ptr)="glade_xml_signal_connect_full"
	Function glade_xml_signal_autoconnect_full(gself:Byte Ptr, func:Byte Ptr, user_data:Byte Ptr)="glade_xml_signal_autoconnect_full"
	'
	Function glade_set_custom_handler(handler:Byte Ptr, user_data:Byte Ptr)="glade_set_custom_handler"
End Extern
