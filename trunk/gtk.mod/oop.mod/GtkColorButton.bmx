Type GtkColorButton Extends GtkButton
	Function Create:GtkColorButton()
		Local TempButton:GtkColorButton = New GtkColorButton
		TempButton.Handle = gtk_color_button_new()
		Return TempButton
	End Function

	Function CreateFromHandle:GtkColorButton(Handle:Byte Ptr)
		Local TempButton:GtkColorButton = New GtkColorButton
		TempButton.Handle = Handle
		Return TempButton
	End Function
	
	Method SetUseAlpha(Use:Byte)
		gtk_color_button_set_use_alpha(Handle,Use)
	End Method

	Method SetAlpha(Alpha:Short)
		gtk_color_button_set_alpha(Handle,Alpha)
	End Method

	Method SetGdkColor(Color:GdkColor)
		gtk_color_button_set_color(Handle,Color)
	End Method

	Method SetColor(R:Short,G:Short,B:Short)
		Local TempColor:GdkColor = New GdkColor
		TempColor.Red = R
		TempColor.Green = G
		TempColor.Blue = B
		gtk_color_button_set_color(Handle,TempColor)
	End Method

	Method SetColorInt(R:Int,G:Int,B:Int)
		Local TempColor:GdkColor = GdkColor.MakeOutOfInts(R,G,B)
		gtk_color_button_set_color(Handle,TempColor)
	End Method

	Method SetTitle(Title:String)
		gtk_color_button_set_title(Handle,Title.ToCString())
	End Method
End Type