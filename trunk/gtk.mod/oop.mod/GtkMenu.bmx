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
Type GtkMenu extends GtkMenuShell
	field MenuHandle:byte ptr
	Function Create:GtkMenu()
		local tmpmenu:GtkMenu = New GtkMenu
		tmpmenu.Handle = gtk_menu_new()
		tmpmenu.MenuHandle = g_type_check_instance_cast(tmpmenu.Handle, gtk_menu_get_type())
		tmpmenu.MenuShellHandle = g_type_check_instance_cast(tmpmenu.Handle, gtk_menu_shell_get_type())
		return tmpmenu
	end function

	Function CreateFromHandle:GtkMenu(Handle:byte ptr)
		local tmpmenu:GtkMenu = New GtkMenu
		tmpmenu.Handle = Handle
		tmpmenu.MenuHandle = g_type_check_instance_cast(tmpmenu.Handle, gtk_menu_get_type())
		tmpmenu.MenuShellHandle = g_type_check_instance_cast(tmpmenu.Handle, gtk_menu_shell_get_type())
		return tmpmenu
	End Function

	method ReorderChild(child:GtkWidget, position:int)
		gtk_menu_reorder_child(MenuHandle, child.Handle, position)
	end method
	
	method Attach(child:GtkWidget, left_attach:int, right_attach:int, top_attach:int, bottom_attach:int)
		gtk_menu_attach(MenuHandle, child.Handle, left_attach, right_attach, top_attach, bottom_attach)
	end method
	
	method Popup(parent_menu_shell:GtkWidget, parent_menu_item:GtkWidget, func:byte ptr, data:byte ptr, button:int, activate_time:int)
		gtk_menu_popup(MenuHandle, parent_menu_shell.Handle, parent_menu_item.Handle, func, data, button, activate_time)
	end method
	rem
	method SetAccelGroup(accel_group:GtkAccelGroup)
		gtk_menu_set_accel_group(MenuHandle, accel_group.Handle)
	end method
	
	method GetAccelGroup:GtkAccelGroup()
		local tmpaccelgroup = GtkAccelGroup.CreateFromHandle(gtk_menu_get_accel_group(MenuHandle))
		return tmpaccelgroup
	end method
	endrem
	method SetAccelPath(accel_path:string)
		gtk_menu_set_accel_path(MenuHandle, accel_path.ToCString())
	end method
	
	method SetTitle(title:string)
		gtk_menu_set_title(MenuHandle, title.ToCstring())
	end method
	
	method GetTearoffState:byte()
		return gtk_menu_get_tearoff_state(MenuHandle)
	end method
	
	method GetTitle:String()
		return String.FromCString(gtk_menu_get_title(MenuHandle))
	end method
	
	method Popdown()
		gtk_menu_popdown(MenuHandle)
	end method
	
	method Reposition()
		gtk_menu_reposition(MenuHandle)
	end method
	
	method GetActiveHandle:Byte ptr()
		return gtk_menu_get_active(MenuHandle)
	end method
	
	method SetActive(index:int)
		gtk_menu_set_active(MenuHandle,index)
	end method
	
	method SetTearoffState(torn_off:byte)
		gtk_menu_set_tearoff_state(MenuHandle, torn_off)
	end method
	
	method AttachToWidget(attach_widget:GtkWidget, detacher:byte ptr)
		gtk_menu_attach_to_widget(MenuHandle,attach_widget.Handle, detacher)
	end method
	
	method Detach()
		gtk_menu_detach(MenuHandle)
	end method
	
	method GetAttachWidgetHandle:Byte ptr()
		return gtk_menu_get_attach_widget(MenuHandle)
	end method
	
	method SetMonitor(monitor_num:int)
		gtk_menu_set_monitor(MenuHandle, monitor_num)
	end method
	
	rem
	function GetForAttachWidget:GList(widget:GtkWidget)
		return GList.CreateFromHandle(gtk_menu_get_for_attach_widget(widget.Handle))
	end function
	end rem
end type

