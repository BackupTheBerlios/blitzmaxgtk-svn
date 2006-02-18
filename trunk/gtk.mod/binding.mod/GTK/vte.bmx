Extern
	Function vte_terminal_new:Byte Ptr()="vte_terminal_new"
	Function vte_terminal_fork_command:Int(terminal:Byte Ptr,command:Byte Ptr,argv:Byte Ptr,envv:Byte Ptr,directory:Byte Ptr,lastlog:Byte,utmp:Byte,wtmp:Byte)="vte_terminal_fork_command"
	Function vte_terminal_set_size(terminal:Byte Ptr, columns:Long, rows:Long)="vte_terminal_set_size"
End Extern
