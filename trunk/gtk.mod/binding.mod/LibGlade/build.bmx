Extern
	Function glade_xml_build_widget:Byte Ptr(gself:Byte Ptr, info:Byte Ptr)="glade_xml_build_widget"
	Function glade_xml_handle_internal_child(gself:Byte Ptr, parent:Byte Ptr, child_info:Byte Ptr)="glade_xml_handle_internal_child"
	Function glade_xml_set_common_params(gself:Byte Ptr, gwidget:Byte Ptr, info:Byte Ptr)="glade_xml_set_common_params"
	Function glade_register_widget(gtype:Byte Ptr, new_func:Byte Ptr, build_children:Byte Ptr, find_internal_child:Byte Ptr)="glade_register_widget"
	Function glade_standard_build_widget:Byte Ptr(gxml:Byte Ptr, widget_type:Byte Ptr, info:Byte Ptr)="glade_standard_build_widget"
	Function glade_xml_handle_widget_prop(gself:Byte Ptr, gwidget:Byte Ptr, prop_name:Byte Ptr, value_name:Byte Ptr)="glade_xml_handle_widget_prop"
	Function glade_standard_build_children(gself:Byte Ptr, gparent:Byte Ptr, info:Byte Ptr)="glade_standard_build_children"
	Function glade_xml_set_packing_property(gself:Byte Ptr, gparent:Byte Ptr, child:Byte Ptr, gname:Byte Ptr, gvalue:Byte Ptr)="glade_xml_set_packing_property"
	'
	Function glade_register_custom_prop(gtype:Byte Ptr, prop_name:Byte Ptr, apply_prop:Byte Ptr)="glade_register_custom_prop"
	Function glade_xml_relative_file:Byte Ptr(gself:Byte Ptr, gfilename:Byte Ptr)="glade_xml_relative_file"
	Function glade_enum_from_string:Int(gtype:Byte Ptr, gstring:Byte Ptr)="glade_enum_from_string"
	Function glade_flags_from_string:Int(gtype:Byte Ptr, gstring:Byte Ptr)="glade_flags_from_string"
	Function glade_xml_set_value_from_string:Byte(gxml:Byte Ptr, pspec:Byte Ptr, gstring:Byte Ptr, gvalue:Byte Ptr)="glade_xml_set_value_from_string"
	Function glade_xml_set_toplevel(gxml:Byte Ptr, gwindow:Byte Ptr)="glade_xml_set_toplevel"
	Function glade_xml_ensure_accel:Byte Ptr(gxml:Byte Ptr)="glade_xml_ensure_accel"
End Extern
