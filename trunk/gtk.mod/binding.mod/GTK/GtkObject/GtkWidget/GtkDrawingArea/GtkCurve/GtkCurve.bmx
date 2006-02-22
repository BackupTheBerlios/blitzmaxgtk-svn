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
	Function gtk_curve_new:Byte Ptr()="gtk_curve_new"
	Function gtk_curve_reset(curve:Byte Ptr)="gtk_curve_reset"
	Function gtk_curve_set_gamma(curve:Byte Ptr,gamma_:gfloat)="gtk_curve_set_gamma"
	Function gtk_curve_set_range(curve:Byte Ptr,min_x:gfloat,max_x:gfloat,min_y:gfloat,max_y:gfloat)="gtk_curve_set_range"
	Function gtk_curve_get_vector(curve:Byte Ptr,veclen:int,vector[]:gfloat)="gtk_curve_get_vector"
	Function gtk_curve_set_vector(curve:Byte Ptr,veclen:int,vector[]:gfloat)="gtk_curve_set_vector"
	Function gtk_curve_set_curve_type(curve:Byte Ptr,type:GtkCurveType)="gtk_curve_set_curve_type"
End Extern
