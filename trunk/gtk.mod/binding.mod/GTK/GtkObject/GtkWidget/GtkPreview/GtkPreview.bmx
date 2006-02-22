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
	Function GtkDitherInfo;:union()="GtkDitherInfo;"
	Function gtk_preview_uninit()="gtk_preview_uninit"
	Function gtk_preview_new:Byte Ptr(type:GtkPreviewType)="gtk_preview_new"
	Function gtk_preview_size(preview:Byte Ptr,width:gint,height:gint)="gtk_preview_size"
	Function gtk_preview_put(preview:Byte Ptr,window:Byte Ptr,gc:Byte Ptr,srcx:gint,srcy:gint,destx:gint,desty:gint,width:gint,height:gint)="gtk_preview_put"
	Function gtk_preview_draw_row(preview:Byte Ptr,data:Byte Ptr,x:gint,y:gint,w:gint)="gtk_preview_draw_row"
	Function gtk_preview_set_expand(preview:Byte Ptr,expand:gboolean)="gtk_preview_set_expand"
	Function gtk_preview_set_gamma(gamma_:double)="gtk_preview_set_gamma"
	Function gtk_preview_set_color_cube(nred_shades:guint,ngreen_shades:guint,nblue_shades:guint,ngray_shades:guint)="gtk_preview_set_color_cube"
	Function gtk_preview_set_install_cmap(install_cmap:gint)="gtk_preview_set_install_cmap"
	Function gtk_preview_set_reserved(nreserved:gint)="gtk_preview_set_reserved"
	Function gtk_preview_set_dither(preview:Byte Ptr,dither:GdkRgbDither)="gtk_preview_set_dither"
	Function gtk_preview_get_visual:Byte Ptr()="gtk_preview_get_visual"
	Function gtk_preview_get_cmap:Byte Ptr()="gtk_preview_get_cmap"
	Function gtk_preview_get_info:Byte Ptr()="gtk_preview_get_info"
	Function gtk_preview_reset()="gtk_preview_reset"
End Extern
