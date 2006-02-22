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
	Function gtk_adjustment_new:Byte Ptr(value:Double,VLower:Double,VUpper:Double,step_increment:Double,page_increment:Double,page_size:Double)="gtk_adjustment_new"
	Function gtk_adjustment_get_value:Double(adjustment:Byte Ptr)="gtk_adjustment_get_value"
	Function gtk_adjustment_set_value(adjustment:Byte Ptr,value:Double)="gtk_adjustment_set_value"
	Function gtk_adjustment_clamp_page(adjustment:Byte Ptr,VLower:Double,VUpper:Double)="gtk_adjustment_clamp_page"
	Function gtk_adjustment_changed(adjustment:Byte Ptr)="gtk_adjustment_changed"
	Function gtk_adjustment_value_changed(adjustment:Byte Ptr)="gtk_adjustment_value_changed"
End Extern
