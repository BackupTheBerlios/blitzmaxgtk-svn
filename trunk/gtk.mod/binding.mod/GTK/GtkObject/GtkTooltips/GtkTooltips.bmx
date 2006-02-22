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
	Function gtk_tooltips_new:Byte Ptr()="gtk_tooltips_new"
	Function gtk_tooltips_enable(tooltips:Byte Ptr)="gtk_tooltips_enable"
	Function gtk_tooltips_disable(tooltips:Byte Ptr)="gtk_tooltips_disable"
	Function gtk_tooltips_set_delay(tooltips:Byte Ptr,delay:guint)="gtk_tooltips_set_delay"
	Function gtk_tooltips_set_tip(tooltips:Byte Ptr,widget:Byte Ptr,tip_text:Byte Ptr,tip_private:Byte Ptr)="gtk_tooltips_set_tip"
	Function gtk_tooltips_data_get:Byte Ptr(widget:Byte Ptr)="gtk_tooltips_data_get"
	Function gtk_tooltips_force_window(tooltips:Byte Ptr)="gtk_tooltips_force_window"
	Function gtk_tooltips_get_info_from_tip_window:gboolean(tip_window:Byte Ptr,*tooltips:Byte Ptr,*current_widget:Byte Ptr)="gtk_tooltips_get_info_from_tip_window"
End Extern
