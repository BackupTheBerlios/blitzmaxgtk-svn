Type GtkHScale Extends GtkScale
	Function Create:GtkHScale(Adjustment:GtkAdjustment)
		Local TempScale:GtkHScale = New GtkHScale
		TempScale.Handle = gtk_hscale_new(Adjustment.Handle)
		Return TempScale
	End Function
End Type
