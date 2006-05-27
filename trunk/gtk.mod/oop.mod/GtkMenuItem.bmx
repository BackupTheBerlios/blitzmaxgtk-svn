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
type GtkMenuItem extends GtkItem
	Field MenuItemHandle:Byte Ptr
	Function Create:GtkMenuItem()
		local tmpitem:GtkMenuItem = New GtkMenuItem
		tmpitem.Handle = gtk_menu_item_new()
		tmpitem.MenuItemHandle = g_type_check_instance_cast(tmpitem.Handle, gtk_menu_item_get_type())
		tmpitem.ItemHandle = g_type_check_instance_cast(tmpitem.Handle, gtk_item_get_type())
		return tmpitem
	End function

	Function CreateWithLabel:GtkMenuItem(label:String)
		local tmpitem:GtkMenuItem = new GtkMenuItem
		tmpitem.Handle = gtk_menu_item_new_with_label(label.ToCString())
		tmpitem.MenuItemHandle = g_type_check_instance_cast(tmpitem.Handle, gtk_menu_item_get_type())
		return tmpitem
	End function

	Function CreateWithMnemonic:GtkMenuItem(mnemonic:String)
		local tmpitem:GtkMenuItem = new GtkMenuItem
		tmpitem.Handle = gtk_menu_item_new_with_mnemonic(mnemonic.ToCString())
		tmpitem.MenuItemHandle = g_type_check_instance_cast(tmpitem.Handle, gtk_menu_item_get_type())
		return tmpitem
	End function

	Function CreateFromHandle:GtkMenuItem(Handle:byte ptr)
		local tmpitem:GtkMenuItem = New GtkMenuItem
		tmpitem.Handle = Handle
		Return tmpitem
	end function

	Method SetRightJustified(right_justified:byte)
		gtk_menu_item_set_right_justified(MenuItemHandle, right_justified)
	end method
	
	method SetSubmenu(submenu:GtkWidget)
		gtk_menu_item_set_submenu(MenuItemHandle, submenu.Handle)
	end method
	
	Method SetAccelPath(accel_path:string)
		gtk_menu_item_set_accel_path(MenuItemHandle, accel_path.ToCString())
	end method
	
	method RemoveSubmenu()
		gtk_menu_item_remove_submenu(MenuItemHandle)
	end method
	
	method SelectM()
		gtk_menu_item_select(MenuItemHandle)
	end method
	
	method Deselect()
		gtk_menu_item_deselect(MenuItemHandle)
	end method
	
	method Activate()
		gtk_menu_item_activate(MenuItemHandle)
	end method
	
	method ToggleSizeRequest(requisition:int)
		gtk_menu_item_toggle_size_request(MenuItemHandle, varptr requisition)
	end method
	
	method ToggleSizeAllocate(allocation:int)
		gtk_menu_item_toggle_size_allocate(MenuItemHandle, allocation)
	end method
	
	method GetRightJustified:byte()
		return gtk_menu_item_get_right_justified(MenuItemHandle)
	end method
	
	method GetSubmenuHandle:Byte ptr()
		return gtk_menu_item_get_submenu(MenuItemHandle)
	end method
end type

