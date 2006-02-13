Type GdkColor
	Field Pixel:Int
	Field Red:Short
	Field Green:Short
	Field Blue:Short

	Function MakeOutOfInts:GdkColor(R:Int,G:Int,B:Int)
		Local TempColor:GdkColor = New GdkColor
		TempColor.Red = 65535/255*R
		TempColor.Green = 65535/255*G
		TempColor.Blue = 65535/255*B
		Return TempColor
	End Function

	Method GiveInts(R:Int Ptr,G:Int Ptr,B:Int Ptr)
		R[0] = 255/65535.0 * Red
		G[0] = 255/65535.0 * Green
		B[0] = 255/65535.0 * Blue
	End Method
End Type
