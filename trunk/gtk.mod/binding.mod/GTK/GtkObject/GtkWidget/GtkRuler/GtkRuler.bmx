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
	Function gtk_ruler_set_metric(ruler:Byte Ptr,metric:GtkMetricType)="gtk_ruler_set_metric"
	Function gtk_ruler_set_range(ruler:Byte Ptr,lower:gdouble,upper:gdouble,position:gdouble,max_size:gdouble)="gtk_ruler_set_range"
	Function gtk_ruler_get_metric:GtkMetricType(ruler:Byte Ptr)="gtk_ruler_get_metric"
	Function gtk_ruler_get_range(ruler:Byte Ptr,lower:Byte Ptr,upper:Byte Ptr,position:Byte Ptr,max_size:Byte Ptr)="gtk_ruler_get_range"
End Extern
