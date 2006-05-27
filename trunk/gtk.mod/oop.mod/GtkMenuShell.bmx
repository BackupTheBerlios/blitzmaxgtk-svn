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
Type GtkMenuShell extends GtkContainer
	Field MenuShellHandle:byte ptr
	Method Append(child:GtkWidget)
		gtk_menu_shell_append(MenuShellHandle, child.Handle)
	End Method
	
	Method Prepend(child:GtkWidget)
		gtk_menu_shell_prepend(MenuShellHandle, child.Handle)
	end method
	
	method Insert(child:GtkWidget, Pos:int)
		gtk_menu_shell_insert(MenuShellHandle, child.Handle, Pos)
	end method
	
	method Deactivate()
		gtk_menu_shell_deactivate(MenuShellHandle)
	end method
	
	method SelectItem(menu_item:GtkWidget)
		gtk_menu_shell_select_item(MenuShellHandle, menu_item.Handle)
	end method
	
	method SelectFirst(menu_item:GtkWidget, search_sensitive:byte=0)
		gtk_menu_shell_select_first(MenuShellHandle,search_sensitive)
	End Method
	
	method Deselect()
		gtk_menu_shell_deselect(MenuShellHandle)
	end method
	
	method ActivateItem(menu_item:GtkWidget, force_deactivate:byte=0)
		gtk_menu_shell_activate_item(MenuShellhandle, menu_item.handle, force_deactivate)
	end method
	
	method Cancel()
		gtk_menu_shell_cancel(MenuShellHandle)
	end method
	
	method SetTakeFocus(take_focus:byte)
		gtk_menu_shell_set_take_focus(MenuShellHandle, take_focus)
	end method
	
	method GetTakeFocus:Byte()
		return gtk_menu_shell_get_take_focus(MenuShellHandle)
	end method
End Type

