Extern
	Function gtk_set_locale:Byte Ptr()="gtk_set_locale"
	Function gtk_disable_setlocale()="gtk_disable_setlocale"
	'Function gtk_get_default_language
	Function gtk_parse_args:Byte Ptr(argc:Byte Ptr)="gtk_parse_args"
	Function gtk_init(argc:Byte Ptr)="gtk_init"
	Function gtk_init_check:Byte(argc:Byte Ptr)="gtk_init_check"
	'Function gtk_init_with_args
	'Function gtk_get_option_group
	Function gtk_exit(error_code:Int)="gtk_exit"
	Function gtk_events_pending:Byte()="gtk_events_pending"
	Function gtk_main()="gtk_main"
	Function gtk_main_level:Int()="gtk_main_level"
	Function gtk_main_quit()="gtk_main_quit"
	Function gtk_main_iteration:Byte()="gtk_main_iteration"
	Function gtk_main_iteration_do:Byte(blocking:Byte)="gtk_main_iteration_do"
	'Function gtk_main_do_event
	'Function GtkModuleInitFunc
	'Function GtkModuleDisplayInitFunc
	Function gtk_true:Byte()="gtk_true"
	Function gtk_false:Byte()="gtk_false"
	Function gtk_grab_add(widget:Byte Ptr)="gtk_grab_add"
	Function gtk_grab_get_current:Byte Ptr()="gtk_grab_get_current"
	Function gtk_grab_remove(widget:Byte Ptr)="gtk_grab_remove"
	'Function gtk_init_add


End Extern

'Enumeration GtkPackType
Const GTK_PACK_START:Byte = 0
Const GTK_PACK_END:Byte = 1

'Enumeration GtkPositionType
Const GTK_POS_LEFT:Byte = 0
Const GTK_POS_RIGHT:Byte = 1
Const GTK_POS_TOP:Byte = 2
Const GTK_POS_BOTTOM:Byte = 3

'Enumeration GtkFileChooserAction
Const GTK_FILE_CHOOSER_ACTION_OPEN:Byte = 0
Const GTK_FILE_CHOOSER_ACTION_SAVE:Byte = 1
Const GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER:Byte = 2
Const GTK_FILE_CHOOSER_ACTION_CREATE_FOLDER:Byte = 3