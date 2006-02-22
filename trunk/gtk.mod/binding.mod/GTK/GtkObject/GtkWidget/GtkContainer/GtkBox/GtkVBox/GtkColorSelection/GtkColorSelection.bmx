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
'GtkUpdateType
Const GTK_UPDATE_CONTINUOUS=1
Const GTK_UPDATE_DISCONTINUOUS=2
Const GTK_UPDATE_DELAYED=3


Extern
	Function gtk_color_selection_new:Byte Ptr()="gtk_color_selection_new"
	Function gtk_color_selection_set_update_policy(colorsel:Byte Ptr,policy:Byte)="gtk_color_selection_set_update_policy"
	Function gtk_color_selection_set_has_opacity_control(colorsel:Byte Ptr,has_opacity:Byte)="gtk_color_selection_set_has_opacity_control"
	Function gtk_color_selection_get_has_opacity_control:Byte(colorsel:Byte Ptr)="gtk_color_selection_get_has_opacity_control"
	Function gtk_color_selection_set_has_palette(colorsel:Byte Ptr,has_palette:Byte)="gtk_color_selection_set_has_palette"
	Function gtk_color_selection_get_has_palette:Byte(colorsel:Byte Ptr)="gtk_color_selection_get_has_palette"
	Function gtk_color_selection_get_current_alpha:Int(colorsel:Byte Ptr)="gtk_color_selection_get_current_alpha"
	Function gtk_color_selection_set_current_alpha(colorsel:Byte Ptr,alpha:Int)="gtk_color_selection_set_current_alpha"
	Function gtk_color_selection_get_current_color(colorsel:Byte Ptr,color:Byte Ptr)="gtk_color_selection_get_current_color"
	Function gtk_color_selection_set_current_color(colorsel:Byte Ptr,color:Byte Ptr)="gtk_color_selection_set_current_color"
	Function gtk_color_selection_get_previous_alpha:Int(colorsel:Byte Ptr)="gtk_color_selection_get_previous_alpha"
	Function gtk_color_selection_set_previous_alpha(colorsel:Byte Ptr,alpha:Int)="gtk_color_selection_set_previous_alpha"
	Function gtk_color_selection_get_previous_color(colorsel:Byte Ptr,color:Byte Ptr)="gtk_color_selection_get_previous_color"
	Function gtk_color_selection_set_previous_color(colorsel:Byte Ptr,color:Byte Ptr)="gtk_color_selection_set_previous_color"
	Function gtk_color_selection_is_adjusting:Byte(colorsel:Byte Ptr)="gtk_color_selection_is_adjusting"
	Function gtk_color_selection_palette_from_string:Byte(str:Byte Ptr,colors:Byte Ptr,n_colors:Byte Ptr)="gtk_color_selection_palette_from_string"
	Function gtk_color_selection_palette_to_string:Byte Ptr(colors:Byte Ptr,n_colors:int)="gtk_color_selection_palette_to_string"
	Function gtk_color_selection_set_change_palette_hook:Byte Ptr(func:Byte Ptr)="gtk_color_selection_set_change_palette_hook"
	'Function (GdkColor *colors:*GtkColorSelectionChangePaletteFunc)(const,n_colors);:gint)=""
	Function gtk_color_selection_set_change_palette_with_screen_hook:Byte Ptr(func:Byte Ptr)="gtk_color_selection_set_change_palette_with_screen_hook"
	'Function (screen:Byte Ptr,colors:Byte Ptr,n_colors);:gint)=""
	Function gtk_color_selection_set_color(colorsel:Byte Ptr,color:Byte Ptr)="gtk_color_selection_set_color"
	Function gtk_color_selection_get_color(colorsel:Byte Ptr,color:Byte Ptr)="gtk_color_selection_get_color"
End Extern
