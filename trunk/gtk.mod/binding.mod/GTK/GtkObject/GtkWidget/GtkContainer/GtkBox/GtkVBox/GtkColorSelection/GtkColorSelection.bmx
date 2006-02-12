'GtkUpdateType
Const GTK_UPDATE_CONTINUOUS=1
Const GTK_UPDATE_DISCONTINUOUS=2
Const GTK_UPDATE_DELAYED=3


Extern
	Function gtk_color_selection_new:Byte Ptr()="gtk_color_selection_new"
	Function gtk_color_selection_set_update_policy(colorsel:Byte Ptr,policy:Byte)="gtk_color_selection_set_update_policy"
	Function gtk_color_selection_set_has_opacity_control(colorsel:Byte Ptr,has_opacity:Byte)="gtk_color_selection_set_has_opacity_control"
	Function gtk_color_selection_get_has_opacity_control:Byte(colorsel:Byte Ptr)="gtk_color_selection_get_has_opacity_control"
	Function gtk_color_selection_set_has_palette(colorsel:Byte Ptr,has_palette:Byte)="gtk_color_selection_set_has_palette"
	Function gtk_color_selection_get_has_palette:Byte(colorsel:Byte Ptr)="gtk_color_selection_get_has_palette"
	Function gtk_color_selection_get_current_alpha:Int(colorsel:Byte Ptr)="gtk_color_selection_get_current_alpha"
	Function gtk_color_selection_set_current_alpha(colorsel:Byte Ptr,alpha:Int)="gtk_color_selection_set_current_alpha"
	Function gtk_color_selection_get_current_color(colorsel:Byte Ptr,color:Byte Ptr)="gtk_color_selection_get_current_color"
	Function gtk_color_selection_set_current_color(colorsel:Byte Ptr,color:Byte Ptr)="gtk_color_selection_set_current_color"
	Function gtk_color_selection_get_previous_alpha:Int(colorsel:Byte Ptr)="gtk_color_selection_get_previous_alpha"
	Function gtk_color_selection_set_previous_alpha(colorsel:Byte Ptr,alpha:Int)="gtk_color_selection_set_previous_alpha"
	Function gtk_color_selection_get_previous_color(colorsel:Byte Ptr,color:Byte Ptr)="gtk_color_selection_get_previous_color"
	Function gtk_color_selection_set_previous_color(colorsel:Byte Ptr,color:Byte Ptr)="gtk_color_selection_set_previous_color"
	Function gtk_color_selection_is_adjusting:Byte(colorsel:Byte Ptr)="gtk_color_selection_is_adjusting"
	Function gtk_color_selection_palette_from_string:Byte(str:Byte Ptr,colors:Byte Ptr,n_colors:Byte Ptr)="gtk_color_selection_palette_from_string"
	Function gtk_color_selection_palette_to_string:Byte Ptr(colors:Byte Ptr,n_colors:int)="gtk_color_selection_palette_to_string"
	Function gtk_color_selection_set_change_palette_hook:Byte Ptr(func:Byte Ptr)="gtk_color_selection_set_change_palette_hook"
	'Function (GdkColor *colors:*GtkColorSelectionChangePaletteFunc)(const,n_colors);:gint)=""
	Function gtk_color_selection_set_change_palette_with_screen_hook:Byte Ptr(func:Byte Ptr)="gtk_color_selection_set_change_palette_with_screen_hook"
	'Function (screen:Byte Ptr,colors:Byte Ptr,n_colors);:gint)=""
	Function gtk_color_selection_set_color(colorsel:Byte Ptr,color:Byte Ptr)="gtk_color_selection_set_color"
	Function gtk_color_selection_get_color(colorsel:Byte Ptr,color:Byte Ptr)="gtk_color_selection_get_color"
End Extern
