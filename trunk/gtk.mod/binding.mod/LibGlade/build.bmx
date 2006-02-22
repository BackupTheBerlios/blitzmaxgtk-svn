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
