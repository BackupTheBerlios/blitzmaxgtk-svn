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
Type GtkFontButton Extends GtkButton
	Function Create:GtkFontButton()
		Local TempButton:GtkFontButton = New GtkFontButton	
		TempButton.Handle = gtk_font_button_new()
		Return TempButton
	End Function

	Function CreateFromHandle:GtkFontButton(Handle:Byte Ptr)
		Local TempButton:GtkFontButton = New GtkFontButton
		TempButton.Handle = Handle
		Return TempButton
	End Function
	
	Method GetFontName:String()
	       Return String.FromCString(gtk_font_button_get_font_name(Handle))
	End Method
	
	Method GetFontFamily:String()
	       local fontdescr:byte ptr = pango_font_description_from_string(GetFontName())
	       return string.fromcstring(pango_font_description_get_family(fontdescr))
	End Method
	
End Type
