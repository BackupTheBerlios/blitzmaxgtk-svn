Extern
	Function gtk_spin_button_configure(spin_button:Byte Ptr,adjustment:Byte Ptr,climb_rate:gdouble,digits:guint)="gtk_spin_button_configure"
	Function gtk_spin_button_new:Byte Ptr(adjustment:Byte Ptr,climb_rate:gdouble,digits:guint)="gtk_spin_button_new"
	Function gtk_spin_button_new_with_range:Byte Ptr(min:gdouble,max:gdouble,step:gdouble)="gtk_spin_button_new_with_range"
	Function gtk_spin_button_set_adjustment(spin_button:Byte Ptr,adjustment:Byte Ptr)="gtk_spin_button_set_adjustment"
	Function gtk_spin_button_get_adjustment:Byte Ptr(spin_button:Byte Ptr)="gtk_spin_button_get_adjustment"
	Function gtk_spin_button_set_digits(spin_button:Byte Ptr,digits:guint)="gtk_spin_button_set_digits"
	Function gtk_spin_button_set_increments(spin_button:Byte Ptr,step:gdouble,page:gdouble)="gtk_spin_button_set_increments"
	Function gtk_spin_button_set_range(spin_button:Byte Ptr,min:gdouble,max:gdouble)="gtk_spin_button_set_range"
	Function gtk_spin_button_get_value_as_int:gint(spin_button:Byte Ptr)="gtk_spin_button_get_value_as_int"
	Function gtk_spin_button_set_value(spin_button:Byte Ptr,value:gdouble)="gtk_spin_button_set_value"
	Function gtk_spin_button_set_update_policy(spin_button:Byte Ptr,policy:GtkSpinButtonUpdatePolicy)="gtk_spin_button_set_update_policy"
	Function gtk_spin_button_set_numeric(spin_button:Byte Ptr,numeric:gboolean)="gtk_spin_button_set_numeric"
	Function gtk_spin_button_spin(spin_button:Byte Ptr,direction:GtkSpinType,increment:gdouble)="gtk_spin_button_spin"
	Function gtk_spin_button_set_wrap(spin_button:Byte Ptr,wrap:gboolean)="gtk_spin_button_set_wrap"
	Function gtk_spin_button_set_snap_to_ticks(spin_button:Byte Ptr,snap_to_ticks:gboolean)="gtk_spin_button_set_snap_to_ticks"
	Function gtk_spin_button_update(spin_button:Byte Ptr)="gtk_spin_button_update"
	Function gtk_spin_button_get_digits:guint(spin_button:Byte Ptr)="gtk_spin_button_get_digits"
	Function gtk_spin_button_get_increments(spin_button:Byte Ptr,step:Byte Ptr,page:Byte Ptr)="gtk_spin_button_get_increments"
	Function gtk_spin_button_get_numeric:gboolean(spin_button:Byte Ptr)="gtk_spin_button_get_numeric"
	Function gtk_spin_button_get_range(spin_button:Byte Ptr,min:Byte Ptr,max:Byte Ptr)="gtk_spin_button_get_range"
	Function gtk_spin_button_get_snap_to_ticks:gboolean(spin_button:Byte Ptr)="gtk_spin_button_get_snap_to_ticks"
	Function gtk_spin_button_get_update_policy:GtkSpinButtonUpdatePolicy(spin_button:Byte Ptr)="gtk_spin_button_get_update_policy"
	Function gtk_spin_button_get_value:gdouble(spin_button:Byte Ptr)="gtk_spin_button_get_value"
	Function gtk_spin_button_get_wrap:gboolean(spin_button:Byte Ptr)="gtk_spin_button_get_wrap"
End Extern
