Rem
	This file is part of the BlitzMax GTK-modules.
	The BlitzMax GTK-modules are free software; you can redistribute and/or modify
	them under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	at your option) any later version.
	
	The BlitzMax GTK-modules are distributed in the hope that they will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS for A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.
	
	You should have received a copy of the GNU General Public License
	along with the BlitzMax GTK-modules; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
End Rem
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
		R[0] = Ceil(255.0/65535.0 * Float(Red))
		G[0] = Ceil(255.0/65535.0 * Float(Green))
		B[0] = Ceil(255.0/65535.0 * Float(Blue))
	End Method
End Type
