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
	Function gtk_settings_get_default:Byte Ptr()="gtk_settings_get_default"
	Function gtk_settings_get_for_screen:Byte Ptr(screen:Byte Ptr)="gtk_settings_get_for_screen"
	Function gtk_settings_install_property(pspec:Byte Ptr)="gtk_settings_install_property"
	Function gtk_settings_install_property_parser(pspec:Byte Ptr,parser:GtkRcPropertyParser)="gtk_settings_install_property_parser"
	Function gtk_rc_property_parse_color:gboolean(pspec:Byte Ptr,gstring:Byte Ptr,property_value:Byte Ptr)="gtk_rc_property_parse_color"
	Function gtk_rc_property_parse_enum:gboolean(pspec:Byte Ptr,gstring:Byte Ptr,property_value:Byte Ptr)="gtk_rc_property_parse_enum"
	Function gtk_rc_property_parse_flags:gboolean(pspec:Byte Ptr,gstring:Byte Ptr,property_value:Byte Ptr)="gtk_rc_property_parse_flags"
	Function gtk_rc_property_parse_requisition:gboolean(pspec:Byte Ptr,gstring:Byte Ptr,property_value:Byte Ptr)="gtk_rc_property_parse_requisition"
	Function gtk_rc_property_parse_border:gboolean(pspec:Byte Ptr,gstring:Byte Ptr,property_value:Byte Ptr)="gtk_rc_property_parse_border"
	Function gtk_settings_set_property_value(settings:Byte Ptr,name:Byte Ptr,svalue:Byte Ptr)="gtk_settings_set_property_value"
	Function gtk_settings_set_string_property(settings:Byte Ptr,name:Byte Ptr,v_string:Byte Ptr,origin:Byte Ptr)="gtk_settings_set_string_property"
	Function gtk_settings_set_long_property(settings:Byte Ptr,name:Byte Ptr,v_long:glong,origin:Byte Ptr)="gtk_settings_set_long_property"
	Function gtk_settings_set_double_property(settings:Byte Ptr,name:Byte Ptr,v_double:gdouble,origin:Byte Ptr)="gtk_settings_set_double_property"
End Extern
