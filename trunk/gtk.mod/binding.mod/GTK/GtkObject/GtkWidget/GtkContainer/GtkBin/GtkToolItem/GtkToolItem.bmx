Extern
	Function gtk_tool_item_new:Byte Ptr()="gtk_tool_item_new"
	Function gtk_tool_item_set_homogeneous(tool_item:Byte Ptr,homogeneous:gboolean)="gtk_tool_item_set_homogeneous"
	Function gtk_tool_item_get_homogeneous:gboolean(tool_item:Byte Ptr)="gtk_tool_item_get_homogeneous"
	Function gtk_tool_item_set_expand(tool_item:Byte Ptr,expand:gboolean)="gtk_tool_item_set_expand"
	Function gtk_tool_item_get_expand:gboolean(tool_item:Byte Ptr)="gtk_tool_item_get_expand"
	Function gtk_tool_item_set_tooltip(tool_item:Byte Ptr,tooltips:Byte Ptr,tip_text:Byte Ptr,tip_private:Byte Ptr)="gtk_tool_item_set_tooltip"
	Function gtk_tool_item_set_use_drag_window(toolitem:Byte Ptr,use_drag_window:gboolean)="gtk_tool_item_set_use_drag_window"
	Function gtk_tool_item_get_use_drag_window:gboolean(toolitem:Byte Ptr)="gtk_tool_item_get_use_drag_window"
	Function gtk_tool_item_set_visible_horizontal(toolitem:Byte Ptr,visible_horizontal:gboolean)="gtk_tool_item_set_visible_horizontal"
	Function gtk_tool_item_get_visible_horizontal:gboolean(toolitem:Byte Ptr)="gtk_tool_item_get_visible_horizontal"
	Function gtk_tool_item_set_visible_vertical(toolitem:Byte Ptr,visible_vertical:gboolean)="gtk_tool_item_set_visible_vertical"
	Function gtk_tool_item_get_visible_vertical:gboolean(toolitem:Byte Ptr)="gtk_tool_item_get_visible_vertical"
	Function gtk_tool_item_set_is_important(tool_item:Byte Ptr,is_important:gboolean)="gtk_tool_item_set_is_important"
	Function gtk_tool_item_get_is_important:gboolean(tool_item:Byte Ptr)="gtk_tool_item_get_is_important"
	Function gtk_tool_item_get_icon_size:GtkIconSize(tool_item:Byte Ptr)="gtk_tool_item_get_icon_size"
	Function gtk_tool_item_get_orientation:GtkOrientation(tool_item:Byte Ptr)="gtk_tool_item_get_orientation"
	Function gtk_tool_item_get_toolbar_style:GtkToolbarStyle(tool_item:Byte Ptr)="gtk_tool_item_get_toolbar_style"
	Function gtk_tool_item_get_relief_style:GtkReliefStyle(tool_item:Byte Ptr)="gtk_tool_item_get_relief_style"
	Function gtk_tool_item_retrieve_proxy_menu_item:Byte Ptr(tool_item:Byte Ptr)="gtk_tool_item_retrieve_proxy_menu_item"
	Function gtk_tool_item_get_proxy_menu_item:Byte Ptr(tool_item:Byte Ptr,menu_item_id:Byte Ptr)="gtk_tool_item_get_proxy_menu_item"
	Function gtk_tool_item_set_proxy_menu_item(tool_item:Byte Ptr,menu_item_id:Byte Ptr,menu_item:Byte Ptr)="gtk_tool_item_set_proxy_menu_item"
	Function gtk_tool_item_rebuild_menu(tool_item:Byte Ptr)="gtk_tool_item_rebuild_menu"
End Extern
