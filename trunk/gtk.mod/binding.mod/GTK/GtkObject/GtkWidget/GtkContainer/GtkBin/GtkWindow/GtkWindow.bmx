const GTK_WINDOW_TOPLEVEL:Byte = 0
const GTK_WINDOW_POPUP:Byte = 1

Extern
	Function gtk_window_new:Byte Ptr(windowtype:byte)="gtk_window_new"
	Function gtk_window_set_title(window:Byte Ptr,title:Byte Ptr)="gtk_window_set_title"
	'Function gtk_window_set_wmclass(window:Byte Ptr,wmclass_name:Byte Ptr,wmclass_class:Byte Ptr)="gtk_window_set_wmclass"
	'Function gtk_window_set_policy(window:Byte Ptr,allow_shrink:gint,allow_grow:gint,auto_shrink:gint)="gtk_window_set_policy"
	Function gtk_window_set_resizable(window:Byte Ptr,resizable:Byte)="gtk_window_set_resizable"
	Function gtk_window_get_resizable:Byte(window:Byte Ptr)="gtk_window_get_resizable"
	'Function gtk_window_add_accel_group(window:Byte Ptr,accel_group:Byte Ptr)="gtk_window_add_accel_group"
	'Function gtk_window_remove_accel_group(window:Byte Ptr,accel_group:Byte Ptr)="gtk_window_remove_accel_group"
	Function gtk_window_activate_focus:Byte(window:Byte Ptr)="gtk_window_activate_focus"
	'Function gtk_window_activate_default:gboolean(window:Byte Ptr)="gtk_window_activate_default"
	Function gtk_window_set_modal(window:Byte Ptr,modal:Byte)="gtk_window_set_modal"
	'Function gtk_window_set_default_size(window:Byte Ptr,width:gint,height:gint)="gtk_window_set_default_size"
	'Function gtk_window_set_geometry_hints(window:Byte Ptr,geometry_widget:Byte Ptr,geometry:Byte Ptr,geom_mask:GdkWindowHints)="gtk_window_set_geometry_hints"
	'Function gtk_window_set_gravity(window:Byte Ptr,gravity:GdkGravity)="gtk_window_set_gravity"
	'Function gtk_window_get_gravity:GdkGravity(window:Byte Ptr)="gtk_window_get_gravity"
	'Function gtk_window_set_position(window:Byte Ptr,position:GtkWindowPosition)="gtk_window_set_position"
	'Function gtk_window_set_transient_for(window:Byte Ptr,parent:Byte Ptr)="gtk_window_set_transient_for"
	'Function gtk_window_set_destroy_with_parent(window:Byte Ptr,setting:gboolean)="gtk_window_set_destroy_with_parent"
	'Function gtk_window_set_screen(window:Byte Ptr,screen:Byte Ptr)="gtk_window_set_screen"
	'Function gtk_window_get_screen:Byte Ptr(window:Byte Ptr)="gtk_window_get_screen"
	'Function gtk_window_is_active:gboolean(window:Byte Ptr)="gtk_window_is_active"
	'Function gtk_window_has_toplevel_focus:gboolean(window:Byte Ptr)="gtk_window_has_toplevel_focus"
	'Function gtk_window_list_toplevels:Byte Ptr()="gtk_window_list_toplevels"
	'Function gtk_window_add_mnemonic(window:Byte Ptr,keyval:guint,target:Byte Ptr)="gtk_window_add_mnemonic"
	'Function gtk_window_remove_mnemonic(window:Byte Ptr,keyval:guint,target:Byte Ptr)="gtk_window_remove_mnemonic"
	'Function gtk_window_mnemonic_activate:gboolean(window:Byte Ptr,keyval:guint,modifier:GdkModifierType)="gtk_window_mnemonic_activate"
	'Function gtk_window_activate_key:gboolean(window:Byte Ptr,event:Byte Ptr)="gtk_window_activate_key"
	'Function gtk_window_propagate_key_event:gboolean(window:Byte Ptr,event:Byte Ptr)="gtk_window_propagate_key_event"
	'Function gtk_window_get_focus:Byte Ptr(window:Byte Ptr)="gtk_window_get_focus"
	'Function gtk_window_set_focus(window:Byte Ptr,focus:Byte Ptr)="gtk_window_set_focus"
	'Function gtk_window_set_default(window:Byte Ptr,default_widget:Byte Ptr)="gtk_window_set_default"
	'Function gtk_window_present(window:Byte Ptr)="gtk_window_present"
	'Function gtk_window_present_with_time(window:Byte Ptr,timestamp:guint32)="gtk_window_present_with_time"
	'Function gtk_window_iconify(window:Byte Ptr)="gtk_window_iconify"
	'Function gtk_window_deiconify(window:Byte Ptr)="gtk_window_deiconify"
	'Function gtk_window_stick(window:Byte Ptr)="gtk_window_stick"
	'Function gtk_window_unstick(window:Byte Ptr)="gtk_window_unstick"
	Function gtk_window_maximize(window:Byte Ptr)="gtk_window_maximize"
	Function gtk_window_unmaximize(window:Byte Ptr)="gtk_window_unmaximize"
	Function gtk_window_fullscreen(window:Byte Ptr)="gtk_window_fullscreen"
	Function gtk_window_unfullscreen(window:Byte Ptr)="gtk_window_unfullscreen"
	'Function gtk_window_set_keep_above(window:Byte Ptr,setting:gboolean)="gtk_window_set_keep_above"
	'Function gtk_window_set_keep_below(window:Byte Ptr,setting:gboolean)="gtk_window_set_keep_below"
	'Function gtk_window_begin_resize_drag(window:Byte Ptr,edge:GdkWindowEdge,button:gint,root_x:gint,root_y:gint,timestamp:guint32)="gtk_window_begin_resize_drag"
	'Function gtk_window_begin_move_drag(window:Byte Ptr,button:gint,root_x:gint,root_y:gint,timestamp:guint32)="gtk_window_begin_move_drag"
	'Function gtk_window_set_decorated(window:Byte Ptr,setting:gboolean)="gtk_window_set_decorated"
	'Function gtk_window_set_frame_dimensions(window:Byte Ptr,left:gint,top:gint,right:gint,bottom:gint)="gtk_window_set_frame_dimensions"
	'Function gtk_window_set_has_frame(window:Byte Ptr,setting:gboolean)="gtk_window_set_has_frame"
	'Function gtk_window_set_mnemonic_modifier(window:Byte Ptr,modifier:GdkModifierType)="gtk_window_set_mnemonic_modifier"
	'Function gtk_window_set_role(window:Byte Ptr,role:Byte Ptr)="gtk_window_set_role"
	'Function gtk_window_set_type_hint(window:Byte Ptr,hint:GdkWindowTypeHint)="gtk_window_set_type_hint"
	'Function gtk_window_set_skip_taskbar_hint(window:Byte Ptr,setting:gboolean)="gtk_window_set_skip_taskbar_hint"
	'Function gtk_window_set_skip_pager_hint(window:Byte Ptr,setting:gboolean)="gtk_window_set_skip_pager_hint"
	'Function gtk_window_set_urgency_hint(window:Byte Ptr,setting:gboolean)="gtk_window_set_urgency_hint"
	'Function gtk_window_set_accept_focus(window:Byte Ptr,setting:gboolean)="gtk_window_set_accept_focus"
	'Function gtk_window_set_focus_on_map(window:Byte Ptr,setting:gboolean)="gtk_window_set_focus_on_map"
	'Function gtk_window_get_decorated:gboolean(window:Byte Ptr)="gtk_window_get_decorated"
	'Function gtk_window_get_default_icon_list:Byte Ptr()="gtk_window_get_default_icon_list"
	'Function gtk_window_get_default_size(window:Byte Ptr,width:Byte Ptr,height:Byte Ptr)="gtk_window_get_default_size"
	'Function gtk_window_get_destroy_with_parent:gboolean(window:Byte Ptr)="gtk_window_get_destroy_with_parent"
	'Function gtk_window_get_frame_dimensions(window:Byte Ptr,left:Byte Ptr,top:Byte Ptr,right:Byte Ptr,bottom:Byte Ptr)="gtk_window_get_frame_dimensions"
	'Function gtk_window_get_has_frame:gboolean(window:Byte Ptr)="gtk_window_get_has_frame"
	'Function gtk_window_get_icon:Byte Ptr(window:Byte Ptr)="gtk_window_get_icon"
	'Function gtk_window_get_icon_list:Byte Ptr(window:Byte Ptr)="gtk_window_get_icon_list"
	'Function gtk_window_get_icon_name:Byte Ptr(window:Byte Ptr)="gtk_window_get_icon_name"
	'Function gtk_window_get_mnemonic_modifier:GdkModifierType(window:Byte Ptr)="gtk_window_get_mnemonic_modifier"
	'Function gtk_window_get_modal:gboolean(window:Byte Ptr)="gtk_window_get_modal"
	'Function gtk_window_get_position(window:Byte Ptr,root_x:Byte Ptr,root_y:Byte Ptr)="gtk_window_get_position"
	'Function gchar*:const(window:Byte Ptr)="gchar*"
	'Function gtk_window_get_size(window:Byte Ptr,width:Byte Ptr,height:Byte Ptr)="gtk_window_get_size"
	'Function gchar*:const(window:Byte Ptr)="gchar*"
	'Function gtk_window_get_transient_for:Byte Ptr(window:Byte Ptr)="gtk_window_get_transient_for"
	'Function gtk_window_get_type_hint:GdkWindowTypeHint(window:Byte Ptr)="gtk_window_get_type_hint"
	'Function gtk_window_get_skip_taskbar_hint:gboolean(window:Byte Ptr)="gtk_window_get_skip_taskbar_hint"
	'Function gtk_window_get_skip_pager_hint:gboolean(window:Byte Ptr)="gtk_window_get_skip_pager_hint"
	'Function gtk_window_get_urgency_hint:gboolean(window:Byte Ptr)="gtk_window_get_urgency_hint"
	'Function gtk_window_get_accept_focus:gboolean(window:Byte Ptr)="gtk_window_get_accept_focus"
	'Function gtk_window_get_focus_on_map:gboolean(window:Byte Ptr)="gtk_window_get_focus_on_map"
	'Function gtk_window_move(window:Byte Ptr,x:gint,y:gint)="gtk_window_move"
	'Function gtk_window_parse_geometry:gboolean(window:Byte Ptr,geometry:Byte Ptr)="gtk_window_parse_geometry"
	'Function gtk_window_reshow_with_initial_size(window:Byte Ptr)="gtk_window_reshow_with_initial_size"
	'Function gtk_window_resize(window:Byte Ptr,width:gint,height:gint)="gtk_window_resize"
	'Function gtk_window_set_default_icon_list(list:Byte Ptr)="gtk_window_set_default_icon_list"
	'Function gtk_window_set_default_icon(icon:Byte Ptr)="gtk_window_set_default_icon"
	'Function gtk_window_set_default_icon_from_file:gboolean(filename:Byte Ptr,*err:Byte Ptr)="gtk_window_set_default_icon_from_file"
	'Function gtk_window_set_default_icon_name(name:Byte Ptr)="gtk_window_set_default_icon_name"
	'Function gtk_window_set_icon(window:Byte Ptr,icon:Byte Ptr)="gtk_window_set_icon"
	'Function gtk_window_set_icon_list(window:Byte Ptr,list:Byte Ptr)="gtk_window_set_icon_list"
	'Function gtk_window_set_icon_from_file:gboolean(window:Byte Ptr,filename:Byte Ptr,*err:Byte Ptr)="gtk_window_set_icon_from_file"
	'Function gtk_window_set_icon_name(window:Byte Ptr,name:Byte Ptr)="gtk_window_set_icon_name"
	'Function gtk_window_set_auto_startup_notification(setting:gboolean)="gtk_window_set_auto_startup_notification"
	'Function gtk_decorated_window_init(window:Byte Ptr)="gtk_decorated_window_init"
	'Function gtk_decorated_window_calculate_frame_size(window:Byte Ptr)="gtk_decorated_window_calculate_frame_size"
	'Function gtk_decorated_window_set_title(window:Byte Ptr,title:Byte Ptr)="gtk_decorated_window_set_title"
	'Function gtk_decorated_window_move_resize_window(window:Byte Ptr,x:gint,y:gint,width:gint,height:gint)="gtk_decorated_window_move_resize_window"
End Extern