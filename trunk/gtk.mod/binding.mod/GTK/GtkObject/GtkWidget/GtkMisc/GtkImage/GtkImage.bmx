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
Extern
	'Function gtk_image_get_icon_set(image:Byte Ptr,icon_set:Byte Ptr,size:Byte Ptr)="gtk_image_get_icon_set"
	'Function gtk_image_get_image(image:Byte Ptr,gdk_image:Byte Ptr,mask:Byte Ptr)="gtk_image_get_image"
	'Function gtk_image_get_pixbuf:Byte Ptr(image:Byte Ptr)="gtk_image_get_pixbuf"
	'Function gtk_image_get_pixmap(image:Byte Ptr,*pixmap:Byte Ptr,*mask:Byte Ptr)="gtk_image_get_pixmap"
	'Function gtk_image_get_stock(image:Byte Ptr,*stock_id:Byte Ptr,size:Byte Ptr)="gtk_image_get_stock"
	'Function gtk_image_get_animation:Byte Ptr(image:Byte Ptr)="gtk_image_get_animation"
	'Function gtk_image_get_icon_name(image:Byte Ptr,gchar **icon_name:G_CONST_RETURN,size:Byte Ptr)="gtk_image_get_icon_name"
	'Function gtk_image_get_storage_type:GtkImageType(image:Byte Ptr)="gtk_image_get_storage_type"
	Function gtk_image_new_from_file:Byte Ptr(filename:Byte Ptr)="gtk_image_new_from_file"
	'Function gtk_image_new_from_icon_set:Byte Ptr(icon_set:Byte Ptr,size:GtkIconSize)="gtk_image_new_from_icon_set"
	Function gtk_image_new_from_image:Byte Ptr(image:Byte Ptr,mask:Byte Ptr)="gtk_image_new_from_image"
	Function gtk_image_new_from_pixbuf:Byte Ptr(pixbuf:Byte Ptr)="gtk_image_new_from_pixbuf"
	Function gtk_image_new_from_pixmap:Byte Ptr(pixmap:Byte Ptr,mask:Byte Ptr)="gtk_image_new_from_pixmap"
	Function gtk_image_new_from_stock:Byte Ptr(stock_id:Byte Ptr,size:Byte)="gtk_image_new_from_stock"
	Function gtk_image_new_from_animation:Byte Ptr(animation:Byte Ptr)="gtk_image_new_from_animation"
	Function gtk_image_new_from_icon_name:Byte Ptr(icon_name:Byte Ptr,size:Byte)="gtk_image_new_from_icon_name"
	Function gtk_image_set_from_file(image:Byte Ptr,filename:Byte Ptr)="gtk_image_set_from_file"
	Function gtk_image_set_from_icon_set(image:Byte Ptr,icon_set:Byte Ptr,size:Byte)="gtk_image_set_from_icon_set"
	Function gtk_image_set_from_image(image:Byte Ptr,gdk_image:Byte Ptr,mask:Byte Ptr)="gtk_image_set_from_image"
	Function gtk_image_set_from_pixbuf(image:Byte Ptr,pixbuf:Byte Ptr)="gtk_image_set_from_pixbuf"
	Function gtk_image_set_from_pixmap(image:Byte Ptr,pixmap:Byte Ptr,mask:Byte Ptr)="gtk_image_set_from_pixmap"
	Function gtk_image_set_from_stock(image:Byte Ptr,stock_id:Byte Ptr,size:Byte)="gtk_image_set_from_stock"
	Function gtk_image_set_from_animation(image:Byte Ptr,animation:Byte Ptr)="gtk_image_set_from_animation"
	Function gtk_image_set_from_icon_name(image:Byte Ptr,icon_name:Byte Ptr,size:Byte)="gtk_image_set_from_icon_name"
	Function gtk_image_clear(image:Byte Ptr)="gtk_image_clear"
	Function gtk_image_new:Byte Ptr()="gtk_image_new"
	Function gtk_image_set(image:Byte Ptr,val:Byte Ptr,mask:Byte Ptr)="gtk_image_set"
	'Function gtk_image_get(image:Byte Ptr,val:Byte Ptr,mask:Byte Ptr)="gtk_image_get"
	Function gtk_image_set_pixel_size(image:Byte Ptr,pixel_size:int)="gtk_image_set_pixel_size"
	Function gtk_image_get_pixel_size:int(image:Byte Ptr)="gtk_image_get_pixel_size"
End Extern
