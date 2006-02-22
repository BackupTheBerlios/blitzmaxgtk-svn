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

'GtkIconSize
Const GTK_ICON_SIZE_INVALID=1
Const GTK_ICON_SIZE_MENU=2
Const GTK_ICON_SIZE_SMALL_TOOLBAR=3
Const GTK_ICON_SIZE_LARGE_TOOLBAR=4
Const GTK_ICON_SIZE_BUTTON=5
Const GTK_ICON_SIZE_DND=6
Const GTK_ICON_SIZE_DIALOG=7

'GtkOrientation
Const GTK_ORIENTATION_HORIZONTAL=1
Const GTK_ORIENTATION_VERTICAL=2

'GtkToolbarStyle
Const GTK_TOOLBAR_ICONS=1
Const GTK_TOOLBAR_TEXT=2
Const GTK_TOOLBAR_BOTH=3
Const GTK_TOOLBAR_BOTH_HORIZ=4

'GtkReliefStyle
Const GTK_RELIEF_NORMAL=1
Const GTK_RELIEF_HALF=2
Const GTK_RELIEF_NONE=3


Extern
	Function gtk_tool_item_new:Byte Ptr()="gtk_tool_item_new"
	Function gtk_tool_item_set_homogeneous(tool_item:Byte Ptr,homogeneous:Byte)="gtk_tool_item_set_homogeneous"
	Function gtk_tool_item_get_homogeneous:Byte(tool_item:Byte Ptr)="gtk_tool_item_get_homogeneous"
	Function gtk_tool_item_set_expand(tool_item:Byte Ptr,expand:Byte)="gtk_tool_item_set_expand"
	Function gtk_tool_item_get_expand:Byte(tool_item:Byte Ptr)="gtk_tool_item_get_expand"
	Function gtk_tool_item_set_tooltip(tool_item:Byte Ptr,tooltips:Byte Ptr,tip_text:Byte Ptr,tip_private:Byte Ptr)="gtk_tool_item_set_tooltip"
	Function gtk_tool_item_set_use_drag_window(toolitem:Byte Ptr,use_drag_window:Byte)="gtk_tool_item_set_use_drag_window"
	Function gtk_tool_item_get_use_drag_window:Byte(toolitem:Byte Ptr)="gtk_tool_item_get_use_drag_window"
	Function gtk_tool_item_set_visible_horizontal(toolitem:Byte Ptr,visible_horizontal:Byte)="gtk_tool_item_set_visible_horizontal"
	Function gtk_tool_item_get_visible_horizontal:Byte(toolitem:Byte Ptr)="gtk_tool_item_get_visible_horizontal"
	Function gtk_tool_item_set_visible_vertical(toolitem:Byte Ptr,visible_vertical:Byte)="gtk_tool_item_set_visible_vertical"
	Function gtk_tool_item_get_visible_vertical:Byte(toolitem:Byte Ptr)="gtk_tool_item_get_visible_vertical"
	Function gtk_tool_item_set_is_important(tool_item:Byte Ptr,is_important:Byte)="gtk_tool_item_set_is_important"
	Function gtk_tool_item_get_is_important:Byte(tool_item:Byte Ptr)="gtk_tool_item_get_is_important"
	Function gtk_tool_item_get_icon_size:Byte(tool_item:Byte Ptr)="gtk_tool_item_get_icon_size"
	Function gtk_tool_item_get_orientation:Byte(tool_item:Byte Ptr)="gtk_tool_item_get_orientation"
	Function gtk_tool_item_get_toolbar_style:Byte(tool_item:Byte Ptr)="gtk_tool_item_get_toolbar_style"
	Function gtk_tool_item_get_relief_style:Byte(tool_item:Byte Ptr)="gtk_tool_item_get_relief_style"
	Function gtk_tool_item_retrieve_proxy_menu_item:Byte Ptr(tool_item:Byte Ptr)="gtk_tool_item_retrieve_proxy_menu_item"
	Function gtk_tool_item_get_proxy_menu_item:Byte Ptr(tool_item:Byte Ptr,menu_item_id:Byte Ptr)="gtk_tool_item_get_proxy_menu_item"
	Function gtk_tool_item_set_proxy_menu_item(tool_item:Byte Ptr,menu_item_id:Byte Ptr,menu_item:Byte Ptr)="gtk_tool_item_set_proxy_menu_item"
	Function gtk_tool_item_rebuild_menu(tool_item:Byte Ptr)="gtk_tool_item_rebuild_menu"
End Extern
