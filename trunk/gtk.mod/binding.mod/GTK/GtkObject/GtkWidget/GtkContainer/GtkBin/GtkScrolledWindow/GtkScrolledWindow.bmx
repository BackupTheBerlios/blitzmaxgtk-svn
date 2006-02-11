'GtkPolicyType
Const GTK_POLICY_ALWAYS=1
Const GTK_POLICY_AUTOMATIC=2
Const GTK_POLICY_NEVER=3

'GtkCornerType
Const GTK_CORNER_TOP_LEFT=1
Const GTK_CORNER_BOTTOM_LEFT=2
Const GTK_CORNER_TOP_RIGHT=3
Const GTK_CORNER_BOTTOM_RIGHT=4


Extern
	Function gtk_scrolled_window_new:Byte Ptr(hadjustment:Byte Ptr,vadjustment:Byte Ptr)="gtk_scrolled_window_new"
	Function gtk_scrolled_window_get_hadjustment:Byte Ptr(scrolled_window:Byte Ptr)="gtk_scrolled_window_get_hadjustment"
	Function gtk_scrolled_window_get_vadjustment:Byte Ptr(scrolled_window:Byte Ptr)="gtk_scrolled_window_get_vadjustment"
	Function gtk_scrolled_window_get_hscrollbar:Byte Ptr(scrolled_window:Byte Ptr)="gtk_scrolled_window_get_hscrollbar"
	Function gtk_scrolled_window_get_vscrollbar:Byte Ptr(scrolled_window:Byte Ptr)="gtk_scrolled_window_get_vscrollbar"
	Function gtk_scrolled_window_set_policy(scrolled_window:Byte Ptr,hscrollbar_policy:Byte,vscrollbar_policy:Byte)="gtk_scrolled_window_set_policy"
	Function gtk_scrolled_window_add_with_viewport(scrolled_window:Byte Ptr,child:Byte Ptr)="gtk_scrolled_window_add_with_viewport"
	Function gtk_scrolled_window_set_placement(scrolled_window:Byte Ptr,window_placement:Byte)="gtk_scrolled_window_set_placement"
	Function gtk_scrolled_window_set_shadow_type(scrolled_window:Byte Ptr,stype:Byte)="gtk_scrolled_window_set_shadow_type"
	Function gtk_scrolled_window_set_hadjustment(scrolled_window:Byte Ptr,hadjustment:Byte Ptr)="gtk_scrolled_window_set_hadjustment"
	Function gtk_scrolled_window_set_vadjustment(scrolled_window:Byte Ptr,vadjustment:Byte Ptr)="gtk_scrolled_window_set_vadjustment"
	Function gtk_scrolled_window_get_placement:Byte(scrolled_window:Byte Ptr)="gtk_scrolled_window_get_placement"
	Function gtk_scrolled_window_get_policy(scrolled_window:Byte Ptr,hscrollbar_policy:Byte Ptr,vscrollbar_policy:Byte Ptr)="gtk_scrolled_window_get_policy"
	Function gtk_scrolled_window_get_shadow_type:Byte(scrolled_window:Byte Ptr)="gtk_scrolled_window_get_shadow_type"
End Extern
