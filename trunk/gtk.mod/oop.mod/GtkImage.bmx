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
Type GtkImage Extends GtkMisc
	Function CreateFromIconName:GtkImage(Name:String,Size:Int)
		Local TempImage:GtkImage = New GtkImage
		TempImage.Handle = gtk_image_new_from_icon_name(Name.ToCString(),Size)
		Return TempImage
	End Function

	Function CreateFromHandle:GtkImage(Handle:Byte Ptr)
		Local TempImage:GtkImage = New GtkImage
		TempImage.Handle = Handle
		Return TempImage
	End Function

	Function CreateFromFile:GtkImage(Filename:String)
		Local TempImage:GtkImage = New GtkImage
		TempImage.Handle = gtk_image_new_from_file(Filename.ToCString())
		Return TempImage
	End Function

	Method SetPixelSize(Size:Int)
		gtk_image_set_pixel_size(Handle,size)
	End Method
End Type
