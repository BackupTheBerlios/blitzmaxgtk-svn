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

'Enumeration GtkResponseType
Const GTK_RESPONSE_NONE:Int = -1
Const GTK_RESPONSE_REJECT:Int = -2
Const GTK_RESPONSE_ACCEPT:Int = -3
Const GTK_RESPONSE_DELETE_EVENT:Int = -4
Const GTK_RESPONSE_OK = -5
Const GTK_RESPONSE_CANCEL = -6
Const GTK_RESPONSE_CLOSE = -7
Const GTK_RESPONSE_YES = -8
Const GTK_RESPONSE_NO = -9
Const GTK_RESPONSE_APPLY = -10
Const GTK_RESPONSE_HELP = -11
