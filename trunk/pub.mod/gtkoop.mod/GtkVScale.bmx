Type GtkVScale Extends GtkScale
	Function Create:GtkVScale(Adjustment:GtkAdjustment)
		Local TempScale:GtkVScale = New GtkVScale
		TempScale.Handle = gtk_vscale_new(Adjustment.Handle)
		Return TempScale
	End Function
End Type

