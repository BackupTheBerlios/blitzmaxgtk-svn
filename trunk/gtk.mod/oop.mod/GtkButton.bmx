Type GtkButton Extends GtkBin
	
	Function Create:GtkButton()
		Local TempButton:GtkButton = New GtkButton
		TempButton.Handle = gtk_button_new()
		Return TempButton
	End Function
		
	Function CreateWithLabel:GtkButton(Label:String)
		Local TempButton:GtkButton = New GtkButton
		TempButton.Handle = gtk_button_new_with_label(Label.ToCString())
		Return TempButton
	End Function

	Function CreateFromStock:GtkButton(StockID:String)
		Local TempButton:GtkButton = New GtkButton	
		TempButton.Handle = gtk_button_new_from_stock(StockID.ToCString())
		Return TempButton
	End Function
End Type
