Extern
	Function gtk_viewport_new:Byte Ptr(hadjustment:Byte Ptr,vadjustment:Byte Ptr)="gtk_viewport_new"
	Function gtk_viewport_get_hadjustment:Byte Ptr(viewport:Byte Ptr)="gtk_viewport_get_hadjustment"
	Function gtk_viewport_get_vadjustment:Byte Ptr(viewport:Byte Ptr)="gtk_viewport_get_vadjustment"
	Function gtk_viewport_set_hadjustment(viewport:Byte Ptr,adjustment:Byte Ptr)="gtk_viewport_set_hadjustment"
	Function gtk_viewport_set_vadjustment(viewport:Byte Ptr,adjustment:Byte Ptr)="gtk_viewport_set_vadjustment"
	Function gtk_viewport_set_shadow_type(viewport:Byte Ptr,type:GtkShadowType)="gtk_viewport_set_shadow_type"
	Function gtk_viewport_get_shadow_type:GtkShadowType(viewport:Byte Ptr)="gtk_viewport_get_shadow_type"
End Extern
