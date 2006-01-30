Extern
	Function glade_parser_parse_file:Byte Ptr(gfile:Byte Ptr, domain:Byte Ptr, gbuffer:Byte Ptr)="glade_parser_parse_file"
	Function glade_parser_parse_buffer:Byte Ptr(gbuffer:Byte Ptr, glen:int)="glade_parser_parse_buffer"
	Function glade_interface_destroy(interface:Byte Ptr)="glade_interface_destroy"
	Function glade_interface_dump(interface:Byte Ptr, gfilename:Byte Ptr)="glade_interface_dump"
End Extern
